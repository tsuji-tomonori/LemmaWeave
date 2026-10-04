import LemmaWeave.Problems.GSM8K.Sprint1001A00P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A00P2

#lw_dependencies chase_relative_speed
#lw_dependencies chase_seconds to "work/gsm8k-sprint234-chase-graph.json"
#lw_dependencies discount_shirt_price
#lw_dependencies discount_jacket_price
#lw_dependencies discount_shirts_cost
#lw_dependencies discount_jackets_cost
#lw_dependencies discount_total to "work/gsm8k-sprint234-discount-graph.json"
#lw_dependencies electives_music_students
#lw_dependencies electives_music_percent to "work/gsm8k-sprint234-electives-graph.json"
#lw_dependencies vacation_clowns
#lw_dependencies vacation_tetras
#lw_dependencies vacation_total to "work/gsm8k-sprint234-vacation-graph.json"
#lw_dependencies restaurants_daily
#lw_dependencies restaurants_weekly to "work/gsm8k-sprint234-restaurants-graph.json"
#print axioms chase_seconds
#print axioms discount_total
#print axioms electives_music_percent
#print axioms vacation_total
#print axioms restaurants_weekly
