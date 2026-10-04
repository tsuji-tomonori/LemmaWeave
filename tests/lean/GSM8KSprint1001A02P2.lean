import LemmaWeave.Problems.GSM8K.Sprint1001A02P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A02P2

#lw_dependencies tips_saturday
#lw_dependencies tips_customers
#lw_dependencies tips_total to "work/gsm8k-sprint237-tips-graph.json"
#lw_dependencies area_bedrooms
#lw_dependencies area_bathrooms
#lw_dependencies area_kitchen to "work/gsm8k-sprint237-house-area-graph.json"
#lw_dependencies meals_breakfast
#lw_dependencies meals_lunch
#lw_dependencies meals_difference to "work/gsm8k-sprint237-meals-graph.json"
#lw_dependencies lemonade_stanley
#lw_dependencies lemonade_carl
#lw_dependencies lemonade_difference to "work/gsm8k-sprint237-lemonade-graph.json"
#lw_dependencies statues_giraffes
#lw_dependencies statues_elephants
#lw_dependencies statues_giraffe_revenue
#lw_dependencies statues_elephant_revenue
#lw_dependencies statues_difference to "work/gsm8k-sprint237-statues-graph.json"
#print axioms tips_total
#print axioms area_kitchen
#print axioms meals_difference
#print axioms lemonade_difference
#print axioms statues_difference
