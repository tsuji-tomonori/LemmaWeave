import LemmaWeave.Problems.GSM8K.Sprint1001A07P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A07P1

#lw_dependencies snacks_round_trip
#lw_dependencies snacks_price
#lw_dependencies snacks_total to "work/gsm8k-sprint251-snacks-graph.json"
#print axioms snacks_total
#lw_dependencies bike_rest_days
#lw_dependencies bike_first_miles
#lw_dependencies bike_rest_miles
#lw_dependencies bike_total to "work/gsm8k-sprint251-bike-graph.json"
#print axioms bike_total
#lw_dependencies poker_old_wins
#lw_dependencies poker_new_wins
#lw_dependencies poker_totals
#lw_dependencies poker_percentage to "work/gsm8k-sprint251-poker-graph.json"
#print axioms poker_percentage
#lw_dependencies homework_total_minutes
#lw_dependencies homework_used_minutes
#lw_dependencies homework_short_minutes
#lw_dependencies homework_questions to "work/gsm8k-sprint251-homework-graph.json"
#print axioms homework_questions
#lw_dependencies riddles_ivory
#lw_dependencies riddles_taso to "work/gsm8k-sprint251-riddles-graph.json"
#print axioms riddles_taso
