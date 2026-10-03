import LemmaWeave.Problems.GSM8K.Sprint1001A07P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A07P3

#check jog_days
#check jog_minutes
#lw_dependencies jog_hours to "work/gsm8k-sprint253-jog-graph.json"
#print axioms jog_hours
#check profit_carla
#check profit_cosima
#check profit_capital
#check profit_sale
#lw_dependencies profit_amount to "work/gsm8k-sprint253-profit-graph.json"
#print axioms profit_amount
#check experience_bartender
#check experience_manager
#lw_dependencies experience_total to "work/gsm8k-sprint253-experience-graph.json"
#print axioms experience_total
#check birdhouse_cost
#check birdhouse_price
#lw_dependencies birdhouse_total to "work/gsm8k-sprint253-birdhouse-graph.json"
#print axioms birdhouse_total
#check tank_seconds
#check tank_poured
#lw_dependencies tank_remaining to "work/gsm8k-sprint253-tank-graph.json"
#print axioms tank_remaining
