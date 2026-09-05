#!/usr/bin/env python3
"""Check observed Lean graph fixtures. This does not certify all AC08 cases."""
import json
from pathlib import Path
from lw import graph_audit
root=Path(__file__).resolve().parents[1]
def graph(name):return json.loads((root/'work'/f'{name}-graph.json').read_text())
def edge(g,a,b,kind):
 assert any(e['from']==a and e['to']==b and e['kind']==kind for e in g['edges']),(a,b,kind)
ns='LemmaWeave.Tests.'
g=graph('wrapper');edge(g,ns+'wrapper',ns+'explicitBase','proof_reference');edge(g,ns+'explicitBase','Nat.add_zero','proof_reference')
g=graph('type-only');edge(g,ns+'typeOnly',ns+'OnlyInType','type_reference')
g=graph('class');assert any(n['name']=='AddMonoid' for n in g['nodes']);assert any(n['name']=='add_zero' for n in g['nodes'])
g=graph('simp');assert len(g['nodes'])>5;assert 'propext' in g['lean_collected_axioms']
g=graph('forbidden');a=graph_audit(g);assert a['status']=='failed';assert ns+'forbiddenFixture' in a['forbidden_axioms']
results=[]
for name in ['wrapper','type-only','class','simp','forbidden']:
 g=graph(name);a=graph_audit(g)
 assert not a['unresolved_boundaries'],(name,a['unresolved_boundaries'])
 assert set(a['axioms'])==set(g['lean_collected_axioms']),(name,a['axioms'],g['lean_collected_axioms'])
 results.append({'fixture':name,'nodes':len(g['nodes']),'edges':len(g['edges']),'observed_audit':a['status'],'expectation_passed':True})
print(json.dumps({'validated_cases':results,'suite_status':'partial','remaining_real_lean_fixtures':['shared lemma from another project module','mutual definitions','unavailable or erased imported proof body'],'not_exam_proofs':True},indent=2))
