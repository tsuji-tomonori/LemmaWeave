import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A06
structure ColdBrew where
  halfGallonsPerBatch : ℕ
  ouncesPerHalfGallon : ℕ
  batchOunces : ℕ
  twoDayOunces : ℕ
  dailyOunces : ℕ
  daysPerBatch : ℕ
  periodDays : ℕ
  batches : ℕ
  hoursPerBatch : ℕ
  totalHours : ℕ
  hHalfGallons : halfGallonsPerBatch = 3
  hOuncesPerHalfGallon : ouncesPerHalfGallon = 64
  hBatch : batchOunces = halfGallonsPerBatch * ouncesPerHalfGallon
  hTwoDay : twoDayOunces = 96
  hDaily : twoDayOunces = 2 * dailyOunces
  hDaysPerBatch : batchOunces = daysPerBatch * dailyOunces
  hPeriod : periodDays = 24
  hBatches : periodDays = batches * daysPerBatch
  hHoursPerBatch : hoursPerBatch = 20
  hTotalHours : totalHours = batches * hoursPerBatch
theorem brew_batch_ounces (m : ColdBrew) : m.batchOunces = 192 := by
  have halfGallonsPerBatch := m.halfGallonsPerBatch
  have hoursPerBatch := m.hoursPerBatch
  have hHalfGallons := m.hHalfGallons
  have hOuncesPerHalfGallon := m.hOuncesPerHalfGallon
  have hBatch := m.hBatch
  have hTwoDay := m.hTwoDay
  have hDaily := m.hDaily
  have hDaysPerBatch := m.hDaysPerBatch
  have hPeriod := m.hPeriod
  have hBatches := m.hBatches
  have hHoursPerBatch := m.hHoursPerBatch
  have hTotalHours := m.hTotalHours
  simp_all <;> omega
theorem brew_daily_ounces (m : ColdBrew) : m.dailyOunces = 48 := by
  have halfGallonsPerBatch := m.halfGallonsPerBatch
  have hoursPerBatch := m.hoursPerBatch
  have hHalfGallons := m.hHalfGallons
  have hOuncesPerHalfGallon := m.hOuncesPerHalfGallon
  have hBatch := m.hBatch
  have hTwoDay := m.hTwoDay
  have hDaily := m.hDaily
  have hDaysPerBatch := m.hDaysPerBatch
  have hPeriod := m.hPeriod
  have hBatches := m.hBatches
  have hHoursPerBatch := m.hHoursPerBatch
  have hTotalHours := m.hTotalHours
  simp_all <;> omega
theorem brew_days_per_batch (m : ColdBrew) : m.daysPerBatch = 4 := by
  have h := m.hDaysPerBatch
  rw [brew_batch_ounces m, brew_daily_ounces m] at h
  omega
theorem brew_batches (m : ColdBrew) : m.batches = 6 := by
  have h := m.hBatches
  rw [m.hPeriod, brew_days_per_batch m] at h
  omega
theorem brew_solution (m : ColdBrew) : m.totalHours = 120 := by
  rw [m.hTotalHours, brew_batches m, m.hHoursPerBatch]
structure FishingLine where
  reels : ℕ
  metersPerReel : ℕ
  totalMeters : ℕ
  metersPerSection : ℕ
  sections : ℕ
  hReels : reels = 3
  hPerReel : metersPerReel = 100
  hTotal : totalMeters = reels * metersPerReel
  hPerSection : metersPerSection = 10
  hSections : totalMeters = sections * metersPerSection
theorem line_total (m : FishingLine) : m.totalMeters = 300 := by
  have hReels := m.hReels
  have hPerReel := m.hPerReel
  have hTotal := m.hTotal
  have hPerSection := m.hPerSection
  have hSections := m.hSections
  simp_all <;> omega
theorem line_solution (m : FishingLine) : m.sections = 30 := by
  have hReels := m.hReels
  have hPerReel := m.hPerReel
  have hTotal := m.hTotal
  have hPerSection := m.hPerSection
  have hSections := m.hSections
  simp_all <;> omega
structure PortConventional where
  cruise : ℕ
  cargo : ℕ
  sailboats : ℕ
  fishing : ℕ
  total : ℕ
  hCruise : cruise = 4
  hCargo : cargo = 2 * cruise
  hSailboats : sailboats = cargo + 6
  hSevenTimes : sailboats = 7 * fishing
  hTotal : total = cruise + cargo + sailboats + fishing
