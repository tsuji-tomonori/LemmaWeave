import LemmaWeave.Problems.GSM8K.Sprint1001A06P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A06P1

#check dog_food_daily
#lw_dependencies dog_food_days to "work/gsm8k-sprint248-dog-food-graph.json"
#print axioms dog_food_days
#check ages_mark
#check ages_graham
#lw_dependencies ages_janice to "work/gsm8k-sprint248-ages-graph.json"
#print axioms ages_janice
#check house_bedroom_area
#check house_guest
#lw_dependencies house_master to "work/gsm8k-sprint248-house-graph.json"
#print axioms house_master
#check coins_initial_value
#lw_dependencies coins_toonies to "work/gsm8k-sprint248-coins-graph.json"
#print axioms coins_toonies
#check toys_leila
#check toys_mohamed
#lw_dependencies toys_difference to "work/gsm8k-sprint248-toys-graph.json"
#print axioms toys_difference
