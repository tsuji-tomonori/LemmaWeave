import LemmaWeave.Problems.GSM8K.Sprint0930A20P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint0930A20P2

#check LemmaWeave.Problems.GSM8K.Sprint0930A20P2.stock_rice
#check LemmaWeave.Problems.GSM8K.Sprint0930A20P2.stock_sugar
#check LemmaWeave.Problems.GSM8K.Sprint0930A20P2.stock_rice_remaining
#check LemmaWeave.Problems.GSM8K.Sprint0930A20P2.stock_sugar_remaining
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A20P2.stock_total_remaining to "work/gsm8k-sprint231-stock-graph.json"
#check LemmaWeave.Problems.GSM8K.Sprint0930A20P2.screen_total_minutes
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A20P2.screen_evening_minutes to "work/gsm8k-sprint231-screen-time-graph.json"
#check LemmaWeave.Problems.GSM8K.Sprint0930A20P2.tomatoes_today
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A20P2.tomatoes_two_day_total to "work/gsm8k-sprint231-tomatoes-graph.json"
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A20P2.tomatoes_readings_differ to "work/lw-line-LemmaWeave.Problems.GSM8K.Sprint0930A20P2.tomatoes_readings_differ-graph.json"
#check LemmaWeave.Problems.GSM8K.Sprint0930A20P2.german_after_first_drops
#check LemmaWeave.Problems.GSM8K.Sprint0930A20P2.german_after_first_rally
#check LemmaWeave.Problems.GSM8K.Sprint0930A20P2.german_after_scheduling_drop
#check LemmaWeave.Problems.GSM8K.Sprint0930A20P2.german_before_half_drop
#check LemmaWeave.Problems.GSM8K.Sprint0930A20P2.german_after_half_drop
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A20P2.german_still_enrolled to "work/gsm8k-sprint231-german-class-graph.json"
#check LemmaWeave.Problems.GSM8K.Sprint0930A20P2.candles_remaining_cakes
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A20P2.candles_total to "work/gsm8k-sprint231-candles-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A20P2.stock_total_remaining
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A20P2.screen_evening_minutes
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A20P2.tomatoes_two_day_total
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A20P2.german_still_enrolled
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A20P2.candles_total
