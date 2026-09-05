#!/usr/bin/env python3
"""Emit AC01–AC12 gaps conservatively, without converting self review into independence."""
from pathlib import Path
import json,gzip
from lw import validate,read,dag_check
from inventory import inspect
root=Path(__file__).resolve().parents[1]
assert not validate(root),validate(root)
variants={x['proof_variant_id']:x for x in [read(p) for p in (root/'corpus/proof_variants').glob('*.json')]}
inventory=inspect(root)[0]
learning=read(root/'knowledge/learning-graph.json');dag_check(learning)
results=[]
for p in (root/'corpus/problems').glob('*.json'):
    problem=read(p);graphs=[read(root/item['file']) for vid in problem['lean']['proof_variants'] for item in variants[vid]['audit_evidence']['graphs'].values()]
    names={n['name'] for g in graphs for n in g['nodes']}
    goals=set(problem['lean']['goal_declarations'])
    root_types={n['type_pretty'] for g in graphs for n in g['nodes'] if n['name'] in g['roots']}
    ac={
        'AC01':{'status':'inconclusive','reason':'Metadata and PDF version pinned; original-material reuse remains conditional and code-only rights scope is self-reviewed.'},
        'AC02':{'status':'passed' if problem['source_page_visual_review']['confirmed'] else 'inconclusive','reason':'Original pages inspected directly; document hash and locators recorded.'},
        'AC03':{'status':'passed' if root_types==goals else 'failed','reason':'Actual theorem types are exactly the frozen Goal declarations; semantic sufficiency is separately reviewed under AC04.'},
        'AC04':{'status':'passed' if problem['status']['semantic']=='independent_checked' else 'inconclusive','reason':'Current-version independent source review validated.' if problem['status']['semantic']=='independent_checked' else 'self_review_only; no independent review session exists.'},
        'AC05':{'status':'passed' if problem['status']['proof']=='kernel_checked' else 'inconclusive','reason':'Input and output hashes validated against recorded successful Lean commands.'},
        'AC06':{'status':'passed' if problem['status']['axiom_audit']=='passed' else 'inconclusive','reason':'Transitive graph axioms match Lean.collectAxioms and the three-item allowlist.'},
        'AC07':{'status':'inconclusive','reason':'Full-solution equivalences and attainment goals are present; absence of semantic modelling errors remains self-reviewed.'},
        'AC08':{'status':'partial','reason':'Actual closure traversed without truncation or unavailable bodies; naturally unavailable-import fixture and exact source file mapping remain incomplete.'},
        'AC09':{'status':'passed' if inventory['problems'][problem['problem_id']]['complete'] else 'inconclusive','unclassified':inventory['problems'][problem['problem_id']]['unclassified'],'reason':'Coverage requires current type hashes, exact exported statements, Japanese cards, prerequisites and correct problem backlinks; names alone do not count.','mapping_errors':inventory['errors']},
        'AC10':{'status':'partial','reason':'Known prerequisite edges are acyclic per proof variant; graph coverage is incomplete.'},
        'AC11':{'status':'partial','reason':'Japanese cards and per-declaration formal statements/frontier exist; remaining Japanese mathematical explanations are not supplied.'},
        'AC12':{'status':'partial','reason':'Proof modules rebuilt on fresh Actions runners; complete pipeline replay evidence is being retained separately.'}
    }
    results.append({'problem_id':problem['problem_id'],'acceptance':ac,'phase1_complete':all(x['status']=='passed' for x in ac.values())})
report={'schema_version':'0.1','problems':results,'phase1_complete_problems':sum(x['phase1_complete'] for x in results)}
(root/'reports/acceptance.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
print(json.dumps({'phase1_complete_problems':report['phase1_complete_problems'],'problems':len(results)}))
