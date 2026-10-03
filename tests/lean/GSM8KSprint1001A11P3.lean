import LemmaWeave.Problems.GSM8K.Sprint1001A11P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A11P3

#lw_dependencies carriage_hours
#lw_dependencies carriage_cost to "work/gsm8k-sprint262-carriage-graph.json"
#print axioms carriage_cost
#lw_dependencies pens_blue
#lw_dependencies pens_black_and_red
#lw_dependencies pens_total to "work/gsm8k-sprint262-pens-graph.json"
#print axioms pens_total
#lw_dependencies cards_distributed
#lw_dependencies cards_original to "work/gsm8k-sprint262-cards-graph.json"
#print axioms cards_original
#lw_dependencies installments_remaining
#lw_dependencies installments_monthly to "work/gsm8k-sprint262-installments-graph.json"
#print axioms installments_monthly
#lw_dependencies tank_initial
#lw_dependencies tank_removed
#lw_dependencies tank_remaining
#lw_dependencies tank_added
#lw_dependencies tank_final to "work/gsm8k-sprint262-tank-graph.json"
#print axioms tank_final
