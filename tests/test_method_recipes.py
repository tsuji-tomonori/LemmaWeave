import copy
import sys
import unittest
import tempfile
import hashlib
import json
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
from check_method_recipes import validate_recipe, proof_evidence

class MethodRecipes(unittest.TestCase):
    def setUp(self):
        self.graph={'roots':['solution'],'nodes':[{'name':n,'kind':'theorem','body_status':'available'} for n in ['solution','lemma']],
                    'edges':[{'from':'solution','to':'lemma'}]}
        self.nodes={'method':{'statement_ja':'条件付きの主張','assumptions_ja':'必要な条件','lean_declarations':['lemma']}}
        self.recipe={'id':'r','root':'solution','semantic_review_status':'self_review_only','steps':[
            {'id':'s','requires_steps':[],'uses_nodes':['method'],'condition_ja':'条件','conclusion_ja':'結論'}]}
    def test_actual_dependencies_and_review_status_are_separate(self):
        r=validate_recipe(self.recipe,self.nodes,self.graph)
        self.assertEqual(r['dependency_links'],'verified')
        self.assertEqual(r['natural_language_step_adequacy'],'self_review_only')
    def test_unused_named_lemma_is_rejected(self):
        self.graph['edges']=[]
        with self.assertRaises(ValueError):validate_recipe(self.recipe,self.nodes,self.graph)
    def test_cycle_in_recipe_is_rejected(self):
        self.recipe['steps'][0]['requires_steps']=['s']
        with self.assertRaises(ValueError):validate_recipe(self.recipe,self.nodes,self.graph)
    def test_forbidden_axiom_is_rejected(self):
        self.graph['nodes'][1]['kind']='axiom'
        with self.assertRaises(ValueError):validate_recipe(self.recipe,self.nodes,self.graph)
    def test_dependency_from_another_root_is_rejected(self):
        self.graph['roots'].append('unrelated')
        self.graph['nodes'].append({'name':'unrelated','kind':'theorem','body_status':'available'})
        self.graph['edges']=[{'from':'unrelated','to':'lemma'}]
        with self.assertRaises(ValueError):validate_recipe(self.recipe,self.nodes,self.graph)
    def test_empty_steps_are_rejected(self):
        self.recipe['steps']=[]
        with self.assertRaises(ValueError):validate_recipe(self.recipe,self.nodes,self.graph)
    def test_step_without_method_is_rejected(self):
        self.recipe['steps'][0]['uses_nodes']=[]
        with self.assertRaises(ValueError):validate_recipe(self.recipe,self.nodes,self.graph)
    def test_method_without_declaration_is_rejected(self):
        self.nodes['method']['lean_declarations']=[]
        with self.assertRaises(ValueError):validate_recipe(self.recipe,self.nodes,self.graph)


class MethodProofEvidence(unittest.TestCase):
    def test_stale_input_or_modified_graph_cannot_promote_proof(self):
        with tempfile.TemporaryDirectory() as directory:
            root=Path(directory)
            (root/'runs/r1').mkdir(parents=True)
            for name in ['proof.lean','lean-toolchain','lake-manifest.json','lakefile.toml']:
                (root/name).write_text('fixed input')
            for name in ['stdout.log','stderr.log']:
                (root/'runs/r1'/name).write_text('')
            sha=lambda data:hashlib.sha256(data).hexdigest()
            record={'argv':['lake','env','lean','proof.lean'],'exit_code':0,'status':'succeeded',
                    'inputs':{'git_commit':'test-commit','files':{n:sha(b'fixed input') for n in
                              ['proof.lean','lean-toolchain','lake-manifest.json','lakefile.toml']}},
                    'stdout_log':'runs/r1/stdout.log','stderr_log':'runs/r1/stderr.log',
                    'output_sha256':{'stdout.log':sha(b''),'stderr.log':sha(b'')},
                    'artifact_sha256':{'work/g-graph.json':sha(b'graph')},'environment':{'github_run_id':'1'}}
            (root/'runs/r1/run.json').write_text(json.dumps(record))
            recipe={'id':'recipe','lean_file':'proof.lean','graph':'work/g-graph.json'}
            self.assertEqual(proof_evidence(root,recipe,b'graph')['github_run_id'],'1')
            with self.assertRaises(ValueError):proof_evidence(root,recipe,b'tampered graph')
            (root/'proof.lean').write_text('changed proof')
            with self.assertRaises(ValueError):proof_evidence(root,recipe,b'graph')
