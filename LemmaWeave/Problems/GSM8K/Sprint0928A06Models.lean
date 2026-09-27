import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0928A06

structure ZooModel where
  seenLegs : Nat
  remainingLegs : Nat
  tarantulas : Nat
  hSeen : seenLegs = 12 * 4 + 8 * 4 + 5 * 4
  hRemaining : remainingLegs + seenLegs = 1100
  hTarantulas : 8 * tarantulas = remainingLegs

theorem zoo_seen_remaining (m : ZooModel) :
    m.seenLegs = 100 ∧ m.remainingLegs = 1000 := by
  constructor
  · have h := m.hSeen
    omega
  · have hs := m.hSeen
    have h := m.hRemaining
    omega

theorem zoo_tarantulas (m : ZooModel) : m.tarantulas = 125 := by
  rcases zoo_seen_remaining m with ⟨hs, hr⟩
  have h := m.hTarantulas
  omega

theorem zoo_solution (m : ZooModel) : m.tarantulas = 125 := by
  exact zoo_tarantulas m

structure DiscountModel where
  subtotal : Nat
  discounted : Nat
  hSubtotal : subtotal = 4 * 15 + 8 * 10
  hDiscount : 5 * discounted = 4 * subtotal

theorem discount_subtotal (m : DiscountModel) : m.subtotal = 140 := by
  have h := m.hSubtotal
  omega

theorem discount_total (m : DiscountModel) : m.discounted = 112 := by
  have hs := discount_subtotal m
  have h := m.hDiscount
  omega

theorem discount_solution (m : DiscountModel) : m.discounted = 112 := by
  exact discount_total m

structure CandyModel where
  spent : Nat
  left : Nat
  hSpent : spent = 4 * 2
  hLeft : left + spent = 20

theorem candy_spent (m : CandyModel) : m.spent = 8 := by
  have h := m.hSpent
  omega

theorem candy_left (m : CandyModel) : m.left = 12 := by
  have hs := candy_spent m
  have h := m.hLeft
  omega

theorem candy_solution (m : CandyModel) : m.left = 12 := by
  exact candy_left m

structure TearsModel where
  onions : Nat
  groups : Nat
  tears : Nat
  hOnions : onions = 4 * 6
  hGroups : 3 * groups = onions
  hTears : tears = 2 * groups

theorem tears_onions_groups (m : TearsModel) :
    m.onions = 24 ∧ m.groups = 8 := by
  constructor
  · have h := m.hOnions
    omega
  · have ho := m.hOnions
    have h := m.hGroups
    omega

theorem tears_total (m : TearsModel) : m.tears = 16 := by
  rcases tears_onions_groups m with ⟨ho, hg⟩
  have h := m.hTears
  omega

theorem tears_solution (m : TearsModel) : m.tears = 16 := by
  exact tears_total m

structure GerbilModel where
  muffy : Nat
  puffy : Nat
  scale : Nat
  hMuffy : muffy + 3 = 12
  hPuffy : puffy = muffy + 5
  hScale : scale = puffy + muffy

theorem gerbil_weights (m : GerbilModel) :
    m.muffy = 9 ∧ m.puffy = 14 := by
  constructor
  · have h := m.hMuffy
    omega
  · have hm := m.hMuffy
    have h := m.hPuffy
    omega

theorem gerbil_scale (m : GerbilModel) : m.scale = 23 := by
  rcases gerbil_weights m with ⟨hm, hp⟩
  have h := m.hScale
  omega

theorem gerbil_solution (m : GerbilModel) : m.scale = 23 := by
  exact gerbil_scale m

structure VegetablesModel where
  beefUsed : Nat
  vegetables : Nat
  hBeef : beefUsed + 1 = 4
  hVegetables : vegetables = 2 * beefUsed

theorem vegetables_beef (m : VegetablesModel) : m.beefUsed = 3 := by
  have h := m.hBeef
  omega

theorem vegetables_total (m : VegetablesModel) : m.vegetables = 6 := by
  have hb := vegetables_beef m
  have h := m.hVegetables
  omega

theorem vegetables_solution (m : VegetablesModel) : m.vegetables = 6 := by
  exact vegetables_total m

structure DressingModel where
  firstFour : Nat
  targetWeek : Nat
  friday : Nat
  hFirstFour : firstFour = 2 + 4 + 3 + 4
  hTarget : targetWeek = 5 * 3
  hFriday : firstFour + friday = targetWeek

theorem dressing_totals (m : DressingModel) :
    m.firstFour = 13 ∧ m.targetWeek = 15 := by
  constructor
  · have h := m.hFirstFour
    omega
  · have h := m.hTarget
    omega

theorem dressing_friday (m : DressingModel) : m.friday = 2 := by
  rcases dressing_totals m with ⟨hf, ht⟩
  have h := m.hFriday
  omega

theorem dressing_solution (m : DressingModel) : m.friday = 2 := by
  exact dressing_friday m

structure DepartureModel where
  robTravel : Nat
  markTravel : Nat
  arrivalHour : Nat
  markLeaveHour : Nat
  hRobTravel : robTravel = 1
  hMarkTravel : markTravel = 3 * robTravel
  hArrival : arrivalHour = 11 + robTravel
  hMarkLeave : markLeaveHour + markTravel = arrivalHour

theorem departure_travel_arrival (m : DepartureModel) :
    m.markTravel = 3 ∧ m.arrivalHour = 12 := by
  constructor
  · have hr := m.hRobTravel
    have h := m.hMarkTravel
    omega
  · have hr := m.hRobTravel
    have h := m.hArrival
    omega

