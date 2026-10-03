import LemmaWeave.Problems.GSM8K.Sprint1001A19P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A19P2

#lw_dependencies apple_unit_price
#lw_dependencies orange_unit_price
#lw_dependencies apples_are_cheaper
#lw_dependencies fruit_cost to "work/gsm8k-sprint285-fruit-cost-graph.json"
#print axioms fruit_cost
#lw_dependencies third_delivery_distance
#lw_dependencies delivery_total_distance
#lw_dependencies delivery_pay_per_mile to "work/gsm8k-sprint285-delivery-pay-graph.json"
#print axioms delivery_pay_per_mile
#lw_dependencies initial_water_bottles
#lw_dependencies first_break_bottles
#lw_dependencies used_water_bottles
#lw_dependencies remaining_water_bottles to "work/gsm8k-sprint285-water-remaining-graph.json"
#print axioms remaining_water_bottles
#lw_dependencies first_team_supporters
#lw_dependencies second_team_supporters
#lw_dependencies audience_neither_formula
#lw_dependencies audience_neither_range
#lw_dependencies audience_disjoint_neither
#lw_dependencies audience_max_overlap_neither
#lw_dependencies audience_result to "work/gsm8k-sprint285-audience-result-graph.json"
#print axioms audience_result
#lw_dependencies daily_earnings
#lw_dependencies weekly_earnings
#lw_dependencies school_allocation to "work/gsm8k-sprint285-school-allocation-graph.json"
#print axioms school_allocation
