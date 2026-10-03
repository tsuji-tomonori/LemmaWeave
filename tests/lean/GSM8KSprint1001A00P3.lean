import LemmaWeave.Problems.GSM8K.Sprint1001A00P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A00P3

#check monsters_day2
#check monsters_day3
#check monsters_day4
#check monsters_day5
#lw_dependencies monsters_total to "work/gsm8k-sprint235-monsters-graph.json"
#check yoga_weekly
#lw_dependencies yoga_yearly to "work/gsm8k-sprint235-yoga-graph.json"
#check plates_people
#check plates_per_meal
#check plates_per_day
#lw_dependencies plates_total to "work/gsm8k-sprint235-plates-graph.json"
#check eggs_chickens
#check eggs_daily
#lw_dependencies eggs_weekly to "work/gsm8k-sprint235-eggs-graph.json"
#check boxwood_base_trim
#check boxwood_shape_charge
#check boxwood_additional_total
#check boxwood_replacement_total
#lw_dependencies boxwood_interpretations_differ to "work/gsm8k-sprint235-boxwood-graph.json"
#print axioms monsters_total
#print axioms yoga_yearly
#print axioms plates_total
#print axioms eggs_weekly
#print axioms boxwood_interpretations_differ
