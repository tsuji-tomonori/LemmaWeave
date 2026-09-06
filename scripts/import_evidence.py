#!/usr/bin/env python3
"""Import a successful GitHub Actions replay ZIP with current input/output hashes.

Only dependency extraction and independent-environment replay evidence are
updated. This never grants rights, independent semantic approval or inventory
completion. Download the artifact from the linked repository first.
"""
import argparse
import gzip
import hashlib
import json
from pathlib import Path, PurePosixPath
import zipfile
from lw import local_import_closure, read, records
from check_locations import check as check_locations

ROOT = Path(__file__).resolve().parents[1]


def sha(data):
    return hashlib.sha256(data).hexdigest()


def load_archive(path):
    payload = {}
    with zipfile.ZipFile(path) as archive:
        if sum(i.file_size for i in archive.infolist()) > 512 * 1024 * 1024:
            raise ValueError('artifact exceeds 512 MiB uncompressed evidence budget')
        for info in archive.infolist():
            if info.is_dir():
                continue
            parts = PurePosixPath(info.filename)
            if parts.is_absolute() or '..' in parts.parts or parts.parts[0] not in {'runs', 'work', 'reports', 'knowledge'}:
                raise ValueError('unexpected artifact path: ' + info.filename)
            if (info.external_attr >> 16) & 0o170000 == 0o120000:
                raise ValueError('artifact symlink is not accepted')
            if info.filename in payload:
                raise ValueError('duplicate artifact path')
            payload[info.filename] = archive.read(info)
    return payload


def import_evidence(root, archive, run_id):
    payload = load_archive(archive)
    candidates = {name: json.loads(data) for name, data in payload.items()
                  if name.startswith('runs/') and name.endswith('/run.json')}
    current = {name: r for name, r in candidates.items()
               if str(r['environment'].get('github_run_id')) == str(run_id)}

    def command(argv):
        matches = [(name, r) for name, r in current.items() if r['argv'] == argv and
                   r['exit_code'] == 0 and r['status'] == 'succeeded']
        if len(matches) != 1:
            raise ValueError('exactly one successful recorded command required: ' + repr(argv))
        name, run = matches[0]
        if not run['inputs'].get('git_commit'):
            raise ValueError('missing input commit')
        for key in ('stdout_log', 'stderr_log'):
            if sha(payload[run[key]]) != run['output_sha256'][Path(run[key]).name]:
                raise ValueError('modified run output: ' + run[key])
        return name, run

    replay_path, replay = command(['python3', 'scripts/replay.py'])
    fixture_path, fixture = command(['python3', 'scripts/check_extractor.py'])
    location_path, location = command(['lake', 'env', 'lean', 'work/locations.lean'])
    variants = records(root, 'corpus/proof_variants')
    required = local_import_closure(root, [f for v in variants for f in v['input_files']])
    required += ['lean-toolchain', 'lake-manifest.json', 'lakefile.toml', 'environment/pins.json',
                 'knowledge/declaration-classifications.json', 'LemmaWeave/Audit/Locations.lean']
    required += [str(p.relative_to(root)) for folder, pattern in
                 [('scripts', '*.py'), ('tests', '*.py'), ('tests/lean', '*.lean'), ('knowledge/nodes', '*.json')]
                 for p in sorted((root / folder).glob(pattern))]
    required += [str(p.relative_to(root)) for folder in
                 ['knowledge/method_nodes', 'knowledge/recipes', 'corpus/method_batches']
                 for p in sorted((root / folder).glob('*.json'))]
    required += [str(p.relative_to(root)) for p in sorted((root / 'LemmaWeave').rglob('*.lean'))]
    for name in required:
        if replay['inputs']['files'].get(name) != sha((root / name).read_bytes()):
            raise ValueError('replay is stale for current input: ' + name)
    fixture_report = json.loads(payload['reports/extractor-fixtures.json'])
    if fixture_report['suite_status'] != 'passed' or json.loads(payload[fixture['stdout_log']]) != fixture_report:
        raise ValueError('fixture report not bound to a successful complete suite')
    exports = {}
    for v in variants:
        for name in v['roots']:
            export_file = 'work/' + name + '-locations.json'
            data = payload[export_file]
            if location['artifact_sha256'].get(export_file) != sha(data):
                raise ValueError('modified source export: ' + name)
            check_locations(read(root / v['audit_evidence']['graphs'][name]['file']), json.loads(data))
            compressed = gzip.compress(data, mtime=0)
            dest = 'reports/dependencies/locations/' + name + '.json.gz'
            exports[name] = {'file': dest, 'sha256': sha(compressed), 'raw_sha256': sha(data), 'export_file': export_file}
            payload[dest] = compressed
    # All required freshness and output checks precede any mutation.
    writes = {name: data for name, data in payload.items() if
              (name.startswith('runs/') and name in current) or
              (name.startswith('work/') and (name.endswith('-graph.json') or name == 'work/locations.lean')) or
              name.startswith('reports/dependencies/locations/') or name == 'reports/extractor-fixtures.json'}
    for r in current.values():
        writes[r['stdout_log']] = payload[r['stdout_log']]
        writes[r['stderr_log']] = payload[r['stderr_log']]
    for name, data in writes.items():
        path = (root / name).resolve()
        if not path.is_relative_to(root.resolve()):
            raise ValueError('artifact destination escapes checkout')
        if name.startswith('runs/') and path.exists() and path.read_bytes() != data:
            raise ValueError('refusing to overwrite previous execution evidence')
    for name, data in writes.items():
        path = root / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_bytes(data)
    for v in variants:
        v['source_mapping_evidence'] = {'run': location_path, 'exports': {n: exports[n] for n in v['roots']}}
        v['audit_evidence']['extractor_fixture_run'] = fixture_path
        (root / 'corpus/proof_variants' / (v['proof_variant_id'] + '.json')).write_text(json.dumps(v, ensure_ascii=False, indent=2) + '\n')
    for p in records(root, 'corpus/problems'):
        if not p['lean']['proof_variants']:
            continue
        p['status']['dependency'] = 'extracted'
        p['reproduction_runs'] = sorted(set(p.get('reproduction_runs', []) + [replay_path]))
        p['blockers'] = [b for b in p['blockers'] if b['kind'] != 'dependency_extraction_gap']
        (root / 'corpus/problems' / (p['problem_id'] + '.json')).write_text(json.dumps(p, ensure_ascii=False, indent=2) + '\n')
    return {'github_run_id': str(run_id), 'git_commit': replay['inputs']['git_commit'],
            'archive_sha256': sha(archive.read_bytes()), 'replay_run': replay_path,
            'fixture_run': fixture_path, 'source_location_run': location_path,
            'semantic_or_rights_promotion': False}


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('archive', type=Path)
    parser.add_argument('--run-id', required=True)
    args = parser.parse_args()
    result = import_evidence(ROOT, args.archive, args.run_id)
    (ROOT / 'reports/latest-ci-replay.json').write_text(json.dumps(result, indent=2) + '\n')
    print(json.dumps(result, indent=2))
