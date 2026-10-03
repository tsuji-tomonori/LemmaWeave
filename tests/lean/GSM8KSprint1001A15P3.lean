import LemmaWeave.Problems.GSM8K.Sprint1001A15P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A15P3

#check foam_per_pillow
#check foam_total_pounds
#lw_dependencies pillow_count to "work/gsm8k-sprint274-pillow-count-graph.json"
#print axioms pillow_count
#check helicopter_hours
#lw_dependencies helicopter_cost to "work/gsm8k-sprint274-helicopter-cost-graph.json"
#print axioms helicopter_cost
#check total_eggs
#check crepe_eggs
#check cupcake_eggs
#lw_dependencies breakfast_eggs to "work/gsm8k-sprint274-breakfast-eggs-graph.json"
#print axioms breakfast_eggs
#check target_cents
#check weeds_per_hour
#check seconds_per_hour
#lw_dependencies seconds_per_weed to "work/gsm8k-sprint274-seconds-per-weed-graph.json"
#print axioms seconds_per_weed
#check heidi_polishes
#check karen_polishes
#lw_dependencies polish_total to "work/gsm8k-sprint274-polish-total-graph.json"
#print axioms polish_total