theorem port_cargo (m : PortConventional) : m.cargo = 8 := by
  have hCruise := m.hCruise
  have hCargo := m.hCargo
  have hSailboats := m.hSailboats
  have hSevenTimes := m.hSevenTimes
  have hTotal := m.hTotal
  simp_all <;> omega
theorem port_sailboats (m : PortConventional) : m.sailboats = 14 := by
  have hCruise := m.hCruise
  have hCargo := m.hCargo
  have hSailboats := m.hSailboats
  have hSevenTimes := m.hSevenTimes
  have hTotal := m.hTotal
  simp_all <;> omega
theorem port_fishing (m : PortConventional) : m.fishing = 2 := by
  have hCruise := m.hCruise
  have hCargo := m.hCargo
  have hSailboats := m.hSailboats
  have hSevenTimes := m.hSevenTimes
  have hTotal := m.hTotal
  simp_all <;> omega
theorem port_conventional_total (m : PortConventional) : m.total = 28 := by
  have hCruise := m.hCruise
  have hCargo := m.hCargo
  have hSailboats := m.hSailboats
  have hSevenTimes := m.hSevenTimes
  have hTotal := m.hTotal
  simp_all <;> omega
theorem port_literal_impossible : ¬ ∃ fishing : ℕ, 14 = fishing + 7 * fishing := by omega
theorem port_solution (m : PortConventional) :
    m.total = 28 ∧ ¬ ∃ fishing : ℕ, 14 = fishing + 7 * fishing := by
  constructor
  · exact port_conventional_total m
  · exact port_literal_impossible
structure Horseshoes where
  ironKg : ℕ
  kgPerShoe : ℕ
  totalShoes : ℕ
  farms : ℕ
  horsesPerFarm : ℕ
  farmHorses : ℕ
  stables : ℕ
  horsesPerStable : ℕ
  stableHorses : ℕ
  orderedHorses : ℕ
  shoesPerHorse : ℕ
  orderedShoes : ℕ
  leftoverShoes : ℕ
  schoolHorses : ℕ
  hIron : ironKg = 400
  hKgPerShoe : kgPerShoe = 2
  hTotalShoes : ironKg = kgPerShoe * totalShoes
  hFarms : farms = 2
  hHorsesPerFarm : horsesPerFarm = 2
  hFarmHorses : farmHorses = farms * horsesPerFarm
  hStables : stables = 2
  hHorsesPerStable : horsesPerStable = 5
  hStableHorses : stableHorses = stables * horsesPerStable
  hOrderedHorses : orderedHorses = farmHorses + stableHorses
  hShoesPerHorse : shoesPerHorse = 4
  hOrderedShoes : orderedShoes = orderedHorses * shoesPerHorse
  hLeftover : totalShoes = orderedShoes + leftoverShoes
  hSchool : leftoverShoes = schoolHorses * shoesPerHorse
theorem shoes_total (m : Horseshoes) : m.totalShoes = 200 := by
  have horsesPerFarm := m.horsesPerFarm
  have horsesPerStable := m.horsesPerStable
  have hIron := m.hIron
  have hKgPerShoe := m.hKgPerShoe
  have hTotalShoes := m.hTotalShoes
  have hFarms := m.hFarms
  have hHorsesPerFarm := m.hHorsesPerFarm
  have hFarmHorses := m.hFarmHorses
  have hStables := m.hStables
  have hHorsesPerStable := m.hHorsesPerStable
  have hStableHorses := m.hStableHorses
  have hOrderedHorses := m.hOrderedHorses
  have hShoesPerHorse := m.hShoesPerHorse
  have hOrderedShoes := m.hOrderedShoes
  have hLeftover := m.hLeftover
  have hSchool := m.hSchool
  simp_all <;> omega
theorem shoes_farm_horses (m : Horseshoes) : m.farmHorses = 4 := by
  have horsesPerFarm := m.horsesPerFarm
  have horsesPerStable := m.horsesPerStable
  have hIron := m.hIron
  have hKgPerShoe := m.hKgPerShoe
  have hTotalShoes := m.hTotalShoes
  have hFarms := m.hFarms
  have hHorsesPerFarm := m.hHorsesPerFarm
  have hFarmHorses := m.hFarmHorses
  have hStables := m.hStables
  have hHorsesPerStable := m.hHorsesPerStable
  have hStableHorses := m.hStableHorses
  have hOrderedHorses := m.hOrderedHorses
  have hShoesPerHorse := m.hShoesPerHorse
  have hOrderedShoes := m.hOrderedShoes
  have hLeftover := m.hLeftover
  have hSchool := m.hSchool
  simp_all <;> omega
