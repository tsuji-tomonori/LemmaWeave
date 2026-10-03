import LemmaWeave.Problems.GSM8K.Sprint1001A02P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A02P1

#check sibling_youngest
#lw_dependencies sibling_oldest to "work/gsm8k-sprint236-sibling-ages-graph.json"
#check cards_cindy
#check cards_combined
#check cards_rex
#lw_dependencies cards_share to "work/gsm8k-sprint236-pokemon-cards-graph.json"
#check chickens_hens
#lw_dependencies chickens_roosters to "work/gsm8k-sprint236-chickens-graph.json"
#check bicycle_first
#check bicycle_second
#check bicycle_third
#lw_dependencies bicycle_total to "work/gsm8k-sprint236-bicycle-graph.json"
#check movies_count
#check movies_cost
#lw_dependencies movies_average to "work/gsm8k-sprint236-movies-graph.json"
#print axioms sibling_oldest
#print axioms cards_share
#print axioms chickens_roosters
#print axioms bicycle_total
#print axioms movies_average
