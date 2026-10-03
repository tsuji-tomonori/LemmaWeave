#!/usr/bin/env python3
"""Bounded repair of driver syntax hidden by imported-model build failures.

This does not establish recipe or dependency success. Each converted bare audit
root must also pass the existing final-graph and per-line dependency checks.
"""
import argparse
import hashlib
import json
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[1]
MANIFEST = ROOT / 'reviews/hidden-driver-technical-scope-20261003.json'


def mask_lean(source):
    """Preserve offsets/newlines while masking strings and nested comments."""
    out = list(source)
    i = 0
    def blank(start, end):
        for j in range(start, end):
            if out[j] not in '\r\n':
                out[j] = ' '
    while i < len(source):
        if source.startswith('--', i):
            end = source.find('\n', i)
            end = len(source) if end < 0 else end
            blank(i, end)
            i = end
        elif source.startswith('/-', i):
            start = i
            i += 2
            depth = 1
            while i < len(source) and depth:
                if source.startswith('/-', i):
                    depth += 1
                    i += 2
                elif source.startswith('-/', i):
                    depth -= 1
                    i += 2
                else:
                    i += 1
            if depth:
                raise ValueError('unclosed Lean comment')
            blank(start, i)
        elif source[i] == '"':
            start = i
            i += 1
            while i < len(source):
                if source[i] == '\\':
                    i += 2
                elif source[i] == '"':
                    i += 1
                    break
                else:
                    i += 1
            else:
                raise ValueError('unclosed Lean string')
            blank(start, i)
        else:
            i += 1
    return ''.join(out)


def transform(source, model_source=None, individual_graphs=None, missing_model_binders=False, explicit_output_changes=None):
    masked = mask_lean(source)
    edits = []
    aliases = list(re.finditer(
        r'(?m)^[ \t]*namespace[ \t]+(\w+)[ \t]*:=[ \t]*([\w.]+)', masked))
    if len(aliases) > 1:
        raise ValueError('multiple namespace aliases need individual review')
    for alias in aliases:
        if source[alias.start():alias.end()] != masked[alias.start():alias.end()]:
            raise ValueError('comment inside namespace alias requires individual review')
        edits.append((*alias.span(), ''))
        for ref in re.finditer(r'(?<![\w.])' + re.escape(alias[1]) + r'\.', masked):
            edits.append((*ref.span(), alias[2] + '.'))
    bare = []
    for directive in re.finditer(r'#lw_dependencies\s+([\w.]+)', masked):
        if re.match(r'\s+to\b', masked[directive.end():]):
            continue
        # Keep the exact identifier and its surrounding comments/whitespace.
        start = directive.start()
        graph = (individual_graphs or {}).get(directive[1])
        if graph is None:
            edits.append((start, start + len('#lw_dependencies'), '#check'))
        else:
            if not re.fullmatch(r'work/[A-Za-z0-9_.-]+-graph\.json', graph):
                raise ValueError('individual output must be a confined recorded graph path')
            edits.append((directive.end(), directive.end(), ' to ' + json.dumps(graph)))
        bare.append(directive[1])
    inferred = list(re.finditer(r'(?m)^theorem[ \t]+(\w+)[ \t]*:=[ \t]*([\w.]+)', masked))
    if inferred:
        if model_source is None:
            raise ValueError('explicit model source is required for inferred wrappers')
        model_mask = mask_lean(model_source)
        namespaces = re.findall(r'(?m)^namespace ([\w.]+)[ \t]*$', model_mask)
        if len(namespaces) != 1:
            raise ValueError('model namespace is ambiguous')
        namespace = namespaces[0]
        declared = set(re.findall(r'(?m)^(?:structure|def|abbrev|inductive|theorem) (\w+)', model_mask))
        for declaration in inferred:
            name, reference = declaration[1], declaration[2]
            if reference != namespace + '.' + name:
                raise ValueError('wrapper must refer to its exact model theorem')
            signature = re.search(r'(?m)^theorem ' + re.escape(name) + r'\b([\s\S]*?)\s*:=', model_mask)
            if signature is None:
                raise ValueError('missing explicit model theorem signature')
            raw = model_source[signature.start(1):signature.end(1)]
            prefix = re.match(r'\s*((?:\([^\n()]*\)\s*)*):', raw)
            if prefix is None:
                raise ValueError('non-simple binders need individual review')
            binders = re.findall(r'\((\w+)\s*:', prefix[1])
            if len(binders) != prefix[1].count('('):
                raise ValueError('grouped binders need individual review')
            type_edits = [(m.start(), m.end(), namespace + '.' + m[0])
                          for m in re.finditer(r'(?<![\w.])[A-Za-z_][A-Za-z0-9_]*', mask_lean(raw))
                          if m[0] in declared]
            for start, end, replacement in reversed(type_edits):
                raw = raw[:start] + replacement + raw[end:]
            replacement = 'theorem ' + name + raw + ' := ' + reference
            if binders:
                replacement += ' ' + ' '.join(binders)
            edits.append((*declaration.span(), replacement))
        if '#lw_dependencies' in masked and 'import LemmaWeave.Audit.Extract' not in masked:
            first_import = re.search(r'(?m)^import [\w.]+[^\S\n]*\n', masked)
            if first_import is None:
                raise ValueError('missing first import')
            edits.append((first_import.end(), first_import.end(), 'import LemmaWeave.Audit.Extract\n'))
    for start, end, replacement in sorted(edits, reverse=True):
        source = source[:start] + replacement + source[end:]
    if missing_model_binders:
        source = bind_missing_model_parameters(source, model_source)
    for change in explicit_output_changes or []:
        pattern = r'(#lw_dependencies\s+' + re.escape(change['root']) + r'\s+to\s+")' + re.escape(change['old_graph']) + r'(")'
        masked_output = mask_lean(source)
        matches = [m for m in re.finditer(pattern, source) if masked_output[m.start():].startswith('#lw_dependencies')]
        if len(matches) != 1 or not re.fullmatch(r'work/[A-Za-z0-9_.-]+-graph\.json', change['new_graph']):
            raise ValueError('ambiguous or unconfined explicit output repair')
        m = matches[0]
        source = source[:m.start()] + m[1] + change['new_graph'] + m[2] + source[m.end():]
    return source, bare


