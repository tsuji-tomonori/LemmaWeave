import copy
import gzip
import json
from pathlib import Path
import sys
import tempfile
import unittest
import zipfile

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
import inventory
import lw


class InventoryEvidence(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)
        self.node = {'name': 'Example.T', 'kind': 'theorem', 'type_expr': 'kernel-type',
                     'type_pretty': '∀ n : Nat, n = n'}
        self.card = {'learning_node_id': 'reflexivity', 'lean_declarations': ['Example.T'],
                     'name_ja': '反射律', 'statement_ja': '各自然数は自分自身に等しい。',
                     'assumptions': [], 'prerequisite_nodes': [], 'unexpanded': [],
                     'explanation_outline_ja': ['等号の導入規則を用いる。'],
                     'classification_evidence': {'status': 'explicit_named_declaration_review'},
                     'formal_status': 'linked_to_kernel_checked_dependency',
                     'educational_expansion_status': 'outline', 'used_by_problems': ['P'],
                     'declaration_type_sha256': {'Example.T': inventory.digest('kernel-type')},
                     'actual_declaration_types': {'Example.T': self.node['type_pretty']}}
        self.mapping = {'declarations': {'Example.T': {'category': 'lemma',
                         'learning_node_id': 'reflexivity',
                         'type_sha256': inventory.digest('kernel-type')}}}
        self.write('corpus/proof_variants/V.json', {'proof_variant_id': 'V', 'problem_id': 'P',
                   'audit_evidence': {'graphs': {'Example.T': {'file': 'graph.json'}}}})
        self.write('graph.json', {'nodes': [self.node]})
        self.write('knowledge/nodes/reflexivity.json', self.card)
        self.write('knowledge/declaration-classifications.json', self.mapping)

    def write(self, path, data):
        path = self.root / path
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(json.dumps(data, ensure_ascii=False))

    def test_exact_evidence_is_mapped(self):
        result = inventory.inspect(self.root)[0]
        self.assertEqual(result['errors'], [])
        self.assertTrue(result['problems']['P']['complete'])

    def test_name_alone_does_not_count(self):
        self.mapping['declarations']['Example.T'].pop('type_sha256')
        self.write('knowledge/declaration-classifications.json', self.mapping)
        result = inventory.inspect(self.root)[0]
        self.assertEqual(result['mapped'], 0)
        self.assertEqual(result['unclassified'], 1)

    def test_changed_type_invalidates_mapping(self):
        self.node['type_expr'] = 'a different mathematical type'
        self.write('graph.json', {'nodes': [self.node]})
        self.assertFalse(inventory.inspect(self.root)[0]['problems']['P']['complete'])

    def test_missing_japanese_card_is_not_coverage(self):
        self.card['statement_ja'] = ''
        self.write('knowledge/nodes/reflexivity.json', self.card)
        self.assertEqual(inventory.inspect(self.root)[0]['mapped'], 0)

    def test_mathematics_cannot_be_blanket_implementation(self):
        self.mapping['declarations']['Example.T']['category'] = 'implementation'
        self.write('knowledge/declaration-classifications.json', self.mapping)
        self.assertEqual(inventory.inspect(self.root)[0]['mapped'], 0)

    def test_wrong_backlink_is_rejected(self):
        self.card['used_by_problems'] = ['another-problem']
        self.write('knowledge/nodes/reflexivity.json', self.card)
        self.assertTrue(inventory.inspect(self.root)[0]['errors'])

    def test_reviewed_syntax_rule_cannot_cover_mathematical_theorems(self):
        node = {'kind': 'definition', 'type_pretty': 'Lean.Syntax', 'type_expr': 'syntax-type'}
        rule = {'rule_id': 'syntax-v1', 'rule_kind': 'closed_lean_syntax_definition',
                'review_status': 'independently_reviewed', 'author_session_id': 'author',
                'reviewer_session_id': 'reviewer', 'declarations': {'S': {
                    'kind': 'definition', 'type_pretty': 'Lean.Syntax',
                    'type_sha256': inventory.digest('syntax-type')}}}
        self.write('reviews/rule.json', rule)
        entry = {'rule_review_file': 'reviews/rule.json', 'evidence_rule_id': 'syntax-v1',
                 'rule_review_sha256': inventory.digest((self.root / 'reviews/rule.json').read_text())}
        self.assertIsNone(inventory.implementation_error(self.root, 'S', node, entry))
        self.assertIsNotNone(inventory.implementation_error(self.root, 'unlisted', node, entry))
        mathematical = dict(self.node)
        rule['declarations']['S'] = {k: mathematical[k] for k in ('kind', 'type_pretty')}
        rule['declarations']['S']['type_sha256'] = inventory.digest(mathematical['type_expr'])
        self.write('reviews/rule.json', rule)
        entry['rule_review_sha256'] = inventory.digest((self.root / 'reviews/rule.json').read_text())
        self.assertIsNotNone(inventory.implementation_error(self.root, 'S', mathematical, entry))

    def test_modified_or_self_reviewed_rule_is_rejected(self):
        self.write('reviews/rule.json', {'review_status': 'independently_reviewed',
                                      'author_session_id': 'same', 'reviewer_session_id': 'same'})
        entry = {'rule_review_file': 'reviews/rule.json', 'rule_review_sha256': 'wrong'}
        self.assertIsNotNone(inventory.implementation_error(self.root, 'S', self.node, entry))
        entry['rule_review_sha256'] = inventory.digest((self.root / 'reviews/rule.json').read_text())
        self.assertIsNotNone(inventory.implementation_error(self.root, 'S', self.node, entry))

    def test_unknown_prerequisite_is_rejected(self):
        self.card['prerequisite_nodes'] = ['missing']
        self.write('knowledge/nodes/reflexivity.json', self.card)
        self.assertEqual(inventory.inspect(self.root)[0]['mapped'], 0)

    def test_reproducible_reports_keep_unclassified_statement(self):
        self.write('knowledge/declaration-classifications.json', {'declarations': {}})
        inventory.write_reports(self.root)
        output = self.root / 'knowledge/educational-frontier.json.gz'
        first = output.read_bytes()
        inventory.write_reports(self.root)
        self.assertEqual(first, output.read_bytes())
        frontier = json.loads(gzip.decompress(first))
        self.assertEqual(frontier['unclassified'][0]['type'], self.node['type_pretty'])


