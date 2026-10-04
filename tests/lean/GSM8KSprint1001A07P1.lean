import LemmaWeave.Problems.GSM8K.Sprint1001A07P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A07P1

#check snacks_round_trip
#check snacks_price
#lw_dependencies snacks_total to "work/gsm8k-sprint251-snacks-graph.json"
#print axioms snacks_total
#check bike_rest_days
#check bike_first_miles
#check bike_rest_miles
#lw_dependencies bike_total to "work/gsm8k-sprint251-bike-graph.json"
#print axioms bike_total
#check poker_old_wins
#check poker_new_wins
#check poker_totals
#lw_dependencies poker_percentage to "work/gsm8k-sprint251-poker-graph.json"
#print axioms poker_percentage
#check homework_total_minutes
#check homework_used_minutes
#check homework_short_minutes
#lw_dependencies homework_questions to "work/gsm8k-sprint251-homework-graph.json"
#print axioms homework_questions
#check riddles_ivory
#lw_dependencies riddles_taso to "work/gsm8k-sprint251-riddles-graph.json"
#print axioms riddles_taso
