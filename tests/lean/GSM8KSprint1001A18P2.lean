import LemmaWeave.Problems.GSM8K.Sprint1001A18P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A18P2

#lw_dependencies rice_cost
#lw_dependencies flour_cost
#lw_dependencies grocery_total_spent
#lw_dependencies grocery_balance to "work/gsm8k-sprint282-grocery-balance-graph.json"
#print axioms grocery_balance
#lw_dependencies sports_present_days
#lw_dependencies sports_hours to "work/gsm8k-sprint282-sports-hours-graph.json"
#print axioms sports_hours
#lw_dependencies increased_tank_cost
#lw_dependencies doubled_fuel_cost to "work/gsm8k-sprint282-fuel-cost-graph.json"
#print axioms doubled_fuel_cost
#lw_dependencies father_notebooks
#lw_dependencies mother_notebooks
#lw_dependencies notebook_total to "work/gsm8k-sprint282-notebook-total-graph.json"
#print axioms notebook_total
#lw_dependencies hugo_medium_box_time
#lw_dependencies folding_lower_bound
#lw_dependencies folding_candidate_time
#lw_dependencies folding_optimal to "work/gsm8k-sprint282-folding-optimal-graph.json"
#print axioms folding_optimal
