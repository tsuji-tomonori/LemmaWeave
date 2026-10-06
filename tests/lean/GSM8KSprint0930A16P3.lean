import LemmaWeave.Problems.GSM8K.Sprint0930A16P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint0930A16P3

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P3.soda_sales_nick
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P3.soda_sales_morning_bottles
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P3.soda_sales_morning_dollars
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P3.soda_sales_difference to "work/gsm8k-sprint223-soda_sales-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A16P3.soda_sales_difference

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P3.debts_ryan_initial
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P3.debts_leo_initial
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P3.debts_leo_after_receipt
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P3.debts_leo_final to "work/gsm8k-sprint223-debts-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A16P3.debts_leo_final

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P3.balls_total
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P3.balls_yellow_percent to "work/gsm8k-sprint223-balls-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A16P3.balls_yellow_percent

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P3.flags_remaining
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P3.flags_half_remaining_red
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P3.flags_red_per_flag
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P3.flags_total_red to "work/gsm8k-sprint223-flags-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A16P3.flags_total_red

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P3.lifting_ron
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P3.lifting_roger
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P3.lifting_rodney to "work/gsm8k-sprint223-lifting-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A16P3.lifting_rodney
