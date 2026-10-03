import LemmaWeave.Problems.GSM8K.Sprint1001A01P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A01P2

#check pages_night2
#check pages_night3
#lw_dependencies pages_total to "work/gsm8k-sprint243-pages-graph.json"
#print axioms pages_total
#check condo_regular_floors
#check condo_regular_units
#check condo_penthouse_units
#lw_dependencies condo_total to "work/gsm8k-sprint243-condo-graph.json"
#print axioms condo_total
#check pies_pumpkin_slices
#check pies_custard_slices
#check pies_pumpkin_revenue
#check pies_custard_revenue
#lw_dependencies pies_total to "work/gsm8k-sprint243-pies-graph.json"
#print axioms pies_total
#check chickens_dead
#check chickens_remaining
#check chickens_bought
#lw_dependencies chickens_total to "work/gsm8k-sprint243-chickens-graph.json"
#print axioms chickens_total
#check balloon_increase1
#check balloon_after1
#check balloon_increase2
#lw_dependencies balloon_after2 to "work/gsm8k-sprint243-balloon-graph.json"
#print axioms balloon_after2
