#!/usr/bin/env python3
"""Validate method recipes against actual Lean dependencies; render linked explanations."""
import argparse
import gzip
import hashlib
import json
from pathlib import Path
from lw import confined, graph_audit, local_import_closure, model_hash, read, verify_run

ROOT = Path(__file__).resolve().parents[1]


def validate_recipe(recipe, nodes, graph):
    if recipe['root'] not in graph['roots']:
        raise ValueError('recipe root not in exported graph')
    # Other roots must not lend their dependencies to this recipe.
    audit = graph_audit({**graph, 'roots': [recipe['root']]})
    if audit['status'] != 'passed':
        raise ValueError('method proof has untrusted or unresolved dependencies')
    reachable = set(audit['reachable_declarations'])
    if not recipe['steps']:
        raise ValueError('recipe has no justified steps')
    completed = set()
    for step in recipe['steps']:
        if step['id'] in completed or not set(step['requires_steps']) <= completed:
            raise ValueError('duplicate, cyclic or future step dependency')
        if not step['condition_ja'] or not step['conclusion_ja']:
            raise ValueError('step requires explicit conditions and conclusion')
        if not step['uses_nodes']:
            raise ValueError('step has no method justification')
        for nid in step['uses_nodes']:
            node = nodes[nid]
            if not node['statement_ja'] or not node['assumptions_ja']:
                raise ValueError('missing method statement or applicability conditions')
            if not node['lean_declarations']:
                raise ValueError('method has no Lean declaration')
            if not set(node['lean_declarations']) <= reachable:
                raise ValueError('declared method absent from actual proof dependencies: ' + nid)
        completed.add(step['id'])
    return {'recipe': recipe['id'], 'root': recipe['root'], 'audit': audit['status'],
            'steps': len(completed), 'dependency_links': 'verified',
            'natural_language_step_adequacy': recipe['semantic_review_status'],
            'limitation': 'Dependency membership does not prove the meaning of every prose step or tactic selection.'}


def proof_evidence(root, recipe, graph_bytes):
    """現在のLean入力と実際の出力ハッシュに一致する成功実行だけを採用する。"""
    required = local_import_closure(root, [recipe['lean_file']])
    required += ['lean-toolchain', 'lake-manifest.json', 'lakefile.toml']
    raw_sha = hashlib.sha256(graph_bytes).hexdigest()
    argv = ['lake', 'env', 'lean', recipe['lean_file']]
    for path in sorted((root / 'runs').glob('*/run.json'), reverse=True):
        if read(path).get('argv') != argv:
            continue
        try:
            run = verify_run(root, str(path.relative_to(root)), required, argv)
            if run.get('artifact_sha256', {}).get(recipe['graph']) != raw_sha:
                continue
            return {'run': str(path.relative_to(root)), 'git_commit': run['inputs']['git_commit'],
                    'github_run_id': run['environment'].get('github_run_id'),
                    'raw_graph_sha256': raw_sha}
        except (OSError, KeyError, ValueError):
            continue
    raise ValueError('no current successful Lean execution for recipe: ' + recipe['id'])


