import LemmaWeave.Problems.GSM8K.Sprint1001A00P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A00P3

#lw_dependencies monsters_day2
#lw_dependencies monsters_day3
#lw_dependencies monsters_day4
#lw_dependencies monsters_day5
#lw_dependencies monsters_total to "work/gsm8k-sprint235-monsters-graph.json"
#lw_dependencies yoga_weekly
#lw_dependencies yoga_yearly to "work/gsm8k-sprint235-yoga-graph.json"
#lw_dependencies plates_people
#lw_dependencies plates_per_meal
#lw_dependencies plates_per_day
#lw_dependencies plates_total to "work/gsm8k-sprint235-plates-graph.json"
#lw_dependencies eggs_chickens
#lw_dependencies eggs_daily
#lw_dependencies eggs_weekly to "work/gsm8k-sprint235-eggs-graph.json"
#lw_dependencies boxwood_base_trim
#lw_dependencies boxwood_shape_charge
#lw_dependencies boxwood_additional_total
#lw_dependencies boxwood_replacement_total
#lw_dependencies boxwood_interpretations_differ to "work/gsm8k-sprint235-boxwood-graph.json"
#print axioms monsters_total
#print axioms yoga_yearly
#print axioms plates_total
#print axioms eggs_weekly
#print axioms boxwood_interpretations_differ
