import LemmaWeave.Problems.GSM8K.Sprint0930A20P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint0930A20P1

#check LemmaWeave.Problems.GSM8K.Sprint0930A20P1.wheels_bicycle_riders
#check LemmaWeave.Problems.GSM8K.Sprint0930A20P1.wheels_tricycle_riders
#check LemmaWeave.Problems.GSM8K.Sprint0930A20P1.wheels_bicycle_count
#check LemmaWeave.Problems.GSM8K.Sprint0930A20P1.wheels_tricycle_count
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A20P1.wheels_total to "work/gsm8k-sprint230-wheels-graph.json"
#check LemmaWeave.Problems.GSM8K.Sprint0930A20P1.apples_combined_weekly
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A20P1.apples_monthly_order to "work/gsm8k-sprint230-monthly-apples-graph.json"
#check LemmaWeave.Problems.GSM8K.Sprint0930A20P1.towels_weekly_use
#check LemmaWeave.Problems.GSM8K.Sprint0930A20P1.towels_two_week_need
#check LemmaWeave.Problems.GSM8K.Sprint0930A20P1.towels_shortage
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A20P1.towels_no_clean_days to "work/gsm8k-sprint230-towels-graph.json"
#check LemmaWeave.Problems.GSM8K.Sprint0930A20P1.tree_apples_per_tree
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A20P1.tree_apples_total to "work/gsm8k-sprint230-tree-apples-graph.json"
#check LemmaWeave.Problems.GSM8K.Sprint0930A20P1.gardening_mow_minutes
#check LemmaWeave.Problems.GSM8K.Sprint0930A20P1.gardening_total_flowers
#check LemmaWeave.Problems.GSM8K.Sprint0930A20P1.gardening_planting_minutes
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A20P1.gardening_total_minutes to "work/gsm8k-sprint230-gardening-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A20P1.wheels_total
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A20P1.apples_monthly_order
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A20P1.towels_no_clean_days
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A20P1.tree_apples_total
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A20P1.gardening_total_minutes
