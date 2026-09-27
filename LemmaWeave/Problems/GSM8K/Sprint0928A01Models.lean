import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0928A01

structure ScrabbleModel where
  preScore : Nat
  middle : Nat
  hTriple : 3 * preScore = 30
  hLetters : preScore = 1 + middle + 1

theorem scrabble_pre_score (m : ScrabbleModel) : m.preScore = 10 := by
  have h1 := m.hTriple
  omega

theorem scrabble_middle (m : ScrabbleModel) : m.middle = 8 := by
  have h1 := m.hLetters
  have h2 := scrabble_pre_score m
  omega

theorem scrabble_solution (m : ScrabbleModel) : m.middle = 8 := by
  exact scrabble_middle m

structure PlantersModel where
  largeCapacity : Nat
  remaining : Nat
  smallPlanters : Nat
  hLarge : largeCapacity = 4 * 20
  hRemaining : largeCapacity + remaining = 200
  hSmall : 4 * smallPlanters = remaining

theorem planters_large (m : PlantersModel) : m.largeCapacity = 80 := by
  have h1 := m.hLarge
  omega

theorem planters_remaining (m : PlantersModel) : m.remaining = 120 := by
  have h1 := m.hRemaining
  have h2 := planters_large m
  omega

theorem planters_small (m : PlantersModel) : m.smallPlanters = 30 := by
  have h1 := m.hSmall
  have h2 := planters_remaining m
  omega

theorem planters_solution (m : PlantersModel) : m.smallPlanters = 30 := by
  exact planters_small m

structure RancherModel where
  survivors : Nat
  originalPrice : Nat
  loweredPrice : Nat
  loweredRevenue : Nat
  sameHerdOriginalRevenue : Nat
  priceCutLoss : Nat
  allDealShortfall : Nat
  hSurvivors : survivors + 172 = 340
  hOriginalPrice : originalPrice * 340 = 204000
  hLoweredPrice : loweredPrice + 150 = originalPrice
  hLoweredRevenue : loweredRevenue = loweredPrice * survivors
  hSameHerdOriginal : sameHerdOriginalRevenue = originalPrice * survivors
  hPriceCutLoss : priceCutLoss + loweredRevenue = sameHerdOriginalRevenue
  hAllDealShortfall : allDealShortfall + loweredRevenue = 204000

theorem rancher_survivors (m : RancherModel) : m.survivors = 168 := by
  have h1 := m.hSurvivors
  omega

theorem rancher_original_price (m : RancherModel) : m.originalPrice = 600 := by
  have h1 := m.hOriginalPrice
  omega

theorem rancher_lowered_price (m : RancherModel) : m.loweredPrice = 450 := by
  have h1 := m.hLoweredPrice
  have h2 := rancher_original_price m
  omega

theorem rancher_lowered_revenue (m : RancherModel) : m.loweredRevenue = 75600 := by
  have hs := rancher_survivors m
  have hp := rancher_lowered_price m
  have h := m.hLoweredRevenue
  rw [hs, hp] at h
  norm_num at h ⊢
  exact h

theorem rancher_price_cut_loss (m : RancherModel) : m.priceCutLoss = 25200 := by
  have hp := rancher_original_price m
  have hs := rancher_survivors m
  have hl := rancher_lowered_revenue m
  have ho := m.hSameHerdOriginal
  have hd := m.hPriceCutLoss
  rw [hp, hs] at ho
  norm_num at ho
  omega

theorem rancher_all_deal_shortfall (m : RancherModel) : m.allDealShortfall = 128400 := by
  have hl := rancher_lowered_revenue m
  have h := m.hAllDealShortfall
  omega

theorem rancher_solution (m : RancherModel) :
    m.priceCutLoss = 25200 ∧ m.allDealShortfall = 128400 := by
  constructor
  · exact rancher_price_cut_loss m
  · exact rancher_all_deal_shortfall m

structure JobsModel where
  workers : Nat
  jobs : Nat
  hoursPerJob : Nat
  payPerWorker : Nat
  totalPay : Nat
  hWorkers : workers = 3
  hJobs : jobs = 5
  hHours : hoursPerJob = 1
  hPay : payPerWorker = 10
  hTotal : totalPay = workers * jobs * hoursPerJob * payPerWorker

