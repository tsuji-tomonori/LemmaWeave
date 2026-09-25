import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0922A13

structure CarOffers where
  inspection : ℕ
  firstEarn : ℕ
  tireCost : ℕ
  secondEarn : ℕ
  difference : ℕ
  hInspection : inspection * 10 = 5200
  hFirst : firstEarn + inspection = 5200
  hTires : tireCost = 3 * 80
  hSecond : secondEarn + 80 + tireCost = 5200
  hDifference : firstEarn + difference = secondEarn
theorem car_inspection (m : CarOffers) : m.inspection = 520 := by omega
theorem car_first_earn (m : CarOffers) : m.firstEarn = 4680 := by omega
theorem car_tires (m : CarOffers) : m.tireCost = 240 := by omega
theorem car_second_earn (m : CarOffers) : m.secondEarn = 4880 := by omega
theorem car_offers_solution (m : CarOffers) : m.difference = 200 := by omega

structure Compound where
  year1 : ℕ
  year2 : ℕ
  year3 : ℕ
  tripled : ℕ
  final : ℕ
  h1 : year1 * 100 = 10000 * 120
  h2 : year2 * 100 = year1 * 120
  h3 : year3 * 100 = year2 * 120
  hTripled : tripled = 3 * year3
  hFinal : final * 100 = tripled * 115
theorem compound_year1 (m : Compound) : m.year1 = 12000 := by omega
theorem compound_year2 (m : Compound) : m.year2 = 14400 := by
  have h := m.h2; rw [compound_year1 m] at h; omega
theorem compound_year3 (m : Compound) : m.year3 = 17280 := by
  have h := m.h3; rw [compound_year2 m] at h; omega
theorem compound_tripled (m : Compound) : m.tripled = 51840 := by
  rw [m.hTripled, compound_year3 m] <;> norm_num
theorem compound_solution (m : Compound) : m.final = 59616 := by
  have h := m.hFinal; rw [compound_tripled m] at h; omega

structure Flowers where
  total : ℕ
  bunches : ℕ
  hTotal : total = 8 * 9
  hBunches : bunches * 12 = total
theorem flowers_total (m : Flowers) : m.total = 72 := by rw [m.hTotal] <;> norm_num
theorem flowers_solution (m : Flowers) : m.bunches = 6 := by
  have h := m.hBunches; rw [flowers_total m] at h; omega

structure Collars where
  dog : ℕ
  cat : ℕ
  total : ℕ
  hDog : dog = 18 * 9
  hCat : cat = 10 * 3
  hTotal : total = dog + cat
theorem collars_dogs (m : Collars) : m.dog = 162 := by rw [m.hDog] <;> norm_num
theorem collars_cats (m : Collars) : m.cat = 30 := by rw [m.hCat] <;> norm_num
theorem collars_solution (m : Collars) : m.total = 192 := by
  rw [m.hTotal, collars_dogs m, collars_cats m] <;> norm_num

structure Situps where
  nathan : ℕ
  combined : ℕ
  bob : ℕ
  difference : ℕ
  hNathan : nathan = 2 * 20
  hCombined : combined = 20 + nathan
  hBob : bob * 2 = combined
  hDifference : difference + 20 = bob
theorem situps_nathan (m : Situps) : m.nathan = 40 := by rw [m.hNathan] <;> norm_num
theorem situps_combined (m : Situps) : m.combined = 60 := by
  rw [m.hCombined, situps_nathan m] <;> norm_num
theorem situps_bob (m : Situps) : m.bob = 30 := by
  have h := m.hBob; rw [situps_combined m] at h; omega
theorem situps_solution (m : Situps) : m.difference = 10 := by
  have h := m.hDifference; rw [situps_bob m] at h; omega

structure Bonus where
  kitchen : ℕ
  holiday : ℕ
  gifts : ℕ
  spent : ℕ
  remaining : ℕ
  hKitchen : kitchen * 22 = 1496
  hHoliday : holiday * 4 = 1496
  hGifts : gifts * 8 = 1496
  hSpent : spent = kitchen + holiday + gifts
  hRemaining : remaining + spent = 1496