theorem shoes_stable_horses (m : Horseshoes) : m.stableHorses = 10 := by
  have horsesPerFarm := m.horsesPerFarm
  have horsesPerStable := m.horsesPerStable
  have hIron := m.hIron
  have hKgPerShoe := m.hKgPerShoe
  have hTotalShoes := m.hTotalShoes
  have hFarms := m.hFarms
  have hHorsesPerFarm := m.hHorsesPerFarm
  have hFarmHorses := m.hFarmHorses
  have hStables := m.hStables
  have hHorsesPerStable := m.hHorsesPerStable
  have hStableHorses := m.hStableHorses
  have hOrderedHorses := m.hOrderedHorses
  have hShoesPerHorse := m.hShoesPerHorse
  have hOrderedShoes := m.hOrderedShoes
  have hLeftover := m.hLeftover
  have hSchool := m.hSchool
  simp_all <;> omega
theorem shoes_ordered (m : Horseshoes) : m.orderedShoes = 56 := by
  have horsesPerFarm := m.horsesPerFarm
  have horsesPerStable := m.horsesPerStable
  have hIron := m.hIron
  have hKgPerShoe := m.hKgPerShoe
  have hTotalShoes := m.hTotalShoes
  have hFarms := m.hFarms
  have hHorsesPerFarm := m.hHorsesPerFarm
  have hFarmHorses := m.hFarmHorses
  have hStables := m.hStables
  have hHorsesPerStable := m.hHorsesPerStable
  have hStableHorses := m.hStableHorses
  have hOrderedHorses := m.hOrderedHorses
  have hShoesPerHorse := m.hShoesPerHorse
  have hOrderedShoes := m.hOrderedShoes
  have hLeftover := m.hLeftover
  have hSchool := m.hSchool
  simp_all <;> omega
theorem shoes_leftover (m : Horseshoes) : m.leftoverShoes = 144 := by
  have horsesPerFarm := m.horsesPerFarm
  have horsesPerStable := m.horsesPerStable
  have hIron := m.hIron
  have hKgPerShoe := m.hKgPerShoe
  have hTotalShoes := m.hTotalShoes
  have hFarms := m.hFarms
  have hHorsesPerFarm := m.hHorsesPerFarm
  have hFarmHorses := m.hFarmHorses
  have hStables := m.hStables
  have hHorsesPerStable := m.hHorsesPerStable
  have hStableHorses := m.hStableHorses
  have hOrderedHorses := m.hOrderedHorses
  have hShoesPerHorse := m.hShoesPerHorse
  have hOrderedShoes := m.hOrderedShoes
  have hLeftover := m.hLeftover
  have hSchool := m.hSchool
  simp_all <;> omega
theorem shoes_solution (m : Horseshoes) : m.schoolHorses = 36 := by
  have horsesPerFarm := m.horsesPerFarm
  have horsesPerStable := m.horsesPerStable
  have hIron := m.hIron
  have hKgPerShoe := m.hKgPerShoe
  have hTotalShoes := m.hTotalShoes
  have hFarms := m.hFarms
  have hHorsesPerFarm := m.hHorsesPerFarm
  have hFarmHorses := m.hFarmHorses
  have hStables := m.hStables
  have hHorsesPerStable := m.hHorsesPerStable
  have hStableHorses := m.hStableHorses
  have hOrderedHorses := m.hOrderedHorses
  have hShoesPerHorse := m.hShoesPerHorse
  have hOrderedShoes := m.hOrderedShoes
  have hLeftover := m.hLeftover
  have hSchool := m.hSchool
  simp_all <;> omega
structure NancyWork where
  firstPay : ℕ
  firstHours : ℕ
  hourlyPay : ℕ
  targetPay : ℕ
  targetHours : ℕ
  hFirstPay : firstPay = 28
  hFirstHours : firstHours = 4
  hFirstRate : firstPay = firstHours * hourlyPay
  hTargetPay : targetPay = 70
  hTargetRate : targetPay = targetHours * hourlyPay
