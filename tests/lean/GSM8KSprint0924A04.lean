import LemmaWeave.Problems.GSM8K.Sprint0924A04Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0924A04


theorem revenue_gross (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Revenue) : m.gross = 78 := LemmaWeave.Problems.GSM8K.Sprint0924A04.revenue_gross m
theorem revenue_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Revenue) : m.overhead = 34 := LemmaWeave.Problems.GSM8K.Sprint0924A04.revenue_solution m
theorem cars_second (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Cars) : m.second = 1980 := LemmaWeave.Problems.GSM8K.Sprint0924A04.cars_second m
theorem cars_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Cars) : m.third = 2000 := LemmaWeave.Problems.GSM8K.Sprint0924A04.cars_solution m
theorem seaworld_roundtrip (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.SeaWorld) : m.roundTrip = 330 := LemmaWeave.Problems.GSM8K.Sprint0924A04.seaworld_roundtrip m
theorem seaworld_gallons (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.SeaWorld) : m.gallons = 11 := LemmaWeave.Problems.GSM8K.Sprint0924A04.seaworld_gallons m
theorem seaworld_gas_cost (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.SeaWorld) : m.gasCost = 33 := LemmaWeave.Problems.GSM8K.Sprint0924A04.seaworld_gas_cost m
theorem seaworld_total (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.SeaWorld) : m.total = 123 := LemmaWeave.Problems.GSM8K.Sprint0924A04.seaworld_total m
theorem seaworld_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.SeaWorld) : m.additional = 95 := LemmaWeave.Problems.GSM8K.Sprint0924A04.seaworld_solution m
theorem bubbles_dawn (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Bubbles) : m.dawn = 50000 := LemmaWeave.Problems.GSM8K.Sprint0924A04.bubbles_dawn m
theorem bubbles_bronner (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Bubbles) : m.bronner = 100000 := LemmaWeave.Problems.GSM8K.Sprint0924A04.bubbles_bronner m
theorem bubbles_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Bubbles) : m.total = 150000 := LemmaWeave.Problems.GSM8K.Sprint0924A04.bubbles_solution m
theorem coughs_robert (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Coughs) : m.robert = 10 := LemmaWeave.Problems.GSM8K.Sprint0924A04.coughs_robert m
theorem coughs_combined (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Coughs) : m.combined = 15 := LemmaWeave.Problems.GSM8K.Sprint0924A04.coughs_combined m
theorem coughs_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Coughs) : m.total = 300 := LemmaWeave.Problems.GSM8K.Sprint0924A04.coughs_solution m
theorem fruit_oranges_sold (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Fruit) : m.orangesSold = 10 := LemmaWeave.Problems.GSM8K.Sprint0924A04.fruit_oranges_sold m
theorem fruit_apples_sold (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Fruit) : m.applesSold = 35 := LemmaWeave.Problems.GSM8K.Sprint0924A04.fruit_apples_sold m
theorem fruit_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Fruit) : m.left = 65 := LemmaWeave.Problems.GSM8K.Sprint0924A04.fruit_solution m
theorem photos_fewer (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Photos) : m.fewer = 20 := LemmaWeave.Problems.GSM8K.Sprint0924A04.photos_fewer m
theorem photos_today (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Photos) : m.today = 80 := LemmaWeave.Problems.GSM8K.Sprint0924A04.photos_today m
theorem photos_sofar (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Photos) : m.sofar = 180 := LemmaWeave.Problems.GSM8K.Sprint0924A04.photos_sofar m
theorem photos_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Photos) : m.needed = 120 := LemmaWeave.Problems.GSM8K.Sprint0924A04.photos_solution m
theorem flowers_friday (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Flowers) : m.friday = 8 := LemmaWeave.Problems.GSM8K.Sprint0924A04.flowers_friday m
theorem flowers_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Flowers) : m.total = 20 := LemmaWeave.Problems.GSM8K.Sprint0924A04.flowers_solution m
theorem food_conventional_60 (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Food) (h : m.penelope = 10 * m.greta) : m.elmer - m.penelope = 60 := LemmaWeave.Problems.GSM8K.Sprint0924A04.food_conventional_60 m h
theorem food_literal_580_over_11 (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Food) (h : m.penelope = m.greta + 10 * m.greta) : m.elmer - m.penelope = (580 : ℚ) / 11 := LemmaWeave.Problems.GSM8K.Sprint0924A04.food_literal_580_over_11 m h
theorem food_not_unique : ∃ m1 m2 : LemmaWeave.Problems.GSM8K.Sprint0924A04.Food, m1.penelope = 10 * m1.greta ∧ m2.penelope = m2.greta + 10 * m2.greta ∧ m1.elmer - m1.penelope = 60 ∧ m2.elmer - m2.penelope = (580 : ℚ) / 11 ∧ m1.elmer - m1.penelope ≠ m2.elmer - m2.penelope := LemmaWeave.Problems.GSM8K.Sprint0924A04.food_not_unique
theorem marbles_shared (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Marbles) : m.shared = 80 := LemmaWeave.Problems.GSM8K.Sprint0924A04.marbles_shared m
theorem marbles_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Marbles) : m.each = 16 := LemmaWeave.Problems.GSM8K.Sprint0924A04.marbles_solution m
theorem pools_equation (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Pools) : 2 * m.sarah + 5 = 15 := LemmaWeave.Problems.GSM8K.Sprint0924A04.pools_equation m
theorem pools_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Pools) : m.sarah = 5 := LemmaWeave.Problems.GSM8K.Sprint0924A04.pools_solution m
theorem clarinet_half (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Clarinet) : m.half = 45 := LemmaWeave.Problems.GSM8K.Sprint0924A04.clarinet_half m
theorem clarinet_before (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Clarinet) : m.beforeBooks = 7 := LemmaWeave.Problems.GSM8K.Sprint0924A04.clarinet_before m
theorem clarinet_after (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Clarinet) : m.afterBooks = 18 := LemmaWeave.Problems.GSM8K.Sprint0924A04.clarinet_after m
theorem clarinet_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Clarinet) : m.totalBooks = 25 := LemmaWeave.Problems.GSM8K.Sprint0924A04.clarinet_solution m
theorem roadtrip_first (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.RoadTrip) : m.first = 120 := LemmaWeave.Problems.GSM8K.Sprint0924A04.roadtrip_first m
theorem roadtrip_second (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.RoadTrip) : m.second = 150 := LemmaWeave.Problems.GSM8K.Sprint0924A04.roadtrip_second m
theorem roadtrip_total (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.RoadTrip) : m.total = 270 := LemmaWeave.Problems.GSM8K.Sprint0924A04.roadtrip_total m
theorem roadtrip_gallons (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.RoadTrip) : m.gallons = 9 := LemmaWeave.Problems.GSM8K.Sprint0924A04.roadtrip_gallons m
theorem roadtrip_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.RoadTrip) : m.cost = 18 := LemmaWeave.Problems.GSM8K.Sprint0924A04.roadtrip_solution m
theorem flag_circles (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Flag) : m.circles = 22 := LemmaWeave.Problems.GSM8K.Sprint0924A04.flag_circles m
theorem flag_squares (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Flag) : m.squares = 32 := LemmaWeave.Problems.GSM8K.Sprint0924A04.flag_squares m
theorem flag_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Flag) : m.total = 54 := LemmaWeave.Problems.GSM8K.Sprint0924A04.flag_solution m
theorem yams_packages (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Yams) : m.packages = 125 := LemmaWeave.Problems.GSM8K.Sprint0924A04.yams_packages m
theorem yams_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A04.Yams) : m.boxes = 5 := LemmaWeave.Problems.GSM8K.Sprint0924A04.yams_solution m

end LemmaWeave.Tests.GSM8KSprint0924A04

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A04.revenue_solution to "work/gsm8k-sprint114-revenue-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A04.cars_solution to "work/gsm8k-sprint114-cars-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A04.seaworld_solution to "work/gsm8k-sprint114-seaworld-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A04.bubbles_solution to "work/gsm8k-sprint114-bubbles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A04.coughs_solution to "work/gsm8k-sprint114-coughs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A04.fruit_solution to "work/gsm8k-sprint114-fruit-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A04.photos_solution to "work/gsm8k-sprint114-photos-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A04.flowers_solution to "work/gsm8k-sprint114-flowers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A04.food_not_unique to "work/gsm8k-sprint114-food-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A04.marbles_solution to "work/gsm8k-sprint114-marbles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A04.pools_solution to "work/gsm8k-sprint114-pools-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A04.clarinet_solution to "work/gsm8k-sprint114-clarinet-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A04.roadtrip_solution to "work/gsm8k-sprint114-roadtrip-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A04.flag_solution to "work/gsm8k-sprint114-flag-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A04.yams_solution to "work/gsm8k-sprint114-yams-graph.json"
