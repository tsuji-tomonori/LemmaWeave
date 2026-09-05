import sys,unittest
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'scripts'))
from finalize_graph import annotate
class GraphAnnotation(unittest.TestCase):
    def test_formal_mutual_cycle_preserved(self):
        g={'roots':['a'],'nodes':[{'name':x,'kind':'definition','body_status':'available','type_expr':'T','body_expr':'B'} for x in ['a','b']], 'edges':[{'from':'a','to':'b','kind':'definition_reference'},{'from':'b','to':'a','kind':'definition_reference'}], 'lean_collected_axioms':[]}
        result=annotate(g)
        self.assertEqual(result['formal_cycles'],[['a','b']])
        self.assertEqual(result['audit']['status'],'passed')
        self.assertEqual(result['unclassified_declaration_count'],2)
    def test_cached_axiom_disagreement_is_partial(self):
        g={'roots':['a'],'nodes':[{'name':'a','kind':'theorem','body_status':'available'}], 'edges':[], 'lean_collected_axioms':['newAxiom']}
        self.assertEqual(annotate(g)['audit']['status'],'partial')
