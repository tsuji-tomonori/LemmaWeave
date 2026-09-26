import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0923A12

structure QuizAverage where
  total : ℕ
  average : ℕ
  hTotal : total = 91 + 90 + 92
  hAverage : average * 3 = total

theorem quiz_total (m : QuizAverage) : m.total = 273 := by rw [m.hTotal]
theorem quiz_solution (m : QuizAverage) : m.average = 91 := by
  have h := m.hAverage
  rw [quiz_total m] at h
  omega

structure PharmacySales where
  weekly100 : ℕ
  weekly500 : ℕ
  twoWeeks100 : ℕ
  twoWeeks500 : ℕ
  total : ℕ
  hWeekly100 : weekly100 * 5 = 80
  hWeekly500 : weekly500 * 2 = 60
  hTwoWeeks100 : twoWeeks100 = 2 * weekly100
  hTwoWeeks500 : twoWeeks500 = 2 * weekly500
  hTotal : total = twoWeeks100 + twoWeeks500

theorem pharmacy_weekly_100 (m : PharmacySales) : m.weekly100 = 16 := by cases m <;> omega
theorem pharmacy_weekly_500 (m : PharmacySales) : m.weekly500 = 30 := by cases m <;> omega
theorem pharmacy_two_weeks_100 (m : PharmacySales) : m.twoWeeks100 = 32 := by
  rw [m.hTwoWeeks100, pharmacy_weekly_100 m]
theorem pharmacy_two_weeks_500 (m : PharmacySales) : m.twoWeeks500 = 60 := by
  rw [m.hTwoWeeks500, pharmacy_weekly_500 m]
theorem pharmacy_solution (m : PharmacySales) : m.total = 92 := by
  rw [m.hTotal, pharmacy_two_weeks_100 m, pharmacy_two_weeks_500 m]

/-- Supplies are counted as individual items, so paper pieces and glue bottles each count once. -/
structure ArtSupplies where
  paper : ℕ
  glue : ℕ
  bought : ℕ
  dropped : ℕ
  remaining : ℕ
  final : ℕ
  hPaper : paper = 8 * 3
  hGlue : glue = 6
  hBought : bought = paper + glue
  hDropped : dropped * 2 = bought
  hRemaining : remaining + dropped = bought
  hFinal : final = remaining + 5

theorem supplies_paper (m : ArtSupplies) : m.paper = 24 := by rw [m.hPaper]
theorem supplies_bought (m : ArtSupplies) : m.bought = 30 := by
  rw [m.hBought, supplies_paper m, m.hGlue]
theorem supplies_dropped (m : ArtSupplies) : m.dropped = 15 := by
  have h := m.hDropped
  rw [supplies_bought m] at h
  omega
theorem supplies_remaining (m : ArtSupplies) : m.remaining = 15 := by
  have h := m.hRemaining
  rw [supplies_bought m, supplies_dropped m] at h
  omega
theorem supplies_solution (m : ArtSupplies) : m.final = 20 := by
  rw [m.hFinal, supplies_remaining m]

structure TrainNap where
  activities : ℕ
  nap : ℕ
  hActivities : activities = 2 + 1 + 3
  hTrip : nap + activities = 9

theorem nap_activities (m : TrainNap) : m.activities = 6 := by rw [m.hActivities]
theorem nap_solution (m : TrainNap) : m.nap = 3 := by
  have h := m.hTrip
  rw [nap_activities m] at h
  omega

/-- All revenue fields are in cents. -/
structure ProduceRevenue where
  tomatoes : ℕ
  carrots : ℕ
  total : ℕ
  hTomatoes : tomatoes = 200 * 100
  hCarrots : carrots = 350 * 150
  hTotal : total = tomatoes + carrots

theorem produce_tomatoes (m : ProduceRevenue) : m.tomatoes = 20000 := by rw [m.hTomatoes]
theorem produce_carrots (m : ProduceRevenue) : m.carrots = 52500 := by rw [m.hCarrots]
theorem produce_solution (m : ProduceRevenue) : m.total = 72500 := by
  rw [m.hTotal, produce_tomatoes m, produce_carrots m]

structure CornPreference where
  children : ℕ
  percent : ℕ
  hChildren : children = 6 + 9 + 5
  hPercent : percent * children = 5 * 100

theorem corn_children (m : CornPreference) : m.children = 20 := by rw [m.hChildren]
theorem corn_solution (m : CornPreference) : m.percent = 25 := by
  have h := m.hPercent
  rw [corn_children m] at h
  omega