def bind_missing_model_parameters(source, model_source):
    if model_source is None:
        raise ValueError('model source required for missing binder repair')
    model = mask_lean(model_source)
    namespace = re.search(r'(?m)^namespace ([\w.]+)', model)[1]
    declared = set(re.findall(r'(?m)^(?:structure|def|abbrev|inductive|theorem) (\w+)', model))
    edits = []
    pattern = r'(?m)^theorem (\w+)([ \t]*:[^\n]*?)[ \t]*:=[ \t]*(' + re.escape(namespace) + r'\.\w+)'
    for declaration in re.finditer(pattern, mask_lean(source)):
        if declaration[3] != namespace + '.' + declaration[1]:
            raise ValueError('wrapper/model name mismatch')
        signature = re.search(r'(?m)^theorem ' + re.escape(declaration[1]) + r'\b([\s\S]*?)\s*:=', model)
        if signature is None:
            raise ValueError('missing model signature')
        parts = re.match(r'\s*((?:\([^\n()]*\)\s*)*)(:[\s\S]*)', signature[1])
        if parts is None or re.sub(r'\s+', '', parts[2]) != re.sub(r'\s+', '', declaration[2]):
            raise ValueError('explicit conclusion differs from fixed model')
        binder_text = parts[1].strip()
        if not binder_text:
            continue
        binders = re.findall(r'\((\w+)\s*:', binder_text)
        if len(binders) != binder_text.count('('):
            raise ValueError('non-simple missing model binder')
        binder_text = re.sub(r'(?<![\w.])[A-Za-z_][A-Za-z0-9_]*', lambda m: namespace + '.' + m[0] if m[0] in declared else m[0], binder_text)
        name_end = declaration.start(1) + len(declaration[1])
        edits.append((name_end, name_end, ' ' + binder_text))
        edits.append((declaration.end(3), declaration.end(3), ' ' + ' '.join(binders)))
    if len(edits) != 94:
        raise ValueError('fixed missing-binder repair must cover exactly47 wrappers')
    for start, end, replacement in sorted(edits, reverse=True):
        source = source[:start] + replacement + source[end:]
    return source


def validate_frozen_inputs(row, root):
    if row.get('model_path'):
        model = root / row['model_path']
        if hashlib.sha256(model.read_bytes()).hexdigest() != row['model_sha256']:
            raise ValueError('model hash mismatch: ' + row['model_path'])
    checked = set()
    for audit in row['bare_roots']:
        if audit['recipe'] in checked:
            continue
        path = root / 'knowledge/recipes' / (audit['recipe'] + '.json')
        if hashlib.sha256(path.read_bytes()).hexdigest() != audit['recipe_sha256']:
            raise ValueError('recipe hash mismatch: ' + audit['recipe'])
        checked.add(audit['recipe'])


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--apply', action='store_true')
    args = parser.parse_args()
    manifest = json.loads(MANIFEST.read_text())
    outputs = []
    for row in manifest['targets']:
        validate_frozen_inputs(row, ROOT)
        path = ROOT / row['path']
        before = path.read_text()
        observed = hashlib.sha256(before.encode()).hexdigest()
        if observed == row.get('after_sha256'):
            outputs.append({'path': row['path'], 'status': 'already_repaired'})
            continue
        if observed != row['before_sha256']:
            raise ValueError('input hash mismatch: ' + row['path'])
        model = None
        if row.get('model_path'):
            model = (ROOT / row['model_path']).read_text()
            if hashlib.sha256(model.encode()).hexdigest() != row['model_sha256']:
                raise ValueError('model hash mismatch: ' + row['model_path'])
        individual = {r['original_identifier']: r['individual_graph']
                      for r in row['bare_roots'] if r.get('individual_graph')}
        after, bare = transform(before, model, individual, row.get('missing_model_binders', False), row.get('explicit_output_changes'))
        if bare != [r['original_identifier'] for r in row['bare_roots']]:
            raise ValueError('audit root inventory changed: ' + row['path'])
        if hashlib.sha256(after.encode()).hexdigest() != row['after_sha256']:
            raise ValueError('output hash mismatch: ' + row['path'])
        if args.apply:
            path.write_text(after)
        outputs.append({'path': row['path'], 'status': 'applied' if args.apply else 'checked'})
    print(json.dumps({'base_head': manifest['base_head'], 'targets': outputs}, indent=2))


if __name__ == '__main__':
    main()
