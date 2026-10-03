import LemmaWeave.Problems.GSM8K.Sprint1001A00P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A00P1

#check ages_rebecca
#check ages_matthew
#lw_dependencies ages_freddy to "work/gsm8k-sprint233-ages-graph.json"
#check laundry_thursday
#check laundry_friday
#check laundry_saturday
#lw_dependencies laundry_total to "work/gsm8k-sprint233-laundry-graph.json"
#check running_morning
#check running_afternoon
#check running_daily
#lw_dependencies running_weekly to "work/gsm8k-sprint233-running-graph.json"
#check shopping_laptops
#check shopping_smartphones
#check shopping_total
#lw_dependencies shopping_change to "work/gsm8k-sprint233-shopping-graph.json"
#check breakfast_peanut_calories
#lw_dependencies breakfast_servings to "work/gsm8k-sprint233-breakfast-graph.json"
#print axioms ages_freddy
#print axioms laundry_total
#print axioms running_weekly
#print axioms shopping_change
#print axioms breakfast_servings
