import LemmaWeave.Problems.GSM8K.Sprint1001A15P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A15P1

#check daily_meat
#lw_dependencies meat_days to "work/gsm8k-sprint272-meat-days-graph.json"
#print axioms meat_days
#check cats_after_first
#check cats_second_relocation
#lw_dependencies cats_remaining to "work/gsm8k-sprint272-cats-remaining-graph.json"
#print axioms cats_remaining
#check total_cards
#lw_dependencies card_spend to "work/gsm8k-sprint272-card-spend-graph.json"
#print axioms card_spend
#check walking_minutes_per_day
#check walking_meters_per_day
#lw_dependencies two_day_walk to "work/gsm8k-sprint272-two-day-walk-graph.json"
#print axioms two_day_walk
#check bread_cost
#check juice_cost
#check total_purchase_cost
#lw_dependencies wyatt_money_left to "work/gsm8k-sprint272-wyatt-money-left-graph.json"
#print axioms wyatt_money_left
