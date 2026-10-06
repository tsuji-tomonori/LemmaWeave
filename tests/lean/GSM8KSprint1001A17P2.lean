import LemmaWeave.Problems.GSM8K.Sprint1001A17P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A17P2

#lw_dependencies tomato_plants
#lw_dependencies tomato_pieces to "work/gsm8k-sprint279-tomato-pieces-graph.json"
#print axioms tomato_pieces
#lw_dependencies fernando_arena_time
#lw_dependencies arena_summed_time to "work/gsm8k-sprint279-arena-time-readings-graph.json"
#lw_dependencies arena_simultaneous_time
#lw_dependencies arena_readings_differ
#print axioms arena_summed_time
#lw_dependencies party_total
#lw_dependencies friends_contribution_total
#lw_dependencies friend_contribution to "work/gsm8k-sprint279-friend-contribution-graph.json"
#print axioms friend_contribution
#lw_dependencies isabella_ten_months
#lw_dependencies isabella_current_months
#lw_dependencies antonio_months to "work/gsm8k-sprint279-antonio-months-graph.json"
#print axioms antonio_months
#lw_dependencies average_speed to "work/gsm8k-sprint279-average-speed-graph.json"
#print axioms average_speed
