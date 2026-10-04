import LemmaWeave.Problems.GSM8K.Sprint1001A11P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A11P3

#check carriage_hours
#lw_dependencies carriage_cost to "work/gsm8k-sprint262-carriage-graph.json"
#print axioms carriage_cost
#check pens_blue
#check pens_black_and_red
#lw_dependencies pens_total to "work/gsm8k-sprint262-pens-graph.json"
#print axioms pens_total
#check cards_distributed
#lw_dependencies cards_original to "work/gsm8k-sprint262-cards-graph.json"
#print axioms cards_original
#check installments_remaining
#lw_dependencies installments_monthly to "work/gsm8k-sprint262-installments-graph.json"
#print axioms installments_monthly
#check tank_initial
#check tank_removed
#check tank_remaining
#check tank_added
#lw_dependencies tank_final to "work/gsm8k-sprint262-tank-graph.json"
#print axioms tank_final
