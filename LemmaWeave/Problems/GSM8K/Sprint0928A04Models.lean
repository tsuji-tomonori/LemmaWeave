import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0928A04

structure TennisModel where
  minutes : Nat
  points : Nat
  «matches» : Nat
  hMinutes : minutes = 2 * 60
  hPoints : 5 * points = minutes
  hMatches : 8 * «matches» = points

theorem tennis_minutes_points (m : TennisModel) :
    m.minutes = 120 ∧ m.points = 24 := by
  constructor
  · have h := m.hMinutes
    omega
  · have hm := m.hMinutes
    have hp := m.hPoints
    omega

theorem tennis_matches (m : TennisModel) : m.matches = 3 := by
  rcases tennis_minutes_points m with ⟨hm, hp⟩
  have h := m.hMatches
  omega

theorem tennis_solution (m : TennisModel) : m.matches = 3 := by
  exact tennis_matches m

structure PlantsModel where
  eggplants : Nat
  sunflowers : Nat
  total : Nat
  hEggplants : eggplants = 14 * 4
  hSunflowers : sunflowers = 10 * 6
  hTotal : total = eggplants + sunflowers

theorem plants_by_type (m : PlantsModel) :
    m.eggplants = 56 ∧ m.sunflowers = 60 := by
  constructor
  · have h := m.hEggplants
    omega
  · have h := m.hSunflowers
    omega

theorem plants_total (m : PlantsModel) : m.total = 116 := by
  rcases plants_by_type m with ⟨he, hs⟩
  have h := m.hTotal
  omega

theorem plants_solution (m : PlantsModel) : m.total = 116 := by
  exact plants_total m

structure SiblingsModel where
  jessicaNow : Nat
  jamesNow : Nat
  jamesLater : Nat
  hJessica : jessicaNow = 26 + 6
  hJames : jamesNow = jessicaNow + 7
  hLater : jamesLater = jamesNow + 5

theorem siblings_current_ages (m : SiblingsModel) :
    m.jessicaNow = 32 ∧ m.jamesNow = 39 := by
  constructor
  · have h := m.hJessica
    omega
  · have hj := m.hJessica
    have h := m.hJames
    omega

theorem siblings_later (m : SiblingsModel) : m.jamesLater = 44 := by
  rcases siblings_current_ages m with ⟨hj, hja⟩
  have h := m.hLater
  omega

theorem siblings_solution (m : SiblingsModel) : m.jamesLater = 44 := by
  exact siblings_later m

structure TicketsModel where
  firstTickets : Nat
  remainingDays : Nat
  remainingTickets : Nat
  dailyAverage : Nat
  hFirst : firstTickets = 15 * 8
  hDays : remainingDays = 31 - 15
  hRemaining : remainingTickets + firstTickets = 200
  hAverage : dailyAverage * remainingDays = remainingTickets

theorem tickets_first_days (m : TicketsModel) :
    m.firstTickets = 120 ∧ m.remainingDays = 16 := by
  constructor
  · have h := m.hFirst
    omega
  · have h := m.hDays
    omega

theorem tickets_remaining (m : TicketsModel) : m.remainingTickets = 80 := by
  rcases tickets_first_days m with ⟨hf, hd⟩
  have h := m.hRemaining
  omega

theorem tickets_average (m : TicketsModel) : m.dailyAverage = 5 := by
  have hd := (tickets_first_days m).2
  have h := m.hAverage
  rw [hd, tickets_remaining m] at h
  omega

theorem tickets_solution (m : TicketsModel) : m.dailyAverage = 5 := by
  exact tickets_average m

structure CapsModel where
  halfJack : Nat
  charlie : Nat
  bill : Nat
  hHalf : 2 * halfJack = 12
  hCharlie : charlie = halfJack + 9
  hBill : 3 * bill = 2 * charlie

theorem caps_charlie (m : CapsModel) : m.charlie = 15 := by
  have hh := m.hHalf
  have hc := m.hCharlie
  omega

theorem caps_bill (m : CapsModel) : m.bill = 10 := by
  have hc := caps_charlie m
  have h := m.hBill
  omega

theorem caps_solution (m : CapsModel) : m.bill = 10 := by
  exact caps_bill m

structure LampsModel where
  bulbPrice : Nat
  lampCost : Nat
  bulbCost : Nat
  total : Nat
  hBulbPrice : bulbPrice + 4 = 7
  hLampCost : lampCost = 2 * 7
  hBulbCost : bulbCost = 6 * bulbPrice
  hTotal : total = lampCost + bulbCost

