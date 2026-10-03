import LemmaWeave.Problems.GSM8K.Sprint0930A15P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint0930A15P3

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P3.shirts_cheap_cost
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P3.shirts_remaining
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P3.shirts_expensive_cost
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P3.shirts_total_cost to "work/gsm8k-sprint220-shirts-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A15P3.shirts_total_cost

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P3.vacation_earned
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P3.vacation_september
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P3.vacation_used
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P3.vacation_remaining to "work/gsm8k-sprint220-vacation-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A15P3.vacation_remaining

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P3.adblock_uninteresting_among_unblocked
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P3.adblock_requested_percent to "work/gsm8k-sprint220-adblock-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A15P3.adblock_requested_percent

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P3.vitamin_servings_per_bottle
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P3.vitamin_bottles to "work/gsm8k-sprint220-vitamin-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A15P3.vitamin_bottles

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P3.furniture_total
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P3.furniture_owed to "work/gsm8k-sprint220-furniture-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A15P3.furniture_owed
