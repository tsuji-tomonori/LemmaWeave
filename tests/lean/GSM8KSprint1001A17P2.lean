import LemmaWeave.Problems.GSM8K.Sprint1001A17P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A17P2

#check tomato_plants
#lw_dependencies tomato_pieces to "work/gsm8k-sprint279-tomato-pieces-graph.json"
#print axioms tomato_pieces
#check fernando_arena_time
#lw_dependencies arena_summed_time to "work/gsm8k-sprint279-arena-time-readings-graph.json"
#lw_dependencies arena_simultaneous_time to "work/lw-line-LemmaWeave.Problems.GSM8K.Sprint1001A17P2.arena_simultaneous_time-graph.json"
#lw_dependencies arena_readings_differ to "work/lw-line-LemmaWeave.Problems.GSM8K.Sprint1001A17P2.arena_readings_differ-graph.json"
#print axioms arena_summed_time
#check party_total
#check friends_contribution_total
#lw_dependencies friend_contribution to "work/gsm8k-sprint279-friend-contribution-graph.json"
#print axioms friend_contribution
#check isabella_ten_months
#check isabella_current_months
#lw_dependencies antonio_months to "work/gsm8k-sprint279-antonio-months-graph.json"
#print axioms antonio_months
#lw_dependencies average_speed to "work/gsm8k-sprint279-average-speed-graph.json"
#print axioms average_speed
