#!/usr/bin/env python3
"""現在証拠がないレシピを含むLean対象だけを安全に再実行する。"""
import argparse
import gzip
import json
from pathlib import Path
import subprocess
import sys
from lw import confined, read
from check_method_recipes import proof_evidence

ROOT = Path(__file__).resolve().parents[1]


def evidence_is_current(root, recipe):
    """Use the same freshness gate that later promotes a recipe."""
    graph = root / recipe['graph']
    archived = root / 'reports/dependencies/methods' / (recipe['id'] + '.json.gz')
    try:
        raw = graph.read_bytes() if graph.exists() else gzip.decompress(archived.read_bytes())
        proof_evidence(root, recipe, raw)
        return True
    except (OSError, KeyError, ValueError):
        return False


def select_targets(recipes, is_current):
    """Select a whole Lean target when any recipe in that target is stale."""
    grouped = {}
    for recipe in recipes:
        grouped.setdefault(recipe['lean_file'], []).append(recipe)
    return sorted(target for target, members in grouped.items()
                  if any(not is_current(recipe) for recipe in members))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--all', action='store_true', help='replay every registered method target')
    args = parser.parse_args()
    recipes = [read(p) for p in sorted((ROOT / 'knowledge/recipes').glob('*.json'))]
    all_targets = sorted({r['lean_file'] for r in recipes})
    targets = all_targets if args.all else select_targets(recipes, lambda r: evidence_is_current(ROOT, r))
    results = []
    for target in targets:
        confined(ROOT, target)
        result = subprocess.run([sys.executable, 'scripts/run.py', '--timeout', '900', '--',
                                 'lake', 'env', 'lean', target], cwd=ROOT, check=False)
        results.append({'target': target, 'exit_code': result.returncode,
                        'recipes': [r['id'] for r in recipes if r['lean_file'] == target]})
    (ROOT / 'reports/method-targets.json').write_text(json.dumps(results, indent=2) + '\n')
    selection = {
        'mode': 'all' if args.all else 'stale_evidence_only',
        'registered_target_count': len(all_targets),
        'selected_target_count': len(targets),
        'skipped_current_target_count': len(all_targets) - len(targets),
        'selected_targets': targets,
        'safety_gate': 'check_method_recipes.proof_evidence over Lean import closure and graph hash'
    }
    (ROOT / 'reports/method-target-selection.json').write_text(json.dumps(selection, indent=2) + '\n')
    return int(any(r['exit_code'] for r in results))


if __name__ == '__main__':
    raise SystemExit(main())