/-- Reference reading: rows are planted on birthdays 10 through 14, then the stock doubles at 15. -/
structure TreesFiveRows where
  initial : ℕ
  added : ℕ
  beforeDoubling : ℕ
  final : ℕ
  hInitial : initial = 2 * 4
  hAdded : added = (15 - 10) * 4
  hBefore : beforeDoubling = initial + added
  hFinal : final = 2 * beforeDoubling

theorem trees_five_initial (m : TreesFiveRows) : m.initial = 8 := by rw [m.hInitial]
theorem trees_five_added (m : TreesFiveRows) : m.added = 20 := by rw [m.hAdded]
theorem trees_five_before (m : TreesFiveRows) : m.beforeDoubling = 28 := by
  rw [m.hBefore, trees_five_initial m, trees_five_added m]
theorem trees_reference_solution (m : TreesFiveRows) : m.final = 56 := by
  rw [m.hFinal, trees_five_before m]

/-- Alternative reading: the annual row is also planted on birthday 15 before doubling. -/
structure TreesSixRows where
  initial : ℕ
  added : ℕ
  beforeDoubling : ℕ
  final : ℕ
  hInitial : initial = 2 * 4
  hAdded : added = (15 - 10 + 1) * 4
  hBefore : beforeDoubling = initial + added
  hFinal : final = 2 * beforeDoubling

theorem trees_six_initial (m : TreesSixRows) : m.initial = 8 := by rw [m.hInitial]
theorem trees_six_added (m : TreesSixRows) : m.added = 24 := by rw [m.hAdded]
theorem trees_six_before (m : TreesSixRows) : m.beforeDoubling = 32 := by
  rw [m.hBefore, trees_six_initial m, trees_six_added m]
theorem trees_inclusive_solution (m : TreesSixRows) : m.final = 64 := by
  rw [m.hFinal, trees_six_before m]
theorem trees_two_birthday_readings_differ : (56 : ℕ) ≠ 64 := by norm_num

structure WalkingLegs where
  humanLegs : ℕ
  dogLegs : ℕ
  total : ℕ
  hHumans : humanLegs = 2 * 2
  hDogs : dogLegs = 2 * 4
  hTotal : total = humanLegs + dogLegs

theorem legs_humans (m : WalkingLegs) : m.humanLegs = 4 := by rw [m.hHumans]
theorem legs_dogs (m : WalkingLegs) : m.dogLegs = 8 := by rw [m.hDogs]
theorem legs_solution (m : WalkingLegs) : m.total = 12 := by
  rw [m.hTotal, legs_humans m, legs_dogs m]

structure TirePumps where
  emptyNeed : ℕ
  tire40Need : ℕ
  tire70Need : ℕ
  totalNeed : ℕ
  pumps : ℕ
  hEmpty : emptyNeed = 2 * 500
  hForty : tire40Need * 100 = 500 * 60
  hSeventy : tire70Need * 100 = 500 * 30
  hTotal : totalNeed = emptyNeed + tire40Need + tire70Need
  hPumps : pumps * 50 = totalNeed

theorem tires_empty (m : TirePumps) : m.emptyNeed = 1000 := by rw [m.hEmpty]
theorem tires_forty (m : TirePumps) : m.tire40Need = 300 := by cases m <;> omega
theorem tires_seventy (m : TirePumps) : m.tire70Need = 150 := by cases m <;> omega
theorem tires_total (m : TirePumps) : m.totalNeed = 1450 := by
  rw [m.hTotal, tires_empty m, tires_forty m, tires_seventy m]
theorem tires_solution (m : TirePumps) : m.pumps = 29 := by
  have h := m.hPumps
  rw [tires_total m] at h
  omega

structure PepperHarvest where
  total : ℕ
  hot : ℕ
  nonHot : ℕ
  hTotal : total = 7 + 12 + 14 + 12 + 5 + 18 + 12
  hHot : hot * 100 = total * 20
  hPartition : nonHot + hot = total

theorem peppers_total (m : PepperHarvest) : m.total = 80 := by rw [m.hTotal]
theorem peppers_hot (m : PepperHarvest) : m.hot = 16 := by
  have h := m.hHot
  rw [peppers_total m] at h
  omega
theorem peppers_solution (m : PepperHarvest) : m.nonHot = 64 := by
  have h := m.hPartition
  rw [peppers_total m, peppers_hot m] at h
  omega

