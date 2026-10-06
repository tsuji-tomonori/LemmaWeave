import LemmaWeave.Problems.GSM8K.Sprint1001A00P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A00P1

#lw_dependencies ages_rebecca
#lw_dependencies ages_matthew
#lw_dependencies ages_freddy to "work/gsm8k-sprint233-ages-graph.json"
#lw_dependencies laundry_thursday
#lw_dependencies laundry_friday
#lw_dependencies laundry_saturday
#lw_dependencies laundry_total to "work/gsm8k-sprint233-laundry-graph.json"
#lw_dependencies running_morning
#lw_dependencies running_afternoon
#lw_dependencies running_daily
#lw_dependencies running_weekly to "work/gsm8k-sprint233-running-graph.json"
#lw_dependencies shopping_laptops
#lw_dependencies shopping_smartphones
#lw_dependencies shopping_total
#lw_dependencies shopping_change to "work/gsm8k-sprint233-shopping-graph.json"
#lw_dependencies breakfast_peanut_calories
#lw_dependencies breakfast_servings to "work/gsm8k-sprint233-breakfast-graph.json"
#print axioms ages_freddy
#print axioms laundry_total
#print axioms running_weekly
#print axioms shopping_change
#print axioms breakfast_servings
