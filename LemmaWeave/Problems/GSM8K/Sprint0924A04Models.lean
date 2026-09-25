import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0924A04

structure Revenue where
  gross : ℕ
  totalProfit : ℕ
  overhead : ℕ
  hGross : gross = 47 + 31
  hProfit : totalProfit = 44
  hOverhead : totalProfit + overhead = gross
theorem revenue_gross (m : Revenue) : m.gross = 78 := by cases m <;> omega
theorem revenue_solution (m : Revenue) : m.overhead = 34 := by cases m <;> omega

structure Cars where
  second : ℕ
  third : ℕ
  hSecond : second = 1970 + 10
  hThird : third = second + 20
theorem cars_second (m : Cars) : m.second = 1980 := by cases m <;> omega
theorem cars_solution (m : Cars) : m.third = 2000 := by cases m <;> omega

structure SeaWorld where
  roundTrip : ℕ
  gallons : ℕ
  gasCost : ℕ
  total : ℕ
  additional : ℕ
  hRoundTrip : roundTrip = 2 * 165
  hGallons : 30 * gallons = roundTrip
  hGasCost : gasCost = 3 * gallons
  hTotal : total = 10 + 55 + 25 + gasCost
  hAdditional : 28 + additional = total
theorem seaworld_roundtrip (m : SeaWorld) : m.roundTrip = 330 := by cases m <;> omega
theorem seaworld_gallons (m : SeaWorld) : m.gallons = 11 := by cases m <;> omega
theorem seaworld_gas_cost (m : SeaWorld) : m.gasCost = 33 := by cases m <;> omega
theorem seaworld_total (m : SeaWorld) : m.total = 123 := by cases m <;> omega
theorem seaworld_solution (m : SeaWorld) : m.additional = 95 := by cases m <;> omega

structure Bubbles where
  dawn : ℕ
  bronner : ℕ
  total : ℕ
  hDawn : 4 * dawn = 200000
  hBronner : bronner = 2 * dawn
  hTotal : total = dawn + bronner
theorem bubbles_dawn (m : Bubbles) : m.dawn = 50000 := by cases m <;> omega
theorem bubbles_bronner (m : Bubbles) : m.bronner = 100000 := by cases m <;> omega
theorem bubbles_solution (m : Bubbles) : m.total = 150000 := by cases m <;> omega

structure Coughs where
  robert : ℕ
  combined : ℕ
  total : ℕ
  hRobert : robert = 2 * 5
  hCombined : combined = 5 + robert
  hTotal : total = combined * 20
theorem coughs_robert (m : Coughs) : m.robert = 10 := by cases m <;> omega
theorem coughs_combined (m : Coughs) : m.combined = 15 := by cases m <;> omega
theorem coughs_solution (m : Coughs) : m.total = 300 := by cases m <;> omega

structure Fruit where
  orangesSold : ℕ
  applesSold : ℕ
  left : ℕ
  hOranges : 4 * orangesSold = 40
  hApples : 2 * applesSold = 70
  hLeft : left + orangesSold + applesSold = 40 + 70
theorem fruit_oranges_sold (m : Fruit) : m.orangesSold = 10 := by cases m <;> omega
theorem fruit_apples_sold (m : Fruit) : m.applesSold = 35 := by cases m <;> omega
theorem fruit_solution (m : Fruit) : m.left = 65 := by cases m <;> omega

structure Photos where
  fewer : ℕ
  today : ℕ
  sofar : ℕ
  needed : ℕ
  hFewer : fewer * 100 = 100 * 20
  hToday : today + fewer = 100
  hSofar : sofar = 100 + today
  hNeeded : needed + sofar = 300
theorem photos_fewer (m : Photos) : m.fewer = 20 := by cases m <;> omega
theorem photos_today (m : Photos) : m.today = 80 := by cases m <;> omega
theorem photos_sofar (m : Photos) : m.sofar = 180 := by cases m <;> omega
theorem photos_solution (m : Photos) : m.needed = 120 := by cases m <;> omega

structure Flowers where
  friday : ℕ
  total : ℕ
  hFriday : friday = 2 * 4
  hTotal : total = 4 + 8 + friday
theorem flowers_friday (m : Flowers) : m.friday = 8 := by cases m <;> omega
theorem flowers_solution (m : Flowers) : m.total = 20 := by cases m <;> omega

structure Food where
  penelope : ℚ
  greta : ℚ
  milton : ℚ
  elmer : ℚ
  hPenelope : penelope = 20
  hMilton : milton = greta / 100
  hElmer : elmer = 4000 * milton