/-- All prices are in cents. -/
structure DeliPurchase where
  sandwiches : ℕ
  salami : ℕ
  brie : ℕ
  olives : ℕ
  feta : ℕ
  bread : ℕ
  total : ℕ
  hSandwiches : sandwiches = 2 * 775
  hSalami : salami = 400
  hBrie : brie = 3 * salami
  hOlives : olives * 4 = 1000
  hFeta : feta * 2 = 800
  hBread : bread = 200
  hTotal : total = sandwiches + salami + brie + olives + feta + bread

theorem deli_sandwiches (m : DeliPurchase) : m.sandwiches = 1550 := by rw [m.hSandwiches]
theorem deli_brie (m : DeliPurchase) : m.brie = 1200 := by rw [m.hBrie, m.hSalami]
theorem deli_olives (m : DeliPurchase) : m.olives = 250 := by cases m <;> omega
theorem deli_feta (m : DeliPurchase) : m.feta = 400 := by cases m <;> omega
theorem deli_solution (m : DeliPurchase) : m.total = 4000 := by
  rw [m.hTotal, deli_sandwiches m, m.hSalami, deli_brie m, deli_olives m,
      deli_feta m, m.hBread]

/-- Reference reading: all filled and newly bought boxes have one common capacity. -/
structure UniformChocolateBoxes where
  boxed : ℕ
  capacity : ℕ
  unboxed : ℕ
  newPieces : ℕ
  toBox : ℕ
  boxesNeeded : ℕ
  hBoxed : boxed + 5 = 50
  hCapacity : boxed = 3 * capacity
  hUnboxed : unboxed = 5
  hNewPieces : newPieces = 25
  hToBox : toBox = unboxed + newPieces
  hNeeded : boxesNeeded * capacity = toBox

theorem boxes_boxed (m : UniformChocolateBoxes) : m.boxed = 45 := by cases m <;> omega
theorem boxes_capacity (m : UniformChocolateBoxes) : m.capacity = 15 := by
  have h := m.hCapacity
  rw [boxes_boxed m] at h
  omega
theorem boxes_to_box (m : UniformChocolateBoxes) : m.toBox = 30 := by
  rw [m.hToBox, m.hUnboxed, m.hNewPieces]
theorem boxes_reference_solution (m : UniformChocolateBoxes) : m.boxesNeeded = 2 := by
  have h := m.hNeeded
  rw [boxes_capacity m, boxes_to_box m] at h
  omega
/-- Without equal capacities, three filled boxes may hold 10, 15, and 20 pieces. -/
theorem boxes_nonuniform_countermodel : (10 + 15 + 20 = 45) ∧ (3 * 10 = 30) := by norm_num
theorem boxes_two_capacity_readings_differ : (2 : ℕ) ≠ 3 := by norm_num

structure Portraits where
  beforeLunch : ℕ
  photographed : ℕ
  remaining : ℕ
  hBefore : beforeLunch * 3 = 24
  hPhotographed : photographed = beforeLunch + 10
  hRemaining : remaining + photographed = 24

theorem portraits_before (m : Portraits) : m.beforeLunch = 8 := by cases m <;> omega
theorem portraits_photographed (m : Portraits) : m.photographed = 18 := by
  rw [m.hPhotographed, portraits_before m]
theorem portraits_solution (m : Portraits) : m.remaining = 6 := by
  have h := m.hRemaining
  rw [portraits_photographed m] at h
  omega

structure ShipJourney where
  second : ℕ
  third : ℕ
  total : ℕ
  hSecond : second = 3 * 100
  hThird : third = second + 110
  hTotal : total = 100 + second + third

theorem ship_second (m : ShipJourney) : m.second = 300 := by rw [m.hSecond]
theorem ship_third (m : ShipJourney) : m.third = 410 := by rw [m.hThird, ship_second m]
theorem ship_solution (m : ShipJourney) : m.total = 810 := by
  rw [m.hTotal, ship_second m, ship_third m]

structure JailSentence where
  base : ℕ
  extension : ℕ
  total : ℕ
  hBase : base = 3 + 2 * 12
  hExtension : extension * 3 = base
  hTotal : total = base + extension

theorem jail_base (m : JailSentence) : m.base = 27 := by rw [m.hBase]
theorem jail_extension (m : JailSentence) : m.extension = 9 := by
  have h := m.hExtension
  rw [jail_base m] at h
  omega
theorem jail_solution (m : JailSentence) : m.total = 36 := by
  rw [m.hTotal, jail_base m, jail_extension m]

end LemmaWeave.Problems.GSM8K.Sprint0923A12