theorem nancy_hourly (m : NancyWork) : m.hourlyPay = 7 := by
  have hourlyPay := m.hourlyPay
  have hFirstPay := m.hFirstPay
  have hFirstHours := m.hFirstHours
  have hFirstRate := m.hFirstRate
  have hTargetPay := m.hTargetPay
  have hTargetRate := m.hTargetRate
  simp_all <;> omega
theorem nancy_solution (m : NancyWork) : m.targetHours = 10 := by
  have h := m.hTargetRate
  rw [m.hTargetPay, nancy_hourly m] at h
  omega
structure DukeGame where
  neededToTie : ℕ
  pointsPastRecord : ℕ
  gamePoints : ℕ
  freeThrowPoints : ℕ
  regularBasketPoints : ℕ
  threePointPoints : ℕ
  threePointers : ℕ
  normalThreePointers : ℕ
  additional : ℕ
  hNeeded : neededToTie = 17
  hPast : pointsPastRecord = 5
  hGamePoints : gamePoints = neededToTie + pointsPastRecord
  hFreeThrows : freeThrowPoints = 5
  hRegular : regularBasketPoints = 4 * 2
  hPointSplit : gamePoints = freeThrowPoints + regularBasketPoints + threePointPoints
  hThreePoints : threePointPoints = 3 * threePointers
  hNormal : normalThreePointers = 2
  hAdditional : threePointers = normalThreePointers + additional
theorem duke_game_points (m : DukeGame) : m.gamePoints = 22 := by
  have hNeeded := m.hNeeded
  have hPast := m.hPast
  have hGamePoints := m.hGamePoints
  have hFreeThrows := m.hFreeThrows
  have hRegular := m.hRegular
  have hPointSplit := m.hPointSplit
  have hThreePoints := m.hThreePoints
  have hNormal := m.hNormal
  have hAdditional := m.hAdditional
  simp_all <;> omega
theorem duke_three_point_points (m : DukeGame) : m.threePointPoints = 9 := by
  have hNeeded := m.hNeeded
  have hPast := m.hPast
  have hGamePoints := m.hGamePoints
  have hFreeThrows := m.hFreeThrows
  have hRegular := m.hRegular
  have hPointSplit := m.hPointSplit
  have hThreePoints := m.hThreePoints
  have hNormal := m.hNormal
  have hAdditional := m.hAdditional
  simp_all <;> omega
theorem duke_three_pointers (m : DukeGame) : m.threePointers = 3 := by
  have hNeeded := m.hNeeded
  have hPast := m.hPast
  have hGamePoints := m.hGamePoints
  have hFreeThrows := m.hFreeThrows
  have hRegular := m.hRegular
  have hPointSplit := m.hPointSplit
  have hThreePoints := m.hThreePoints
  have hNormal := m.hNormal
  have hAdditional := m.hAdditional
  simp_all <;> omega
theorem duke_solution (m : DukeGame) : m.additional = 1 := by
  have hNeeded := m.hNeeded
  have hPast := m.hPast
  have hGamePoints := m.hGamePoints
  have hFreeThrows := m.hFreeThrows
  have hRegular := m.hRegular
  have hPointSplit := m.hPointSplit
  have hThreePoints := m.hThreePoints
  have hNormal := m.hNormal
  have hAdditional := m.hAdditional
  simp_all <;> omega
structure Dolls where
  ivy : ℕ
  collectors : ℕ
  dina : ℕ
  hCollectors : collectors = 20
  hFraction : 3 * collectors = 2 * ivy
  hDina : dina = 2 * ivy
theorem dolls_ivy (m : Dolls) : m.ivy = 30 := by
  have hCollectors := m.hCollectors
  have hFraction := m.hFraction
  have hDina := m.hDina
  simp_all <;> omega
theorem dolls_solution (m : Dolls) : m.dina = 60 := by
  have hCollectors := m.hCollectors
  have hFraction := m.hFraction
  have hDina := m.hDina
  simp_all <;> omega
structure SleepHours where
  connor : ℕ
  luke : ℕ
  puppy : ℕ
  hConnor : connor = 6
  hLuke : luke = connor + 2
  hPuppy : puppy = 2 * luke
theorem sleep_luke (m : SleepHours) : m.luke = 8 := by
  have hConnor := m.hConnor
  have hLuke := m.hLuke
  have hPuppy := m.hPuppy
  simp_all <;> omega
