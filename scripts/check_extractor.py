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
g=graph('shared');edge(g,ns+'sharedWrapper','LemmaWeave.Audit.Fixtures.shared_add_zero','proof_reference')
g=graph('mutual');names={n['name'] for n in g['nodes']};assert 'LemmaWeave.Audit.Fixtures.evenFlag' in names;assert any('oddFlag' in n for n in names)
g=graph('hole');assert any(n['body_status']=='erased_or_untrusted' for n in g['nodes']);assert graph_audit(g)['status']=='failed';assert 'sorryAx' in graph_audit(g)['forbidden_axioms']
g=graph('cutoff');assert g['truncated'];assert graph_audit(g)['status']=='partial'
g=graph('exported-body')
exported_name='LemmaWeave.Audit.Fixtures.exported_add_zero'
exported_node=next(n for n in g['nodes'] if n['name']==exported_name)
assert exported_node['kind']=='axiom' and exported_node['body_status']=='axiom'
assert graph_audit(g)['status']=='failed'
assert exported_name in graph_audit(g)['forbidden_axioms']
results=[]
for name in ['wrapper','type-only','class','simp','forbidden','shared','mutual','hole','cutoff','exported-body']:
 g=graph(name);a=graph_audit(g)
 if name not in {'hole','cutoff','exported-body'}:
  assert not a['unresolved_boundaries'],(name,a['unresolved_boundaries'])
  assert set(a['axioms'])==set(g['lean_collected_axioms']),(name,a['axioms'],g['lean_collected_axioms'])
 results.append({'fixture':name,'nodes':len(g['nodes']),'edges':len(g['edges']),'observed_audit':a['status'],'expectation_passed':True})
report={'validated_cases':results,'suite_status':'passed','remaining_real_lean_fixtures':[],
 'imported_body_boundary':{'fixture':'exported-body','declaration':exported_name,
  'cause':'Lean module exported .olean replaces theorem body by an axiom signature',
  'handling':'Rejected by the unchanged axiom allowlist; never silently counted as a full proof-term closure',
  'recovery':'Reimport full/private module data or re-elaborate pinned source before extracting the proof',
  'source':'Lean v4.33.1 Lean/AddDecl.lean addDeclCore and Lean/Environment.lean importModules'},
 'not_exam_proofs':True}
(root/'reports').mkdir(exist_ok=True)
(root/'reports/extractor-fixtures.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
