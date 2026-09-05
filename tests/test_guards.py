import copy
import importlib.util
import json
import pathlib
import tempfile
import unittest

ROOT = pathlib.Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location('lw', ROOT / 'scripts/lw.py')
lw = importlib.util.module_from_spec(spec)
spec.loader.exec_module(lw)


def node(name, kind='theorem', body='available'):
    return {'name': name, 'kind': kind, 'body_status': body}


def graph(nodes, pairs, roots=None):
    return {'roots': roots or ['T'], 'nodes': nodes,
            'edges': [{'from': a, 'to': b, 'kind': 'proof_reference'} for a, b in pairs]}


class GraphGuards(unittest.TestCase):
    def test_hidden_custom_axiom(self):
        g = graph([node('T'), node('Wrapper'), node('Bad', 'axiom', 'axiom')],
                  [('T', 'Wrapper'), ('Wrapper', 'Bad')])
        self.assertEqual(lw.graph_audit(g)['forbidden_axioms'], ['Bad'])

    def test_hidden_sorry(self):
        g = graph([node('T'), node('sorryAx', 'axiom', 'axiom')], [('T', 'sorryAx')])
        self.assertEqual(lw.graph_audit(g)['status'], 'failed')

    def test_allowlist_does_not_allow_unknown_axiom(self):
        g = graph([node('T'), node('native.proof.1', 'axiom', 'axiom')], [('T', 'native.proof.1')])
        self.assertEqual(lw.graph_audit(g)['status'], 'failed')

    def test_allowed_axiom_is_reported(self):
        g = graph([node('T'), node('propext', 'axiom', 'axiom')], [('T', 'propext')])
        self.assertEqual(lw.graph_audit(g)['axioms'], ['propext'])

    def test_missing_reference_is_partial(self):
        self.assertEqual(lw.graph_audit(graph([node('T')], [('T', 'Lost')]))['status'], 'partial')

    def test_limit_is_partial(self):
        g = graph([node('T')], []); g['truncated'] = True
        self.assertEqual(lw.graph_audit(g)['status'], 'partial')

    def test_erased_body_is_partial(self):
        g = graph([node('T', body='erased_or_untrusted')], [])
        self.assertEqual(lw.graph_audit(g)['status'], 'partial')

    def test_formal_cycle_terminates(self):
        g = graph([node('T'), node('Rec')], [('T', 'Rec'), ('Rec', 'T')])
        self.assertEqual(len(lw.graph_audit(g)['reachable_declarations']), 2)

    def test_alternative_learning_variants_do_not_form_false_cycle(self):
        g = {'edges': [{'from': 'A', 'to': 'B', 'kind': 'prerequisite', 'proof_variant_id': 'v1'},
                       {'from': 'B', 'to': 'A', 'kind': 'prerequisite', 'proof_variant_id': 'v2'}]}
        lw.dag_check(g)
        g['edges'][1]['proof_variant_id'] = 'v1'
        with self.assertRaises(ValueError): lw.dag_check(g)

    def test_unrelated_learning_edges_do_not_constrain_order(self):
        lw.dag_check({'edges': [{'from': 'A', 'to': 'A', 'kind': 'equivalent_to'}]})

    def test_stale_run_is_rejected(self):
        with tempfile.TemporaryDirectory() as directory:
            root = pathlib.Path(directory)
            (root/'Proof.lean').write_text('new proof')
            (root/'run.json').write_text(json.dumps({'exit_code':0,'status':'succeeded',
                'argv':['lake','build'],'inputs':{'git_commit':'abc','files':{'Proof.lean':'old_hash'}}}))
            with self.assertRaisesRegex(ValueError, 'stale'):
                lw.verify_run(root,'run.json',['Proof.lean'],['lake','build'])

    def test_cas_command_cannot_substitute_for_lake(self):
        with tempfile.TemporaryDirectory() as directory:
            root = pathlib.Path(directory)
            (root/'run.json').write_text(json.dumps({'exit_code':0,'status':'succeeded',
                'argv':['python3','solve.py']}))
            with self.assertRaisesRegex(ValueError, 'unexpected'):
                lw.verify_run(root,'run.json',[],['lake','build'])

    def test_no_empty_freeze(self):
        with self.assertRaises(ValueError): lw.model_hash(ROOT, [])


if __name__ == '__main__':
    unittest.main()
