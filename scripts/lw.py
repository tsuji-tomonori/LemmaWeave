#!/usr/bin/env python3
"""Local ledger, stale-evidence and graph checks. No automatic proof-state promotion."""
import argparse
import hashlib
import gzip
import json
import pathlib
import re
import sys

ROOT = pathlib.Path(__file__).resolve().parents[1]
ALLOWLIST = {'propext', 'Quot.sound', 'Classical.choice'}
STATUS = {
    'transcription': {'not_started', 'draft', 'checked', 'uncertain'},
    'semantic': {'not_started', 'draft', 'self_review_only', 'independent_checked', 'changes_requested', 'stale'},
    'proof': {'not_started', 'draft', 'not_run', 'build_failed', 'kernel_checked', 'stale'},
    'axiom_audit': {'not_run', 'passed', 'failed', 'partial', 'stale'},
    'dependency': {'not_run', 'partial', 'extracted', 'stale'},
    'inventory': {'not_started', 'partial', 'mapped', 'stale'},
    'educational_expansion': {'not_started', 'outline', 'partial', 'closed'},
    'release': {'not_reviewed', 'restricted', 'eligible', 'published'},
}


def read(path):
    return json.loads(gzip.decompress(path.read_bytes())) if path.suffix == ".gz" else json.loads(path.read_text())


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def records(root, folder):
    return [read(p) for p in sorted((root / folder).glob('*.json'))]


def confined(root, value):
    path = (root / value).resolve()
    if not path.is_relative_to(root.resolve()) or '.private' in path.parts:
        raise ValueError('Evidence path outside public project boundary: ' + value)
    return path


def graph_audit(graph):
    nodes = {n['name']: n for n in graph['nodes']}
    if len(nodes) != len(graph['nodes']):
        raise ValueError('duplicate graph declaration')
    adjacency = {name: [] for name in nodes}
    for e in graph['edges']:
        adjacency.setdefault(e['from'], []).append(e['to'])
    seen, todo, unresolved = set(), list(graph['roots']), []
    if not todo:
        unresolved.append({'reason': 'empty_roots'})
    while todo:
        name = todo.pop()
        if name in seen:
            continue
        seen.add(name)
        node = nodes.get(name)
        if node is None:
            unresolved.append({'name': name, 'reason': 'missing_declaration'})
        elif node.get('body_status') in {'unavailable', 'cutoff', 'unknown', 'erased_or_untrusted'}:
            unresolved.append({'name': name, 'reason': node['body_status']})
        todo.extend(adjacency.get(name, []))
    unresolved.extend(graph.get('unresolved_boundaries', []))
    if graph.get('truncated', False):
        unresolved.append({'reason': 'truncated'})
    actual_axioms = {name for name in seen if nodes.get(name, {}).get('kind') == 'axiom'}
    forbidden = actual_axioms - ALLOWLIST
    unsafe = [name for name in seen if nodes.get(name, {}).get('unsafe', False)]
    return {'reachable_declarations': sorted(seen), 'axioms': sorted(actual_axioms),
            'forbidden_axioms': sorted(forbidden), 'unsafe_declarations': sorted(unsafe),
            'unresolved_boundaries': unresolved,
            'status': 'failed' if forbidden or unsafe else ('partial' if unresolved else 'passed')}


def dag_check(graph):
    """Only prerequisite edges in one proof variant constrain a learning order."""
    variants = {e['proof_variant_id'] for e in graph['edges'] if e['kind'] == 'prerequisite'}
    for variant in variants:
        adjacency = {}
        for e in graph['edges']:
            if e['kind'] == 'prerequisite' and e['proof_variant_id'] == variant:
                adjacency.setdefault(e['from'], []).append(e['to'])
        active, done = set(), set()

        def visit(node):
            if node in active:
                raise ValueError('learning prerequisite cycle in ' + variant)
            if node in done:
                return
            active.add(node)
            for child in adjacency.get(node, []):
                visit(child)
            active.remove(node)
            done.add(node)
        for node in adjacency:
            visit(node)


