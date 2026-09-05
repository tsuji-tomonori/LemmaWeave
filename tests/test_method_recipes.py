import copy
import sys
import unittest
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
from check_method_recipes import validate_recipe

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
