import LemmaWeave.Problems.GSM8K.Sprint0924A14Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0924A14
namespace P := LemmaWeave.Problems.GSM8K.Sprint0924A14

theorem dog_years (m : P.Dog) : m.dogYears = 21 := P.dog_years m
theorem dog_max_age (m : P.Dog) : m.maxAge = 3 := P.dog_max_age m
theorem dog_solution (m : P.Dog) : m.difference = 18 := P.dog_solution m
theorem students_remaining (m : P.Students) : m.remaining = 450 := P.students_remaining m
theorem students_solution (m : P.Students) : m.total = 490 := P.students_solution m
theorem phones_a_discount (m : P.Phones) : m.aDiscount = 10 := P.phones_a_discount m
theorem phones_a_price (m : P.Phones) : m.aPrice = 115 := P.phones_a_price m
theorem phones_b_discount (m : P.Phones) : m.bDiscount = 13 := P.phones_b_discount m
theorem phones_b_price (m : P.Phones) : m.bPrice = 117 := P.phones_b_price m
theorem phones_solution (m : P.Phones) : m.difference = 2 := P.phones_solution m
theorem water_cups (m : P.Water) : m.cups = 2000 := P.water_cups m
theorem water_solution (m : P.Water) : m.jugs = 50 := P.water_solution m
theorem ducks_wheelbarrow (m : P.Ducks) : m.wheelbarrow = 30 := P.ducks_wheelbarrow m
theorem ducks_fowl_revenue (m : P.Ducks) : m.fowlRevenue = 60 := P.ducks_fowl_revenue m
theorem ducks_chicken_revenue (m : P.Ducks) : m.chickenRevenue = 40 := P.ducks_chicken_revenue m
theorem ducks_duck_revenue (m : P.Ducks) : m.duckRevenue = 20 := P.ducks_duck_revenue m
theorem ducks_solution (m : P.Ducks) : m.ducks = 2 := P.ducks_solution m
theorem dinner_second (m : P.Dinner) : m.second = 20 := P.dinner_second m
theorem dinner_dessert (m : P.Dinner) : m.dessert = 5 := P.dinner_dessert m
theorem dinner_spent (m : P.Dinner) : m.spent = 40 := P.dinner_spent m
theorem dinner_solution (m : P.Dinner) : m.left = 20 := P.dinner_solution m
theorem triangles_triangle_area (m : P.Triangles) : m.triangleArea = 2 := P.triangles_triangle_area m
theorem triangles_square_area (m : P.Triangles) : m.squareArea = 4 := P.triangles_square_area m
theorem triangles_solution (m : P.Triangles) : m.count = 2 := P.triangles_solution m
theorem team_cupcakes (m : P.Team) : m.cupcakes = 10000 := P.team_cupcakes m
theorem team_cookies (m : P.Team) : m.cookies = 2000 := P.team_cookies m
theorem team_total (m : P.Team) : m.total = 12000 := P.team_total m
theorem team_balls (m : P.Team) : m.balls = 8000 := P.team_balls m
theorem team_drinks_total (m : P.Team) : m.drinksTotal = 4000 := P.team_drinks_total m
theorem team_solution (m : P.Team) : m.eachDrink = 200 := P.team_solution m
theorem commodities_equation (m : P.Commodities) : m.second + 127 = m.first := P.commodities_equation m
theorem commodities_double (m : P.Commodities) : 2 * m.first = 954 := P.commodities_double m
theorem commodities_solution (m : P.Commodities) : m.first = 477 := P.commodities_solution m
theorem cans_half (m : P.Cans) : m.half = 45 := P.cans_half m
theorem cans_diego (m : P.Cans) : m.diego = 55 := P.cans_diego m
theorem cans_collected (m : P.Cans) : m.collected = 145 := P.cans_collected m
theorem cans_solution (m : P.Cans) : m.needed = 5 := P.cans_solution m
theorem cats_total (m : P.Cats) : m.total = 480 := P.cats_total m
theorem cats_solution (m : P.Cats) : m.average = 120 := P.cats_solution m
theorem driving_daily (m : P.Driving) : m.daily = 40 := P.driving_daily m
theorem driving_required (m : P.Driving) : m.required = 3000 := P.driving_required m
theorem driving_solution (m : P.Driving) : m.days = 75 := P.driving_solution m
theorem tomatoes_conventional_total : (36 : ℕ) * 100 = 3600 := P.tomatoes_conventional_total
theorem tomatoes_conventional_growth : (36 : ℕ) * 100 - 36 = 3564 := P.tomatoes_conventional_growth
theorem tomatoes_literal_growth : (36 : ℕ) * 100 = 3600 := P.tomatoes_literal_growth
theorem tomatoes_literal_total : (36 : ℕ) + 36 * 100 = 3636 := P.tomatoes_literal_total
theorem tomatoes_not_unique : (3564 : ℕ) ≠ 3600 := P.tomatoes_not_unique
theorem tomatoes_reference_solution (h : (36 : ℕ) * 100 = 3600) : 36 * 100 - 36 = 3564 := P.tomatoes_reference_solution h
theorem tables_last (m : P.Tables) : m.last = 7 := P.tables_last m
theorem tables_solution (m : P.Tables) : m.total = 17 := P.tables_solution m
theorem dolphins_join (m : P.Dolphins) : m.joins = 195 := P.dolphins_join m
theorem dolphins_solution (m : P.Dolphins) : m.total = 260 := P.dolphins_solution m

end LemmaWeave.Tests.GSM8KSprint0924A14

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A14.dog_solution to "work/gsm8k-sprint123-dog-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A14.students_solution to "work/gsm8k-sprint123-students-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A14.phones_solution to "work/gsm8k-sprint123-phones-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A14.water_solution to "work/gsm8k-sprint123-water-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A14.ducks_solution to "work/gsm8k-sprint123-ducks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A14.dinner_solution to "work/gsm8k-sprint123-dinner-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A14.triangles_solution to "work/gsm8k-sprint123-triangles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A14.team_solution to "work/gsm8k-sprint123-team-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A14.commodities_solution to "work/gsm8k-sprint123-commodities-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A14.cans_solution to "work/gsm8k-sprint123-cans-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A14.cats_solution to "work/gsm8k-sprint123-cats-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A14.driving_solution to "work/gsm8k-sprint123-driving-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A14.tomatoes_not_unique to "work/gsm8k-sprint123-tomatoes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A14.tables_solution to "work/gsm8k-sprint123-tables-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A14.dolphins_solution to "work/gsm8k-sprint123-dolphins-graph.json"
