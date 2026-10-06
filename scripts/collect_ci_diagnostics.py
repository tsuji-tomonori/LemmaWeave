#!/usr/bin/env python3
"""Collect a bounded, connector-downloadable diagnosis for one GitHub Actions run."""
import argparse
import datetime as dt
import json
import os
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
TAIL_BYTES = 16 * 1024
OPTIONAL_REPORTS = (
    'reports/method-target-checkpoint.json',
    'reports/method-targets.json',
    'reports/method-target-selection.json',
)


def tail_text(path):
    if not path:
        return None
    path = ROOT / path
    if not path.is_file():
        return None
    data = path.read_bytes()
    return data[-TAIL_BYTES:].decode(errors='replace')


def load_json(path):
    path = ROOT / path
    if not path.is_file():
        return None
    text = path.read_text()
    try:
        return json.loads(text)
    except json.JSONDecodeError as exc:
        # Older checkpoints accidentally appended the two literal characters
        # "\\n". Recover that one known format without hiding other corruption.
        if text.endswith('\\n'):
            try:
                return json.loads(text[:-2])
            except json.JSONDecodeError:
                pass
        return {
            'diagnostic_status': 'invalid_json',
            'path': str(path.relative_to(ROOT)),
            'error': str(exc),
            'text_tail': text[-TAIL_BYTES:],
        }


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--github-run-id', default=os.getenv('GITHUB_RUN_ID'))
    parser.add_argument('--output', default='reports/ci-diagnostics.json')
    args = parser.parse_args()
    if not args.github_run_id:
        parser.error('provide --github-run-id outside GitHub Actions')

    records = []
    for path in sorted((ROOT / 'runs').glob('*/run.json')):
        data = json.loads(path.read_text())
        if str(data.get('environment', {}).get('github_run_id')) != str(args.github_run_id):
            continue
        item = {
            'run_id': data.get('run_id'),
            'argv': data.get('argv'),
            'status': data.get('status'),
            'exit_code': data.get('exit_code'),
            'started_at': data.get('started_at'),
            'finished_at': data.get('finished_at'),
            'output_sha256': data.get('output_sha256'),
        }
        if data.get('status') != 'succeeded':
            item['stdout_tail'] = tail_text(data.get('stdout_log', ''))
            item['stderr_tail'] = tail_text(data.get('stderr_log', ''))
        records.append(item)

    payload = {
        'schema_version': '1.0',
        'github_run_id': str(args.github_run_id),
        'generated_at': dt.datetime.now(dt.timezone.utc).isoformat(),
        'git_commit': next((r.get('inputs', {}).get('git_commit')
                            for p in sorted((ROOT / 'runs').glob('*/run.json'))
                            for r in [json.loads(p.read_text())]
                            if str(r.get('environment', {}).get('github_run_id')) == str(args.github_run_id)), None),
        'run_count': len(records),
        'failed_or_timed_out_count': sum(r['status'] != 'succeeded' for r in records),
        'runs': records,
        'method_target_checkpoint': load_json(OPTIONAL_REPORTS[0]),
        'method_targets': load_json(OPTIONAL_REPORTS[1]),
        'method_target_selection': load_json(OPTIONAL_REPORTS[2]),
    }
    output = ROOT / args.output
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + '\n')
    print(json.dumps({
        'github_run_id': payload['github_run_id'],
        'git_commit': payload['git_commit'],
        'run_count': payload['run_count'],
        'failed_or_timed_out_count': payload['failed_or_timed_out_count'],
        'failed_commands': [
            {'argv': r['argv'], 'status': r['status'], 'exit_code': r['exit_code']}
            for r in records if r['status'] != 'succeeded'
        ],
        'output': str(output.relative_to(ROOT)),
    }, ensure_ascii=False, indent=2))
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
