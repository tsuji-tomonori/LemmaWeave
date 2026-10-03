#!/usr/bin/env python3
"""Annotate a raw Lean export; preserve every dependency and unresolved boundary."""
import argparse,hashlib,json
from pathlib import Path
from lw import graph_audit

def annotate(g):
    nodes={n['name']:n for n in g['nodes']}
    for n in nodes.values():
        for key in ['type_expr','body_expr']:
            v=n.get(key)
            n[key+'_sha256']=hashlib.sha256(v.encode()).hexdigest() if v is not None else None
        n['classification']={'category':'unclassified','reason':'Requires declaration-level mathematical review'}
    # Iterative Kosaraju: no Python recursion limit, formal cycles are not learning cycles.
    adj={n:[] for n in nodes};rev={n:[] for n in nodes}
    for e in g['edges']:
        if e['from'] in nodes and e['to'] in nodes:
            adj[e['from']].append(e['to']);rev[e['to']].append(e['from'])
    seen=set();order=[]
    for start in nodes:
        if start in seen:continue
        stack=[(start,False)]
        while stack:
            n,done=stack.pop()
            if done:order.append(n);continue
            if n in seen:continue
            seen.add(n);stack.append((n,True))
            stack.extend((t,False) for t in adj[n] if t not in seen)
    seen=set();components=[]
    for start in reversed(order):
        if start in seen:continue
        component=[];stack=[start]
        while stack:
            n=stack.pop()
            if n in seen:continue
            seen.add(n);component.append(n);stack.extend(rev[n])
        components.append(sorted(component))
    g['strongly_connected_components']=components
    g['formal_cycles']=[c for c in components if len(c)>1 or c[0] in adj[c[0]]]
    g['audit']=graph_audit(g)
    g['axiom_crosscheck']=set(g['audit']['axioms'])==set(g['lean_collected_axioms'])
    if not g['axiom_crosscheck']:g['audit']['status']='partial'
    g['unclassified_declaration_count']=len(nodes)
    return g

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('input',type=Path);p.add_argument('output',type=Path);a=p.parse_args()
    g=annotate(json.loads(a.input.read_text()));a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(g,ensure_ascii=False,separators=(',',':'))+'\n')
    print(json.dumps({'output':str(a.output),'declarations':len(g['nodes']),'edges':len(g['edges']),'formal_cycles':len(g['formal_cycles']),'audit':g['audit']['status'],'axiom_crosscheck':g['axiom_crosscheck'],'unclassified':g['unclassified_declaration_count']}))
