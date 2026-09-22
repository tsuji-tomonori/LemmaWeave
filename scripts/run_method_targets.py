#!/usr/bin/env python3
"""現在証拠がないレシピを含むLean対象だけを安全に再実行する。"""
import argparse
import gzip
import json
import re
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


def missing_graph_directives(root, recipes):
    """Return recipes whose Lean source does not register the required graph."""
    sources = {}
    missing = []
    for recipe in recipes:
        target = recipe['lean_file']
        if target not in sources:
            sources[target] = (root / target).read_text()
        directive = (r'#lw_dependencies\s+' + re.escape(recipe['root']) +
                     r'\s+to\s+"' + re.escape(recipe['graph']) + r'"')
        if not re.search(directive, sources[target], re.MULTILINE):
            missing.append({'id': recipe['id'], 'lean_file': target,
                            'root': recipe['root'], 'graph': recipe['graph']})
    return missing


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--all', action='store_true', help='replay every registered method target')
    args = parser.parse_args()
    recipes = [read(p) for p in sorted((ROOT / 'knowledge/recipes').glob('*.json'))]
    missing_directives = missing_graph_directives(ROOT, recipes)
    if missing_directives:
        print(json.dumps({'error': 'missing_graph_directives',
                          'recipes': missing_directives}, ensure_ascii=False, indent=2),
              file=sys.stderr)
        return 1
    all_targets = sorted({r['lean_file'] for r in recipes})
    targets = all_targets if args.all else select_targets(recipes, lambda r: evidence_is_current(ROOT, r))
    results = []
    for target in targets:
        confined(ROOT, target)
        source = (ROOT / target).read_text()
        project_imports = sorted(set(re.findall(
            r'^\s*import\s+(LemmaWeave(?:\.[A-Za-z0-9_]+)+)\s*$',
            source, re.MULTILINE)))
        build = subprocess.run(['lake', 'build', *project_imports],
                               cwd=ROOT, check=False)
        result = None
        if build.returncode == 0:
            result = subprocess.run([sys.executable, 'scripts/run.py', '--timeout', '900', '--',
                                     'lake', 'env', 'lean', target], cwd=ROOT, check=False)
        members = [r for r in recipes if r['lean_file'] == target]
        missing_graphs = [r['graph'] for r in members if not (ROOT / r['graph']).is_file()]
        lean_exit_code = result.returncode if result is not None else None
        exit_code = build.returncode or lean_exit_code or int(bool(missing_graphs))
        results.append({'target': target, 'exit_code': exit_code,
                        'dependency_build_exit_code': build.returncode,
                        'lean_exit_code': lean_exit_code,
                        'project_imports': project_imports,
                        'recipes': [r['id'] for r in members],
                        'missing_graphs': missing_graphs})
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
