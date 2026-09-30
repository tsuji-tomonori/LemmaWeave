import LemmaWeave.Problems.GSM8K.Sprint1001A07P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A07P2

#lw_dependencies frogs_quinn
#lw_dependencies frogs_bret to "work/gsm8k-sprint252-frogs-graph.json"
#print axioms frogs_bret
#lw_dependencies plugs_initial_pairs
#lw_dependencies plugs_final_pairs
#lw_dependencies plugs_count to "work/gsm8k-sprint252-plugs-graph.json"
#print axioms plugs_count
#lw_dependencies pages_after_first
#lw_dependencies pages_after_second
#lw_dependencies pages_available to "work/gsm8k-sprint252-pages-graph.json"
#print axioms pages_available
#lw_dependencies fruit_literal_no_natural_solution
#lw_dependencies fruit_reference_components
#lw_dependencies fruit_reference_total
#lw_dependencies fruit_resolution to "work/gsm8k-sprint252-fruit-graph.json"
#print axioms fruit_resolution
#lw_dependencies pies_revenue
#lw_dependencies pies_ingredients
#lw_dependencies pies_remaining to "work/gsm8k-sprint252-pies-graph.json"
#print axioms pies_remaining
