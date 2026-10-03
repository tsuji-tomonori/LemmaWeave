import LemmaWeave.Problems.GSM8K.Sprint0930A16P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint0930A16P3

#check LemmaWeave.Problems.GSM8K.Sprint0930A16P3.soda_sales_nick
#check LemmaWeave.Problems.GSM8K.Sprint0930A16P3.soda_sales_morning_bottles
#check LemmaWeave.Problems.GSM8K.Sprint0930A16P3.soda_sales_morning_dollars
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P3.soda_sales_difference to "work/gsm8k-sprint223-soda_sales-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A16P3.soda_sales_difference

#check LemmaWeave.Problems.GSM8K.Sprint0930A16P3.debts_ryan_initial
#check LemmaWeave.Problems.GSM8K.Sprint0930A16P3.debts_leo_initial
#check LemmaWeave.Problems.GSM8K.Sprint0930A16P3.debts_leo_after_receipt
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P3.debts_leo_final to "work/gsm8k-sprint223-debts-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A16P3.debts_leo_final

#check LemmaWeave.Problems.GSM8K.Sprint0930A16P3.balls_total
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P3.balls_yellow_percent to "work/gsm8k-sprint223-balls-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A16P3.balls_yellow_percent

#check LemmaWeave.Problems.GSM8K.Sprint0930A16P3.flags_remaining
#check LemmaWeave.Problems.GSM8K.Sprint0930A16P3.flags_half_remaining_red
#check LemmaWeave.Problems.GSM8K.Sprint0930A16P3.flags_red_per_flag
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P3.flags_total_red to "work/gsm8k-sprint223-flags-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A16P3.flags_total_red

#check LemmaWeave.Problems.GSM8K.Sprint0930A16P3.lifting_ron
#check LemmaWeave.Problems.GSM8K.Sprint0930A16P3.lifting_roger
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P3.lifting_rodney to "work/gsm8k-sprint223-lifting-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A16P3.lifting_rodney
