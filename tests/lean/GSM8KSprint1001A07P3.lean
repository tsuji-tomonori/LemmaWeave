import LemmaWeave.Problems.GSM8K.Sprint1001A07P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A07P3

#lw_dependencies jog_days
#lw_dependencies jog_minutes
#lw_dependencies jog_hours to "work/gsm8k-sprint253-jog-graph.json"
#print axioms jog_hours
#lw_dependencies profit_carla
#lw_dependencies profit_cosima
#lw_dependencies profit_capital
#lw_dependencies profit_sale
#lw_dependencies profit_amount to "work/gsm8k-sprint253-profit-graph.json"
#print axioms profit_amount
#lw_dependencies experience_bartender
#lw_dependencies experience_manager
#lw_dependencies experience_total to "work/gsm8k-sprint253-experience-graph.json"
#print axioms experience_total
#lw_dependencies birdhouse_cost
#lw_dependencies birdhouse_price
#lw_dependencies birdhouse_total to "work/gsm8k-sprint253-birdhouse-graph.json"
#print axioms birdhouse_total
#lw_dependencies tank_seconds
#lw_dependencies tank_poured
#lw_dependencies tank_remaining to "work/gsm8k-sprint253-tank-graph.json"
#print axioms tank_remaining
