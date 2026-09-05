#!/usr/bin/env python3
"""Produce formal SCC reports and explicit learning-graph/frontier counts."""
from pathlib import Path
import gzip,json,hashlib
from finalize_graph import annotate
from lw import dag_check
root=Path(__file__).resolve().parents[1]
for path in sorted((root/'reports/dependencies/raw').glob('*.json.gz')):
    graph=json.loads(gzip.decompress(path.read_bytes()))
    g=annotate(graph)
    result={k:g[k] for k in ['roots','audit','axiom_crosscheck','formal_cycles','strongly_connected_components']}
    result.update(source_graph=str(path.relative_to(root)),source_sha256=hashlib.sha256(path.read_bytes()).hexdigest(),unclassified_policy='See knowledge/declaration-classifications.json; no prefix-based blanket exclusion')
    out=root/'reports/dependencies'/(path.name.removesuffix('.json.gz')+'-analysis.json.gz')
    out.write_bytes(gzip.compress(json.dumps(result,ensure_ascii=False).encode(),mtime=0))
    print(json.dumps({'root':g['roots'][0],'declarations':len(g['nodes']),'formal_cycle_components':len(g['formal_cycles']),'audit':g['audit']['status']}))
cards=[json.loads(p.read_text()) for p in (root/'knowledge/nodes').glob('*.json')]
variants=[json.loads(p.read_text()) for p in (root/'corpus/proof_variants').glob('*.json')]
node_ids={c['learning_node_id'] for c in cards}
learning={'schema_version':'0.1','status':'partial_not_all_mathematical_prerequisites_mapped','nodes':sorted(node_ids),'edges':[],'unexpanded_evidence':'knowledge/educational-frontier.json.gz'}
for v in variants:
    actual_names={n['name'] for item in v.get('audit_evidence',{}).get('graphs',{}).values()
                  for n in json.loads(gzip.decompress((root/item['file']).read_bytes()))['nodes']}
    for card in cards:
        if not actual_names.intersection(card['lean_declarations']):continue
        for pre in card['prerequisite_nodes']:
            assert pre in node_ids
            learning['edges'].append({'from':pre,'to':card['learning_node_id'],'kind':'prerequisite','proof_variant_id':v['proof_variant_id'],'evidence':'knowledge/nodes/'+card['learning_node_id']+'.json',
                                      'reason':'Declared prerequisite of this card, which is used by the actual proof variant.',
                                      'review_status':card['classification_evidence']['independence']})
dag_check(learning)
(root/'knowledge/learning-graph.json').write_text(json.dumps(learning,ensure_ascii=False,indent=2)+'\n')
print('Learning graph is acyclic per variant; coverage is partial.')