class SemanticEvidence(unittest.TestCase):
    def test_evidence_import_does_not_inflate_unused_large_reports(self):
        from import_evidence import load_archive
        with tempfile.TemporaryDirectory() as tmp:
            archive = Path(tmp) / 'evidence.zip'
            with zipfile.ZipFile(archive, 'w') as z:
                z.writestr('knowledge/learning-graph.json', 'unused' * 1000)
                z.writestr('work/unchanged-graph.json', 'unused graph' * 1000)
                z.writestr('reports/extractor-fixtures.json', '{"suite_status":"passed"}')
            self.assertEqual(load_archive(archive, {'work/current-graph.json'}), {
                'reports/extractor-fixtures.json': b'{"suite_status":"passed"}'})

    def test_evidence_import_rejects_paths_outside_output_roots(self):
        from import_evidence import load_archive
        with tempfile.TemporaryDirectory() as tmp:
            archive = Path(tmp) / 'evidence.zip'
            for path in ['../escaped', '/absolute', '.private/raw/exam.pdf', 'scripts/lw.py']:
                with zipfile.ZipFile(archive, 'w') as z:
                    z.writestr(path, 'untrusted')
                with self.assertRaises(ValueError):
                    load_archive(archive)

    def test_incomplete_replay_does_not_promote_or_write(self):
        from import_evidence import import_evidence
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp); archive = root / 'evidence.zip'
            with zipfile.ZipFile(archive, 'w') as z:
                z.writestr('reports/extractor-fixtures.json', '{"suite_status":"passed"}')
            with self.assertRaisesRegex(ValueError, 'successful recorded command'):
                import_evidence(root, archive, '123')
            self.assertFalse((root / 'reports').exists())

    def test_location_sidecar_cannot_omit_or_substitute_a_declaration(self):
        from check_locations import check
        g = {'roots': ['T'], 'nodes': [{'name': 'T'}, {'name': 'Helper'}]}
        entries = [{'name': n, 'source_module': 'Example.Proofs',
                    'module_relative_file': 'Example/Proofs.lean', 'range': None} for n in ['T', 'Helper']]
        sidecar = {'root': 'T', 'source_mapping': entries}
        self.assertEqual(check(g, sidecar)['module_only_no_recorded_range'], 2)
        sidecar['source_mapping'] = entries[:1]
        with self.assertRaises(ValueError):
            check(g, sidecar)
        sidecar['source_mapping'] = entries
        entries[1]['module_relative_file'] = 'Wrong.lean'
        with self.assertRaises(ValueError):
            check(g, sidecar)

    def test_pilot_requires_diversity_and_modeling_not_just_counts(self):
        from acceptance_report import pilot_gate
        problems = [{'problem_id': str(i), 'origin': 'exam', 'collection_status': 'collected',
                     'domain_candidate': 'same-domain'} for i in range(50)]
        results = [{'problem_id': str(i), 'phase1_complete': True} for i in range(10)]
        self.assertFalse(pilot_gate(problems, results)['accepted'])
        for i, problem in enumerate(problems):
            problem['domain_candidate'] = 'domain-' + str(i % 6)
        self.assertFalse(pilot_gate(problems, results)['accepted'])
        problems[0]['modeling_challenge'] = 'geometry'
        self.assertTrue(pilot_gate(problems, results)['accepted'])
        results[0]['phase1_complete'] = False
        self.assertFalse(pilot_gate(problems, results)['accepted'])

    def test_review_cannot_cross_source_spec_or_session(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            (root / 'Model.lean').write_text('def Goal : Prop := True')
            p = {'problem_id': 'P', 'revision': 1, 'mathematical_spec': {'goals': ['G']},
                 'source_locator': {'document_sha256': 'source-a'},
                 'lean': {'model_files': ['Model.lean'], 'semantic_model_hash': lw.model_hash(root, ['Model.lean']),
                          'theorem_type_hash': {'T': 'type-a'}}}
            r = {'independence': 'independent', 'verdict': 'passed', 'reviewer_session_id': 'reviewer',
                 'author_session_id': 'author', 'source_pages_directly_checked': True,
                 'target': {'problem_id': 'P', 'problem_revision': 1, 'source_sha256': 'source-a',
                            'mathematical_spec_sha256': inventory.digest(json.dumps(p['mathematical_spec'], sort_keys=True, ensure_ascii=False)),
                            'semantic_model_hash': p['lean']['semantic_model_hash'],
                            'theorem_type_hash': p['lean']['theorem_type_hash']}}
            self.assertTrue(lw.semantic_review_matches(root, p, r))
            for key, value in [('source_sha256', 'different'), ('problem_revision', 2),
                               ('theorem_type_hash', {'T': 'changed'}), ('mathematical_spec_sha256', 'changed')]:
                other = copy.deepcopy(r); other['target'][key] = value
                self.assertFalse(lw.semantic_review_matches(root, p, other), key)
            r['reviewer_session_id'] = 'author'
            self.assertFalse(lw.semantic_review_matches(root, p, r))

    def test_imported_local_lemma_is_required_evidence(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            (root / 'LemmaWeave').mkdir()
            (root / 'LemmaWeave/Proof.lean').write_text('import LemmaWeave.Shared\n')
            (root / 'LemmaWeave/Shared.lean').write_text('theorem t : True := True.intro\n')
            self.assertEqual(lw.local_import_closure(root, ['LemmaWeave/Proof.lean']),
                             ['LemmaWeave/Proof.lean', 'LemmaWeave/Shared.lean'])
