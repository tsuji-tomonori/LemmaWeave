import LemmaWeave.Problems.GSM8K.Sprint1001A16P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A16P2

#lw_dependencies sister_marbles
#lw_dependencies friend_marbles
#lw_dependencies initial_marbles to "work/gsm8k-sprint276-initial-marbles-graph.json"
#print axioms initial_marbles
#lw_dependencies sibling_gift
#lw_dependencies candy_after_siblings
#lw_dependencies cousin_gift
#lw_dependencies cotton_candy_left to "work/gsm8k-sprint276-cotton-candy-left-graph.json"
#print axioms cotton_candy_left
#lw_dependencies visited_households
#lw_dependencies donor_households
#lw_dependencies donation_per_house
#lw_dependencies donation_total to "work/gsm8k-sprint276-donation-total-graph.json"
#print axioms donation_total
#lw_dependencies twelve_is_common
#lw_dependencies light_shortest_time to "work/gsm8k-sprint276-light-shortest-time-graph.json"
#print axioms light_shortest_time
#lw_dependencies hotel_cost
#lw_dependencies trip_spent
#lw_dependencies trip_money_left to "work/gsm8k-sprint276-trip-money-left-graph.json"
#print axioms trip_money_left
