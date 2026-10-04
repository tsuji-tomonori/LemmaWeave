import LemmaWeave.Problems.GSM8K.Sprint1001A18P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A18P2

#check rice_cost
#check flour_cost
#check grocery_total_spent
#lw_dependencies grocery_balance to "work/gsm8k-sprint282-grocery-balance-graph.json"
#print axioms grocery_balance
#check sports_present_days
#lw_dependencies sports_hours to "work/gsm8k-sprint282-sports-hours-graph.json"
#print axioms sports_hours
#check increased_tank_cost
#lw_dependencies doubled_fuel_cost to "work/gsm8k-sprint282-fuel-cost-graph.json"
#print axioms doubled_fuel_cost
#check father_notebooks
#check mother_notebooks
#lw_dependencies notebook_total to "work/gsm8k-sprint282-notebook-total-graph.json"
#print axioms notebook_total
#check hugo_medium_box_time
#check folding_lower_bound
#check folding_candidate_time
#lw_dependencies folding_optimal to "work/gsm8k-sprint282-folding-optimal-graph.json"
#print axioms folding_optimal
