import LemmaWeave.Problems.GSM8K.Sprint1001A19P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A19P2

#check apple_unit_price
#check orange_unit_price
#check apples_are_cheaper
#lw_dependencies fruit_cost to "work/gsm8k-sprint285-fruit-cost-graph.json"
#print axioms fruit_cost
#check third_delivery_distance
#check delivery_total_distance
#lw_dependencies delivery_pay_per_mile to "work/gsm8k-sprint285-delivery-pay-graph.json"
#print axioms delivery_pay_per_mile
#check initial_water_bottles
#check first_break_bottles
#check used_water_bottles
#lw_dependencies remaining_water_bottles to "work/gsm8k-sprint285-water-remaining-graph.json"
#print axioms remaining_water_bottles
#check first_team_supporters
#check second_team_supporters
#check audience_neither_formula
#check audience_neither_range
#check audience_disjoint_neither
#check audience_max_overlap_neither
#lw_dependencies audience_result to "work/gsm8k-sprint285-audience-result-graph.json"
#print axioms audience_result
#check daily_earnings
#check weekly_earnings
#lw_dependencies school_allocation to "work/gsm8k-sprint285-school-allocation-graph.json"
#print axioms school_allocation
