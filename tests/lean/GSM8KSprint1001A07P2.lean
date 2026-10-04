import LemmaWeave.Problems.GSM8K.Sprint1001A07P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A07P2

#check frogs_quinn
#lw_dependencies frogs_bret to "work/gsm8k-sprint252-frogs-graph.json"
#print axioms frogs_bret
#check plugs_initial_pairs
#check plugs_final_pairs
#lw_dependencies plugs_count to "work/gsm8k-sprint252-plugs-graph.json"
#print axioms plugs_count
#check pages_after_first
#check pages_after_second
#lw_dependencies pages_available to "work/gsm8k-sprint252-pages-graph.json"
#print axioms pages_available
#check fruit_literal_no_natural_solution
#check fruit_reference_components
#check fruit_reference_total
#lw_dependencies fruit_resolution to "work/gsm8k-sprint252-fruit-graph.json"
#print axioms fruit_resolution
#check pies_revenue
#check pies_ingredients
#lw_dependencies pies_remaining to "work/gsm8k-sprint252-pies-graph.json"
#print axioms pies_remaining
