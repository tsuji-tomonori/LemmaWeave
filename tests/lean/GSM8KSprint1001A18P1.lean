import LemmaWeave.Problems.GSM8K.Sprint1001A18P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A18P1

#check coin_change_amount
#check coin_representation_at_least_four
#check coin_count_constructed
#lw_dependencies coin_minimum to "work/gsm8k-sprint281-minimum-coins-graph.json"
#print axioms coin_minimum
#check last_year_salary
#check raise_amount
#lw_dependencies new_salary to "work/gsm8k-sprint281-new-salary-graph.json"
#print axioms new_salary
#check commute_distance
#lw_dependencies return_average_speed to "work/gsm8k-sprint281-return-speed-graph.json"
#print axioms return_average_speed
#check monday_to_wednesday_miles
#check thursday_friday_each
#check weekly_miles
#lw_dependencies monthly_miles to "work/gsm8k-sprint281-monthly-miles-graph.json"
#print axioms monthly_miles
#check remaining_savings_goal
#lw_dependencies monthly_savings to "work/gsm8k-sprint281-monthly-savings-graph.json"
#print axioms monthly_savings
