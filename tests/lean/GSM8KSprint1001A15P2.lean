import LemmaWeave.Problems.GSM8K.Sprint1001A15P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A15P2

#check previous_game_average
#check half_previous_average
#check championship_team_score
#lw_dependencies opponent_score to "work/gsm8k-sprint273-opponent-score-graph.json"
#print axioms opponent_score
#check special_bills
#check bills_spent
#check special_bills_left
#lw_dependencies exchange_amount to "work/gsm8k-sprint273-exchange-amount-graph.json"
#print axioms exchange_amount
#check pepe_height_inches
#check frank_height_inches
#check larry_height_inches
#check ben_height_inches
#lw_dependencies big_joe_height to "work/gsm8k-sprint273-big-joe-height-graph.json"
#print axioms big_joe_height
#check junior_workout_hours
#check combined_workout_hours
#lw_dependencies wolverine_hours to "work/gsm8k-sprint273-wolverine-hours-graph.json"
#print axioms wolverine_hours
#check repair_labor_cost
#lw_dependencies repair_cost to "work/gsm8k-sprint273-repair-cost-graph.json"
#print axioms repair_cost