theorem lamps_unit_and_subtotals (m : LampsModel) :
    m.bulbPrice = 3 ∧ m.lampCost = 14 ∧ m.bulbCost = 18 := by
  constructor
  · have h := m.hBulbPrice
    omega
  · constructor
    · have h := m.hLampCost
      omega
    · have hp := m.hBulbPrice
      have h := m.hBulbCost
      omega

theorem lamps_total (m : LampsModel) : m.total = 32 := by
  rcases lamps_unit_and_subtotals m with ⟨hp, hl, hb⟩
  have h := m.hTotal
  omega

theorem lamps_solution (m : LampsModel) : m.total = 32 := by
  exact lamps_total m

structure CoffeeModel where
  ivoryHourly : Nat
  combinedHourly : Nat
  total : Nat
  hTwice : 2 * ivoryHourly = 4
  hCombined : combinedHourly = 4 + ivoryHourly
  hTotal : total = 5 * combinedHourly

theorem coffee_hourly (m : CoffeeModel) :
    m.ivoryHourly = 2 ∧ m.combinedHourly = 6 := by
  constructor
  · have h := m.hTwice
    omega
  · have hi := m.hTwice
    have h := m.hCombined
    omega

theorem coffee_total (m : CoffeeModel) : m.total = 30 := by
  rcases coffee_hourly m with ⟨hi, hc⟩
  have h := m.hTotal
  omega

theorem coffee_solution (m : CoffeeModel) : m.total = 30 := by
  exact coffee_total m

structure LapsModel where
  quarterMiles : Nat
  laps : Nat
  hDistance : quarterMiles = 3 * 4 + 1
  hLaps : laps = quarterMiles

theorem laps_quarters (m : LapsModel) : m.quarterMiles = 13 := by
  have h := m.hDistance
  omega

theorem laps_total (m : LapsModel) : m.laps = 13 := by
  have hq := laps_quarters m
  have h := m.hLaps
  omega

theorem laps_solution (m : LapsModel) : m.laps = 13 := by
  exact laps_total m

structure OlafConventionalModel where
  olaf : Nat
  total : Nat
  hOlaf : olaf = 3 * 7
  hTotal : total = olaf + 7

theorem olaf_conventional_total (m : OlafConventionalModel) : m.total = 28 := by
  have ho := m.hOlaf
  have h := m.hTotal
  omega

structure OlafLiteralModel where
  olaf : Nat
  total : Nat
  hOlaf : olaf = 7 + 3 * 7
  hTotal : total = olaf + 7

theorem olaf_literal_total (m : OlafLiteralModel) : m.total = 35 := by
  have ho := m.hOlaf
  have h := m.hTotal
  omega

theorem olaf_readings_differ : (28 : Nat) ≠ 35 := by
  norm_num

theorem olaf_solution (m : OlafConventionalModel) :
    m.total = 28 ∧ (28 : Nat) ≠ 35 := by
  constructor
  · exact olaf_conventional_total m
  · exact olaf_readings_differ

structure PastryModel where
  cupcakePriceCents : Nat
  cookiePriceCents : Nat
  cupcakeRevenueCents : Nat
  cookieRevenueCents : Nat
  totalCents : Nat
  hCupcakePrice : 2 * cupcakePriceCents = 300
  hCookiePrice : 2 * cookiePriceCents = 200
  hCupcakeRevenue : cupcakeRevenueCents = 16 * cupcakePriceCents
  hCookieRevenue : cookieRevenueCents = 8 * cookiePriceCents
  hTotal : totalCents = cupcakeRevenueCents + cookieRevenueCents

theorem pastry_prices (m : PastryModel) :
    m.cupcakePriceCents = 150 ∧ m.cookiePriceCents = 100 := by
  constructor
  · have h := m.hCupcakePrice
    omega
  · have h := m.hCookiePrice
    omega

theorem pastry_revenues (m : PastryModel) :
    m.cupcakeRevenueCents = 2400 ∧ m.cookieRevenueCents = 800 := by
  rcases pastry_prices m with ⟨hcp, hkp⟩
  constructor
  · have h := m.hCupcakeRevenue
    omega
  · have h := m.hCookieRevenue
    omega

