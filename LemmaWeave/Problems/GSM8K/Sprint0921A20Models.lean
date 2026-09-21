import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0921A20

structure AnnualRaise where
  newWeekly : ℕ
  oldWeekly : ℕ
  weeklyGain : ℕ
  annualGain : ℕ
  hNew : newWeekly = 20 * 40
  hOld : oldWeekly = 16 * 25
  hWeekly : weeklyGain = newWeekly - oldWeekly
  hAnnual : annualGain = weeklyGain * 52

theorem annual_new_weekly (m : AnnualRaise) : m.newWeekly = 800 := by omega
theorem annual_old_weekly (m : AnnualRaise) : m.oldWeekly = 400 := by omega
theorem annual_weekly_gain (m : AnnualRaise) : m.weeklyGain = 400 := by omega
theorem annual_solution (m : AnnualRaise) : m.annualGain = 20800 := by omega

structure GymSpending where
  adidas : ℕ
  nike : ℕ
  skechers : ℕ
  sneakerTotal : ℕ
  clothes : ℕ
  total : ℕ
  hAdidas : adidas = 600
  hNike : nike = 3 * adidas
  hSkechers : skechers = 5 * adidas
  hSneakers : sneakerTotal = adidas + nike + skechers
  hTotal : total = 8000
  hSplit : total = sneakerTotal + clothes

theorem gym_nike (m : GymSpending) : m.nike = 1800 := by omega
theorem gym_skechers (m : GymSpending) : m.skechers = 3000 := by omega
theorem gym_sneakers (m : GymSpending) : m.sneakerTotal = 5400 := by omega
theorem gym_solution (m : GymSpending) : m.clothes = 2600 := by omega

structure Toads where
  spotted : ℕ
  brown : ℕ
  green : ℕ
  hSpotted : spotted = 50
  hQuarter : brown = spotted * 4
  hRatio : brown = green * 25

theorem toads_brown (m : Toads) : m.brown = 200 := by omega
theorem toads_solution (m : Toads) : m.green = 8 := by omega

structure Cabinets where
  current : ℕ
  perCounter : ℕ
  counters : ℕ
  installed : ℕ
  extra : ℕ
  total : ℕ
  hCurrent : current = 3
  hPer : perCounter = 2 * current
  hCounters : counters = 3
  hInstalled : installed = perCounter * counters
  hExtra : extra = 5
  hTotal : total = current + installed + extra

theorem cabinets_per_counter (m : Cabinets) : m.perCounter = 6 := by omega
theorem cabinets_installed (m : Cabinets) : m.installed = 18 := by omega
theorem cabinets_added (m : Cabinets) : m.installed + m.extra = 23 := by omega
theorem cabinets_solution (m : Cabinets) : m.total = 26 := by omega

structure Kabob where
  sticks : ℕ
  cubesPerStick : ℕ
  cubesPerSlab : ℕ
  slabs : ℕ
  costPerSlab : ℕ
  totalCubes : ℕ
  totalCost : ℕ
  hSticks : sticks = 40
  hCubesPerStick : cubesPerStick = 4
  hCubesPerSlab : cubesPerSlab = 80
  hSlabs : slabs = 2
  hCostPerSlab : costPerSlab = 25
  hCubes : totalCubes = sticks * cubesPerStick
  hEnough : totalCubes = slabs * cubesPerSlab
  hCost : totalCost = slabs * costPerSlab

theorem kabob_cubes (m : Kabob) : m.totalCubes = 160 := by omega
theorem kabob_slabs (m : Kabob) : m.slabs = 2 := by omega
theorem kabob_solution (m : Kabob) : m.totalCost = 50 := by omega

structure Rowing where
  first : ℕ
  second : ℕ
  third : ℕ
  firstTwo : ℕ
  total : ℕ
  hFirst : first = 6
  hSecond : second = 15
  hThird : third = 18
  hFirstTwo : firstTwo = first + second
  hTotal : total = firstTwo + third

theorem rowing_first_two (m : Rowing) : m.firstTwo = 21 := by omega
theorem rowing_solution (m : Rowing) : m.total = 39 := by omega

structure ButterflyAmbiguity where
  jars : ℕ
  perJar : ℕ
  total : ℕ
  failed : ℕ
  survivors : ℕ
  price : ℕ
  literalButterflies : ℕ
  literalRevenue : ℕ
  correctedButterflies : ℕ
  correctedRevenue : ℕ
  hJars : jars = 4
  hPerJar : perJar = 10
  hTotal : total = jars * perJar
  hFailed : failed * 100 = total * 40
  hSurvivors : survivors = total - failed
  hPrice : price = 3
  hLiteral : literalButterflies = 0
  hLiteralRevenue : literalRevenue = literalButterflies * price
  hCorrected : correctedButterflies = survivors
  hCorrectedRevenue : correctedRevenue = correctedButterflies * price

theorem butterfly_total (m : ButterflyAmbiguity) : m.total = 40 := by omega
theorem butterfly_failed (m : ButterflyAmbiguity) : m.failed = 16 := by omega
theorem butterfly_survivors (m : ButterflyAmbiguity) : m.survivors = 24 := by omega
theorem butterfly_literal (m : ButterflyAmbiguity) : m.literalRevenue = 0 := by omega
theorem butterfly_corrected (m : ButterflyAmbiguity) : m.correctedRevenue = 72 := by omega
theorem butterfly_nonunique (m : ButterflyAmbiguity) : m.literalRevenue ≠ m.correctedRevenue := by omega

structure StuffedAnimals where
  thor : ℕ
  jake : ℕ
  quincy : ℕ
  difference : ℕ
  hQuincy : quincy = 200
  hTenfold : quincy = 10 * thor
  hJake : jake = thor + 10
  hDifference : difference = quincy - jake