theorem bonus_kitchen (m : Bonus) : m.kitchen = 68 := by omega
theorem bonus_holiday (m : Bonus) : m.holiday = 374 := by omega
theorem bonus_gifts (m : Bonus) : m.gifts = 187 := by omega
theorem bonus_spent (m : Bonus) : m.spent = 629 := by
  rw [m.hSpent, bonus_kitchen m, bonus_holiday m, bonus_gifts m] <;> norm_num
theorem bonus_solution (m : Bonus) : m.remaining = 867 := by
  have h := m.hRemaining; rw [bonus_spent m] at h; omega

structure Presents where
  toys : ℕ
  cards : ℕ
  shirts : ℕ
  total : ℕ
  hToys : toys = 3 * 10
  hCards : cards = 2 * 5
  hShirts : shirts = 5 * 6
  hTotal : total = toys + cards + shirts
theorem presents_toys (m : Presents) : m.toys = 30 := by rw [m.hToys] <;> norm_num
theorem presents_cards (m : Presents) : m.cards = 10 := by rw [m.hCards] <;> norm_num
theorem presents_shirts (m : Presents) : m.shirts = 30 := by rw [m.hShirts] <;> norm_num
theorem presents_solution (m : Presents) : m.total = 70 := by
  rw [m.hTotal, presents_toys m, presents_cards m, presents_shirts m] <;> norm_num

structure Flight where
  drive : ℕ
  airborne : ℕ
  airTotal : ℕ
  faster : ℕ
  hDrive : drive = 3 * 60 + 15
  hAirborne : airborne * 3 = drive
  hAirTotal : airTotal = 10 + 20 + airborne + 10
  hFaster : faster + airTotal = drive
theorem flight_drive (m : Flight) : m.drive = 195 := by rw [m.hDrive] <;> norm_num
theorem flight_airborne (m : Flight) : m.airborne = 65 := by
  have h := m.hAirborne; rw [flight_drive m] at h; omega
theorem flight_total (m : Flight) : m.airTotal = 105 := by
  rw [m.hAirTotal, flight_airborne m] <;> norm_num
theorem flight_solution (m : Flight) : m.faster = 90 := by
  have h := m.hFaster; rw [flight_drive m, flight_total m] at h; omega

structure Popcorn where
  unitProfit : ℕ
  totalProfit : ℕ
  hUnit : unitProfit + 4 = 8
  hTotal : totalProfit = 30 * unitProfit
theorem popcorn_unit_profit (m : Popcorn) : m.unitProfit = 4 := by omega
theorem popcorn_solution (m : Popcorn) : m.totalProfit = 120 := by
  rw [m.hTotal, popcorn_unit_profit m] <;> norm_num

structure Bugs where
  sprayed : ℕ
  eaten : ℕ
  remaining : ℕ
  hSprayed : sprayed * 100 = 400 * 80
  hEaten : eaten = 12 * 7
  hRemaining : remaining + eaten = sprayed
theorem bugs_sprayed (m : Bugs) : m.sprayed = 320 := by omega
theorem bugs_eaten (m : Bugs) : m.eaten = 84 := by rw [m.hEaten] <;> norm_num
theorem bugs_solution (m : Bugs) : m.remaining = 236 := by
  have h := m.hRemaining; rw [bugs_sprayed m, bugs_eaten m] at h; omega

structure Market where
  smallOunces : ℕ
  smallHalfPounds : ℕ
  totalHalfPounds : ℕ
  totalPounds : ℕ
  hSmallOunces : smallOunces = 3 * 8
  hSmallHalf : smallHalfPounds * 8 = smallOunces
  hTotalHalf : totalHalfPounds = smallHalfPounds + 2 + 2 + 4 + 3
  hPounds : totalPounds * 2 = totalHalfPounds
