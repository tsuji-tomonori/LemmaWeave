import LemmaWeave.Problems.GSM8K.Sprint1001A16P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A16P1

#lw_dependencies brothers_age_sum
#lw_dependencies hannah_age to "work/gsm8k-sprint275-hannah-age-graph.json"
#print axioms hannah_age
#lw_dependencies student_volunteers
#lw_dependencies current_volunteers
#lw_dependencies volunteers_needed to "work/gsm8k-sprint275-volunteers-needed-graph.json"
#print axioms volunteers_needed
#lw_dependencies total_smores
#lw_dependencies supply_batches
#lw_dependencies smore_cost to "work/gsm8k-sprint275-smore-cost-graph.json"
#print axioms smore_cost
#lw_dependencies hunt_minutes
#lw_dependencies photo_count
#lw_dependencies photo_revenue
#lw_dependencies fuel_cost
#lw_dependencies shark_profit to "work/gsm8k-sprint275-shark-profit-graph.json"
#print axioms shark_profit
#lw_dependencies bake_minutes
#lw_dependencies icing_minutes
#lw_dependencies cupcake_minutes to "work/gsm8k-sprint275-cupcake-minutes-graph.json"
#print axioms cupcake_minutes
