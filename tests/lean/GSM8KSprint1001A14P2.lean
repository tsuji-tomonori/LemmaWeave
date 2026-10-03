import LemmaWeave.Problems.GSM8K.Sprint1001A14P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A14P2

#check couple_guests
#check hotel_guests
#lw_dependencies bubble_bath to "work/gsm8k-sprint270-bubble-bath-graph.json"
#print axioms bubble_bath
#check peter_daily_miles
#check combined_daily_miles
#lw_dependencies running_miles to "work/gsm8k-sprint270-running-miles-graph.json"
#print axioms running_miles
#check new_computer_watts
#check new_electricity_price
#check computer_energy
#check computer_cost_cents
#lw_dependencies computer_electricity to "work/gsm8k-sprint270-computer-electricity-graph.json"
#print axioms computer_electricity
#check soda_cans
#check soda_cost_cents
#lw_dependencies soda_cost to "work/gsm8k-sprint270-soda-cost-graph.json"
#print axioms soda_cost
#check weekday_rental
#check weekend_rental
#check rental_total
#lw_dependencies airbnb_share to "work/gsm8k-sprint270-airbnb-share-graph.json"
#print axioms airbnb_share