theorem departure_mark (m : DepartureModel) : m.markLeaveHour = 9 := by
  rcases departure_travel_arrival m with ⟨ht, ha⟩
  have h := m.hMarkLeave
  omega

theorem departure_solution (m : DepartureModel) : m.markLeaveHour = 9 := by
  exact departure_mark m

structure PropertyModel where
  increase : Nat
  railValue : Nat
  maxValue : Nat
  improvements : Nat
  hIncrease : 4 * increase = 400000
  hRailValue : railValue = 400000 + increase
  hMaxValue : 2 * maxValue = 100 * 15000
  hImprovements : improvements + railValue = maxValue

theorem property_after_rail (m : PropertyModel) : m.railValue = 500000 := by
  have hi := m.hIncrease
  have h := m.hRailValue
  omega

theorem property_max_value (m : PropertyModel) : m.maxValue = 750000 := by
  have h := m.hMaxValue
  omega

theorem property_improvements (m : PropertyModel) : m.improvements = 250000 := by
  have hr := property_after_rail m
  have hm := property_max_value m
  have h := m.hImprovements
  omega

theorem property_solution (m : PropertyModel) : m.improvements = 250000 := by
  exact property_improvements m

structure CrayonsModel where
  red : Nat
  total : Nat
  hRed : red = 4 * 3
  hTotal : total = red + 3

theorem crayons_red (m : CrayonsModel) : m.red = 12 := by
  have h := m.hRed
  omega

theorem crayons_total (m : CrayonsModel) : m.total = 15 := by
  have hr := crayons_red m
  have h := m.hTotal
  omega

theorem crayons_solution (m : CrayonsModel) : m.total = 15 := by
  exact crayons_total m

structure MiceModel where
  babies : Nat
  given : Nat
  petStore : Nat
  afterFirstSales : Nat
  feeders : Nat
  left : Nat
  hBabies : babies = 3 * 8
  hGiven : 6 * given = babies
  hPetStore : petStore = 3 * given
  hAfter : afterFirstSales + given + petStore = babies
  hFeeders : 2 * feeders = afterFirstSales
  hLeft : left + feeders = afterFirstSales

theorem mice_initial_disposals (m : MiceModel) :
    m.babies = 24 ∧ m.given = 4 ∧ m.petStore = 12 := by
  constructor
  · have h := m.hBabies
    omega
  · constructor
    · have hb := m.hBabies
      have h := m.hGiven
      omega
    · have hb := m.hBabies
      have hg := m.hGiven
      have h := m.hPetStore
      omega

theorem mice_after_first_sales (m : MiceModel) : m.afterFirstSales = 8 := by
  rcases mice_initial_disposals m with ⟨hb, hg, hp⟩
  have h := m.hAfter
  omega

theorem mice_left (m : MiceModel) : m.left = 4 := by
  have ha := mice_after_first_sales m
  have hf := m.hFeeders
  have h := m.hLeft
  omega

theorem mice_solution (m : MiceModel) : m.left = 4 := by
  exact mice_left m

structure MagazineModel where
  unitProfitCents : Nat
  totalProfitCents : Nat
  hUnit : unitProfitCents + 300 = 350
  hTotal : totalProfitCents = 10 * unitProfitCents

theorem magazine_unit_profit (m : MagazineModel) : m.unitProfitCents = 50 := by
  have h := m.hUnit
  omega

theorem magazine_total_profit (m : MagazineModel) : m.totalProfitCents = 500 := by
  have hu := magazine_unit_profit m
  have h := m.hTotal
  omega

theorem magazine_solution (m : MagazineModel) : m.totalProfitCents = 500 := by
  exact magazine_total_profit m

structure MechanicModel where
  groceries : Nat
  total : Nat
  hMechanic : 350 = 3 * groceries + 50
  hTotal : total = groceries + 350

theorem mechanic_groceries (m : MechanicModel) : m.groceries = 100 := by
  have h := m.hMechanic
  omega

theorem mechanic_total (m : MechanicModel) : m.total = 450 := by
  have hg := mechanic_groceries m
  have h := m.hTotal
  omega

theorem mechanic_solution (m : MechanicModel) : m.total = 450 := by
  exact mechanic_total m

structure ShoppingModel where
  tripMinutes : Nat
  waiting : Nat
  shopping : Nat
  hTrip : tripMinutes = 90
  hWaiting : waiting = 3 + 13 + 14 + 18
  hShopping : shopping + waiting = tripMinutes

theorem shopping_trip_wait (m : ShoppingModel) :
    m.tripMinutes = 90 ∧ m.waiting = 48 := by
  constructor
  · exact m.hTrip
  · have h := m.hWaiting
    omega

theorem shopping_minutes (m : ShoppingModel) : m.shopping = 42 := by
  rcases shopping_trip_wait m with ⟨ht, hw⟩
  have h := m.hShopping
  omega

theorem shopping_solution (m : ShoppingModel) : m.shopping = 42 := by
  exact shopping_minutes m

structure AgeModel where
  futureTerry : Nat
  currentTerry : Nat
  hFuture : futureTerry = 4 * 10
  hCurrent : currentTerry + 10 = futureTerry

theorem age_future (m : AgeModel) : m.futureTerry = 40 := by
  have h := m.hFuture
  omega

theorem age_current (m : AgeModel) : m.currentTerry = 30 := by
  have hf := age_future m
  have h := m.hCurrent
  omega

theorem age_solution (m : AgeModel) : m.currentTerry = 30 := by
  exact age_current m

end LemmaWeave.Problems.GSM8K.Sprint0928A06