theorem pastry_total (m : PastryModel) : m.totalCents = 3200 := by
  rcases pastry_revenues m with ⟨hc, hk⟩
  have h := m.hTotal
  omega

theorem pastry_solution (m : PastryModel) : m.totalCents = 3200 := by
  exact pastry_total m

structure RaceModel where
  manuSeconds : Nat
  amySeconds : Nat
  hManu : manuSeconds = 60 + 12
  hAmy : 2 * amySeconds = manuSeconds

theorem race_manu (m : RaceModel) : m.manuSeconds = 72 := by
  have h := m.hManu
  omega

theorem race_amy (m : RaceModel) : m.amySeconds = 36 := by
  have hm := race_manu m
  have h := m.hAmy
  omega

theorem race_solution (m : RaceModel) : m.amySeconds = 36 := by
  exact race_amy m

structure LizardModel where
  ratePerSecond : Nat
  seconds : Nat
  hRate : 10 * ratePerSecond = 40
  hTime : seconds * ratePerSecond = 800

theorem lizard_rate (m : LizardModel) : m.ratePerSecond = 4 := by
  have h := m.hRate
  omega

theorem lizard_time (m : LizardModel) : m.seconds = 200 := by
  have h := m.hTime
  rw [lizard_rate m] at h
  omega

theorem lizard_solution (m : LizardModel) : m.seconds = 200 := by
  exact lizard_time m

structure ChairsModel where
  platesCost : Nat
  paid : Nat
  chairsCost : Nat
  chairPrice : Nat
  hPlates : platesCost = 2 * 20
  hPaid : paid + 4 = 130
  hChairs : chairsCost + 50 + platesCost = paid
  hEach : 3 * chairPrice = chairsCost

theorem chairs_fixed_and_paid (m : ChairsModel) :
    m.platesCost = 40 ∧ m.paid = 126 := by
  constructor
  · have h := m.hPlates
    omega
  · have h := m.hPaid
    omega

theorem chairs_subtotal (m : ChairsModel) : m.chairsCost = 36 := by
  rcases chairs_fixed_and_paid m with ⟨hp, hpaid⟩
  have h := m.hChairs
  omega

theorem chairs_each (m : ChairsModel) : m.chairPrice = 12 := by
  have hc := chairs_subtotal m
  have h := m.hEach
  omega

theorem chairs_solution (m : ChairsModel) : m.chairPrice = 12 := by
  exact chairs_each m

structure PurchaseModel where
  notebooksCents : Nat
  pensCents : Nat
  spentCents : Nat
  leftCents : Nat
  hNotebooks : notebooksCents = 2 * 400
  hPens : pensCents = 2 * 150
  hSpent : spentCents = notebooksCents + pensCents
  hLeft : leftCents + spentCents = 1500

theorem purchase_subtotals (m : PurchaseModel) :
    m.notebooksCents = 800 ∧ m.pensCents = 300 := by
  constructor
  · have h := m.hNotebooks
    omega
  · have h := m.hPens
    omega

theorem purchase_spent (m : PurchaseModel) : m.spentCents = 1100 := by
  rcases purchase_subtotals m with ⟨hn, hp⟩
  have h := m.hSpent
  omega

theorem purchase_left (m : PurchaseModel) : m.leftCents = 400 := by
  have hs := purchase_spent m
  have h := m.hLeft
  omega

theorem purchase_solution (m : PurchaseModel) : m.leftCents = 400 := by
  exact purchase_left m

structure WeddingModel where
  extraGuests : Nat
  guests : Nat
  guestCost : Nat
  total : Nat
  hExtra : 100 * extraGuests = 60 * 50
  hGuests : guests = 50 + extraGuests
  hGuestCost : guestCost = guests * 500
  hTotal : total = 10000 + guestCost

theorem wedding_guest_count (m : WeddingModel) : m.guests = 80 := by
  have he := m.hExtra
  have h := m.hGuests
  omega

theorem wedding_guest_cost (m : WeddingModel) : m.guestCost = 40000 := by
  have hg := wedding_guest_count m
  have h := m.hGuestCost
  omega

theorem wedding_total (m : WeddingModel) : m.total = 50000 := by
  have hc := wedding_guest_cost m
  have h := m.hTotal
  omega

theorem wedding_solution (m : WeddingModel) : m.total = 50000 := by
  exact wedding_total m

end LemmaWeave.Problems.GSM8K.Sprint0928A04
