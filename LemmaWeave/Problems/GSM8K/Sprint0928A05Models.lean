import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0928A05

structure CrossingModel where
  oneWayHours : Nat
  roundTripHours : Nat
  totalCost : Nat
  hOneWay : oneWayHours = 4
  hRoundTrip : roundTripHours = 2 * oneWayHours
  hCost : totalCost = 10 * roundTripHours

theorem crossing_hours (m : CrossingModel) : m.roundTripHours = 8 := by
  have ho := m.hOneWay
  have h := m.hRoundTrip
  omega

theorem crossing_cost (m : CrossingModel) : m.totalCost = 80 := by
  have hh := crossing_hours m
  have h := m.hCost
  omega

theorem crossing_solution (m : CrossingModel) : m.totalCost = 80 := by
  exact crossing_cost m

structure WaterModel where
  planned : Nat
  spilled : Nat
  drank : Nat
  hPlanned : planned = 20 * 3 * 7
  hSpilled : spilled = 5 + 8
  hDrank : drank + spilled = planned

theorem water_planned_spilled (m : WaterModel) :
    m.planned = 420 ∧ m.spilled = 13 := by
  constructor
  · have h := m.hPlanned
    omega
  · have h := m.hSpilled
    omega

theorem water_drank (m : WaterModel) : m.drank = 407 := by
  rcases water_planned_spilled m with ⟨hp, hs⟩
  have h := m.hDrank
  omega

theorem water_solution (m : WaterModel) : m.drank = 407 := by
  exact water_drank m

structure BudgetModel where
  utilities : Nat
  insurance : Nat
  fixedBills : Nat
  left : Nat
  hUtilities : 4 * utilities = 6000
  hInsurance : 5 * insurance = 6000
  hFixed : fixedBills = 640 + 380 + utilities + insurance
  hLeft : left + fixedBills = 6000

theorem budget_fractional_bills (m : BudgetModel) :
    m.utilities = 1500 ∧ m.insurance = 1200 := by
  constructor
  · have h := m.hUtilities
    omega
  · have h := m.hInsurance
    omega

theorem budget_fixed_bills (m : BudgetModel) : m.fixedBills = 3720 := by
  rcases budget_fractional_bills m with ⟨hu, hi⟩
  have h := m.hFixed
  omega

theorem budget_left (m : BudgetModel) : m.left = 2280 := by
  have hf := budget_fixed_bills m
  have h := m.hLeft
  omega

theorem budget_solution (m : BudgetModel) : m.left = 2280 := by
  exact budget_left m

structure ScoreModel where
  currentTotal : Nat
  targetTotal : Nat
  fourth : Nat
  hCurrent : currentTotal = 80 + 70 + 90
  hTarget : targetTotal = 4 * 85
  hFourth : currentTotal + fourth = targetTotal

theorem score_totals (m : ScoreModel) :
    m.currentTotal = 240 ∧ m.targetTotal = 340 := by
  constructor
  · have h := m.hCurrent
    omega
  · have h := m.hTarget
    omega

theorem score_fourth (m : ScoreModel) : m.fourth = 100 := by
  rcases score_totals m with ⟨hc, ht⟩
  have h := m.hFourth
  omega

theorem score_solution (m : ScoreModel) : m.fourth = 100 := by
  exact score_fourth m

structure PandaModel where
  smallDaily : Nat
  bigDaily : Nat
  allDaily : Nat
  weekly : Nat
  hSmall : smallDaily = 4 * 25
  hBig : bigDaily = 5 * 40
  hAll : allDaily = smallDaily + bigDaily
  hWeekly : weekly = 7 * allDaily

theorem panda_group_daily (m : PandaModel) :
    m.smallDaily = 100 ∧ m.bigDaily = 200 := by
  constructor
  · have h := m.hSmall
    omega
  · have h := m.hBig
    omega

theorem panda_all_daily (m : PandaModel) : m.allDaily = 300 := by
  rcases panda_group_daily m with ⟨hs, hb⟩
  have h := m.hAll
  omega

theorem panda_weekly (m : PandaModel) : m.weekly = 2100 := by
  have hd := panda_all_daily m
  have h := m.hWeekly
  omega

