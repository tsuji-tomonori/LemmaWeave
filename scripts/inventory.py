#!/usr/bin/env python3
"""Validate declaration-to-card evidence and regenerate searchable inventory views.

Raw Lean graphs are immutable inputs. A name in the classification JSON alone
does not count as coverage: its type hash and corresponding card must agree.
"""
import argparse
import csv
import gzip
import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def read(path):
    data = path.read_bytes()
    return json.loads(gzip.decompress(data) if path.suffix == '.gz' else data)


def digest(text):
    return hashlib.sha256(text.encode()).hexdigest()


def inspect(root):
    variants = [read(p) for p in sorted((root / 'corpus/proof_variants').glob('*.json'))]
    cards = {c['learning_node_id']: c for p in sorted((root / 'knowledge/nodes').glob('*.json'))
             for c in [read(p)]}
    mapping = read(root / 'knowledge/declaration-classifications.json')['declarations']
    declarations, users, graph_sources, problem_names = {}, {}, {}, {}
    errors = []
    for variant in variants:
        pid = variant['problem_id']
        problem_names.setdefault(pid, set())
        for item in variant.get('audit_evidence', {}).get('graphs', {}).values():
            path = (root / item['file']).resolve()
            if not path.is_relative_to(root.resolve()):
                raise ValueError('inventory graph outside checkout')
            graph = read(path)
            for node in graph['nodes']:
                name = node['name']
                if name in declarations and declarations[name].get('type_expr') != node.get('type_expr'):
                    errors.append(name + ': conflicting exported types')
                declarations[name] = node
                users.setdefault(name, set()).add(pid)
                graph_sources.setdefault(name, set()).add(item['file'])
                problem_names[pid].add(name)
    valid = set()
    for name, entry in sorted(mapping.items()):
        node = declarations.get(name)
        card = cards.get(entry.get('learning_node_id'))
        reason = None
        if node is None:
            reason = 'declaration absent from registered proof graphs'
        elif not node.get('type_expr') or entry.get('type_sha256') != digest(node['type_expr']):
            reason = 'stale or missing declaration type hash'
        elif entry.get('category') not in {'lemma', 'definition', 'foundation_appendix', 'baseline'}:
            reason = 'category requires an explicit supported evidence rule'
        elif card is None or name not in card.get('lean_declarations', []):
            reason = 'missing corresponding learning card/declaration'
        elif card.get('declaration_type_sha256', {}).get(name) != entry['type_sha256']:
            reason = 'card type hash disagrees with classification'
        elif card.get('actual_declaration_types', {}).get(name) != node.get('type_pretty'):
            reason = 'card statement differs from actual exported type'
        elif any(not card.get(key) for key in ('name_ja', 'statement_ja', 'explanation_outline_ja',
                                              'classification_evidence', 'formal_status',
                                              'educational_expansion_status')):
            reason = 'incomplete Japanese card or evidence'
        elif 'assumptions' not in card or 'prerequisite_nodes' not in card or 'unexpanded' not in card:
            reason = 'missing assumptions/prerequisites/frontier fields'
        elif set(card['prerequisite_nodes']) - cards.keys():
            reason = 'unknown prerequisite card'
        elif entry['category'] == 'baseline' and not card.get('curriculum', {}).get('evidence'):
            reason = 'baseline classification without curriculum evidence'
        if reason:
            errors.append(name + ': ' + reason)
        else:
            valid.add(name)
    # Backlinks are derived from actual references, not from names in the source.
    card_users = {}
    for cid, card in cards.items():
        actual = set().union(*(users.get(n, set()) for n in card.get('lean_declarations', [])))
        card_users[cid] = sorted(actual)
        if set(card.get('used_by_problems', [])) != actual:
            errors.append(cid + ': problem backlinks differ from actual dependency graphs')
    per_problem = {}
    for pid, names in sorted(problem_names.items()):
        covered = names & valid
        per_problem[pid] = {'declarations': len(names), 'mapped': len(covered),
                            'unclassified': len(names - valid),
                            'learning_nodes': sorted({mapping[n]['learning_node_id'] for n in covered}),
                            'complete': bool(names) and names <= valid and not errors}
    return {'schema_version': '0.2', 'declarations': len(declarations),
            'mapped': len(valid), 'unclassified': len(declarations.keys() - valid),
            'errors': sorted(set(errors)), 'problems': per_problem,
            'card_users': card_users}, declarations, users, graph_sources, valid


def write_reports(root):
    report, declarations, users, sources, valid = inspect(root)
    mapping = read(root / 'knowledge/declaration-classifications.json')['declarations']
    (root / 'reports').mkdir(exist_ok=True)
    (root / 'reports/inventory.json').write_text(json.dumps(report, ensure_ascii=False, indent=2) + '\n')
    with (root / 'reports/declaration-index.csv').open('w', newline='') as stream:
        writer = csv.writer(stream)
        writer.writerow(['declaration', 'kind', 'type', 'type_sha256', 'classification_valid',
                         'learning_node', 'used_by_problems', 'source_graphs'])
        for name, node in sorted(declarations.items()):
            writer.writerow([name, node['kind'], node.get('type_pretty', ''),
                             digest(node.get('type_expr', '')), name in valid,
                             mapping.get(name, {}).get('learning_node_id', ''),
                             ';'.join(sorted(users[name])), ';'.join(sorted(sources[name]))])
    frontier = {'schema_version': '0.2', 'status': 'partial' if report['unclassified'] else 'mapped',
                'unclassified': [{'declaration': n, 'kind': declarations[n]['kind'],
                                  'type': declarations[n].get('type_pretty'),
                                  'type_sha256': digest(declarations[n].get('type_expr', '')),
                                  'used_by_problems': sorted(users[n]), 'sources': sorted(sources[n])}
                                 for n in sorted(declarations.keys() - valid)],
                'educationally_unexpanded': [
                    {'learning_node_id': c['learning_node_id'], 'items': c['unexpanded'],
                     'status': c['educational_expansion_status']}
                    for p in sorted((root / 'knowledge/nodes').glob('*.json'))
                    for c in [read(p)] if c.get('unexpanded')]}
    (root / 'knowledge/educational-frontier.json.gz').write_bytes(
        gzip.compress(json.dumps(frontier, ensure_ascii=False, sort_keys=True).encode(), mtime=0))
    return report


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--root', type=Path, default=ROOT)
    parser.add_argument('--write', action='store_true', help='regenerate JSON, CSV and frontier views')
    args = parser.parse_args()
    result = write_reports(args.root) if args.write else inspect(args.root)[0]
    print(json.dumps(result, ensure_ascii=False, indent=2))
    raise SystemExit(1 if result['errors'] else 0)
