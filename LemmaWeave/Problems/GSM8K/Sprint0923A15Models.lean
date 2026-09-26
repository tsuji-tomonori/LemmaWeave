import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0923A15

structure CornCobs where
  pounds : ℕ
  halfPounds : ℕ
  cobs : ℕ
  hPounds : pounds = 2 * 56
  hHalfPounds : halfPounds = 2 * pounds
  hCobs : cobs = halfPounds

theorem corn_pounds (m : CornCobs) : m.pounds = 112 := by rw [m.hPounds]
theorem corn_half_units (m : CornCobs) : m.halfPounds = 224 := by rw [m.hHalfPounds, corn_pounds m]
theorem corn_solution (m : CornCobs) : m.cobs = 224 := by rw [m.hCobs, corn_half_units m]

/-- Reference reading: pet owners own either a dog or a cat, with no other category. -/
structure PetTownReference where
  petOwners : ℕ
  dogOwners : ℕ
  catOwners : ℕ
  citizens : ℕ
  hCats : catOwners = 30
  hDogs : dogOwners * 2 = petOwners
  hPartition : dogOwners + catOwners = petOwners
  hTown : petOwners * 100 = citizens * 60

theorem pets_reference_owners (m : PetTownReference) : m.petOwners = 60 := by cases m <;> omega
theorem pets_reference_solution (m : PetTownReference) : m.citizens = 100 := by cases m <;> omega
/-- With other pet types allowed, 200 citizens, 120 pet owners, 60 dog owners and 30 cat owners satisfy the explicit rates. -/
theorem pets_other_type_countermodel :
    (120 * 100 = 200 * 60) ∧ (60 * 2 = 120) ∧ (30 : ℕ) ≤ 120 := by norm_num
theorem pets_population_not_unique : (100 : ℕ) ≠ 200 := by norm_num

structure WatermelonSlices where
  danny : ℕ
  sister : ℕ
  total : ℕ
  hDanny : danny = 3 * 10
  hSister : sister = 1 * 15
  hTotal : total = danny + sister

theorem melon_danny (m : WatermelonSlices) : m.danny = 30 := by rw [m.hDanny]
theorem melon_sister (m : WatermelonSlices) : m.sister = 15 := by rw [m.hSister]
theorem melon_solution (m : WatermelonSlices) : m.total = 45 := by rw [m.hTotal, melon_danny m, melon_sister m]

structure Reunion where
  women : ℕ
  adults : ℕ
  children : ℕ
  total : ℕ
  hWomen : women = 100 + 50
  hAdults : adults = 100 + women
  hChildren : children = 2 * adults
  hTotal : total = adults + children

theorem reunion_women (m : Reunion) : m.women = 150 := by rw [m.hWomen]
theorem reunion_adults (m : Reunion) : m.adults = 250 := by rw [m.hAdults, reunion_women m]
theorem reunion_children (m : Reunion) : m.children = 500 := by rw [m.hChildren, reunion_adults m]
theorem reunion_solution (m : Reunion) : m.total = 750 := by rw [m.hTotal, reunion_adults m, reunion_children m]

structure HousePrice where
  first : ℕ
  second : ℕ
  hSecond : second = 2 * first
  hTotal : first + second = 600000

theorem house_solution (m : HousePrice) : m.first = 200000 := by cases m <;> omega

structure ReadingDifference where
  days : ℕ
  dailyDifference : ℕ
  totalDifference : ℕ
  hDays : days = 6 * 7
  hDaily : dailyDifference = 80 - 30
  hTotal : totalDifference = dailyDifference * days

theorem reading_days (m : ReadingDifference) : m.days = 42 := by rw [m.hDays]
theorem reading_daily (m : ReadingDifference) : m.dailyDifference = 50 := by rw [m.hDaily]
theorem reading_solution (m : ReadingDifference) : m.totalDifference = 2100 := by
  rw [m.hTotal, reading_daily m, reading_days m]

/-- All durations are represented in minutes. -/
structure TheaterHours where
  movieMinutes : ℕ
  adMinutes : ℕ
  showMinutes : ℕ
  dailyMinutes : ℕ
  hMovie : movieMinutes = 90
  hAd : adMinutes = 20
  hShow : showMinutes = movieMinutes + adMinutes
  hDaily : dailyMinutes = 6 * showMinutes

theorem theater_show (m : TheaterHours) : m.showMinutes = 110 := by rw [m.hShow, m.hMovie, m.hAd]
theorem theater_minutes (m : TheaterHours) : m.dailyMinutes = 660 := by rw [m.hDaily, theater_show m]
theorem theater_solution (m : TheaterHours) : m.dailyMinutes / 60 = 11 := by rw [theater_minutes m]

structure DogLegs where
  cats : ℕ
  dogs : ℕ
  legs : ℕ
  hCats : cats * 3 = 2 * 300
  hDogs : dogs + cats = 300
  hLegs : legs = dogs * 4

theorem animals_cats (m : DogLegs) : m.cats = 200 := by cases m <;> omega
theorem animals_dogs (m : DogLegs) : m.dogs = 100 := by cases m <;> omega
theorem animals_solution (m : DogLegs) : m.legs = 400 := by rw [m.hLegs, animals_dogs m]

