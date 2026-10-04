#!/usr/bin/env python3
"""現在証拠がないレシピを含むLean対象だけを安全に再実行する。"""
import argparse
from concurrent.futures import ThreadPoolExecutor, as_completed
import gzip
import json
import re
from pathlib import Path
import subprocess
import sys
from lw import confined, read
from check_method_recipes import proof_evidence

ROOT = Path(__file__).resolve().parents[1]


def write_json(path, payload):
    """Write valid JSON with one real trailing newline."""
    path.write_text(json.dumps(payload, indent=2) + '\n')


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


def dependency_directive_present(source, root, graph):
    """Accept a qualified root or a short root opened by its exact namespace."""
    names = [root]
    if '.' in root:
        namespace, short_root = root.rsplit('.', 1)
        open_directive = r'^\s*open\s+' + re.escape(namespace) + r'\s*$'
        if re.search(open_directive, source, re.MULTILINE):
            names.append(short_root)
    for name in names:
        directive = (r'#lw_dependencies\s+' + re.escape(name) +
                     r'\s+to\s+"' + re.escape(graph) + r'"')
        if re.search(directive, source, re.MULTILINE):
            return True
    return False


def missing_graph_directives(root, recipes):
    """Return malformed recipes and sources missing the required graph directive."""
    sources = {}
    missing = []
    required = ('id', 'lean_file', 'root', 'graph')
    for recipe in recipes:
        missing_fields = [field for field in required if not recipe.get(field)]
        if missing_fields:
            missing.append({
                'id': recipe.get('id'),
                'lean_file': recipe.get('lean_file'),
                'root': recipe.get('root'),
                'graph': recipe.get('graph'),
                'missing_fields': missing_fields,
            })
            continue
        target = recipe['lean_file']
        if target not in sources:
            sources[target] = (root / target).read_text()
        if not dependency_directive_present(
                sources[target], recipe['root'], recipe['graph']):
            missing.append({'id': recipe['id'], 'lean_file': target,
                            'root': recipe['root'], 'graph': recipe['graph']})
    return missing


def target_plan(root, target):
    confined(root, target)
    source = (root / target).read_text()
    project_imports = sorted(set(re.findall(
        r'^\s*import\s+(LemmaWeave(?:\.[A-Za-z0-9_]+)+)\s*$',
        source, re.MULTILINE)))
    return {'target': target, 'project_imports': project_imports}


def run_dependency_build(imports):
    """Run a dependency build through the evidence wrapper for bounded diagnostics."""
    return subprocess.run(
        [sys.executable, 'scripts/run.py', '--timeout', '900', '--',
         'lake', 'build', *imports],
        cwd=ROOT, check=False)


def build_target_plan(plan):
    """Build one target's imports and return its isolated outcome.

    A failed imported model is isolated to the targets that actually import it.
    Builds stay serial because different targets may share imported modules and
    therefore write the same Lake outputs.
    """
    imports = plan['project_imports']
    dependency = run_dependency_build(imports) if imports else None
    dependency_exit = dependency.returncode if dependency is not None else 0
    return {
        'target': plan['target'],
        'dependency_build_exit_code': dependency_exit,
        'lean_exit_code': None,
    }


def build_target_plans(plans):
    """Build all imports once; isolate per target only if the batch fails."""
    imports = sorted({name for plan in plans for name in plan['project_imports']})
    if not imports:
        return {
            plan['target']: {
                'target': plan['target'],
                'dependency_build_exit_code': 0,
                'lean_exit_code': None,
            }
            for plan in plans
        }
    batch = run_dependency_build(imports)
    if batch.returncode == 0:
        return {
            plan['target']: {
                'target': plan['target'],
                'dependency_build_exit_code': 0,
                'lean_exit_code': None,
            }
            for plan in plans
        }
    return {plan['target']: build_target_plan(plan) for plan in plans}


def run_lean_target(target):
    """Produce evidence for one target after its dependencies have built."""
    return subprocess.run(
        [sys.executable, 'scripts/run.py', '--timeout', '900', '--',
         'lake', 'env', 'lean', target],
        cwd=ROOT, check=False).returncode


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--all', action='store_true',
                        help='replay every registered method target')
    parser.add_argument('--jobs', type=int, default=4,
                        help='number of independent Lean targets to check concurrently (1-4)')
    args = parser.parse_args()
    if not 1 <= args.jobs <= 4:
        parser.error('--jobs must be between 1 and 4')
    recipes = [read(p) for p in sorted((ROOT / 'knowledge/recipes').glob('*.json'))]
    missing_directives = missing_graph_directives(ROOT, recipes)
    if missing_directives:
        print(json.dumps({'error': 'missing_graph_directives',
                          'recipes': missing_directives}, ensure_ascii=False, indent=2),
              file=sys.stderr)
        return 1
    all_targets = sorted({r['lean_file'] for r in recipes})
    targets = all_targets if args.all else select_targets(
        recipes, lambda r: evidence_is_current(ROOT, r))
    plans = [target_plan(ROOT, target) for target in targets]
    outcomes = build_target_plans(plans)
    runnable = [plan['target'] for plan in plans
                if outcomes[plan['target']]['dependency_build_exit_code'] == 0]
    lean_codes = {}
    with ThreadPoolExecutor(max_workers=args.jobs) as executor:
        futures = {executor.submit(run_lean_target, target): target
                   for target in runnable}
        for future in as_completed(futures):
            target = futures[future]
            lean_exit = future.result()
            lean_codes[target] = lean_exit
            outcomes[target]['lean_exit_code'] = lean_exit
            checkpoint = {
                'selected_target_count': len(targets),
                'completed_target_count': len(lean_codes),
                'remaining_target_count': len(runnable) - len(lean_codes),
                'jobs': args.jobs,
                'completed_outcomes': [outcomes[name]
                                       for name in sorted(lean_codes)],
            }
            write_json(ROOT / 'reports/method-target-checkpoint.json', checkpoint)
    results = []
    for plan in plans:
        target = plan['target']
        outcome = outcomes[target]
        members = [r for r in recipes if r['lean_file'] == target]
        missing_graphs = [r['graph'] for r in members
                          if not (ROOT / r['graph']).is_file()]
        dependency_exit = outcome['dependency_build_exit_code']
        lean_exit = outcome['lean_exit_code']
        exit_code = dependency_exit or lean_exit or int(bool(missing_graphs))
        results.append({
            'target': target,
            'exit_code': exit_code,
            'dependency_build_exit_code': dependency_exit,
            'lean_exit_code': lean_exit,
            'project_imports': plan['project_imports'],
            'recipes': [r['id'] for r in members],
            'missing_graphs': missing_graphs,
        })
    write_json(ROOT / 'reports/method-targets.json', results)
    selection = {
        'mode': 'all' if args.all else 'stale_evidence_only',
        'registered_target_count': len(all_targets),
        'selected_target_count': len(targets),
        'skipped_current_target_count': len(all_targets) - len(targets),
        'selected_targets': targets,
        'jobs': args.jobs,
        'dependency_build_strategy':
            'single_batch_build_with_failure_isolation_then_parallel_checks',
        'safety_gate':
            'check_method_recipes.proof_evidence over Lean import closure and graph hash',
    }
    write_json(ROOT / 'reports/method-target-selection.json', selection)
    return int(any(r['exit_code'] for r in results))


if __name__ == '__main__':
    raise SystemExit(main())
