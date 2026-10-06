import LemmaWeave.Problems.GSM8K.Sprint1001A18P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A18P1

#lw_dependencies coin_change_amount
#lw_dependencies coin_representation_at_least_four
#lw_dependencies coin_count_constructed
#lw_dependencies coin_minimum to "work/gsm8k-sprint281-minimum-coins-graph.json"
#print axioms coin_minimum
#lw_dependencies last_year_salary
#lw_dependencies raise_amount
#lw_dependencies new_salary to "work/gsm8k-sprint281-new-salary-graph.json"
#print axioms new_salary
#lw_dependencies commute_distance
#lw_dependencies return_average_speed to "work/gsm8k-sprint281-return-speed-graph.json"
#print axioms return_average_speed
#lw_dependencies monday_to_wednesday_miles
#lw_dependencies thursday_friday_each
#lw_dependencies weekly_miles
#lw_dependencies monthly_miles to "work/gsm8k-sprint281-monthly-miles-graph.json"
#print axioms monthly_miles
#lw_dependencies remaining_savings_goal
#lw_dependencies monthly_savings to "work/gsm8k-sprint281-monthly-savings-graph.json"
#print axioms monthly_savings
