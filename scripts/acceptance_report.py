#!/usr/bin/env python3
"""Evaluate AC01–AC12 from current evidence; report missing gates without weakening them."""
import argparse
import json
from pathlib import Path
from inventory import inspect
from lw import (confined, dag_check, local_import_closure, read, records,
                semantic_review_matches, validate, verify_run)

ROOT = Path(__file__).resolve().parents[1]


def gate(ok, reason, **details):
    return {'status': 'passed' if ok else 'inconclusive', 'reason': reason, **details}


def pilot_gate(problems, results):
    complete = {r['problem_id'] for r in results if r['phase1_complete']}
    collected = [p for p in problems if p['origin'] == 'exam' and p['collection_status'] == 'collected']
    finished = [p for p in collected if p['problem_id'] in complete]
    collection_domains = {p['domain_candidate'] for p in collected}
    proof_domains = {p['domain_candidate'] for p in finished}
    challenging = any(p.get('modeling_challenge') in {'geometry', 'approximation', 'statistical_data'} for p in finished)
    checks = {'collected_50': len(collected) >= 50, 'collection_domains_6': len(collection_domains) >= 6,
              'completed_10': len(finished) >= 10, 'proof_domains_4': len(proof_domains) >= 4,
              'modeling_challenge': challenging}
    return {'accepted': all(checks.values()), 'checks': checks,
            'collected': len(collected), 'collection_domains': sorted(collection_domains),
            'complete': len(finished), 'proof_domains': sorted(proof_domains)}


def build_report(root):
    variants = {v['proof_variant_id']: v for v in records(root, 'corpus/proof_variants')}
    sources = {s['source_id']: s for s in records(root, 'corpus/sources')}
    papers = {p['paper_id']: p for p in records(root, 'corpus/papers')}
    problems = records(root, 'corpus/problems')
    inventory = inspect(root)[0]
    learning = read(root / 'knowledge/learning-graph.json')
    dag_error = None
    try:
        dag_check(learning)
    except ValueError as error:
        dag_error = str(error)
    results = []
    for p in problems:
        vs = [variants[vid] for vid in p['lean']['proof_variants']]
        graphs = [read(confined(root, item['file'])) for v in vs
                  for item in v.get('audit_evidence', {}).get('graphs', {}).values()]
        root_types = {n['type_pretty'] for g in graphs for n in g['nodes'] if n['name'] in g['roots']}
        reviews = [read(confined(root, f)) for f in p.get('reviews', [])]
        independent = [r for r in reviews if semantic_review_matches(root, p, r)]
        mapped = inventory['problems'].get(p['problem_id'], {'complete': False, 'unclassified': None, 'learning_nodes': []})
        source = sources[papers[p['paper_id']]['source_id']]
        rights = source['rights']
        # Original-material redistribution is a separate release gate. Internal
        # processing still needs an affirmative scope-specific decision.
        actions = p.get('processing_actions', ['local_storage', 'automated_analysis'])
        rights_ok = (rights.get('access', {}).get('status') == 'allowed' and bool(actions) and
                     all(rights.get('processing', {}).get(action) == 'allowed' for action in actions))
        semantic_ok = p['status']['semantic'] == 'independent_checked' and bool(independent)
        modeling_ok = semantic_ok and any(r.get('modeling_checks_passed') is True for r in independent)
        coverage_ok = bool(vs) and bool(root_types) and root_types == set(p['lean']['goal_declarations'])
        # AC12 requires a separately recorded whole-pipeline replay and current
        # proof/model/toolchain inputs; a job URL or old exit code alone is insufficient.
        replay_ok, replay_errors = False, []
        for ref in p.get('reproduction_runs', []):
            try:
                inputs = local_import_closure(root, [f for v in vs for f in v['input_files']])
                run = verify_run(root, ref, inputs + ['lean-toolchain', 'lake-manifest.json', 'lakefile.toml', 'scripts/replay.py'],
                                 ['python3', 'scripts/replay.py'])
                original = {read(confined(root, v['build_run']))['environment'].get('github_run_id') for v in vs}
                fresh = run['environment'].get('github_run_id')
                replay_ok = replay_ok or (bool(fresh) and fresh not in original)
            except (KeyError, ValueError, OSError) as error:
                replay_errors.append(str(error))
        ac = {
            'AC01': gate(rights_ok, 'Source version/position and permissions for actual processing actions; redistribution remains separate.', processing_actions=actions),
            'AC02': gate(p['source_page_visual_review'].get('confirmed') is True, 'Original equations, figures and page positions directly checked.'),
            'AC03': gate(coverage_ok, 'Actual root types equal all registered frozen Goal declarations; adequacy remains subject to AC04.'),
            'AC04': gate(semantic_ok, 'Independent review must bind source, specification revision, model and root type hashes.'),
            'AC05': gate(p['status']['proof'] == 'kernel_checked', 'Successful fixed Lean commands and the complete local import closure are validated.'),
            'AC06': gate(p['status']['axiom_audit'] == 'passed', 'Actual transitive axioms agree with Lean and remain inside the unchanged allowlist.'),
            'AC07': gate(modeling_ok, 'Independent review must explicitly cover satisfiability, hidden assumptions and modeling sufficiency.'),
            'AC08': gate(p['status']['dependency'] == 'extracted', 'Complete extraction requires fixture validation and accounted source/body boundaries.'),
            'AC09': gate(mapped['complete'], 'Type-bound Japanese cards, prerequisites and problem backlinks are validated.', unclassified=mapped['unclassified'], mapping_errors=inventory['errors']),
            'AC10': gate(mapped['complete'] and dag_error is None, 'Known learning prerequisites must be acyclic for each proof variant; full mapping is also required.', graph_error=dag_error),
            'AC11': gate(mapped['complete'], 'All mapped cards retain Japanese claims, explanation outlines and explicitly unexpanded premises.'),
            'AC12': gate(replay_ok, 'A successful whole-pipeline replay on a different runner is bound to current inputs.', replay_errors=replay_errors),
        }
        results.append({'problem_id': p['problem_id'], 'acceptance': ac,
                        'phase1_complete': all(g['status'] == 'passed' for g in ac.values())})
    return {'schema_version': '0.2', 'problems': results,
            'phase1_complete_problems': sum(r['phase1_complete'] for r in results),
            'pilot': pilot_gate(problems, results)}


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--root', type=Path, default=ROOT)
    args = parser.parse_args()
    errors = validate(args.root)
    if errors:
        raise SystemExit(json.dumps({'validation_errors': errors}, ensure_ascii=False))
    report = build_report(args.root)
    (args.root / 'reports/acceptance.json').write_text(json.dumps(report, ensure_ascii=False, indent=2) + '\n')
    print(json.dumps({'phase1_complete_problems': report['phase1_complete_problems'], 'pilot': report['pilot']}))