theorem sleep_solution (m : SleepHours) : m.puppy = 16 := by
  have hConnor := m.hConnor
  have hLuke := m.hLuke
  have hPuppy := m.hPuppy
  simp_all <;> omega
structure ApplesIntended where
  smallCount : ℕ
  mediumCount : ℕ
  bigCount : ℕ
  smallCents : ℕ
  mediumCents : ℕ
  bigCents : ℕ
  totalCents : ℕ
  hSmallCount : smallCount = 6
  hMediumCount : mediumCount = 6
  hBigCount : bigCount = 8
  hSmallCents : smallCents = 150
  hMediumCents : mediumCents = 200
  hBigCents : bigCents = 300
  hTotal : totalCents = smallCount * smallCents + mediumCount * mediumCents + bigCount * bigCents
theorem apples_intended_solution (m : ApplesIntended) : m.totalCents = 4500 := by
  have hSmallCount := m.hSmallCount
  have hMediumCount := m.hMediumCount
  have hBigCount := m.hBigCount
  have hSmallCents := m.hSmallCents
  have hMediumCents := m.hMediumCents
  have hBigCents := m.hBigCents
  have hTotal := m.hTotal
  simp_all <;> omega

theorem apples_combined_all_small : 6 * 150 + 0 * 200 + 8 * 300 = 3300 := by norm_num
theorem apples_combined_all_medium : 0 * 150 + 6 * 200 + 8 * 300 = 3600 := by norm_num
theorem apples_solution (m : ApplesIntended) :
    m.totalCents = 4500 ∧ 3300 ≠ 3600 := by
  constructor
  · exact apples_intended_solution m
  · norm_num
structure PlanetComposition where
  ironPercent : ℕ
  carbonPercent : ℕ
  otherPercent : ℕ
  marsOtherTons : ℕ
  marsTons : ℕ
  moonTons : ℕ
  hIron : ironPercent = 50
  hCarbon : carbonPercent = 20
  hComposition : ironPercent + carbonPercent + otherPercent = 100
  hMarsOther : marsOtherTons = 150
  hMarsFraction : otherPercent * marsTons = 100 * marsOtherTons
  hMassRatio : marsTons = 2 * moonTons
theorem planet_other_percent (m : PlanetComposition) : m.otherPercent = 30 := by
  have hIron := m.hIron
  have hCarbon := m.hCarbon
  have hComposition := m.hComposition
  have hMarsOther := m.hMarsOther
  have hMarsFraction := m.hMarsFraction
  have hMassRatio := m.hMassRatio
  simp_all <;> omega
theorem planet_mars_mass (m : PlanetComposition) : m.marsTons = 500 := by
  have h := m.hMarsFraction
  rw [planet_other_percent m, m.hMarsOther] at h
  omega
theorem planet_solution (m : PlanetComposition) : m.moonTons = 250 := by
  have h := m.hMassRatio
  rw [planet_mars_mass m] at h
  omega
structure Rhinos where
  whiteCount : ℕ
  poundsPerWhite : ℕ
  whitePounds : ℕ
  blackCount : ℕ
  poundsPerTon : ℕ
  blackPounds : ℕ
  totalPounds : ℕ
  hWhiteCount : whiteCount = 7
  hWhiteWeight : poundsPerWhite = 5100
  hWhiteTotal : whitePounds = whiteCount * poundsPerWhite
  hBlackCount : blackCount = 8
  hShortTon : poundsPerTon = 2000
  hBlackTotal : blackPounds = blackCount * poundsPerTon
  hTotal : totalPounds = whitePounds + blackPounds
theorem rhinos_white (m : Rhinos) : m.whitePounds = 35700 := by
  have hWhiteCount := m.hWhiteCount
  have hWhiteWeight := m.hWhiteWeight
  have hWhiteTotal := m.hWhiteTotal
  have hBlackCount := m.hBlackCount
  have hShortTon := m.hShortTon
  have hBlackTotal := m.hBlackTotal
  have hTotal := m.hTotal
  simp_all <;> omega
theorem rhinos_black (m : Rhinos) : m.blackPounds = 16000 := by
  have hWhiteCount := m.hWhiteCount
  have hWhiteWeight := m.hWhiteWeight
  have hWhiteTotal := m.hWhiteTotal
  have hBlackCount := m.hBlackCount
  have hShortTon := m.hShortTon
  have hBlackTotal := m.hBlackTotal
  have hTotal := m.hTotal
  simp_all <;> omega