theorem jobs_total (m : JobsModel) : m.totalPay = 150 := by
  have hw := m.hWorkers
  have hj := m.hJobs
  have hh := m.hHours
  have hp := m.hPay
  have ht := m.hTotal
  rw [hw, hj, hh, hp] at ht
  norm_num at ht ⊢
  exact ht

theorem jobs_solution (m : JobsModel) : m.totalPay = 150 := by
  exact jobs_total m

structure FlowersModel where
  people : Nat
  days : Nat
  perPersonPerDay : Nat
  total : Nat
  hPeople : people = 1 + 4
  hDays : days = 2
  hTotal : total = 200
  hEqualWork : total = people * days * perPersonPerDay

theorem flowers_people (m : FlowersModel) : m.people = 5 := by
  have h := m.hPeople
  omega

theorem flowers_per_day (m : FlowersModel) : m.perPersonPerDay = 20 := by
  have hp := flowers_people m
  have hd := m.hDays
  have ht := m.hTotal
  have he := m.hEqualWork
  rw [hp, hd, ht] at he
  norm_num at he
  omega

theorem flowers_solution (m : FlowersModel) : m.perPersonPerDay = 20 := by
  exact flowers_per_day m

structure LapsModel where
  afterSaturday : Nat
  remainingAtBreak : Nat
  hSaturday : 27 + afterSaturday = 98
  hMorning : 15 + remainingAtBreak = afterSaturday

theorem laps_after_saturday (m : LapsModel) : m.afterSaturday = 71 := by
  have h := m.hSaturday
  omega

theorem laps_remaining (m : LapsModel) : m.remainingAtBreak = 56 := by
  have h1 := m.hMorning
  have h2 := laps_after_saturday m
  omega

theorem laps_solution (m : LapsModel) : m.remainingAtBreak = 56 := by
  exact laps_remaining m

structure BakerModel where
  hourly : Nat
  weekdayDaily : Nat
  weekdayTotal : Nat
  weekendDaily : Nat
  weekendTotal : Nat
  weekly : Nat
  total : Nat
  hHourly : hourly = 5 * 4
  hWeekdayDaily : weekdayDaily = hourly * 5
  hWeekdayTotal : weekdayTotal = weekdayDaily * 5
  hWeekendDaily : weekendDaily = hourly * 2
  hWeekendTotal : weekendTotal = weekendDaily * 2
  hWeekly : weekly = weekdayTotal + weekendTotal
  hTotal : total = weekly * 3

theorem baker_hourly (m : BakerModel) : m.hourly = 20 := by
  have h := m.hHourly
  omega

theorem baker_weekday_total (m : BakerModel) : m.weekdayTotal = 500 := by
  have hh := baker_hourly m
  have hd := m.hWeekdayDaily
  have ht := m.hWeekdayTotal
  rw [hh] at hd
  norm_num at hd
  rw [hd] at ht
  norm_num at ht ⊢
  exact ht

theorem baker_weekend_total (m : BakerModel) : m.weekendTotal = 80 := by
  have hh := baker_hourly m
  have hd := m.hWeekendDaily
  have ht := m.hWeekendTotal
  rw [hh] at hd
  norm_num at hd
  rw [hd] at ht
  norm_num at ht ⊢
  exact ht

theorem baker_total (m : BakerModel) : m.total = 1740 := by
  have hwd := baker_weekday_total m
  have hwe := baker_weekend_total m
  have hw := m.hWeekly
  have ht := m.hTotal
  omega

theorem baker_solution (m : BakerModel) : m.total = 1740 := by
  exact baker_total m

structure DucksModel where
  annualNet : Nat
  fiveYearGain : Nat
  originalAfter : Nat
  combined : Nat
  hAnnual : annualNet + 20 = 30
  hFive : fiveYearGain = annualNet * 5
  hOriginal : originalAfter = 100 + fiveYearGain
  hCombined : combined = originalAfter + 150

theorem ducks_annual (m : DucksModel) : m.annualNet = 10 := by
  have h := m.hAnnual
  omega

