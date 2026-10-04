import LemmaWeave.Problems.GSM8K.Sprint1001A16P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A16P1

#check brothers_age_sum
#lw_dependencies hannah_age to "work/gsm8k-sprint275-hannah-age-graph.json"
#print axioms hannah_age
#check student_volunteers
#check current_volunteers
#lw_dependencies volunteers_needed to "work/gsm8k-sprint275-volunteers-needed-graph.json"
#print axioms volunteers_needed
#check total_smores
#check supply_batches
#lw_dependencies smore_cost to "work/gsm8k-sprint275-smore-cost-graph.json"
#print axioms smore_cost
#check hunt_minutes
#check photo_count
#check photo_revenue
#check fuel_cost
#lw_dependencies shark_profit to "work/gsm8k-sprint275-shark-profit-graph.json"
#print axioms shark_profit
#check bake_minutes
#check icing_minutes
#lw_dependencies cupcake_minutes to "work/gsm8k-sprint275-cupcake-minutes-graph.json"
#print axioms cupcake_minutes
