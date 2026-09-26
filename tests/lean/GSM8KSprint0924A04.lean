import LemmaWeave.Problems.GSM8K.Sprint0924A04Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0924A04
namespace P := LemmaWeave.Problems.GSM8K.Sprint0924A04

theorem revenue_gross (m : P.Revenue) : m.gross = 78 := P.revenue_gross m
theorem revenue_solution (m : P.Revenue) : m.overhead = 34 := P.revenue_solution m
theorem cars_second (m : P.Cars) : m.second = 1980 := P.cars_second m
theorem cars_solution (m : P.Cars) : m.third = 2000 := P.cars_solution m
theorem seaworld_roundtrip (m : P.SeaWorld) : m.roundTrip = 330 := P.seaworld_roundtrip m
theorem seaworld_gallons (m : P.SeaWorld) : m.gallons = 11 := P.seaworld_gallons m
theorem seaworld_gas_cost (m : P.SeaWorld) : m.gasCost = 33 := P.seaworld_gas_cost m
theorem seaworld_total (m : P.SeaWorld) : m.total = 123 := P.seaworld_total m
theorem seaworld_solution (m : P.SeaWorld) : m.additional = 95 := P.seaworld_solution m
theorem bubbles_dawn (m : P.Bubbles) : m.dawn = 50000 := P.bubbles_dawn m
theorem bubbles_bronner (m : P.Bubbles) : m.bronner = 100000 := P.bubbles_bronner m
theorem bubbles_solution (m : P.Bubbles) : m.total = 150000 := P.bubbles_solution m
theorem coughs_robert (m : P.Coughs) : m.robert = 10 := P.coughs_robert m
theorem coughs_combined (m : P.Coughs) : m.combined = 15 := P.coughs_combined m
theorem coughs_solution (m : P.Coughs) : m.total = 300 := P.coughs_solution m
theorem fruit_oranges_sold (m : P.Fruit) : m.orangesSold = 10 := P.fruit_oranges_sold m
theorem fruit_apples_sold (m : P.Fruit) : m.applesSold = 35 := P.fruit_apples_sold m
theorem fruit_solution (m : P.Fruit) : m.left = 65 := P.fruit_solution m
theorem photos_fewer (m : P.Photos) : m.fewer = 20 := P.photos_fewer m
theorem photos_today (m : P.Photos) : m.today = 80 := P.photos_today m
theorem photos_sofar (m : P.Photos) : m.sofar = 180 := P.photos_sofar m
theorem photos_solution (m : P.Photos) : m.needed = 120 := P.photos_solution m
theorem flowers_friday (m : P.Flowers) : m.friday = 8 := P.flowers_friday m
theorem flowers_solution (m : P.Flowers) : m.total = 20 := P.flowers_solution m
theorem food_conventional_60 (m : P.Food) (h : m.penelope = 10 * m.greta) : m.elmer - m.penelope = 60 := P.food_conventional_60 m h
theorem food_literal_580_over_11 (m : P.Food) (h : m.penelope = m.greta + 10 * m.greta) : m.elmer - m.penelope = (580 : ℚ) / 11 := P.food_literal_580_over_11 m h
theorem food_not_unique : ∃ m1 m2 : P.Food, m1.penelope = 10 * m1.greta ∧ m2.penelope = m2.greta + 10 * m2.greta ∧ m1.elmer - m1.penelope = 60 ∧ m2.elmer - m2.penelope = (580 : ℚ) / 11 ∧ m1.elmer - m1.penelope ≠ m2.elmer - m2.penelope := P.food_not_unique
theorem marbles_shared (m : P.Marbles) : m.shared = 80 := P.marbles_shared m
theorem marbles_solution (m : P.Marbles) : m.each = 16 := P.marbles_solution m
theorem pools_equation (m : P.Pools) : 2 * m.sarah + 5 = 15 := P.pools_equation m
theorem pools_solution (m : P.Pools) : m.sarah = 5 := P.pools_solution m
theorem clarinet_half (m : P.Clarinet) : m.half = 45 := P.clarinet_half m
theorem clarinet_before (m : P.Clarinet) : m.beforeBooks = 7 := P.clarinet_before m
theorem clarinet_after (m : P.Clarinet) : m.afterBooks = 18 := P.clarinet_after m
theorem clarinet_solution (m : P.Clarinet) : m.totalBooks = 25 := P.clarinet_solution m
theorem roadtrip_first (m : P.RoadTrip) : m.first = 120 := P.roadtrip_first m
theorem roadtrip_second (m : P.RoadTrip) : m.second = 150 := P.roadtrip_second m
theorem roadtrip_total (m : P.RoadTrip) : m.total = 270 := P.roadtrip_total m
theorem roadtrip_gallons (m : P.RoadTrip) : m.gallons = 9 := P.roadtrip_gallons m
theorem roadtrip_solution (m : P.RoadTrip) : m.cost = 18 := P.roadtrip_solution m
theorem flag_circles (m : P.Flag) : m.circles = 22 := P.flag_circles m
theorem flag_squares (m : P.Flag) : m.squares = 32 := P.flag_squares m
theorem flag_solution (m : P.Flag) : m.total = 54 := P.flag_solution m
theorem yams_packages (m : P.Yams) : m.packages = 125 := P.yams_packages m
theorem yams_solution (m : P.Yams) : m.boxes = 5 := P.yams_solution m

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
