#!/usr/bin/env python3
"""Validate method recipes against actual Lean dependencies; render linked explanations."""
import argparse
import json
from pathlib import Path
from lw import graph_audit, read

ROOT = Path(__file__).resolve().parents[1]


def validate_recipe(recipe, nodes, graph):
    if recipe['root'] not in graph['roots']:
        raise ValueError('recipe root not in exported graph')
    audit = graph_audit(graph)
    if audit['status'] != 'passed':
        raise ValueError('method proof has untrusted or unresolved dependencies')
    reachable = set(audit['reachable_declarations'])
    completed = set()
    for step in recipe['steps']:
        if step['id'] in completed or not set(step['requires_steps']) <= completed:
            raise ValueError('duplicate, cyclic or future step dependency')
        if not step['condition_ja'] or not step['conclusion_ja']:
            raise ValueError('step requires explicit conditions and conclusion')
        for nid in step['uses_nodes']:
            node = nodes[nid]
            if not node['statement_ja'] or not node['assumptions_ja']:
                raise ValueError('missing method statement or applicability conditions')
            if not set(node['lean_declarations']) <= reachable:
                raise ValueError('declared method absent from actual proof dependencies: ' + nid)
        completed.add(step['id'])
    return {'recipe': recipe['id'], 'root': recipe['root'], 'audit': audit['status'],
            'steps': len(completed), 'dependency_links': 'verified',
            'natural_language_step_adequacy': recipe['semantic_review_status'],
            'limitation': 'Dependency membership does not prove the meaning of every prose step or tactic selection.'}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--render', action='store_true')
    args = parser.parse_args()
    nodes = {p.stem: read(p) for p in (ROOT / 'knowledge/method_nodes').glob('*.json')}
    recipes = [read(p) for p in sorted((ROOT / 'knowledge/recipes').glob('*.json'))]
    results = [validate_recipe(r, nodes, read(ROOT / r['graph'])) for r in recipes]
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
            lines=['# '+r['title_ja'], '', r['problem_ja'], '', '**解法の根拠を追う実例。新規問題数には加えない。**', '']
            for s in r['steps']:
                links='、'.join('['+nodes[n]['name_ja']+']('+n+'.md)' for n in s['uses_nodes'])
                lines += ['## '+s['id']+'：'+s['title_ja'], '', '条件：'+s['condition_ja'], '', '根拠：'+links, '', '得られること：'+s['conclusion_ja'], '']
            lines += ['Leanの最終根：`'+r['root']+'`。各自然言語ステップのレビュー状態：'+r['semantic_review_status']+'。', '', 'このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。']
            (dest/(r['id']+'.md')).write_text('\n'.join(lines)+'\n')
    print(json.dumps(results, ensure_ascii=False))


if __name__ == '__main__':
    main()