theorem ducks_after_five (m : DucksModel) : m.originalAfter = 150 := by
  have ha := ducks_annual m
  have hf := m.hFive
  have ho := m.hOriginal
  omega

theorem ducks_combined (m : DucksModel) : m.combined = 300 := by
  have ho := ducks_after_five m
  have hc := m.hCombined
  omega

theorem ducks_solution (m : DucksModel) : m.combined = 300 := by
  exact ducks_combined m

structure LeavesModel where
  basil : Nat
  rosemary : Nat
  thyme : Nat
  total : Nat
  hBasil : basil = 3 * 4
  hRosemary : rosemary = 9 * 18
  hThyme : thyme = 6 * 30
  hTotal : total = basil + rosemary + thyme

theorem leaves_by_type (m : LeavesModel) :
    m.basil = 12 ∧ m.rosemary = 162 ∧ m.thyme = 180 := by
  constructor
  · have h := m.hBasil; omega
  · constructor
    · have h := m.hRosemary; omega
    · have h := m.hThyme; omega

theorem leaves_total (m : LeavesModel) : m.total = 354 := by
  rcases leaves_by_type m with ⟨hb, hr, ht⟩
  have h := m.hTotal
  omega

theorem leaves_solution (m : LeavesModel) : m.total = 354 := by
  exact leaves_total m

structure WagesModel where
  regularHours : Nat
  overtimeFirst : Nat
  overtimeSecond : Nat
  overtimeTotal : Nat
  regularPay : Nat
  overtimePay : Nat
  totalPay : Nat
  hRegularHours : regularHours = 40 * 2
  hFirst : 40 + overtimeFirst = 44
  hSecond : 40 + overtimeSecond = 48
  hOvertime : overtimeTotal = overtimeFirst + overtimeSecond
  hRegularPay : regularPay = regularHours * 5
  hOvertimePay : overtimePay = overtimeTotal * 6
  hTotal : totalPay = regularPay + overtimePay

theorem wages_regular (m : WagesModel) : m.regularPay = 400 := by
  have hh := m.hRegularHours
  have hp := m.hRegularPay
  omega

theorem wages_overtime (m : WagesModel) : m.overtimePay = 72 := by
  have h1 := m.hFirst
  have h2 := m.hSecond
  have ho := m.hOvertime
  have hp := m.hOvertimePay
  omega

theorem wages_total (m : WagesModel) : m.totalPay = 472 := by
  have hr := wages_regular m
  have ho := wages_overtime m
  have ht := m.hTotal
  omega

theorem wages_solution (m : WagesModel) : m.totalPay = 472 := by
  exact wages_total m

structure ApartmentModel where
  traversalsPerDay : Nat
  weeklyTraversals : Nat
  referenceHeight : Nat
  referenceTotal : Nat
  alternativeHeight : Nat
  alternativeTotal : Nat
  hPerDay : traversalsPerDay = 3 * 2
  hWeekly : weeklyTraversals = traversalsPerDay * 7
  hReferenceHeight : referenceHeight = 5 * 10
  hReferenceTotal : referenceTotal = weeklyTraversals * referenceHeight
  hAlternativeHeight : alternativeHeight = 4 * 10
  hAlternativeTotal : alternativeTotal = weeklyTraversals * alternativeHeight

theorem apartment_weekly_traversals (m : ApartmentModel) : m.weeklyTraversals = 42 := by
  have hd := m.hPerDay
  have hw := m.hWeekly
  omega

theorem apartment_reference_total (m : ApartmentModel) : m.referenceTotal = 2100 := by
  have hw := apartment_weekly_traversals m
  have hh := m.hReferenceHeight
  have ht := m.hReferenceTotal
  rw [hw, hh] at ht
  norm_num at ht ⊢
  exact ht

theorem apartment_alternative_total (m : ApartmentModel) : m.alternativeTotal = 1680 := by
  have hw := apartment_weekly_traversals m
  have hh := m.hAlternativeHeight
  have ht := m.hAlternativeTotal
  rw [hw, hh] at ht
  norm_num at ht ⊢
  exact ht

