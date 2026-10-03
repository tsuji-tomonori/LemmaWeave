import LemmaWeave.Problems.GSM8K.Sprint0922A06Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0922A06
open LemmaWeave.Problems.GSM8K.Sprint0922A06

theorem safari_saturday (m:Safari) : m.sat=5 := LemmaWeave.Problems.GSM8K.Sprint0922A06.safari_saturday m
theorem safari_sunday (m:Safari) : m.sun=7 := LemmaWeave.Problems.GSM8K.Sprint0922A06.safari_sunday m
theorem safari_monday (m:Safari) : m.mon=8 := LemmaWeave.Problems.GSM8K.Sprint0922A06.safari_monday m
theorem safari_solution (m:Safari) : m.total=20 := LemmaWeave.Problems.GSM8K.Sprint0922A06.safari_solution m
theorem socks_after_loss (m:Socks) : m.afterLoss=36 := LemmaWeave.Problems.GSM8K.Sprint0922A06.socks_after_loss m
theorem socks_donated (m:Socks) : m.donated=24 := LemmaWeave.Problems.GSM8K.Sprint0922A06.socks_donated m
theorem socks_remaining (m:Socks) : m.remaining=12 := LemmaWeave.Problems.GSM8K.Sprint0922A06.socks_remaining m
theorem socks_solution (m:Socks) : m.final=25 := LemmaWeave.Problems.GSM8K.Sprint0922A06.socks_solution m
theorem followers_gained (m:Followers) : m.gained=365000 := LemmaWeave.Problems.GSM8K.Sprint0922A06.followers_gained m
theorem followers_before_unfollow (m:Followers) : m.beforeLoss=465000 := LemmaWeave.Problems.GSM8K.Sprint0922A06.followers_before_unfollow m
theorem followers_solution (m:Followers) : m.final=445000 := LemmaWeave.Problems.GSM8K.Sprint0922A06.followers_solution m
theorem arrival_abel_hours (m:Arrival) : m.abelHours=20 := LemmaWeave.Problems.GSM8K.Sprint0922A06.arrival_abel_hours m
theorem arrival_alice_hours (m:Arrival) : m.aliceHours=25 := LemmaWeave.Problems.GSM8K.Sprint0922A06.arrival_alice_hours m
theorem arrival_absolute_gap (m:Arrival) : m.gapHours=6 := LemmaWeave.Problems.GSM8K.Sprint0922A06.arrival_absolute_gap m
theorem arrival_solution (m:Arrival) : m.gapMinutes=360 := LemmaWeave.Problems.GSM8K.Sprint0922A06.arrival_solution m
theorem chocolate_grams (m:Chocolate) : m.grams=2000 := LemmaWeave.Problems.GSM8K.Sprint0922A06.chocolate_grams m
theorem chocolate_solution (m:Chocolate) : m.bars=16 := LemmaWeave.Problems.GSM8K.Sprint0922A06.chocolate_solution m
theorem lease_weekly_miles (m:CarLease) : m.weeklyMiles=500 := LemmaWeave.Problems.GSM8K.Sprint0922A06.lease_weekly_miles m
theorem lease_mileage_cost (m:CarLease) : m.mileageCents=5000 := LemmaWeave.Problems.GSM8K.Sprint0922A06.lease_mileage_cost m
theorem lease_weekly_cost (m:CarLease) : m.weeklyDollars=150 := LemmaWeave.Problems.GSM8K.Sprint0922A06.lease_weekly_cost m
theorem lease_solution (m:CarLease) : m.annualDollars=7800 := LemmaWeave.Problems.GSM8K.Sprint0922A06.lease_solution m
theorem tomatoes_first (m:Tomatoes) : m.first=2 := LemmaWeave.Problems.GSM8K.Sprint0922A06.tomatoes_first m
theorem tomatoes_second (m:Tomatoes) : m.second=5 := LemmaWeave.Problems.GSM8K.Sprint0922A06.tomatoes_second m
theorem tomatoes_totals (m:Tomatoes) : m.tomatoTotal=7 ∧ m.plantTotal=35 := LemmaWeave.Problems.GSM8K.Sprint0922A06.tomatoes_totals m
theorem tomatoes_solution (m:Tomatoes) : m.percent=20 := LemmaWeave.Problems.GSM8K.Sprint0922A06.tomatoes_solution m
theorem fishing_jackson (m:Fishing) : m.jackson=30 := LemmaWeave.Problems.GSM8K.Sprint0922A06.fishing_jackson m
theorem fishing_jonah (m:Fishing) : m.jonah=20 := LemmaWeave.Problems.GSM8K.Sprint0922A06.fishing_jonah m
theorem fishing_george (m:Fishing) : m.george=40 := LemmaWeave.Problems.GSM8K.Sprint0922A06.fishing_george m
theorem fishing_solution (m:Fishing) : m.total=90 := LemmaWeave.Problems.GSM8K.Sprint0922A06.fishing_solution m
theorem rice_increase (m:Rice) : m.increase=4 := LemmaWeave.Problems.GSM8K.Sprint0922A06.rice_increase m
theorem rice_second (m:Rice) : m.second=24 := LemmaWeave.Problems.GSM8K.Sprint0922A06.rice_second m
theorem rice_solution (m:Rice) : m.total=44 := LemmaWeave.Problems.GSM8K.Sprint0922A06.rice_solution m
theorem restaurant_entrees (m:Restaurant) : m.entrees=80 := LemmaWeave.Problems.GSM8K.Sprint0922A06.restaurant_entrees m
theorem restaurant_subtotal (m:Restaurant) : m.subtotal=90 := LemmaWeave.Problems.GSM8K.Sprint0922A06.restaurant_subtotal m
theorem restaurant_tip (m:Restaurant) : m.tip=18 := LemmaWeave.Problems.GSM8K.Sprint0922A06.restaurant_tip m
theorem restaurant_solution (m:Restaurant) : m.total=108 := LemmaWeave.Problems.GSM8K.Sprint0922A06.restaurant_solution m
theorem coffee_people (m:Coffee) : m.people=4 := LemmaWeave.Problems.GSM8K.Sprint0922A06.coffee_people m
theorem coffee_daily_cups (m:Coffee) : m.dailyCups=8 := LemmaWeave.Problems.GSM8K.Sprint0922A06.coffee_daily_cups m
theorem coffee_daily_ounces (m:Coffee) : m.dailyOunces=4 := LemmaWeave.Problems.GSM8K.Sprint0922A06.coffee_daily_ounces m
theorem coffee_weekly_ounces (m:Coffee) : m.weeklyOunces=28 := LemmaWeave.Problems.GSM8K.Sprint0922A06.coffee_weekly_ounces m
theorem coffee_solution (m:Coffee) : m.weeklyDollars=35 := LemmaWeave.Problems.GSM8K.Sprint0922A06.coffee_solution m
theorem journey_first_distance (m:Journey) : m.firstDistance=16 := LemmaWeave.Problems.GSM8K.Sprint0922A06.journey_first_distance m
theorem journey_remaining_distance (m:Journey) : m.remainingDistance=8 := LemmaWeave.Problems.GSM8K.Sprint0922A06.journey_remaining_distance m
theorem journey_remaining_time (m:Journey) : m.remainingTime=4 := LemmaWeave.Problems.GSM8K.Sprint0922A06.journey_remaining_time m
theorem journey_solution (m:Journey) : m.speed=2 := LemmaWeave.Problems.GSM8K.Sprint0922A06.journey_solution m
theorem chalkboard_length (m:Chalkboard) : m.length=6 := LemmaWeave.Problems.GSM8K.Sprint0922A06.chalkboard_length m
theorem chalkboard_solution (m:Chalkboard) : m.area=18 := LemmaWeave.Problems.GSM8K.Sprint0922A06.chalkboard_solution m
theorem colouring_lollipops (m:Colouring) : m.lollipop=500 := LemmaWeave.Problems.GSM8K.Sprint0922A06.colouring_lollipops m
theorem colouring_hard_total (m:Colouring) : m.hardTotal=100 := LemmaWeave.Problems.GSM8K.Sprint0922A06.colouring_hard_total m
theorem colouring_solution (m:Colouring) : m.eachHard=20 := LemmaWeave.Problems.GSM8K.Sprint0922A06.colouring_solution m
theorem bomb_climbed (m:Bomb) : m.climbed=15 := LemmaWeave.Problems.GSM8K.Sprint0922A06.bomb_climbed m
theorem bomb_remaining_flights (m:Bomb) : m.remainingFlights=5 := LemmaWeave.Problems.GSM8K.Sprint0922A06.bomb_remaining_flights m
theorem bomb_climb_time (m:Bomb) : m.climbTime=55 := LemmaWeave.Problems.GSM8K.Sprint0922A06.bomb_climb_time m
theorem bomb_solution (m:Bomb) : m.diffuseTime=17 := LemmaWeave.Problems.GSM8K.Sprint0922A06.bomb_solution m

