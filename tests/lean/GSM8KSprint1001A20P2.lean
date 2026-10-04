import LemmaWeave.Problems.GSM8K.Sprint1001A20P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A20P2

#lw_dependencies mall_customers_total
#lw_dependencies mall_customers_per_car to "work/gsm8k-sprint288-mall-customers-graph.json"
#print axioms mall_customers_per_car
#lw_dependencies returned_book_fee
#lw_dependencies month_book_fee
#lw_dependencies two_month_book_fees
#lw_dependencies library_total_fee to "work/gsm8k-sprint288-library-fee-graph.json"
#print axioms library_total_fee
#lw_dependencies central_floor_area
#lw_dependencies hallway_floor_area
#lw_dependencies flooring_total_area to "work/gsm8k-sprint288-flooring-area-graph.json"
#print axioms flooring_total_area
#lw_dependencies employee_drivers
#lw_dependencies employee_nondrivers
#lw_dependencies employee_public_transit to "work/gsm8k-sprint288-public-transit-graph.json"
#print axioms employee_public_transit
#lw_dependencies daily_bone_cost
#lw_dependencies daily_biscuit_cost
#lw_dependencies weekly_treat_cost to "work/gsm8k-sprint288-treat-cost-graph.json"
#print axioms weekly_treat_cost