theorem apartment_solution (m : ApartmentModel) :
    m.referenceTotal = 2100 ∧ m.alternativeTotal = 1680 := by
  constructor
  · exact apartment_reference_total m
  · exact apartment_alternative_total m

structure ZooModel where
  children : Nat
  adults : Nat
  childRevenue : Nat
  adultRevenue : Nat
  totalRevenue : Nat
  hChildren : children = 7 + 4
  hAdults : adults = 5 + 2
  hChildRevenue : childRevenue = children * 3
  hAdultRevenue : adultRevenue = adults * 4
  hTotal : totalRevenue = childRevenue + adultRevenue

theorem zoo_children_revenue (m : ZooModel) : m.childRevenue = 33 := by
  have hc := m.hChildren
  have hr := m.hChildRevenue
  omega

theorem zoo_adult_revenue (m : ZooModel) : m.adultRevenue = 28 := by
  have ha := m.hAdults
  have hr := m.hAdultRevenue
  omega

theorem zoo_total (m : ZooModel) : m.totalRevenue = 61 := by
  have hc := zoo_children_revenue m
  have ha := zoo_adult_revenue m
  have ht := m.hTotal
  omega

theorem zoo_solution (m : ZooModel) : m.totalRevenue = 61 := by
  exact zoo_total m

structure WalletModel where
  twenties : Nat
  fives : Nat
  loose : Nat
  initial : Nat
  cake : Nat
  remaining : Nat
  hTwenties : twenties = 2 * 2000
  hFives : fives = 3 * 500
  hLoose : loose = 450
  hInitial : initial = twenties + fives + loose
  hCake : cake = 1750
  hRemaining : remaining + cake = initial

theorem wallet_initial (m : WalletModel) : m.initial = 5950 := by
  have h1 := m.hTwenties
  have h2 := m.hFives
  have h3 := m.hLoose
  have h4 := m.hInitial
  omega

theorem wallet_remaining (m : WalletModel) : m.remaining = 4200 := by
  have hi := wallet_initial m
  have hc := m.hCake
  have hr := m.hRemaining
  omega

theorem wallet_solution (m : WalletModel) : m.remaining = 4200 := by
  exact wallet_remaining m

structure GoldModel where
  legacy : Nat
  aleena : Nat
  namedBars : Nat
  thirdBars : Nat
  totalValue : Nat
  hLegacy : legacy = 5
  hAleena : aleena + 2 = legacy
  hNamed : namedBars = legacy + aleena
  hTotal : totalValue = (namedBars + thirdBars) * 2200

theorem gold_named_bars (m : GoldModel) : m.namedBars = 8 := by
  have h1 := m.hLegacy
  have h2 := m.hAleena
  have h3 := m.hNamed
  omega

theorem gold_reference_if_no_third_bars (m : GoldModel) (h0 : m.thirdBars = 0) :
    m.totalValue = 17600 := by
  have hn := gold_named_bars m
  have ht := m.hTotal
  rw [hn, h0] at ht
  norm_num at ht ⊢
  exact ht

theorem gold_alternative_if_one_third_bar (m : GoldModel) (h1 : m.thirdBars = 1) :
    m.totalValue = 19800 := by
  have hn := gold_named_bars m
  have ht := m.hTotal
  rw [hn, h1] at ht
  norm_num at ht ⊢
  exact ht

theorem gold_solution (m : GoldModel) :
    (m.thirdBars = 0 → m.totalValue = 17600) ∧
    (m.thirdBars = 1 → m.totalValue = 19800) := by
  constructor
  · exact gold_reference_if_no_third_bars m
  · exact gold_alternative_if_one_third_bar m

structure UberModel where
  depreciation : Nat
  profit : Nat
  hDepreciation : depreciation + 6000 = 18000
  hProfit : profit + depreciation = 30000

theorem uber_depreciation (m : UberModel) : m.depreciation = 12000 := by
  have h := m.hDepreciation
  omega

theorem uber_profit (m : UberModel) : m.profit = 18000 := by
  have hd := uber_depreciation m
  have hp := m.hProfit
  omega

theorem uber_solution (m : UberModel) : m.profit = 18000 := by
  exact uber_profit m

end LemmaWeave.Problems.GSM8K.Sprint0928A01
