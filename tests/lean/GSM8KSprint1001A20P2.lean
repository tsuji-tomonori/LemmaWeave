import LemmaWeave.Problems.GSM8K.Sprint1001A20P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A20P2

#check mall_customers_total
#lw_dependencies mall_customers_per_car to "work/gsm8k-sprint288-mall-customers-graph.json"
#print axioms mall_customers_per_car
#check returned_book_fee
#check month_book_fee
#check two_month_book_fees
#lw_dependencies library_total_fee to "work/gsm8k-sprint288-library-fee-graph.json"
#print axioms library_total_fee
#check central_floor_area
#check hallway_floor_area
#lw_dependencies flooring_total_area to "work/gsm8k-sprint288-flooring-area-graph.json"
#print axioms flooring_total_area
#check employee_drivers
#check employee_nondrivers
#lw_dependencies employee_public_transit to "work/gsm8k-sprint288-public-transit-graph.json"
#print axioms employee_public_transit
#check daily_bone_cost
#check daily_biscuit_cost
#lw_dependencies weekly_treat_cost to "work/gsm8k-sprint288-treat-cost-graph.json"
#print axioms weekly_treat_cost
