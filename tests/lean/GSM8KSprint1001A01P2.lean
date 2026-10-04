import LemmaWeave.Problems.GSM8K.Sprint1001A01P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A01P2

#lw_dependencies pages_night2
#lw_dependencies pages_night3
#lw_dependencies pages_total to "work/gsm8k-sprint243-pages-graph.json"
#print axioms pages_total
#lw_dependencies condo_regular_floors
#lw_dependencies condo_regular_units
#lw_dependencies condo_penthouse_units
#lw_dependencies condo_total to "work/gsm8k-sprint243-condo-graph.json"
#print axioms condo_total
#lw_dependencies pies_pumpkin_slices
#lw_dependencies pies_custard_slices
#lw_dependencies pies_pumpkin_revenue
#lw_dependencies pies_custard_revenue
#lw_dependencies pies_total to "work/gsm8k-sprint243-pies-graph.json"
#print axioms pies_total
#lw_dependencies chickens_dead
#lw_dependencies chickens_remaining
#lw_dependencies chickens_bought
#lw_dependencies chickens_total to "work/gsm8k-sprint243-chickens-graph.json"
#print axioms chickens_total
#lw_dependencies balloon_increase1
#lw_dependencies balloon_after1
#lw_dependencies balloon_increase2
#lw_dependencies balloon_after2 to "work/gsm8k-sprint243-balloon-graph.json"
#print axioms balloon_after2
