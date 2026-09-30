import LemmaWeave.Problems.GSM8K.Sprint1001A02P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A02P1

#lw_dependencies sibling_youngest
#lw_dependencies sibling_oldest to "work/gsm8k-sprint236-sibling-ages-graph.json"
#lw_dependencies cards_cindy
#lw_dependencies cards_combined
#lw_dependencies cards_rex
#lw_dependencies cards_share to "work/gsm8k-sprint236-pokemon-cards-graph.json"
#lw_dependencies chickens_hens
#lw_dependencies chickens_roosters to "work/gsm8k-sprint236-chickens-graph.json"
#lw_dependencies bicycle_first
#lw_dependencies bicycle_second
#lw_dependencies bicycle_third
#lw_dependencies bicycle_total to "work/gsm8k-sprint236-bicycle-graph.json"
#lw_dependencies movies_count
#lw_dependencies movies_cost
#lw_dependencies movies_average to "work/gsm8k-sprint236-movies-graph.json"
#print axioms sibling_oldest
#print axioms cards_share
#print axioms chickens_roosters
#print axioms bicycle_total
#print axioms movies_average
