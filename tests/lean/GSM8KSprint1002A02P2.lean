import LemmaWeave.Problems.GSM8K.Sprint1002A02P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1002A02P2

#lw_dependencies bike_daily_miles
#lw_dependencies bike_week_miles to "work/gsm8k-sprint291-bike-week-miles-graph.json"
#print axioms bike_week_miles
#lw_dependencies blouse_ironing_minutes
#lw_dependencies blouses_ironed
#lw_dependencies dress_ironing_minutes
#lw_dependencies dresses_ironed
#lw_dependencies clothes_ironed to "work/gsm8k-sprint291-clothes-ironed-graph.json"
#print axioms clothes_ironed
#lw_dependencies jennifer_candies
#lw_dependencies bob_candies to "work/gsm8k-sprint291-bob-candies-graph.json"
#print axioms bob_candies
#lw_dependencies nut_only_cookies
#lw_dependencies chip_only_cookies
#lw_dependencies both_cookies
#lw_dependencies cookies_with_nuts
#lw_dependencies nuts_needed to "work/gsm8k-sprint291-nuts-needed-graph.json"
#print axioms nuts_needed
#lw_dependencies full_floors
#lw_dependencies full_floor_apartments
#lw_dependencies half_capacity_floors
#lw_dependencies half_capacity_apartments
#lw_dependencies filled_apartments
#lw_dependencies building_people to "work/gsm8k-sprint291-building-people-graph.json"
#print axioms building_people