theorem rhinos_solution (m : Rhinos) : m.totalPounds = 51700 := by
  have hWhiteCount := m.hWhiteCount
  have hWhiteWeight := m.hWhiteWeight
  have hWhiteTotal := m.hWhiteTotal
  have hBlackCount := m.hBlackCount
  have hShortTon := m.hShortTon
  have hBlackTotal := m.hBlackTotal
  have hTotal := m.hTotal
  simp_all <;> omega
structure PreciousStones where
  agate : ℕ
  olivine : ℕ
  diamond : ℕ
  total : ℕ
  hAgate : agate = 30
  hOlivine : olivine = agate + 5
  hDiamond : diamond = olivine + 11
  hTotal : total = agate + olivine + diamond
theorem stones_olivine (m : PreciousStones) : m.olivine = 35 := by
  have hAgate := m.hAgate
  have hOlivine := m.hOlivine
  have hDiamond := m.hDiamond
  have hTotal := m.hTotal
  simp_all <;> omega
theorem stones_diamond (m : PreciousStones) : m.diamond = 46 := by
  have hAgate := m.hAgate
  have hOlivine := m.hOlivine
  have hDiamond := m.hDiamond
  have hTotal := m.hTotal
  simp_all <;> omega
theorem stones_solution (m : PreciousStones) : m.total = 111 := by
  have hAgate := m.hAgate
  have hOlivine := m.hOlivine
  have hDiamond := m.hDiamond
  have hTotal := m.hTotal
  simp_all <;> omega
structure Berets where
  redSpools : ℕ
  blackSpools : ℕ
  blueSpools : ℕ
  totalSpools : ℕ
  spoolsPerBeret : ℕ
  berets : ℕ
  hRed : redSpools = 12
  hBlack : blackSpools = 15
  hBlue : blueSpools = 6
  hTotal : totalSpools = redSpools + blackSpools + blueSpools
  hPerBeret : spoolsPerBeret = 3
  hBerets : totalSpools = berets * spoolsPerBeret
theorem berets_spools (m : Berets) : m.totalSpools = 33 := by
  have hRed := m.hRed
  have hBlack := m.hBlack
  have hBlue := m.hBlue
  have hTotal := m.hTotal
  have hPerBeret := m.hPerBeret
  have hBerets := m.hBerets
  simp_all <;> omega
theorem berets_solution (m : Berets) : m.berets = 11 := by
  have hRed := m.hRed
  have hBlack := m.hBlack
  have hBlue := m.hBlue
  have hTotal := m.hTotal
  have hPerBeret := m.hPerBeret
  have hBerets := m.hBerets
  simp_all <;> omega
structure CarCosts where
  oldSalePrice : ℕ
  remainingDebt : ℕ
  newCost : ℕ
  oldCost : ℕ
  hSale : oldSalePrice = 1800
  hDebt : remainingDebt = 2000
  hNewCost : newCost = oldSalePrice + remainingDebt
  hDouble : newCost = 2 * oldCost
theorem car_new_cost (m : CarCosts) : m.newCost = 3800 := by
  have hSale := m.hSale
  have hDebt := m.hDebt
  have hNewCost := m.hNewCost
  have hDouble := m.hDouble
  simp_all <;> omega
theorem car_solution (m : CarCosts) : m.oldCost = 1900 := by
  have hSale := m.hSale
  have hDebt := m.hDebt
  have hNewCost := m.hNewCost
  have hDouble := m.hDouble
  simp_all <;> omega
structure FinanceCharge where
  balanceCents : ℕ
  percent : ℕ
  chargeCents : ℕ
  totalCents : ℕ
  hBalance : balanceCents = 15000
  hPercent : percent = 2
  hCharge : 100 * chargeCents = percent * balanceCents
  hTotal : totalCents = balanceCents + chargeCents
theorem finance_charge (m : FinanceCharge) : m.chargeCents = 300 := by
  have hBalance := m.hBalance
  have hPercent := m.hPercent
  have hCharge := m.hCharge
  have hTotal := m.hTotal
  simp_all <;> omega
theorem finance_solution (m : FinanceCharge) : m.totalCents = 15300 := by
  have hBalance := m.hBalance
  have hPercent := m.hPercent
  have hCharge := m.hCharge
  have hTotal := m.hTotal
  simp_all <;> omega
end LemmaWeave.Problems.GSM8K.Sprint0927A06