theorem market_small_ounces (m : Market) : m.smallOunces = 24 := by rw [m.hSmallOunces] <;> norm_num
theorem market_small_halfpounds (m : Market) : m.smallHalfPounds = 3 := by
  have h := m.hSmallHalf; rw [market_small_ounces m] at h; omega
theorem market_total_halfpounds (m : Market) : m.totalHalfPounds = 14 := by
  rw [m.hTotalHalf, market_small_halfpounds m] <;> norm_num
theorem market_solution (m : Market) : m.totalPounds = 7 := by
  have h := m.hPounds; rw [market_total_halfpounds m] at h; omega

structure Growth where
  daisies : ℕ
  sunflowers : ℕ
  total : ℕ
  flowering : ℕ
  hDaisies : daisies * 100 = 25 * 60
  hSunflowers : sunflowers * 100 = 25 * 80
  hTotal : total = daisies + sunflowers
  hFlowering : flowering * 100 = total * 80
theorem growth_daisies (m : Growth) : m.daisies = 15 := by omega
theorem growth_sunflowers (m : Growth) : m.sunflowers = 20 := by omega
theorem growth_total (m : Growth) : m.total = 35 := by
  rw [m.hTotal, growth_daisies m, growth_sunflowers m] <;> norm_num
theorem growth_solution (m : Growth) : m.flowering = 28 := by
  have h := m.hFlowering; rw [growth_total m] at h; omega

structure Timeouts where
  throwing : ℕ
  swearing : ℕ
  count : ℕ
  minutes : ℕ
  hThrowing : throwing + 1 = 5 * 5
  hSwearing : swearing * 3 = throwing
  hCount : count = 5 + throwing + swearing
  hMinutes : minutes = count * 5
theorem timeouts_throwing (m : Timeouts) : m.throwing = 24 := by omega
theorem timeouts_swearing (m : Timeouts) : m.swearing = 8 := by
  have h := m.hSwearing; rw [timeouts_throwing m] at h; omega
theorem timeouts_count (m : Timeouts) : m.count = 37 := by
  rw [m.hCount, timeouts_throwing m, timeouts_swearing m] <;> norm_num
theorem timeouts_solution (m : Timeouts) : m.minutes = 185 := by
  rw [m.hMinutes, timeouts_count m] <;> norm_num

structure Employees where
  men : ℕ
  women : ℕ
  hDifference : women = men + 20
  hTotal : men + women = 180
theorem employees_balance (m : Employees) : 2 * m.men + 20 = 180 := by omega
theorem employees_solution (m : Employees) : m.men = 80 := by omega

structure Soccer where
  secondEvents : ℕ
  secondNew : ℕ
  distinctPlayed : ℕ
  notPlayed : ℕ
  hSecondEvents : secondEvents = 2 * 2
  hSecondNewLe : secondNew ≤ secondEvents
  hPlayed : distinctPlayed = 11 + 2 + secondNew
  hNotPlayed : notPlayed + distinctPlayed = 24
theorem soccer_second_events (m : Soccer) : m.secondEvents = 4 := by rw [m.hSecondEvents] <;> norm_num
theorem soccer_bounds (m : Soccer) : 7 ≤ m.notPlayed ∧ m.notPlayed ≤ 11 := by
  have hs := m.hSecondNewLe
  rw [soccer_second_events m] at hs
  constructor <;> omega
theorem soccer_counterexample : ∃ m : Soccer, m.notPlayed = 11 := by
  refine ⟨{ secondEvents := 4, secondNew := 0, distinctPlayed := 13, notPlayed := 11,
    hSecondEvents := by norm_num, hSecondNewLe := by norm_num,
    hPlayed := by norm_num, hNotPlayed := by norm_num }, rfl⟩
theorem soccer_solution (m : Soccer) (hAllNew : m.secondNew = m.secondEvents) : m.notPlayed = 7 := by
  have hs := soccer_second_events m
  omega

end LemmaWeave.Problems.GSM8K.Sprint0922A13