def verify_run(root, run_path, required_files, expected_argv):
    run = read(confined(root, run_path))
    if run['exit_code'] != 0 or run['status'] != 'succeeded':
        raise ValueError('no successful command: ' + run_path)
    if run['argv'] != expected_argv:
        raise ValueError('unexpected evidence command: ' + run_path)
    if run['inputs'].get('git_commit') is None:
        raise ValueError('missing input commit: ' + run_path)
    for name in required_files:
        if run['inputs']['files'].get(name) != sha(confined(root, name)):
            raise ValueError('stale/missing input hash: ' + name)
    for field in ('stdout_log', 'stderr_log'):
        path = confined(root, run[field])
        if sha(path) != run['output_sha256'].get(path.name):
            raise ValueError('modified command output: ' + run[field])
    return run


def local_import_closure(root, files):
    """Include every local Lean import; a hand-maintained file list is insufficient."""
    pending, found = list(files), set()
    while pending:
        name = pending.pop()
        if name in found:
            continue
        path = confined(root, name)
        if not path.is_file():
            raise ValueError('missing input file: ' + name)
        found.add(name)
        if path.suffix == '.lean':
            imports = re.findall(r'^\s*(?:public\s+)?(?:meta\s+)?import\s+([A-Za-z0-9_.]+)',
                                 path.read_text(), re.M)
            for module in imports:
                if module == 'LemmaWeave' or module.startswith('LemmaWeave.'):
                    pending.append(module.replace('.', '/') + '.lean')
    return sorted(found)


def semantic_review_matches(root, problem, review):
    """Bind independent review to source, specification, model and theorem types."""
    target = review.get('target', {})
    spec_hash = hashlib.sha256(json.dumps(problem['mathematical_spec'],
                                         sort_keys=True, ensure_ascii=False).encode()).hexdigest()
    return (review.get('independence') == 'independent' and
            review.get('verdict') == 'passed' and
            bool(review.get('reviewer_session_id')) and
            review.get('reviewer_session_id') != review.get('author_session_id') and
            bool(review.get('author_session_id')) and
            review.get('source_pages_directly_checked') is True and
            target.get('problem_id') == problem['problem_id'] and
            target.get('problem_revision') == problem['revision'] and
            target.get('source_sha256') == problem['source_locator']['document_sha256'] and
            target.get('mathematical_spec_sha256') == spec_hash and
            target.get('theorem_type_hash') == problem['lean']['theorem_type_hash'] and
            target.get('semantic_model_hash') == problem['lean']['semantic_model_hash'] and
            target.get('semantic_model_hash') == model_hash(root, problem['lean']['model_files']))


