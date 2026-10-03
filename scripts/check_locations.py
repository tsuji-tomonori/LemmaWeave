#!/usr/bin/env python3
"""Compare source sidecar coverage with every actual declaration in each raw graph."""
import hashlib
import json
from pathlib import Path
from lw import read

ROOT = Path(__file__).resolve().parents[1]


def check(graph, locations):
    names = {n['name'] for n in graph['nodes']}
    items = locations['source_mapping']
    mapped = {n['name'] for n in items}
    if names != mapped or len(items) != len(mapped):
        raise ValueError('source sidecar does not exactly cover the raw declaration graph')
    if locations['root'] not in graph['roots']:
        raise ValueError('source sidecar has a different root')
    if any(not n.get('source_module') or not n.get('module_relative_file') for n in items):
        raise ValueError('unresolved defining module')
    if any(n['module_relative_file'] != n['source_module'].replace('.', '/') + '.lean' for n in items):
        raise ValueError('module-to-file mapping disagrees')
    return {'declarations': len(names), 'module_and_range': sum(n['range'] is not None for n in items),
            'module_only_no_recorded_range': sum(n['range'] is None for n in items),
            'missing_modules': 0, 'coverage': 'passed',
            'limitations': 'Generated declarations and primitives without a recorded range are explicitly retained.'}


if __name__ == '__main__':
    report = {}
    for p in sorted((ROOT / 'corpus/proof_variants').glob('*.json')):
        v = read(p)
        for name, item in v.get('audit_evidence', {}).get('graphs', {}).items():
            path = ROOT / 'work' / (name + '-locations.json')
            report[name] = check(read(ROOT / item['file']), read(path))
            report[name].update(file=str(path.relative_to(ROOT)), sha256=hashlib.sha256(path.read_bytes()).hexdigest())
    (ROOT / 'reports/source-mapping.json').write_text(json.dumps(report, indent=2) + '\n')
    print(json.dumps(report, indent=2))