theorem stuffed_thor (m : StuffedAnimals) : m.thor = 20 := by omega
theorem stuffed_jake (m : StuffedAnimals) : m.jake = 30 := by omega
theorem stuffed_solution (m : StuffedAnimals) : m.difference = 170 := by omega

structure FanAirflow where
  litersPerSecond : ℕ
  minutesPerDay : ℕ
  days : ℕ
  totalMinutes : ℕ
  totalSeconds : ℕ
  totalLiters : ℕ
  hRate : litersPerSecond = 10
  hMinutes : minutesPerDay = 10
  hDays : days = 7
  hTotalMinutes : totalMinutes = minutesPerDay * days
  hSeconds : totalSeconds = totalMinutes * 60
  hLiters : totalLiters = totalSeconds * litersPerSecond

theorem fan_minutes (m : FanAirflow) : m.totalMinutes = 70 := by omega
theorem fan_seconds (m : FanAirflow) : m.totalSeconds = 4200 := by omega
theorem fan_solution (m : FanAirflow) : m.totalLiters = 42000 := by omega

structure CamelAmbiguity where
  hareInches : ℕ
  factor : ℕ
  inchesPerFoot : ℕ
  conventionalInches : ℕ
  conventionalFeet : ℕ
  additiveInches : ℕ
  additiveNumerator : ℕ
  additiveDenominator : ℕ
  hHare : hareInches = 14
  hFactor : factor = 24
  hFoot : inchesPerFoot = 12
  hConventional : conventionalInches = hareInches * factor
  hConventionalFeet : conventionalInches = conventionalFeet * inchesPerFoot
  hAdditive : additiveInches = hareInches + hareInches * factor
  hAdditiveNumerator : additiveNumerator = 175
  hAdditiveDenominator : additiveDenominator = 6
  hAdditiveFeet : additiveInches * additiveDenominator = additiveNumerator * inchesPerFoot

theorem camel_conventional_inches (m : CamelAmbiguity) : m.conventionalInches = 336 := by omega
theorem camel_conventional_feet (m : CamelAmbiguity) : m.conventionalFeet = 28 := by omega
theorem camel_additive_inches (m : CamelAmbiguity) : m.additiveInches = 350 := by omega
theorem camel_additive_feet (m : CamelAmbiguity) : m.additiveInches * 6 = 175 * 12 := by omega
theorem camel_nonunique (m : CamelAmbiguity) : m.conventionalInches ≠ m.additiveInches := by omega

structure Sod where
  length : ℕ
  width : ℕ
  shedLength : ℕ
  shedWidth : ℕ
  yard : ℕ
  shed : ℕ
  sod : ℕ
  hLength : length = 20
  hWidth : width = 13
  hShedLength : shedLength = 3
  hShedWidth : shedWidth = 5
  hYard : yard = length * width
  hShed : shed = shedLength * shedWidth
  hSod : sod = yard - shed

theorem sod_yard (m : Sod) : m.yard = 260 := by omega
theorem sod_shed (m : Sod) : m.shed = 15 := by omega
theorem sod_solution (m : Sod) : m.sod = 245 := by omega

structure Clothes where
  pants : ℕ
  shirtsPerPants : ℕ
  shirts : ℕ
  total : ℕ
  hPants : pants = 40
  hRatio : shirtsPerPants = 6
  hShirts : shirts = pants * shirtsPerPants
  hTotal : total = pants + shirts

theorem clothes_shirts (m : Clothes) : m.shirts = 240 := by omega
theorem clothes_solution (m : Clothes) : m.total = 280 := by omega

structure PurpleWalls where
  rooms : ℕ
  greenRooms : ℕ
  purpleRooms : ℕ
  wallsPerRoom : ℕ
  purpleWalls : ℕ
  hRooms : rooms = 10
  hGreenFraction : greenRooms * 5 = rooms * 3
  hPurpleRooms : purpleRooms = rooms - greenRooms
  hWalls : wallsPerRoom = 8
  hPurpleWalls : purpleWalls = purpleRooms * wallsPerRoom

theorem purple_green_rooms (m : PurpleWalls) : m.greenRooms = 6 := by omega
theorem purple_rooms (m : PurpleWalls) : m.purpleRooms = 4 := by omega
theorem purple_solution (m : PurpleWalls) : m.purpleWalls = 32 := by omega

structure Cents where
  start : ℕ
  found : ℕ
  spent : ℕ
  mother : ℕ
  final : ℕ
  hStart : start = 80
  hFound : found = 40
  hSpent : spent = 50
  hMother : mother = 70
  hFinal : final = start + found - spent + mother

theorem cents_before_spending (m : Cents) : m.start + m.found = 120 := by omega
theorem cents_after_spending (m : Cents) : m.start + m.found - m.spent = 70 := by omega
theorem cents_solution (m : Cents) : m.final = 140 := by omega

structure Catering where
  people : ℕ
  chicken : ℕ
  steak : ℕ
  chickenCost : ℕ
  steakCost : ℕ
  totalCost : ℕ
  hPeople : people = 80
  hSplit : people = chicken + steak
  hRatio : steak = 3 * chicken
  hChickenCost : chickenCost = chicken * 18
  hSteakCost : steakCost = steak * 25
  hTotal : totalCost = chickenCost + steakCost

theorem catering_chicken (m : Catering) : m.chicken = 20 := by omega
theorem catering_steak (m : Catering) : m.steak = 60 := by omega
theorem catering_costs (m : Catering) : m.chickenCost = 360 ∧ m.steakCost = 1500 := by omega
theorem catering_solution (m : Catering) : m.totalCost = 1860 := by omega

end LemmaWeave.Problems.GSM8K.Sprint0921A20