end LemmaWeave.Tests.GSM8KSprint0922A06

#print axioms LemmaWeave.Tests.GSM8KSprint0922A06.arrival_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A06.bomb_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A06.lease_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A06.chalkboard_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A06.chocolate_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A06.coffee_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A06.colouring_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A06.fishing_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A06.followers_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A06.journey_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A06.restaurant_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A06.rice_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A06.safari_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A06.socks_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A06.tomatoes_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A06.arrival_solution to "work/gsm8k-sprint78-arrival-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A06.bomb_solution to "work/gsm8k-sprint78-bomb-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A06.lease_solution to "work/gsm8k-sprint78-car_lease-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A06.chalkboard_solution to "work/gsm8k-sprint78-chalkboard-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A06.chocolate_solution to "work/gsm8k-sprint78-chocolate-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A06.coffee_solution to "work/gsm8k-sprint78-coffee-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A06.colouring_solution to "work/gsm8k-sprint78-colouring-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A06.fishing_solution to "work/gsm8k-sprint78-fishing-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A06.followers_solution to "work/gsm8k-sprint78-followers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A06.journey_solution to "work/gsm8k-sprint78-journey-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A06.restaurant_solution to "work/gsm8k-sprint78-restaurant-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A06.rice_solution to "work/gsm8k-sprint78-rice-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A06.safari_solution to "work/gsm8k-sprint78-safari-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A06.socks_solution to "work/gsm8k-sprint78-socks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A06.tomatoes_solution to "work/gsm8k-sprint78-tomatoes-graph.json"
