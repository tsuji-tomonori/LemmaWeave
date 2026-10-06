import LemmaWeave.Problems.GSM8K.Sprint1001A06P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A06P1

#lw_dependencies dog_food_daily
#lw_dependencies dog_food_days to "work/gsm8k-sprint248-dog-food-graph.json"
#print axioms dog_food_days
#lw_dependencies ages_mark
#lw_dependencies ages_graham
#lw_dependencies ages_janice to "work/gsm8k-sprint248-ages-graph.json"
#print axioms ages_janice
#lw_dependencies house_bedroom_area
#lw_dependencies house_guest
#lw_dependencies house_master to "work/gsm8k-sprint248-house-graph.json"
#print axioms house_master
#lw_dependencies coins_initial_value
#lw_dependencies coins_toonies to "work/gsm8k-sprint248-coins-graph.json"
#print axioms coins_toonies
#lw_dependencies toys_leila
#lw_dependencies toys_mohamed
#lw_dependencies toys_difference to "work/gsm8k-sprint248-toys-graph.json"
#print axioms toys_difference