theorem food_conventional_60 (m : Food) (h : m.penelope = 10 * m.greta) :
    m.elmer - m.penelope = 60 := by
  have hg : m.greta = 2 := by linarith [m.hPenelope, h]
  rw [m.hElmer, m.hMilton, hg, m.hPenelope] <;> norm_num
theorem food_literal_580_over_11 (m : Food)
    (h : m.penelope = m.greta + 10 * m.greta) :
    m.elmer - m.penelope = (580 : ℚ) / 11 := by
  have hg : m.greta = (20 : ℚ) / 11 := by linarith [m.hPenelope, h]
  rw [m.hElmer, m.hMilton, hg, m.hPenelope] <;> norm_num
theorem food_not_unique :
    ∃ m1 m2 : Food,
      m1.penelope = 10 * m1.greta ∧
      m2.penelope = m2.greta + 10 * m2.greta ∧
      m1.elmer - m1.penelope = 60 ∧
      m2.elmer - m2.penelope = (580 : ℚ) / 11 ∧
      m1.elmer - m1.penelope ≠ m2.elmer - m2.penelope := by
  refine ⟨⟨20, 2, 1 / 50, 80, by norm_num, by norm_num, by norm_num⟩,
    ⟨20, 20 / 11, 1 / 55, 800 / 11, by norm_num, by norm_num, by norm_num⟩, ?_⟩
  norm_num

structure Marbles where
  shared : ℕ
  each : ℕ
  hShared : shared + 20 = 100
  hEach : each * 5 = shared
theorem marbles_shared (m : Marbles) : m.shared = 80 := by cases m <;> omega
theorem marbles_solution (m : Marbles) : m.each = 16 := by cases m <;> omega

structure Pools where
  sarah : ℕ
  john : ℕ
  hJohn : john = 2 * sarah + 5
  hKnown : john = 15
theorem pools_equation (m : Pools) : 2 * m.sarah + 5 = 15 := by cases m <;> omega
theorem pools_solution (m : Pools) : m.sarah = 5 := by cases m <;> omega

structure Clarinet where
  half : ℕ
  beforeBooks : ℕ
  afterBooks : ℕ
  totalBooks : ℕ
  hHalf : half = 45
  hBefore : 10 + 5 * beforeBooks = half
  hAfter : 5 * afterBooks = 90
  hTotal : totalBooks = beforeBooks + afterBooks
theorem clarinet_half (m : Clarinet) : m.half = 45 := by cases m <;> omega
theorem clarinet_before (m : Clarinet) : m.beforeBooks = 7 := by cases m <;> omega
theorem clarinet_after (m : Clarinet) : m.afterBooks = 18 := by cases m <;> omega
theorem clarinet_solution (m : Clarinet) : m.totalBooks = 25 := by cases m <;> omega

structure RoadTrip where
  first : ℕ
  second : ℕ
  total : ℕ
  gallons : ℕ
  cost : ℕ
  hFirst : first = 2 * 60
  hSecond : second = 3 * 50
  hTotal : total = first + second
  hGallons : gallons * 30 = total
  hCost : cost = gallons * 2
theorem roadtrip_first (m : RoadTrip) : m.first = 120 := by cases m <;> omega
theorem roadtrip_second (m : RoadTrip) : m.second = 150 := by cases m <;> omega
theorem roadtrip_total (m : RoadTrip) : m.total = 270 := by cases m <;> omega
theorem roadtrip_gallons (m : RoadTrip) : m.gallons = 9 := by cases m <;> omega
theorem roadtrip_solution (m : RoadTrip) : m.cost = 18 := by cases m <;> omega

structure Flag where
  circles : ℕ
  squares : ℕ
  total : ℕ
  hCircles : circles + 3 = 50 / 2
  hSquares : squares = 2 * 13 + 6
  hTotal : total = circles + squares
theorem flag_circles (m : Flag) : m.circles = 22 := by cases m <;> omega
theorem flag_squares (m : Flag) : m.squares = 32 := by cases m <;> omega
theorem flag_solution (m : Flag) : m.total = 54 := by cases m <;> omega

structure Yams where
  packages : ℕ
  boxes : ℕ
  hPackages : packages * 3 = 375
  hBoxes : boxes * 25 = packages
theorem yams_packages (m : Yams) : m.packages = 125 := by cases m <;> omega
theorem yams_solution (m : Yams) : m.boxes = 5 := by cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0924A04
