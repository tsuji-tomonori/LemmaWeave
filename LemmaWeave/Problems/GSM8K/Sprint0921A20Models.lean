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

theorem annual_new_weekly (m : AnnualRaise) : m.newWeekly = 800 := by
  norm_num [m.hNew]
theorem annual_old_weekly (m : AnnualRaise) : m.oldWeekly = 400 := by
  norm_num [m.hOld]
theorem annual_weekly_gain (m : AnnualRaise) : m.weeklyGain = 400 := by
  norm_num [m.hWeekly, annual_new_weekly m, annual_old_weekly m]
theorem annual_solution (m : AnnualRaise) : m.annualGain = 20800 := by
  norm_num [m.hAnnual, annual_weekly_gain m]

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

theorem gym_nike (m : GymSpending) : m.nike = 1800 := by
  norm_num [m.hNike, m.hAdidas]
theorem gym_skechers (m : GymSpending) : m.skechers = 3000 := by
  norm_num [m.hSkechers, m.hAdidas]
theorem gym_sneakers (m : GymSpending) : m.sneakerTotal = 5400 := by
  norm_num [m.hSneakers, m.hAdidas, gym_nike m, gym_skechers m]
theorem gym_solution (m : GymSpending) : m.clothes = 2600 := by
  have h := m.hSplit
  rw [m.hTotal, gym_sneakers m] at h
  omega

structure Toads where
  spotted : ℕ
  brown : ℕ
  green : ℕ
  hSpotted : spotted = 50
  hQuarter : brown = spotted * 4
  hRatio : brown = green * 25

theorem toads_brown (m : Toads) : m.brown = 200 := by
  norm_num [m.hQuarter, m.hSpotted]
theorem toads_solution (m : Toads) : m.green = 8 := by
  have h := m.hRatio
  rw [toads_brown m] at h
  omega

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

theorem cabinets_per_counter (m : Cabinets) : m.perCounter = 6 := by
  norm_num [m.hPer, m.hCurrent]
theorem cabinets_installed (m : Cabinets) : m.installed = 18 := by
  norm_num [m.hInstalled, cabinets_per_counter m, m.hCounters]
theorem cabinets_added (m : Cabinets) : m.installed + m.extra = 23 := by
  rw [cabinets_installed m, m.hExtra]
theorem cabinets_solution (m : Cabinets) : m.total = 26 := by
  rw [m.hTotal, m.hCurrent, cabinets_installed m, m.hExtra]

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

theorem kabob_cubes (m : Kabob) : m.totalCubes = 160 := by
  norm_num [m.hCubes, m.hSticks, m.hCubesPerStick]
theorem kabob_slabs (m : Kabob) : m.slabs = 2 := by
  exact m.hSlabs
theorem kabob_solution (m : Kabob) : m.totalCost = 50 := by
  norm_num [m.hCost, m.hSlabs, m.hCostPerSlab]

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

theorem rowing_first_two (m : Rowing) : m.firstTwo = 21 := by
  rw [m.hFirstTwo, m.hFirst, m.hSecond]
theorem rowing_solution (m : Rowing) : m.total = 39 := by
  rw [m.hTotal, rowing_first_two m, m.hThird]

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

theorem butterfly_total (m : ButterflyAmbiguity) : m.total = 40 := by
  norm_num [m.hTotal, m.hJars, m.hPerJar]
theorem butterfly_failed (m : ButterflyAmbiguity) : m.failed = 16 := by
  have h := m.hFailed
  rw [butterfly_total m] at h
  omega
theorem butterfly_survivors (m : ButterflyAmbiguity) : m.survivors = 24 := by
  norm_num [m.hSurvivors, butterfly_total m, butterfly_failed m]
theorem butterfly_literal (m : ButterflyAmbiguity) : m.literalRevenue = 0 := by
  norm_num [m.hLiteralRevenue, m.hLiteral, m.hPrice]
theorem butterfly_corrected (m : ButterflyAmbiguity) : m.correctedRevenue = 72 := by
  norm_num [m.hCorrectedRevenue, m.hCorrected, butterfly_survivors m, m.hPrice]
theorem butterfly_nonunique (m : ButterflyAmbiguity) : m.literalRevenue ≠ m.correctedRevenue := by
  norm_num [butterfly_literal m, butterfly_corrected m]

structure StuffedAnimals where
  thor : ℕ
  jake : ℕ
  quincy : ℕ
  difference : ℕ
  hQuincy : quincy = 200
  hTenfold : quincy = 10 * thor
  hJake : jake = thor + 10
  hDifference : difference = quincy - jake

