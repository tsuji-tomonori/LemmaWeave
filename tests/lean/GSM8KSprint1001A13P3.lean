import LemmaWeave.Problems.GSM8K.Sprint1001A13P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A13P3

#lw_dependencies shirts_cheap_cost
#lw_dependencies shirts_costly_count_cost
#lw_dependencies shirts_total_cost to "work/gsm8k-sprint268-shirts-graph.json"
#print axioms shirts_total_cost
#lw_dependencies vacation_earned
#lw_dependencies vacation_september
#lw_dependencies vacation_used
#lw_dependencies vacation_remaining to "work/gsm8k-sprint268-vacation-graph.json"
#print axioms vacation_remaining
#lw_dependencies adblock_interesting_unblocked
#lw_dependencies adblock_uninteresting_unblocked to "work/gsm8k-sprint268-adblock-graph.json"
#print axioms adblock_uninteresting_unblocked
#lw_dependencies vitamin_servings_per_bottle
#lw_dependencies vitamin_bottles to "work/gsm8k-sprint268-vitamin-graph.json"
#print axioms vitamin_bottles
#lw_dependencies furniture_total
#lw_dependencies furniture_owed to "work/gsm8k-sprint268-furniture-graph.json"
#print axioms furniture_owed
