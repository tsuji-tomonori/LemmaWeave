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
theorem brew_batch_ounces (m : ColdBrew) : m.batchOunces = 192 := by cases m; omega
theorem brew_daily_ounces (m : ColdBrew) : m.dailyOunces = 48 := by cases m; omega
theorem brew_days_per_batch (m : ColdBrew) : m.daysPerBatch = 4 := by cases m; omega
theorem brew_batches (m : ColdBrew) : m.batches = 6 := by cases m; omega
theorem brew_solution (m : ColdBrew) : m.totalHours = 120 := by cases m; omega
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
theorem line_total (m : FishingLine) : m.totalMeters = 300 := by cases m; omega
theorem line_solution (m : FishingLine) : m.sections = 30 := by cases m; omega
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
theorem port_cargo (m : PortConventional) : m.cargo = 8 := by cases m; omega
theorem port_sailboats (m : PortConventional) : m.sailboats = 14 := by cases m; omega
theorem port_fishing (m : PortConventional) : m.fishing = 2 := by cases m; omega
theorem port_conventional_total (m : PortConventional) : m.total = 28 := by cases m; omega
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
theorem shoes_total (m : Horseshoes) : m.totalShoes = 200 := by cases m; omega
theorem shoes_farm_horses (m : Horseshoes) : m.farmHorses = 4 := by cases m; omega
theorem shoes_stable_horses (m : Horseshoes) : m.stableHorses = 10 := by cases m; omega
theorem shoes_ordered (m : Horseshoes) : m.orderedShoes = 56 := by cases m; omega
theorem shoes_leftover (m : Horseshoes) : m.leftoverShoes = 144 := by cases m; omega
theorem shoes_solution (m : Horseshoes) : m.schoolHorses = 36 := by cases m; omega
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
theorem nancy_hourly (m : NancyWork) : m.hourlyPay = 7 := by cases m; omega
theorem nancy_solution (m : NancyWork) : m.targetHours = 10 := by cases m; omega
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
theorem duke_game_points (m : DukeGame) : m.gamePoints = 22 := by cases m; omega
theorem duke_three_point_points (m : DukeGame) : m.threePointPoints = 9 := by cases m; omega
theorem duke_three_pointers (m : DukeGame) : m.threePointers = 3 := by cases m; omega
theorem duke_solution (m : DukeGame) : m.additional = 1 := by cases m; omega
structure Dolls where
  ivy : ℕ
  collectors : ℕ
  dina : ℕ
  hCollectors : collectors = 20
  hFraction : 3 * collectors = 2 * ivy
  hDina : dina = 2 * ivy
theorem dolls_ivy (m : Dolls) : m.ivy = 30 := by cases m; omega
theorem dolls_solution (m : Dolls) : m.dina = 60 := by cases m; omega
structure SleepHours where
  connor : ℕ
  luke : ℕ
  puppy : ℕ
  hConnor : connor = 6
  hLuke : luke = connor + 2
  hPuppy : puppy = 2 * luke
theorem sleep_luke (m : SleepHours) : m.luke = 8 := by cases m; omega
theorem sleep_solution (m : SleepHours) : m.puppy = 16 := by cases m; omega
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
theorem apples_intended_solution (m : ApplesIntended) : m.totalCents = 4500 := by cases m; omega

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
theorem planet_other_percent (m : PlanetComposition) : m.otherPercent = 30 := by cases m; omega
theorem planet_mars_mass (m : PlanetComposition) : m.marsTons = 500 := by cases m; omega
theorem planet_solution (m : PlanetComposition) : m.moonTons = 250 := by cases m; omega
end LemmaWeave.Problems.GSM8K.Sprint0927A06
