import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0930A00P2

structure PictureModel where
  total : ℕ
  horizontal : ℕ
  haphazard : ℕ
  vertical : ℕ
  hTotal : total = 30
  hHorizontal : total = 2 * horizontal
  hHaphazard : haphazard = 5
  hPartition : total = vertical + horizontal + haphazard

theorem pictures_horizontal (m : PictureModel) : m.horizontal = 15 := by
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  dsimp at *
  omega

theorem pictures_solution (m : PictureModel) : m.vertical = 10 := by
  have h := pictures_horizontal m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  dsimp at *
  omega

structure SoccerModel where
  alexiaBalls : ℕ
  ermiasBalls : ℕ
  minutesPerBall : ℕ
  alexiaMinutes : ℕ
  ermiasMinutes : ℕ
  totalLaborMinutes : ℕ
  parallelElapsedMinutes : ℕ
  hAlexiaBalls : alexiaBalls = 20
  hErmiasBalls : ermiasBalls = alexiaBalls + 5
  hRate : minutesPerBall = 20
  hAlexiaTime : alexiaMinutes = alexiaBalls * minutesPerBall
  hErmiasTime : ermiasMinutes = ermiasBalls * minutesPerBall
  hLabor : totalLaborMinutes = alexiaMinutes + ermiasMinutes
  hParallel : parallelElapsedMinutes = ermiasMinutes

theorem soccer_alexia_time (m : SoccerModel) : m.alexiaMinutes = 400 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

theorem soccer_ermias_time (m : SoccerModel) : m.ermiasMinutes = 500 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

theorem soccer_solution (m : SoccerModel) : m.totalLaborMinutes = 900 := by
  have h1 := soccer_alexia_time m
  have h2 := soccer_ermias_time m
  rcases m with ⟨a,b,c,d,e,f,g,p1,p2,p3,p4,p5,p6,p7⟩
  dsimp at *
  omega

theorem soccer_parallel_elapsed (m : SoccerModel) : m.parallelElapsedMinutes = 500 := by
  have h := soccer_ermias_time m
  rcases m with ⟨a,b,c,d,e,f,g,p1,p2,p3,p4,p5,p6,p7⟩
  dsimp at *
  omega

theorem soccer_time_readings_differ (m : SoccerModel) :
    m.totalLaborMinutes ≠ m.parallelElapsedMinutes := by
  have h1 := soccer_solution m
  have h2 := soccer_parallel_elapsed m
  omega

structure TaxiModel where
  rideFeeCents : ℕ
  miles : ℕ
  rateCentsPerMile : ℕ
  distanceChargeCents : ℕ
  totalCents : ℕ
  hFee : rideFeeCents = 200
  hMiles : miles = 4
  hRate : rateCentsPerMile = 250
  hDistance : distanceChargeCents = miles * rateCentsPerMile
  hTotal : totalCents = rideFeeCents + distanceChargeCents

theorem taxi_distance_charge (m : TaxiModel) : m.distanceChargeCents = 1000 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

theorem taxi_solution (m : TaxiModel) : m.totalCents = 1200 := by
  have h := taxi_distance_charge m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

structure GrassModel where
  lowHalfInches : ℕ
  highHalfInches : ℕ
  growthNeededHalfInches : ℕ
  growthHalfInchesPerMonth : ℕ
  monthsBetweenCuts : ℕ
  monthsPerYear : ℕ
  cutsPerYear : ℕ
  costPerCutDollars : ℕ
  annualCostDollars : ℕ
  hLow : lowHalfInches = 4
  hHigh : highHalfInches = 8
  hGrowthNeeded : highHalfInches = lowHalfInches + growthNeededHalfInches
  hGrowthRate : growthHalfInchesPerMonth = 1
  hMonths : growthNeededHalfInches = monthsBetweenCuts * growthHalfInchesPerMonth
  hYear : monthsPerYear = 12
  hCuts : monthsPerYear = cutsPerYear * monthsBetweenCuts
  hCost : costPerCutDollars = 100
  hAnnual : annualCostDollars = cutsPerYear * costPerCutDollars

theorem grass_growth_needed (m : GrassModel) : m.growthNeededHalfInches = 4 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  dsimp at *
  omega

theorem grass_months_between (m : GrassModel) : m.monthsBetweenCuts = 4 := by
  have h := grass_growth_needed m
  rcases m with ⟨a,b,c,d,e,f,g,i,j,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

theorem grass_cuts_per_year (m : GrassModel) : m.cutsPerYear = 3 := by
  have h := grass_months_between m
  rcases m with ⟨a,b,c,d,e,f,g,i,j,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

theorem grass_solution (m : GrassModel) : m.annualCostDollars = 300 := by
  have h1 := grass_months_between m
  have h2 := grass_cuts_per_year m
  rcases m with ⟨a,b,c,d,e,f,g,i,j,p1,p2,p3,p4,p5,p6,p7,p8,p9⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

structure LockModel where
  firstMinutes : ℕ
  secondMinutes : ℕ
  bothMinutes : ℕ
  hFirst : firstMinutes = 5
  hSecond : secondMinutes + 3 = 3 * firstMinutes
  hBoth : bothMinutes = 5 * secondMinutes

theorem locks_second (m : LockModel) : m.secondMinutes = 12 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  dsimp at *
  omega

theorem locks_solution (m : LockModel) : m.bothMinutes = 60 := by
  have h := locks_second m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  dsimp at *
  omega

end LemmaWeave.Problems.GSM8K.Sprint0930A00P2
