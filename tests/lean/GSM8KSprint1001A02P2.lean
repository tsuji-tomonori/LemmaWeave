import LemmaWeave.Problems.GSM8K.Sprint1001A02P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A02P2

#check tips_saturday
#check tips_customers
#lw_dependencies tips_total to "work/gsm8k-sprint237-tips-graph.json"
#check area_bedrooms
#check area_bathrooms
#lw_dependencies area_kitchen to "work/gsm8k-sprint237-house-area-graph.json"
#check meals_breakfast
#check meals_lunch
#lw_dependencies meals_difference to "work/gsm8k-sprint237-meals-graph.json"
#check lemonade_stanley
#check lemonade_carl
#lw_dependencies lemonade_difference to "work/gsm8k-sprint237-lemonade-graph.json"
#check statues_giraffes
#check statues_elephants
#check statues_giraffe_revenue
#check statues_elephant_revenue
#lw_dependencies statues_difference to "work/gsm8k-sprint237-statues-graph.json"
#print axioms tips_total
#print axioms area_kitchen
#print axioms meals_difference
#print axioms lemonade_difference
#print axioms statues_difference
