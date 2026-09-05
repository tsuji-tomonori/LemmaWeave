#!/usr/bin/env python3
"""Locate declarations in pinned Lean source without dropping unresolved names."""
import argparse,json,re
from pathlib import Path
# This is a candidate source index; elaborator ranges remain the authoritative positions.
# Private/generated declarations may have no exact source token; never invent their location.
def index(root):
 result={}
 for base in [root/'LemmaWeave',root/'.lake/packages/mathlib/Mathlib',root/'.lake/packages/batteries/Batteries']:
  if not base.exists():continue
  for path in base.rglob('*.lean'):
   for lineno,line in enumerate(path.read_text(errors='replace').splitlines(),1):
    m=re.search(r'\b(?:theorem|lemma|def|abbrev|class|structure|inductive|opaque|instance)\s+([A-Za-z_][A-Za-z0-9_.\']*)',line)
    if m:result.setdefault(m.group(1),[]).append({'path':str(path.relative_to(root)),'line':lineno})
 return result
if __name__=='__main__':
 p=argparse.ArgumentParser(description=__doc__);p.add_argument('graph',type=Path);a=p.parse_args();root=Path(__file__).resolve().parents[1];idx=index(root);g=json.loads(a.graph.read_text());resolved=0
 for n in g['nodes']:
  candidates=idx.get(n['name'],idx.get(n['name'].split('.')[-1],[]))
  n['source_location_candidates']=candidates
  n['source_location_candidate_status']='needs_namespace_and_range_confirmation' if candidates else 'unavailable_in_indexed_sources'
  resolved+=bool(candidates)
 a.graph.write_text(json.dumps(g,ensure_ascii=False,separators=(',',':'))+'\n')
 print(json.dumps({'declarations':len(g['nodes']),'with_candidates':resolved,'source_mapping_complete':False}))