theorem panda_solution (m : PandaModel) : m.weekly = 2100 := by
  exact panda_weekly m

structure AquariumModel where
  childCost : Nat
  total : Nat
  hChildren : childCost = 6 * 20
  hTotal : total = 35 + childCost

theorem aquarium_children (m : AquariumModel) : m.childCost = 120 := by
  have h := m.hChildren
  omega

theorem aquarium_total (m : AquariumModel) : m.total = 155 := by
  have hc := aquarium_children m
  have h := m.hTotal
  omega

theorem aquarium_solution (m : AquariumModel) : m.total = 155 := by
  exact aquarium_total m

structure ArtModel where
  halfStudents : Nat
  threeWorks : Nat
  fourWorks : Nat
  totalWorks : Nat
  hHalf : 2 * halfStudents = 10
  hThree : threeWorks = halfStudents * 3
  hFour : fourWorks = halfStudents * 4
  hTotal : totalWorks = threeWorks + fourWorks

theorem art_half_and_groups (m : ArtModel) :
    m.halfStudents = 5 ∧ m.threeWorks = 15 ∧ m.fourWorks = 20 := by
  have hh : m.halfStudents = 5 := by
    have h := m.hHalf
    omega
  constructor
  · exact hh
  · constructor
    · have h := m.hThree
      simp [hh] at h
      exact h
    · have h := m.hFour
      simp [hh] at h
      exact h

theorem art_total (m : ArtModel) : m.totalWorks = 35 := by
  rcases art_half_and_groups m with ⟨hh, h3, h4⟩
  have h := m.hTotal
  omega

theorem art_solution (m : ArtModel) : m.totalWorks = 35 := by
  exact art_total m

structure CookiesModel where
  perTray : Nat
  total : Nat
  hPerTray : perTray = 5 * 6
  hTotal : total = 4 * perTray

theorem cookies_per_tray (m : CookiesModel) : m.perTray = 30 := by
  have h := m.hPerTray
  omega

theorem cookies_total (m : CookiesModel) : m.total = 120 := by
  have hp := cookies_per_tray m
  have h := m.hTotal
  omega

theorem cookies_solution (m : CookiesModel) : m.total = 120 := by
  exact cookies_total m

structure RepairsModel where
  extraMinutes : Nat
  longMinutes : Nat
  totalMinutes : Nat
  hours : Nat
  earnings : Nat
  hExtra : 2 * extraMinutes = 40
  hLong : longMinutes = 40 + extraMinutes
  hTotal : totalMinutes = 3 * 40 + 2 * longMinutes
  hHours : totalMinutes = 60 * hours
  hEarnings : earnings = 20 * hours

theorem repairs_long_car (m : RepairsModel) : m.longMinutes = 60 := by
  have he := m.hExtra
  have h := m.hLong
  omega

theorem repairs_total_time (m : RepairsModel) :
    m.totalMinutes = 240 ∧ m.hours = 4 := by
  have hl := repairs_long_car m
  constructor
  · have h := m.hTotal
    omega
  · have ht := m.hTotal
    have hh := m.hHours
    omega

theorem repairs_earnings (m : RepairsModel) : m.earnings = 80 := by
  rcases repairs_total_time m with ⟨ht, hh⟩
  have h := m.hEarnings
  omega

theorem repairs_solution (m : RepairsModel) : m.earnings = 80 := by
  exact repairs_earnings m

structure RoomModel where
  combined : Nat
  newRoom : Nat
  hCombined : combined = 309 + 150
  hNew : newRoom = 2 * combined

theorem room_combined (m : RoomModel) : m.combined = 459 := by
  have h := m.hCombined
  omega

theorem room_new (m : RoomModel) : m.newRoom = 918 := by
  have hc := room_combined m
  have h := m.hNew
  omega

theorem room_solution (m : RoomModel) : m.newRoom = 918 := by
  exact room_new m

structure FriendsModel where
  julianGirls : Nat
  boydGirls : Nat
  boydBoys : Nat
  percentBoys : Nat
  hJulianGirls : 100 * julianGirls = 40 * 80
  hBoydGirls : boydGirls = 2 * julianGirls
  hBoydTotal : boydBoys + boydGirls = 100
  hPercent : percentBoys = boydBoys

