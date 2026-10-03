import LemmaWeave.Problems.GSM8K.Sprint1001A01P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A01P1

#check factory_weekly
#lw_dependencies factory_revenue to "work/gsm8k-sprint242-factory-graph.json"
#print axioms factory_revenue
#check milk_two_liter_quarters
#check milk_three_quarter_quarters
#check milk_half_liter_quarters
#check milk_total_quarters
#lw_dependencies milk_total_liters to "work/gsm8k-sprint242-milk-graph.json"
#print axioms milk_total_liters
#check pencils_wednesday
#lw_dependencies pencils_total to "work/gsm8k-sprint242-pencils-graph.json"
#print axioms pencils_total
#check yards_malik
#check yards_josiah
#check yards_darnell
#lw_dependencies yards_total to "work/gsm8k-sprint242-yards-graph.json"
#print axioms yards_total
#check chargers_phone
#check chargers_literal_impossible
#lw_dependencies chargers_answer to "work/gsm8k-sprint242-chargers-graph.json"
#print axioms chargers_answer
