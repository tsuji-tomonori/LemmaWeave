import LemmaWeave.Problems.GSM8K.Sprint0930A19P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint0930A19P2

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P2.lemons_total to "work/lw-line-LemmaWeave.Problems.GSM8K.Sprint0930A19P2.lemons_total-graph.json"
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P2.lemons_given to "work/lw-line-LemmaWeave.Problems.GSM8K.Sprint0930A19P2.lemons_given-graph.json"
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P2.lemons_left to "work/gsm8k-sprint228-lemons-graph.json"
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P2.money_given
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P2.money_after_gift
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P2.money_remaining to "work/gsm8k-sprint228-money-graph.json"
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P2.stall_day2
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P2.stall_day3
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P2.stall_day4
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P2.stall_day5
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P2.stall_total to "work/gsm8k-sprint228-stall-graph.json"
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P2.scavenger_samantha
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P2.scavenger_lewis to "work/gsm8k-sprint228-scavenger-graph.json"
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P2.groceries_conventional_pasta
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P2.groceries_literal_pasta
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P2.groceries_beef
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P2.groceries_sauce
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P2.groceries_conventional_total
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P2.groceries_literal_total
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P2.groceries_totals_differ to "work/gsm8k-sprint228-groceries-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A19P2.lemons_left
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A19P2.money_remaining
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A19P2.stall_total
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A19P2.scavenger_lewis
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A19P2.groceries_totals_differ
