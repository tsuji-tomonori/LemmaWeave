#!/usr/bin/env python3
"""Generate all proof roots from the registry, including attempts that have not passed."""
import json
from pathlib import Path
root=Path(__file__).resolve().parents[1]
v=[json.loads(p.read_text()) for p in sorted((root/'corpus/proof_variants').glob('*.json'))]
imports=sorted({x['module'] for x in v}|{'LemmaWeave.Audit.Extract'})
text=''.join('import '+m+'\n' for m in imports)+'\n'
for variant in v:
 for name in variant['roots']:
  text+=f'#print axioms {name}\n#lw_dependencies {name} to "work/{name}-graph.json"\n'
(root/'LemmaWeave/Audit/AllRoots.lean').write_text(text)
print(f'Generated {sum(len(x["roots"]) for x in v)} roots from {len(v)} variants.')
