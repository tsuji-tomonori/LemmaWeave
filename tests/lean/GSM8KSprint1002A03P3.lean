import LemmaWeave.Problems.GSM8K.Sprint1002A03P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1002A03P3

#lw_dependencies first_week_gain
#lw_dependencies first_week_value
#lw_dependencies second_week_gain
#lw_dependencies ethereum_final_value to "work/gsm8k-sprint294-ethereum-final-value-graph.json"
#print axioms ethereum_final_value
#lw_dependencies normal_program_years
#lw_dependencies accelerated_program_years to "work/gsm8k-sprint294-accelerated-program-years-graph.json"
#print axioms accelerated_program_years
#lw_dependencies pen_money_available
#lw_dependencies pen_money_needed to "work/gsm8k-sprint294-pen-money-needed-graph.json"
#print axioms pen_money_needed
#lw_dependencies dining_table_original_price to "work/gsm8k-sprint294-dining-table-original-price-graph.json"
#print axioms dining_table_original_price
#lw_dependencies apple_kilograms
#lw_dependencies orange_kilograms
#lw_dependencies total_fruit_kilograms
#lw_dependencies fruit_sales_revenue to "work/gsm8k-sprint294-fruit-sales-revenue-graph.json"
#print axioms fruit_sales_revenue
