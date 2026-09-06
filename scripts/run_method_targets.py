#!/usr/bin/env python3
"""レシピ台帳の全Lean対象を実行する。失敗した対象も削除せず結果に残す。"""
import json
from pathlib import Path
import subprocess
import sys
from lw import confined, read

ROOT = Path(__file__).resolve().parents[1]


def main():
    recipes = [read(p) for p in sorted((ROOT / 'knowledge/recipes').glob('*.json'))]
    targets = sorted({r['lean_file'] for r in recipes})
    results = []
    for target in targets:
        confined(ROOT, target)
        result = subprocess.run([sys.executable, 'scripts/run.py', '--timeout', '900', '--',
                                 'lake', 'env', 'lean', target], cwd=ROOT, check=False)
        results.append({'target': target, 'exit_code': result.returncode,
                        'recipes': [r['id'] for r in recipes if r['lean_file'] == target]})
    (ROOT / 'reports/method-targets.json').write_text(json.dumps(results, indent=2) + '\n')
    return int(not targets or any(r['exit_code'] for r in results))


if __name__ == '__main__':
    raise SystemExit(main())