structure CupcakeCousins where
  cupcakes : ℕ
  cousins : ℕ
  hCupcakes : cupcakes = 4 * 12
  hCousins : cousins * 3 = cupcakes

theorem cupcakes_total (m : CupcakeCousins) : m.cupcakes = 48 := by rw [m.hCupcakes]
theorem cupcakes_solution (m : CupcakeCousins) : m.cousins = 16 := by cases m <;> omega

structure AlbertaTrip where
  distance : ℕ
  hours : ℕ
  hDistance : distance = 220 + 110
  hHours : hours * 110 = distance

theorem alberta_distance (m : AlbertaTrip) : m.distance = 330 := by rw [m.hDistance]
theorem alberta_solution (m : AlbertaTrip) : m.hours = 3 := by cases m <;> omega

structure FutureAge where
  phoebeFuture : ℕ
  ravenFuture : ℕ
  ravenNow : ℕ
  hPhoebe : phoebeFuture = 10 + 5
  hRavenFuture : ravenFuture = 4 * phoebeFuture
  hRavenNow : ravenNow + 5 = ravenFuture

theorem age_phoebe_future (m : FutureAge) : m.phoebeFuture = 15 := by rw [m.hPhoebe]
theorem age_raven_future (m : FutureAge) : m.ravenFuture = 60 := by rw [m.hRavenFuture, age_phoebe_future m]
theorem age_solution (m : FutureAge) : m.ravenNow = 55 := by cases m <;> omega

structure CoinCount where
  dimes : ℕ
  quarters : ℕ
  addedNickels : ℕ
  nickels : ℕ
  total : ℕ
  hDimes : dimes = 2 + 2
  hQuarters : quarters = 6 + 10
  hAddedNickels : addedNickels = 2 * 5
  hNickels : nickels = 5 + addedNickels
  hTotal : total = dimes + quarters + nickels

theorem coin_dimes (m : CoinCount) : m.dimes = 4 := by rw [m.hDimes]
theorem coin_quarters (m : CoinCount) : m.quarters = 16 := by rw [m.hQuarters]
theorem coin_added_nickels (m : CoinCount) : m.addedNickels = 10 := by rw [m.hAddedNickels]
theorem coin_nickels (m : CoinCount) : m.nickels = 15 := by rw [m.hNickels, coin_added_nickels m]
theorem coin_solution (m : CoinCount) : m.total = 35 := by
  rw [m.hTotal, coin_dimes m, coin_quarters m, coin_nickels m]

structure Embroidery where
  flowerStitches : ℕ
  unicornStitches : ℕ
  totalStitches : ℕ
  minutes : ℕ
  hFlowers : flowerStitches = 50 * 60
  hUnicorns : unicornStitches = 3 * 180
  hTotal : totalStitches = 800 + unicornStitches + flowerStitches
  hMinutes : minutes * 4 = totalStitches

theorem embroidery_flowers (m : Embroidery) : m.flowerStitches = 3000 := by rw [m.hFlowers]
theorem embroidery_unicorns (m : Embroidery) : m.unicornStitches = 540 := by rw [m.hUnicorns]
theorem embroidery_total (m : Embroidery) : m.totalStitches = 4340 := by
  rw [m.hTotal, embroidery_unicorns m, embroidery_flowers m]
theorem embroidery_solution (m : Embroidery) : m.minutes = 1085 := by cases m <;> omega

structure Playground where
  stayed : ℕ
  playground : ℕ
  boys : ℕ
  girls : ℕ
  hStayed : stayed * 4 = 20
  hPlayground : playground + stayed = 20
  hBoys : boys * 3 = playground
  hGirls : girls + boys = playground

theorem playground_stayed (m : Playground) : m.stayed = 5 := by cases m <;> omega
theorem playground_total (m : Playground) : m.playground = 15 := by cases m <;> omega
theorem playground_boys (m : Playground) : m.boys = 5 := by cases m <;> omega
theorem playground_solution (m : Playground) : m.girls = 10 := by cases m <;> omega

/-- Reference reading: 200, 300, 170 and 440 feet are consecutive race segments. -/
structure RaceSegments where
  covered : ℕ
  remaining : ℕ
  hCovered : covered = 200 + 300 + 170 + 440
  hRemaining : remaining + covered = 5000

theorem race_covered (m : RaceSegments) : m.covered = 1110 := by rw [m.hCovered]
theorem race_reference_solution (m : RaceSegments) : m.remaining = 3890 := by cases m <;> omega
/-- If the numbers are lead margins, the final 440-foot lead does not determine absolute positions. -/
theorem race_lead_countermodels :
    ((1000 - 560 = 440) ∧ (5000 - 560 = 4440)) ∧
    ((2000 - 1560 = 440) ∧ (5000 - 1560 = 3440)) := by norm_num
theorem race_remaining_not_unique : (4440 : ℕ) ≠ 3440 := by norm_num

end LemmaWeave.Problems.GSM8K.Sprint0923A15
