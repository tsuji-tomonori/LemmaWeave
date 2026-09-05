#!/usr/bin/env python3
"""Record an actual command and return its exit code; never promote proof state."""
import argparse
import datetime as dt
import hashlib
import json
import pathlib
import os
import platform
import subprocess
import sys
import uuid

ROOT = pathlib.Path(__file__).resolve().parents[1]


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def snapshot(root):
    result = {}
    excluded = {'.git', '.lake', '.private', '__pycache__', 'runs', 'reports'}
    for directory, dirs, files in os.walk(root):
        dirs[:] = sorted(d for d in dirs if d not in excluded)
        for name in sorted(files):
            path = pathlib.Path(directory) / name
            if path.is_file():
                result[str(path.relative_to(root))] = sha(path)
    return result


def capture(argv, root):
    p = subprocess.run(argv, cwd=root, text=True, capture_output=True, check=False)
    return p.returncode, p.stdout.strip()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--timeout', type=int, default=300)
    parser.add_argument('argv', nargs=argparse.REMAINDER)
    args = parser.parse_args()
    argv = args.argv[1:] if args.argv[:1] == ['--'] else args.argv
    if not argv:
        parser.error('provide a command after --')
    started = dt.datetime.now(dt.timezone.utc)
    run_id = started.strftime('%Y%m%dT%H%M%S') + '-' + uuid.uuid4().hex[:8]
    out = ROOT / 'runs' / run_id
    out.mkdir(parents=True)
    commit_rc, commit = capture(['git', 'rev-parse', 'HEAD'], ROOT)
    _, dirty = capture(['git', 'status', '--porcelain'], ROOT)
    record = {
        'schema_version': '0.1', 'run_id': run_id,
        'started_at': started.isoformat(), 'finished_at': None,
        'status': 'running', 'argv': argv, 'cwd': str(ROOT),
        'inputs': {'git_commit': commit if commit_rc == 0 else None,
                   'dirty_tree': bool(dirty), 'files': snapshot(ROOT)},
        'environment': {'os': platform.platform(), 'python': sys.version, 'github_run_id': os.getenv('GITHUB_RUN_ID'),
                        'lean_version_observed': None, 'container_digest': None},
        'exit_code': None, 'stdout_log': str((out / 'stdout.log').relative_to(ROOT)),
        'stderr_log': str((out / 'stderr.log').relative_to(ROOT)),
        'trust_warning': 'Exit 0 alone does not establish semantic review, Lean proof, or acceptance.'}
    (out / 'run.json').write_text(json.dumps(record, ensure_ascii=False, indent=2) + '\n')
    with (out / 'stdout.log').open('wb') as stdout, (out / 'stderr.log').open('wb') as stderr:
        try:
            p = subprocess.run(argv, cwd=ROOT, stdout=stdout, stderr=stderr,
                               timeout=args.timeout, check=False)
            code = p.returncode
            record['status'] = 'succeeded' if code == 0 else 'failed'
        except FileNotFoundError as error:
            stderr.write((str(error) + '\n').encode())
            code = 127
            record['status'] = 'environment_failure'
        except subprocess.TimeoutExpired:
            stderr.write(b'Command exceeded recorded timeout; no success inferred.\n')
            code = 124
            record['status'] = 'timeout'
    record['finished_at'] = dt.datetime.now(dt.timezone.utc).isoformat()
    record['exit_code'] = code
    record['output_sha256'] = {name: sha(out / name) for name in ['stdout.log', 'stderr.log']}
    (out / 'run.json').write_text(json.dumps(record, ensure_ascii=False, indent=2) + '\n')
    print(json.dumps({'run': str((out / 'run.json').relative_to(ROOT)), 'exit_code': code}))
    return code if code >= 0 else 128 - code


if __name__ == '__main__':
    sys.exit(main())
