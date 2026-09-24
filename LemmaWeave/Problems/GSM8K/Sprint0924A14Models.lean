import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0924A14

structure Dog where dogHumanAge dogYears maxAge difference : ℕ
  hDogHumanAge : dogHumanAge = 3
  hDogYears : dogYears = 7 * dogHumanAge
  hMaxAge : maxAge = 3
  hDifference : maxAge + difference = dogYears
theorem dog_years (m : Dog) : m.dogYears = 21 := by omega
theorem dog_max_age (m : Dog) : m.maxAge = 3 := by omega
theorem dog_solution (m : Dog) : m.difference = 18 := by omega

structure Students where remaining total : ℕ
  hRemaining : remaining = 9 * 50
  hTotal : total = 40 + remaining
theorem students_remaining (m : Students) : m.remaining = 450 := by omega
theorem students_solution (m : Students) : m.total = 490 := by omega

structure Phones where aDiscount aPrice bDiscount bPrice difference : ℕ
  hADiscount : 100 * aDiscount = 125 * 8
  hAPrice : aPrice + aDiscount = 125
  hBDiscount : 100 * bDiscount = 130 * 10
  hBPrice : bPrice + bDiscount = 130
  hDifference : aPrice + difference = bPrice
theorem phones_a_discount (m : Phones) : m.aDiscount = 10 := by omega
theorem phones_a_price (m : Phones) : m.aPrice = 115 := by omega
theorem phones_b_discount (m : Phones) : m.bDiscount = 13 := by omega
theorem phones_b_price (m : Phones) : m.bPrice = 117 := by omega
theorem phones_solution (m : Phones) : m.difference = 2 := by omega

structure Water where cups jugs : ℕ
  hCups : cups = 200 * 10
  hJugs : cups = jugs * 40
theorem water_cups (m : Water) : m.cups = 2000 := by omega
theorem water_solution (m : Water) : m.jugs = 50 := by omega

structure Ducks where wheelbarrow fowlRevenue chickenRevenue duckRevenue ducks : ℕ
  hResale : 2 * wheelbarrow = 60
  hHalfSpent : fowlRevenue = 2 * wheelbarrow
  hChickenRevenue : chickenRevenue = 5 * 8
  hDuckRevenue : fowlRevenue = chickenRevenue + duckRevenue
  hDucks : duckRevenue = ducks * 10
theorem ducks_wheelbarrow (m : Ducks) : m.wheelbarrow = 30 := by omega
theorem ducks_fowl_revenue (m : Ducks) : m.fowlRevenue = 60 := by omega
theorem ducks_chicken_revenue (m : Ducks) : m.chickenRevenue = 40 := by omega
theorem ducks_duck_revenue (m : Ducks) : m.duckRevenue = 20 := by omega
theorem ducks_solution (m : Ducks) : m.ducks = 2 := by omega

structure Dinner where second dessert spent left : ℕ
  hSecond : second = 15 + 5
  hDessert : 4 * dessert = second
  hSpent : spent = 15 + second + dessert
  hLeft : left + spent = 60
theorem dinner_second (m : Dinner) : m.second = 20 := by omega
theorem dinner_dessert (m : Dinner) : m.dessert = 5 := by omega
theorem dinner_spent (m : Dinner) : m.spent = 40 := by omega
theorem dinner_solution (m : Dinner) : m.left = 20 := by omega

/-- The diagonal of a two-inch square gives the required concrete partition. -/
structure Triangles where triangleArea squareArea count : ℕ
  hTriangleArea : 2 * triangleArea = 2 * 2
  hSquareArea : squareArea = 2 * 2
  hDiagonalPartition : squareArea = count * triangleArea
theorem triangles_triangle_area (m : Triangles) : m.triangleArea = 2 := by omega
theorem triangles_square_area (m : Triangles) : m.squareArea = 4 := by omega
theorem triangles_solution (m : Triangles) : m.count = 2 := by omega

structure Team where cupcakes cookies total balls drinksTotal eachDrink : ℕ
  hCupcakes : cupcakes = 50 * 200
  hCookies : cookies = 40 * 50
  hTotal : total = cupcakes + cookies
  hBalls : balls = 2 * 4000
  hDrinksTotal : drinksTotal + balls = total
  hEachDrink : drinksTotal = 20 * eachDrink
theorem team_cupcakes (m : Team) : m.cupcakes = 10000 := by omega
theorem team_cookies (m : Team) : m.cookies = 2000 := by omega
theorem team_total (m : Team) : m.total = 12000 := by omega
theorem team_balls (m : Team) : m.balls = 8000 := by omega
theorem team_drinks_total (m : Team) : m.drinksTotal = 4000 := by omega
theorem team_solution (m : Team) : m.eachDrink = 200 := by omega

structure Commodities where first second : ℕ
  hSum : first + second = 827
  hDifference : second + 127 = first
theorem commodities_equation (m : Commodities) : m.second + 127 = m.first := m.hDifference
theorem commodities_double (m : Commodities) : 2 * m.first = 954 := by omega
theorem commodities_solution (m : Commodities) : m.first = 477 := by omega

structure Cans where half diego collected needed : ℕ
  hHalf : 2 * half = 90
  hDiego : diego = half + 10
  hCollected : collected = 90 + diego
  hNeeded : collected + needed = 150
theorem cans_half (m : Cans) : m.half = 45 := by omega
theorem cans_diego (m : Cans) : m.diego = 55 := by omega
theorem cans_collected (m : Cans) : m.collected = 145 := by omega
theorem cans_solution (m : Cans) : m.needed = 5 := by omega

/-- All weights are in tenths of a pound. -/
structure Cats where total average : ℕ
  hTotal : total = 120 + 120 + 147 + 93
  hAverage : total = 4 * average
theorem cats_total (m : Cats) : m.total = 480 := by omega
theorem cats_solution (m : Cats) : m.average = 120 := by omega

structure Driving where daily required days : ℕ
  hDaily : daily = 2 * 20
  hRequired : required = 50 * 60
  hDays : required = days * daily
theorem driving_daily (m : Driving) : m.daily = 40 := by omega
theorem driving_required (m : Driving) : m.required = 3000 := by omega
theorem driving_solution (m : Driving) : m.days = 75 := by omega

/-- Two standard readings of “100 times more” are kept separate. -/
theorem tomatoes_conventional_total : 36 * 100 = 3600 := by norm_num
theorem tomatoes_conventional_growth : 36 * 100 - 36 = 3564 := by norm_num
theorem tomatoes_literal_growth : 36 * 100 = 3600 := by norm_num
theorem tomatoes_literal_total : 36 + 36 * 100 = 3636 := by norm_num
theorem tomatoes_not_unique : (3564 : ℕ) ≠ 3600 := by norm_num
theorem tomatoes_reference_solution (h : (36 : ℕ) * 100 = 3600) :
    36 * 100 - 36 = 3564 := by norm_num

structure Tables where last total : ℕ
  hLast : last + 3 = 10
  hTotal : total = 10 + last
theorem tables_last (m : Tables) : m.last = 7 := by omega
theorem tables_solution (m : Tables) : m.total = 17 := by omega

structure Dolphins where joins total : ℕ
  hJoins : joins = 3 * 65
  hTotal : total = 65 + joins
theorem dolphins_join (m : Dolphins) : m.joins = 195 := by omega
theorem dolphins_solution (m : Dolphins) : m.total = 260 := by omega

end LemmaWeave.Problems.GSM8K.Sprint0924A14
