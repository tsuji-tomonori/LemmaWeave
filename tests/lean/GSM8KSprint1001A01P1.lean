import LemmaWeave.Problems.GSM8K.Sprint1001A01P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A01P1

#lw_dependencies factory_weekly
#lw_dependencies factory_revenue to "work/gsm8k-sprint242-factory-graph.json"
#print axioms factory_revenue
#lw_dependencies milk_two_liter_quarters
#lw_dependencies milk_three_quarter_quarters
#lw_dependencies milk_half_liter_quarters
#lw_dependencies milk_total_quarters
#lw_dependencies milk_total_liters to "work/gsm8k-sprint242-milk-graph.json"
#print axioms milk_total_liters
#lw_dependencies pencils_wednesday
#lw_dependencies pencils_total to "work/gsm8k-sprint242-pencils-graph.json"
#print axioms pencils_total
#lw_dependencies yards_malik
#lw_dependencies yards_josiah
#lw_dependencies yards_darnell
#lw_dependencies yards_total to "work/gsm8k-sprint242-yards-graph.json"
#print axioms yards_total
#lw_dependencies chargers_phone
#lw_dependencies chargers_literal_impossible
#lw_dependencies chargers_answer to "work/gsm8k-sprint242-chargers-graph.json"
#print axioms chargers_answer
