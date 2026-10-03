import LemmaWeave.Problems.GSM8K.Sprint1001A00P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A00P2

#check chase_relative_speed
#lw_dependencies chase_seconds to "work/gsm8k-sprint234-chase-graph.json"
#check discount_shirt_price
#check discount_jacket_price
#check discount_shirts_cost
#check discount_jackets_cost
#lw_dependencies discount_total to "work/gsm8k-sprint234-discount-graph.json"
#check electives_music_students
#lw_dependencies electives_music_percent to "work/gsm8k-sprint234-electives-graph.json"
#check vacation_clowns
#check vacation_tetras
#lw_dependencies vacation_total to "work/gsm8k-sprint234-vacation-graph.json"
#check restaurants_daily
#lw_dependencies restaurants_weekly to "work/gsm8k-sprint234-restaurants-graph.json"
#print axioms chase_seconds
#print axioms discount_total
#print axioms electives_music_percent
#print axioms vacation_total
#print axioms restaurants_weekly
