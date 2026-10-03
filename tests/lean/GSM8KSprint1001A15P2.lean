import LemmaWeave.Problems.GSM8K.Sprint1001A15P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A15P2

#lw_dependencies previous_game_average
#lw_dependencies half_previous_average
#lw_dependencies championship_team_score
#lw_dependencies opponent_score to "work/gsm8k-sprint273-opponent-score-graph.json"
#print axioms opponent_score
#lw_dependencies special_bills
#lw_dependencies bills_spent
#lw_dependencies special_bills_left
#lw_dependencies exchange_amount to "work/gsm8k-sprint273-exchange-amount-graph.json"
#print axioms exchange_amount
#lw_dependencies pepe_height_inches
#lw_dependencies frank_height_inches
#lw_dependencies larry_height_inches
#lw_dependencies ben_height_inches
#lw_dependencies big_joe_height to "work/gsm8k-sprint273-big-joe-height-graph.json"
#print axioms big_joe_height
#lw_dependencies junior_workout_hours
#lw_dependencies combined_workout_hours
#lw_dependencies wolverine_hours to "work/gsm8k-sprint273-wolverine-hours-graph.json"
#print axioms wolverine_hours
#lw_dependencies repair_labor_cost
#lw_dependencies repair_cost to "work/gsm8k-sprint273-repair-cost-graph.json"
#print axioms repair_cost