theorem friends_girls (m : FriendsModel) :
    m.julianGirls = 32 ∧ m.boydGirls = 64 := by
  constructor
  · have h := m.hJulianGirls
    omega
  · have hj := m.hJulianGirls
    have h := m.hBoydGirls
    omega

theorem friends_boys (m : FriendsModel) : m.boydBoys = 36 := by
  rcases friends_girls m with ⟨hj, hg⟩
  have h := m.hBoydTotal
  omega

theorem friends_percent (m : FriendsModel) : m.percentBoys = 36 := by
  have hb := friends_boys m
  have h := m.hPercent
  omega

theorem friends_solution (m : FriendsModel) : m.percentBoys = 36 := by
  exact friends_percent m

structure StoreModel where
  salary : Nat
  remaining : Nat
  delivery : Nat
  orders : Nat
  hSalary : 5 * salary = 2 * 4000
  hRemaining : remaining + salary = 4000
  hDelivery : 4 * delivery = remaining
  hOrders : orders + delivery = remaining

theorem store_salary_remaining (m : StoreModel) :
    m.salary = 1600 ∧ m.remaining = 2400 := by
  constructor
  · have h := m.hSalary
    omega
  · have hs := m.hSalary
    have h := m.hRemaining
    omega

theorem store_delivery (m : StoreModel) : m.delivery = 600 := by
  rcases store_salary_remaining m with ⟨hs, hr⟩
  have h := m.hDelivery
  omega

theorem store_orders (m : StoreModel) : m.orders = 1800 := by
  rcases store_salary_remaining m with ⟨hs, hr⟩
  have hd := store_delivery m
  have h := m.hOrders
  omega

theorem store_solution (m : StoreModel) : m.orders = 1800 := by
  exact store_orders m

structure MonthlyPayModel where
  workDays : Nat
  hours : Nat
  raiseHourly : Nat
  wage : Nat
  earnings : Nat
  hDays : 2 * workDays = 30
  hHours : hours = workDays * 12
  hRaise : 10 * raiseHourly = 3 * 20
  hWage : wage = 20 + raiseHourly
  hEarnings : earnings = wage * hours

theorem monthly_days_hours (m : MonthlyPayModel) :
    m.workDays = 15 ∧ m.hours = 180 := by
  constructor
  · have h := m.hDays
    omega
  · have hd := m.hDays
    have h := m.hHours
    omega

theorem monthly_wage (m : MonthlyPayModel) : m.wage = 26 := by
  have hr := m.hRaise
  have h := m.hWage
  omega

theorem monthly_earnings (m : MonthlyPayModel) : m.earnings = 4680 := by
  rcases monthly_days_hours m with ⟨hd, hh⟩
  have hw := monthly_wage m
  have h := m.hEarnings
  simp [hw, hh] at h
  exact h

theorem monthly_solution (m : MonthlyPayModel) : m.earnings = 4680 := by
  exact monthly_earnings m

structure DebtModel where
  remaining : Nat
  hours : Nat
  hRemaining : remaining + 40 = 100
  hWork : 15 * hours = remaining

theorem debt_remaining (m : DebtModel) : m.remaining = 60 := by
  have h := m.hRemaining
  omega

theorem debt_hours (m : DebtModel) : m.hours = 4 := by
  have hr := debt_remaining m
  have h := m.hWork
  omega

theorem debt_solution (m : DebtModel) : m.hours = 4 := by
  exact debt_hours m

structure GradesModel where
  second : Nat
  third : Nat
  total : Nat
  hSecond : second = 20 + 11
  hThird : third = 2 * second
  hTotal : total = second + third

theorem grades_each (m : GradesModel) :
    m.second = 31 ∧ m.third = 62 := by
  constructor
  · have h := m.hSecond
    omega
  · have hs := m.hSecond
    have h := m.hThird
    omega

theorem grades_total (m : GradesModel) : m.total = 93 := by
  rcases grades_each m with ⟨hs, ht⟩
  have h := m.hTotal
  omega

theorem grades_solution (m : GradesModel) : m.total = 93 := by
  exact grades_total m

end LemmaWeave.Problems.GSM8K.Sprint0928A05