theorem stuffed_thor (m : StuffedAnimals) : m.thor = 20 := by
  have h := m.hTenfold
  rw [m.hQuincy] at h
  omega
theorem stuffed_jake (m : StuffedAnimals) : m.jake = 30 := by
  rw [m.hJake, stuffed_thor m]
theorem stuffed_solution (m : StuffedAnimals) : m.difference = 170 := by
  rw [m.hDifference, m.hQuincy, stuffed_jake m]

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

theorem fan_minutes (m : FanAirflow) : m.totalMinutes = 70 := by
  norm_num [m.hTotalMinutes, m.hMinutes, m.hDays]
theorem fan_seconds (m : FanAirflow) : m.totalSeconds = 4200 := by
  norm_num [m.hSeconds, fan_minutes m]
theorem fan_solution (m : FanAirflow) : m.totalLiters = 42000 := by
  norm_num [m.hLiters, fan_seconds m, m.hRate]

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

theorem camel_conventional_inches (m : CamelAmbiguity) : m.conventionalInches = 336 := by
  norm_num [m.hConventional, m.hHare, m.hFactor]
theorem camel_conventional_feet (m : CamelAmbiguity) : m.conventionalFeet = 28 := by
  have h := m.hConventionalFeet
  rw [camel_conventional_inches m, m.hFoot] at h
  omega
theorem camel_additive_inches (m : CamelAmbiguity) : m.additiveInches = 350 := by
  norm_num [m.hAdditive, m.hHare, m.hFactor]
theorem camel_additive_feet (m : CamelAmbiguity) : m.additiveInches * 6 = 175 * 12 := by
  norm_num [camel_additive_inches m]
theorem camel_nonunique (m : CamelAmbiguity) : m.conventionalInches ≠ m.additiveInches := by
  norm_num [camel_conventional_inches m, camel_additive_inches m]

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

theorem sod_yard (m : Sod) : m.yard = 260 := by
  norm_num [m.hYard, m.hLength, m.hWidth]
theorem sod_shed (m : Sod) : m.shed = 15 := by
  norm_num [m.hShed, m.hShedLength, m.hShedWidth]
theorem sod_solution (m : Sod) : m.sod = 245 := by
  rw [m.hSod, sod_yard m, sod_shed m]

structure Clothes where
  pants : ℕ
  shirtsPerPants : ℕ
  shirts : ℕ
  total : ℕ
  hPants : pants = 40
  hRatio : shirtsPerPants = 6
  hShirts : shirts = pants * shirtsPerPants
  hTotal : total = pants + shirts

theorem clothes_shirts (m : Clothes) : m.shirts = 240 := by
  norm_num [m.hShirts, m.hPants, m.hRatio]
theorem clothes_solution (m : Clothes) : m.total = 280 := by
  rw [m.hTotal, m.hPants, clothes_shirts m]

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

theorem purple_green_rooms (m : PurpleWalls) : m.greenRooms = 6 := by
  have h := m.hGreenFraction
  rw [m.hRooms] at h
  omega
theorem purple_rooms (m : PurpleWalls) : m.purpleRooms = 4 := by
  rw [m.hPurpleRooms, m.hRooms, purple_green_rooms m]
theorem purple_solution (m : PurpleWalls) : m.purpleWalls = 32 := by
  norm_num [m.hPurpleWalls, purple_rooms m, m.hWalls]

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

theorem cents_before_spending (m : Cents) : m.start + m.found = 120 := by
  rw [m.hStart, m.hFound]
theorem cents_after_spending (m : Cents) : m.start + m.found - m.spent = 70 := by
  rw [m.hStart, m.hFound, m.hSpent]
theorem cents_solution (m : Cents) : m.final = 140 := by
  rw [m.hFinal, m.hStart, m.hFound, m.hSpent, m.hMother]

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

theorem catering_chicken (m : Catering) : m.chicken = 20 := by
  have hp := m.hPeople
  have hs := m.hSplit
  have hr := m.hRatio
  omega
theorem catering_steak (m : Catering) : m.steak = 60 := by
  rw [m.hRatio, catering_chicken m]
theorem catering_costs (m : Catering) : m.chickenCost = 360 ∧ m.steakCost = 1500 := by
  constructor
  · norm_num [m.hChickenCost, catering_chicken m]
  · norm_num [m.hSteakCost, catering_steak m]
theorem catering_solution (m : Catering) : m.totalCost = 1860 := by
  have hc := (catering_costs m).1
  have hs := (catering_costs m).2
  rw [m.hTotal, hc, hs]

end LemmaWeave.Problems.GSM8K.Sprint0921A20
