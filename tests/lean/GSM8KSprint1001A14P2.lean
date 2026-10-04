import LemmaWeave.Problems.GSM8K.Sprint1001A14P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A14P2

#lw_dependencies couple_guests
#lw_dependencies hotel_guests
#lw_dependencies bubble_bath to "work/gsm8k-sprint270-bubble-bath-graph.json"
#print axioms bubble_bath
#lw_dependencies peter_daily_miles
#lw_dependencies combined_daily_miles
#lw_dependencies running_miles to "work/gsm8k-sprint270-running-miles-graph.json"
#print axioms running_miles
#lw_dependencies new_computer_watts
#lw_dependencies new_electricity_price
#lw_dependencies computer_energy
#lw_dependencies computer_cost_cents
#lw_dependencies computer_electricity to "work/gsm8k-sprint270-computer-electricity-graph.json"
#print axioms computer_electricity
#lw_dependencies soda_cans
#lw_dependencies soda_cost_cents
#lw_dependencies soda_cost to "work/gsm8k-sprint270-soda-cost-graph.json"
#print axioms soda_cost
#lw_dependencies weekday_rental
#lw_dependencies weekend_rental
#lw_dependencies rental_total
#lw_dependencies airbnb_share to "work/gsm8k-sprint270-airbnb-share-graph.json"
#print axioms airbnb_share