def validate(root):
    errors = []
    problems = records(root, 'corpus/problems')
    variants = records(root, 'corpus/proof_variants')
    variant_by_id = {v['proof_variant_id']: v for v in variants}
    ids = [p['problem_id'] for p in problems]
    if len(set(ids)) != len(ids):
        errors.append('duplicate problem_id')
    for p in problems:
        try:
            if p.get('is_template', False):
                raise ValueError('templates are not corpus records')
            for key, allowed in STATUS.items():
                if p['status'][key] not in allowed:
                    raise ValueError('invalid status: ' + key)
            if p['collection_status'] == 'collected':
                if not p['source_page_visual_review'].get('confirmed', False):
                    raise ValueError('collected without visual source review')
                if not p['source_locator'].get('document_sha256'):
                    raise ValueError('collected without pinned source bytes')
                if not p['mathematical_spec'].get('goals'):
                    raise ValueError('collected without mathematical requirements')
            if p['status']['proof'] == 'kernel_checked':
                if not p['lean']['proof_variants']:
                    raise ValueError('kernel_checked without proof variants')
                for vid in p['lean']['proof_variants']:
                    v = variant_by_id[vid]
                    if not v['roots'] or not v['required_goal_ids']:
                        raise ValueError('empty proof roots or goal coverage')
                    goal_ids = {g['id'] for g in p['mathematical_spec']['goals']}
                    if set(v['required_goal_ids']) != goal_ids:
                        raise ValueError('incomplete mathematical goal coverage')
                    expected_build = ['lake', 'build', v['module']] if v.get('build_mode') == 'module' else ['lake', 'build']
                    inputs = local_import_closure(root, v['input_files'] + [v['module'].replace('.', '/') + '.lean'])
                    verify_run(root, v['build_run'], inputs +
                               ['lean-toolchain', 'lake-manifest.json', 'lakefile.toml'], expected_build)
                    if p['lean']['semantic_model_hash'] != model_hash(root, p['lean']['model_files']):
                        raise ValueError('stale semantic model')
            if p['status']['semantic'] == 'independent_checked':
                matching = [read(confined(root, f)) for f in p['reviews']]
                if not any(semantic_review_matches(root, p, r) for r in matching):
                    raise ValueError('missing independent current-version source review')
            if p['status']['axiom_audit'] == 'passed' or p['status']['dependency'] == 'extracted':
                for vid in p['lean']['proof_variants']:
                    v = variant_by_id[vid]
                    audit = v['audit_evidence']
                    audit_file = 'work/audit_' + vid + '.lean' if audit.get('mode') == 'per_variant' else 'LemmaWeave/Audit/AllRoots.lean'
                    inputs = local_import_closure(root, v['input_files'] +
                                                 [v['module'].replace('.', '/') + '.lean', audit_file])
                    observed = verify_run(root, audit['run'], inputs +
                               ['LemmaWeave/Audit/Extract.lean', audit_file,
                                'lean-toolchain', 'lake-manifest.json', 'lakefile.toml'],
                               ['lake', 'env', 'lean', audit_file])
                    for name in v['roots']:
                        item = audit['graphs'][name]
                        graph_path = confined(root, item['file'])
                        if sha(graph_path) != item['sha256']:
                            raise ValueError('modified dependency graph')
                        raw_bytes = gzip.decompress(graph_path.read_bytes()) if graph_path.suffix == '.gz' else graph_path.read_bytes()
                        if hashlib.sha256(raw_bytes).hexdigest() != item.get('raw_sha256', item['sha256']):
                            raise ValueError('decoded graph hash mismatch')
                        if observed.get('artifact_sha256', {}).get(item.get('export_file', item['file'])) != item.get('raw_sha256', item['sha256']):
                            raise ValueError('graph not linked to command output hash')
                        graph = read(graph_path)
                        if graph['roots'] != [name]:
                            raise ValueError('wrong audit root')
                        root_node = next(n for n in graph['nodes'] if n['name'] == name)
                        observed_type = hashlib.sha256(root_node['type_expr'].encode()).hexdigest()
                        if (v.get('theorem_type_sha256', {}).get(name) != observed_type or
                                p['lean']['theorem_type_hash'].get(name) != observed_type):
                            raise ValueError('root type hash disagrees with actual Lean export')
                        result = graph_audit(graph)
                        if result['status'] != 'passed':
                            raise ValueError('axiom or body-availability audit not passed')
                        if set(result['axioms']) != set(graph['lean_collected_axioms']):
                            raise ValueError('Lean axiom collector disagrees with proof-term closure')
                    if p['status']['dependency'] == 'extracted':
                        fixtures = read(confined(root, audit['extractor_fixture_report']))
                        if fixtures.get('suite_status') != 'passed':
                            raise ValueError('full extractor fixture suite is incomplete')
                        fixture_inputs = local_import_closure(root, ['tests/lean/DependencyFixtures.lean',
                            'LemmaWeave/Audit/Fixtures/Exported.lean'])
                        fixture_inputs += ['work/' + c['fixture'] + '-graph.json' for c in fixtures['validated_cases']]
                        verify_run(root, audit['extractor_fixture_run'], fixture_inputs +
                            ['scripts/check_extractor.py', 'scripts/lw.py', 'lean-toolchain', 'lake-manifest.json'],
                            ['python3', 'scripts/check_extractor.py'])
                        from check_locations import check as check_locations
                        locations = v['source_mapping_evidence']
                        location_run = verify_run(root, locations['run'],
                            local_import_closure(root, v['input_files'] +
                                ['work/locations.lean', 'LemmaWeave/Audit/Locations.lean']) +
                            ['lean-toolchain', 'lake-manifest.json', 'lakefile.toml'],
                            ['lake', 'env', 'lean', 'work/locations.lean'])
                        for name in v['roots']:
                            item = locations['exports'][name]
                            path = confined(root, item['file'])
                            if sha(path) != item['sha256']:
                                raise ValueError('modified source-location sidecar')
                            raw = gzip.decompress(path.read_bytes()) if path.suffix == '.gz' else path.read_bytes()
                            raw_hash = hashlib.sha256(raw).hexdigest()
                            if (raw_hash != item.get('raw_sha256', item['sha256']) or
                                location_run['artifact_sha256'].get(item.get('export_file', item['file'])) != raw_hash):
                                raise ValueError('source locations not bound to actual command output')
                            check_locations(read(confined(root, audit['graphs'][name]['file'])), read(path))
            if p['status']['inventory'] == 'mapped':
                from inventory import inspect
                inventory = inspect(root)[0]
                if not inventory['problems'].get(p['problem_id'], {}).get('complete'):
                    raise ValueError('incomplete or stale declaration-to-card coverage')
        except (KeyError, ValueError, OSError) as error:
            errors.append(p['problem_id'] + ': ' + str(error))
    expected_targets = sorted({v['module'] for v in variants})
    target_file = root / 'LemmaWeave/AllTargets.lean'
    if variants:
        targets = sorted(re.findall(r'^import ([A-Za-z0-9_.]+)$', target_file.read_text(), re.M)) if target_file.exists() else []
        if targets != expected_targets:
            errors.append('aggregate omits or adds registered proof targets')
    expected_imports = sorted({v['module'] for v in variants if v['status'] == 'kernel_checked'})
    aggregate = root / 'LemmaWeave/AllVerified.lean'
    actual = sorted(re.findall(r'^import ([A-Za-z0-9_.]+)$', aggregate.read_text(), re.M))
    if actual != expected_imports:
        errors.append('aggregate differs from verified proof registry')
    registered = {v['module'].replace('.', '/') + '.lean' for v in variants}
    for path in (root / 'LemmaWeave/Problems').glob('**/Proof*.lean'):
        if str(path.relative_to(root)) not in registered:
            errors.append('orphan proof: ' + str(path.relative_to(root)))
    for v in variants:
        if v['problem_id'] not in ids:
            errors.append('orphan variant: ' + v['proof_variant_id'])
    return errors


