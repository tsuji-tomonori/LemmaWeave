#!/usr/bin/env python3
"""Export exact defining modules/ranges alongside immutable raw dependency graphs."""
import json
from pathlib import Path
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[1]


def main():
    run = [sys.executable, 'scripts/run.py', '--timeout', '600', '--']
    if subprocess.run(run + ['lake', 'build', 'LemmaWeave.Audit.Locations'], cwd=ROOT).returncode:
        return 1
    variants = [json.loads(p.read_text()) for p in sorted((ROOT / 'corpus/proof_variants').glob('*.json'))]
    lines = ['import LemmaWeave.Audit.Locations']
    lines += ['import ' + m for m in sorted({v['module'] for v in variants})]
    for v in variants:
        for name in v['roots']:
            lines.append(f'#lw_locations {name} to "work/{name}-locations.json"')
    path = ROOT / 'work/locations.lean'
    path.write_text('\n'.join(lines) + '\n')
    return subprocess.run(run + ['lake', 'env', 'lean', 'work/locations.lean'], cwd=ROOT).returncode


if __name__ == '__main__':
    raise SystemExit(main())