def batch_metrics(root, recipes, results):
    by_id = {r['id']: r for r in recipes}
    verified = {r['recipe'] for r in results if r.get('proof_evidence')}
    output = []
    for path in sorted((root / 'corpus/method_batches').glob('*.json')):
        batch = read(path)
        if model_hash(root, batch['model_files']) != batch['semantic_model_hash']:
            raise ValueError('stale frozen batch model: ' + batch['id'])
        problems = batch['problems']
        if len({p['problem_id'] for p in problems}) != len(problems):
            raise ValueError('duplicate batch problem')
        if len({p['recipe_id'] for p in problems}) != len(problems):
            raise ValueError('duplicate batch recipe')
        for p in problems:
            r = by_id[p['recipe_id']]
            if r['problem_id'] != p['problem_id'] or r['collection_id'] != batch['collection_id']:
                raise ValueError('batch problem/recipe mismatch')
            if p['model_scope'] != r['model_scope'] or p['semantic_status'] != r['semantic_review_status']:
                raise ValueError('batch semantic state differs from recipe')
        output.append({'batch': batch['id'], 'collection_id': batch['collection_id'],
                       'selected_existing_problems': len(problems),
                       'method_extracted': len(problems),
                       'kernel_checked_models': sum(p['recipe_id'] in verified for p in problems),
                       'conditional_models': sum(p['model_scope'] == 'conditional' for p in problems),
                       # This authoring batch carries no independent-review evidence.
                       'independent_semantic_checked': 0,
                       'phase1_complete': 0,
                       'reason_ja': '独立意味レビュー・全依存の教育分類は未完。条件付きモデルを原題の無条件な証明へ昇格しない。'})
    return output


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--render', action='store_true')
    args = parser.parse_args()
    nodes = {p.stem: read(p) for p in (ROOT / 'knowledge/method_nodes').glob('*.json')}
    recipes = [read(p) for p in sorted((ROOT / 'knowledge/recipes').glob('*.json'))]
    results = []
    for r in recipes:
        graph_file = confined(ROOT, r['graph'])
        archive_file = ROOT / 'reports/dependencies/methods' / (r['id'] + '.json.gz')
        raw = graph_file.read_bytes() if graph_file.exists() else gzip.decompress(archive_file.read_bytes())
        graph = json.loads(raw)
        result = validate_recipe(r, nodes, graph)
        if graph['roots'] != [r['root']]:
            raise ValueError('recipe export must have exactly one root')
        if set(graph_audit(graph)['axioms']) != set(graph['lean_collected_axioms']):
            raise ValueError('Lean axiom collector differs from dependency audit')
        result['proof_evidence'] = proof_evidence(ROOT, r, raw)
        result['recipe_sha256'] = hashlib.sha256(json.dumps(r, sort_keys=True, ensure_ascii=False).encode()).hexdigest()
        archive_file.parent.mkdir(parents=True, exist_ok=True)
        archive_file.write_bytes(gzip.compress(raw, mtime=0))
        result['graph_archive'] = str(archive_file.relative_to(ROOT))
        results.append(result)
    batches = batch_metrics(ROOT, recipes, results)
    (ROOT / 'reports/method-batches.json').write_text(json.dumps(batches, ensure_ascii=False, indent=2)+'\n')
    (ROOT / 'reports/method-recipes.json').write_text(json.dumps(results, ensure_ascii=False, indent=2)+'\n')
    if args.render:
        dest = ROOT / 'docs/methods';dest.mkdir(exist_ok=True)
        for nid, n in nodes.items():
            lines = ['# '+n['name_ja'], '', n['statement_ja'], '', '条件：'+n['assumptions_ja'],
                     '', '使う場面：'+n['use_when_ja'], '', '## 根拠と分解', '']
            lines += ['- '+x for x in n['explanation_outline_ja']]
            lines += ['', '## Lean宣言', '', *['- `'+d+'`' for d in n['lean_declarations']],
                      '', '## 前提と未展開箇所', '', *['- '+x for x in n['unexpanded']], '', '## 使用例', '']
            lines += ['- ['+r['title_ja']+']('+r['id']+'.md)' for r in recipes if any(nid in s['uses_nodes'] for s in r['steps'])]
            (dest/(nid+'.md')).write_text('\n'.join(lines)+'\n')
        for r in recipes:
            lines=['# '+r['title_ja'], '', r['problem_ja'], '', '**'+r['counting_note_ja']+'**', '']
            lines += ['- '+note for note in r.get('model_notes_ja', [])]
            lines += ['']
            for s in r['steps']:
                links='、'.join('['+nodes[n]['name_ja']+']('+n+'.md)' for n in s['uses_nodes'])
                lines += ['## '+s['id']+'：'+s['title_ja'], '', '条件：'+s['condition_ja'], '', '根拠：'+links, '', '得られること：'+s['conclusion_ja'], '']
            lines += ['Leanの最終根：`'+r['root']+'`。各自然言語ステップのレビュー状態：'+r['semantic_review_status']+'。', '', 'このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。']
            (dest/(r['id']+'.md')).write_text('\n'.join(lines)+'\n')
    print(json.dumps(results, ensure_ascii=False))


if __name__ == '__main__':
    main()