def model_hash(root, files):
    if not files:
        raise ValueError('empty model cannot be frozen')
    values = {name: sha(confined(root, name)) for name in sorted(files)}
    return hashlib.sha256(json.dumps(values, sort_keys=True).encode()).hexdigest()


def extraction_metrics(root):
    files = sorted((root / 'reports/dependencies/raw').glob('*.json.gz'))
    if not files:
        return {'unclassified': None, 'reason': 'No exam proof-term extraction imported; not a measured zero.'}
    from inventory import inspect
    result = inspect(root)[0]
    return {'unclassified': result['unclassified'],
            'reason': 'Actual declarations without valid type-bound Japanese card mappings.',
            'mapping_errors': result['errors']}


def metrics(root):
    p = [p for p in records(root, 'corpus/problems') if p['origin'] == 'exam']
    sources = records(root, 'corpus/sources')
    extraction = extraction_metrics(root)
    from acceptance_report import build_report
    acceptance = build_report(root)
    return {
        'registered_problems': len(p),
        'candidate_problems': sum(x['collection_status'] == 'candidate' for x in p),
        'located_sources': sum(s['source_status'] in {'located', 'fetched'} for s in sources),
        'fetched_papers': sum(bool(p.get('sha256')) for p in records(root, 'corpus/papers')),
        'collected_problems': sum(x['collection_status'] == 'collected' for x in p),
        'source_visually_checked_problems': sum(x['source_page_visual_review'].get('confirmed', False) for x in p),
        'semantic_self_review_only_problems': sum(x['status']['semantic'] == 'self_review_only' for x in p),
        'semantic_checked_problems': sum(x['status']['semantic'] == 'independent_checked' for x in p),
        'kernel_checked_problems': sum(x['status']['proof'] == 'kernel_checked' for x in p),
        'axiom_audit_passed_problems': sum(x['status']['axiom_audit'] == 'passed' for x in p),
        'audited_proofs': sum(x['status']['semantic'] == 'independent_checked' and
                             x['status']['proof'] == 'kernel_checked' and
                             x['status']['axiom_audit'] == 'passed' for x in p),
        'phase1_complete_problems': acceptance['phase1_complete_problems'],
        'phase1_complete_policy': 'All AC01-AC12 gates must pass on current evidence.',
        'pilot': acceptance['pilot'],
        'raw_dependency_traversed_problems': sum(bool(x['lean']['proof_variants']) and x['status']['axiom_audit'] == 'passed' for x in p),
        'dependency_fully_validated_problems': sum(x['status']['dependency'] == 'extracted' for x in p),
        'inventory_complete_problems': sum(x['status']['inventory'] == 'mapped' for x in p),
        'learning_nodes': len(records(root, 'knowledge/nodes')),
        'unclassified_dependencies': extraction['unclassified'],
        'unclassified_dependencies_reason': extraction['reason'],
        'classification_errors': extraction.get('mapping_errors', []),
        'educational_frontier_status': 'partial_with_explicit_unclassified_declarations' if (root / 'knowledge/educational-frontier.json.gz').exists() else 'not_extracted',
        'target_first_batch': 5, 'target_first_batch_complete_minimum': 1,
        'target_pilot_collected': 50, 'target_pilot_complete': 10,
        'overall_verdict': 'MODEL_PROVED' if acceptance['pilot']['accepted'] else 'INCONCLUSIVE'}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--root', type=pathlib.Path, default=ROOT)
    sub = parser.add_subparsers(dest='command', required=True)
    for name in ['validate', 'report', 'accept', 'aggregate']:
        sub.add_parser(name)
    freeze = sub.add_parser('freeze')
    freeze.add_argument('problem_id')
    audit = sub.add_parser('graph-audit')
    audit.add_argument('file', type=pathlib.Path)
    dag = sub.add_parser('learning-dag')
    dag.add_argument('file', type=pathlib.Path)
    args = parser.parse_args()
    root = args.root.resolve()
    if args.command == 'graph-audit':
        result = graph_audit(read(args.file))
        print(json.dumps(result, ensure_ascii=False, indent=2))
        return 0 if result['status'] == 'passed' else 2
    if args.command == 'learning-dag':
        dag_check(read(args.file))
        print('No cycle within each learning prerequisite variant (does not establish node adequacy).')
        return 0
    if args.command == 'freeze':
        p = read(root / 'corpus/problems' / (args.problem_id + '.json'))
        if p['collection_status'] != 'collected':
            raise ValueError('source collection is incomplete; refusing to freeze a model')
        h = model_hash(root, p['lean']['model_files'])
        path = root / 'reviews' / (args.problem_id + '-model-freeze.json')
        content = {'problem_id': args.problem_id, 'revision': p['revision'],
                   'semantic_model_hash': h, 'status': 'awaiting_independent_review'}
        with path.open('x') as stream:
            stream.write(json.dumps(content, indent=2) + '\n')
        print(path.relative_to(root))
        return 0
    if args.command == 'aggregate':
        v = records(root, 'corpus/proof_variants')
        names = sorted({p['module'] for p in v if p['status'] == 'kernel_checked'})
        content = '-- Generated from proof registry. Empty aggregate is not batch acceptance.\n'
        (root / 'LemmaWeave/AllVerified.lean').write_text(content + ''.join('import ' + n + '\n' for n in names))
        return 0
    errors = validate(root)
    if errors:
        print(json.dumps({'validation_errors': errors}, ensure_ascii=False, indent=2))
        return 1
    if args.command == 'validate':
        print('Ledger structure and claimed-state guards passed; no Lean proof inferred.')
        return 0
    result = metrics(root)
    if args.command == 'accept':
        accepted = result['pilot']['accepted']
        print(json.dumps({'accepted': accepted, 'reason': 'All pilot gates passed' if accepted else 'Pilot gates incomplete', 'metrics': result}, ensure_ascii=False, indent=2))
        return 0 if accepted else 2
    (root / 'reports').mkdir(exist_ok=True)
    (root / 'reports/metrics.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n')
    print(json.dumps(result, ensure_ascii=False, indent=2))
    return 0


if __name__ == '__main__':
    try:
        sys.exit(main())
    except (ValueError, KeyError, OSError) as error:
        print(str(error), file=sys.stderr)
        sys.exit(1)
