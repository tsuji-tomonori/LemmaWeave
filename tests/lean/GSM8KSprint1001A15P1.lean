import LemmaWeave.Problems.GSM8K.Sprint1001A15P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A15P1

#lw_dependencies daily_meat
#lw_dependencies meat_days to "work/gsm8k-sprint272-meat-days-graph.json"
#print axioms meat_days
#lw_dependencies cats_after_first
#lw_dependencies cats_second_relocation
#lw_dependencies cats_remaining to "work/gsm8k-sprint272-cats-remaining-graph.json"
#print axioms cats_remaining
#lw_dependencies total_cards
#lw_dependencies card_spend to "work/gsm8k-sprint272-card-spend-graph.json"
#print axioms card_spend
#lw_dependencies walking_minutes_per_day
#lw_dependencies walking_meters_per_day
#lw_dependencies two_day_walk to "work/gsm8k-sprint272-two-day-walk-graph.json"
#print axioms two_day_walk
#lw_dependencies bread_cost
#lw_dependencies juice_cost
#lw_dependencies total_purchase_cost
#lw_dependencies wyatt_money_left to "work/gsm8k-sprint272-wyatt-money-left-graph.json"
#print axioms wyatt_money_left
