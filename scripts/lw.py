#!/usr/bin/env python3
"""Local ledger, stale-evidence and graph checks. No automatic proof-state promotion."""
import argparse
import hashlib
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
    return json.loads(path.read_text())


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
                    verify_run(root, v['build_run'], v['input_files'] +
                               ['lean-toolchain', 'lake-manifest.json', 'lakefile.toml'], ['lake', 'build'])
                    if p['lean']['semantic_model_hash'] != model_hash(root, p['lean']['model_files']):
                        raise ValueError('stale semantic model')
            if p['status']['semantic'] == 'independent_checked':
                matching = [read(confined(root, f)) for f in p['reviews']]
                if not any(r.get('independence') == 'independent' and
                           r.get('verdict') == 'passed' and
                           r['target'].get('semantic_model_hash') == p['lean']['semantic_model_hash'] and
                           r.get('source_pages_directly_checked') for r in matching):
                    raise ValueError('missing independent current-version source review')
            if p['status']['axiom_audit'] == 'passed':
                raise ValueError('audit promotion is disabled until Lean extractor fixture suite passes')
            if p['status']['dependency'] == 'extracted' or p['status']['inventory'] == 'mapped':
                raise ValueError('extraction/inventory promotion disabled pending extractor validation')
        except (KeyError, ValueError, OSError) as error:
            errors.append(p['problem_id'] + ': ' + str(error))
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


def metrics(root):
    p = [p for p in records(root, 'corpus/problems') if p['origin'] == 'exam']
    sources = records(root, 'corpus/sources')
    return {
        'candidate_problems': len(p),
        'located_sources': sum(s['source_status'] == 'located' for s in sources),
        'fetched_papers': sum(bool(p.get('sha256')) for p in records(root, 'corpus/papers')),
        'collected_problems': sum(x['collection_status'] == 'collected' for x in p),
        'semantic_checked_problems': sum(x['status']['semantic'] == 'independent_checked' for x in p),
        'kernel_checked_problems': sum(x['status']['proof'] == 'kernel_checked' for x in p),
        'axiom_audit_passed_problems': sum(x['status']['axiom_audit'] == 'passed' for x in p),
        'audited_proofs': sum(x['status']['semantic'] == 'independent_checked' and
                             x['status']['proof'] == 'kernel_checked' and
                             x['status']['axiom_audit'] == 'passed' for x in p),
        'phase1_complete_problems': 0,
        'phase1_complete_policy': 'disabled until AC01-AC12 evidence checker and Lean fixtures are validated',
        'learning_nodes': len(records(root, 'knowledge/nodes')),
        'unclassified_dependencies': None,
        'unclassified_dependencies_reason': 'No proof-term extraction executed; not a measured zero.',
        'educational_frontier_status': 'not_extracted',
        'target_first_batch': 5, 'target_first_batch_complete_minimum': 1,
        'target_pilot_collected': 50, 'target_pilot_complete': 10,
        'overall_verdict': 'INCONCLUSIVE'}


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
        print(json.dumps({'accepted': False, 'reason': 'M0/M1 gates incomplete', 'metrics': result}, ensure_ascii=False, indent=2))
        return 2
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
