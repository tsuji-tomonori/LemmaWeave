#!/usr/bin/env python3
"""Run every registered module and audit each successful root, preserving failures."""
import json,subprocess,sys
from pathlib import Path
root=Path(__file__).resolve().parents[1]
variants=[json.loads(p.read_text()) for p in sorted((root/'corpus/proof_variants').glob('*.json'))]
work=root/'work';work.mkdir(exist_ok=True)
def run(argv,timeout=300):
    before=set((root/'runs').glob('*/run.json'))
    rc=subprocess.run([sys.executable,'scripts/run.py','--timeout',str(timeout),'--']+argv,cwd=root,check=False).returncode
    paths=set((root/'runs').glob('*/run.json'))-before
    assert len(paths)==1
    return {'argv':argv,'exit_code':rc,'run':str(paths.pop().relative_to(root))}
extractor=run(['lake','build','LemmaWeave.Audit.Extract'])
modules={};results=[]
for v in variants:
    module=v['module']
    if module not in modules:modules[module]=run(['lake','build',module])
    result={'proof_variant_id':v['proof_variant_id'],'build':modules[module],'audit':None,'graphs':{}}
    if modules[module]['exit_code']==0 and extractor['exit_code']==0:
        file=work/('audit_'+v['proof_variant_id']+'.lean')
        text='import '+module+'\nimport LemmaWeave.Audit.Extract\n'
        for name in v['roots']:
            graph='work/'+name+'-graph.json';result['graphs'][name]=graph
            text+=f'#print axioms {name}\n#lw_dependencies {name} to "{graph}"\n'
        file.write_text(text)
        result['audit']=run(['lake','env','lean',str(file.relative_to(root))],600)
    results.append(result)
report={'schema_version':'0.1','extractor_build':extractor,'variants':results,'does_not_promote_ledger':True}
(root/'reports').mkdir(exist_ok=True)
(root/'reports/target-run-results.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
sys.exit(0 if all(x['build']['exit_code']==0 and x['audit'] and x['audit']['exit_code']==0 for x in results) else 1)
