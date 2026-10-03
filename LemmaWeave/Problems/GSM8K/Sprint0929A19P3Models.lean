import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0929A19P3

structure CaloriesModel where
  breakfast : ℕ
  lunchIncrease : ℕ
  lunch : ℕ
  dinner : ℕ
  shakeCount : ℕ
  caloriesPerShake : ℕ
  shakes : ℕ
  total : ℕ
  hBreakfast : breakfast = 500
  hIncrease : 4 * lunchIncrease = breakfast
  hLunch : lunch = breakfast + lunchIncrease
  hDinner : dinner = 2 * lunch
  hShakeCount : shakeCount = 3
  hCaloriesPerShake : caloriesPerShake = 300
  hShakes : shakes = shakeCount * caloriesPerShake
  hTotal : total = breakfast + lunch + dinner + shakes

theorem calories_lunch_increase (m : CaloriesModel) : m.lunchIncrease = 125 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  dsimp at *
  norm_num at * <;> omega

theorem calories_lunch (m : CaloriesModel) : m.lunch = 625 := by
  rw [m.hLunch, m.hBreakfast, calories_lunch_increase m]

theorem calories_dinner (m : CaloriesModel) : m.dinner = 1250 := by
  rw [m.hDinner, calories_lunch m]

theorem calories_shakes (m : CaloriesModel) : m.shakes = 900 := by
  rw [m.hShakes, m.hShakeCount, m.hCaloriesPerShake]

theorem calories_solution (m : CaloriesModel) : m.total = 3275 := by
  rw [m.hTotal, m.hBreakfast, calories_lunch m, calories_dinner m, calories_shakes m]

structure OilModel where
  smallCapacity : ℕ
  transferred : ℕ
  existing : ℕ
  current : ℕ
  largeCapacity : ℕ
  halfTarget : ℕ
  needed : ℕ
  hSmall : smallCapacity = 4000
  hTransferred : 4 * transferred = 3 * smallCapacity
  hExisting : existing = 3000
  hCurrent : current = existing + transferred
  hLarge : largeCapacity = 20000
  hHalf : 2 * halfTarget = largeCapacity
  hNeeded : halfTarget = current + needed

theorem oil_transferred (m : OilModel) : m.transferred = 3000 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  dsimp at *
  norm_num at * <;> omega

theorem oil_current (m : OilModel) : m.current = 6000 := by
  rw [m.hCurrent, m.hExisting, oil_transferred m]

theorem oil_half_target (m : OilModel) : m.halfTarget = 10000 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  dsimp at *
  norm_num at * <;> omega

theorem oil_solution (m : OilModel) : m.needed = 4000 := by
  have hCurrent := oil_current m
  have hTarget := oil_half_target m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  dsimp at *
  omega

structure CandyModel where
  chocolateBars : ℕ
  mms : ℕ
  marshmallows : ℕ
  totalCandies : ℕ
  candiesPerBasket : ℕ
  baskets : ℕ
  hChocolate : chocolateBars = 5
  hMms : mms = 7 * chocolateBars
  hMarshmallows : marshmallows = 6 * mms
  hTotal : totalCandies = chocolateBars + mms + marshmallows
  hPerBasket : candiesPerBasket = 10
  hBaskets : totalCandies = baskets * candiesPerBasket

theorem candy_mms (m : CandyModel) : m.mms = 35 := by
  rw [m.hMms, m.hChocolate]

theorem candy_marshmallows (m : CandyModel) : m.marshmallows = 210 := by
  rw [m.hMarshmallows, candy_mms m]

theorem candy_total (m : CandyModel) : m.totalCandies = 250 := by
  rw [m.hTotal, m.hChocolate, candy_mms m, candy_marshmallows m]

theorem candy_solution (m : CandyModel) : m.baskets = 25 := by
  have h := m.hBaskets
  rw [candy_total m, m.hPerBasket] at h
  omega

structure InvestmentModel where
  currentValue : ℕ
  principal : ℕ
  totalReturns : ℕ
  months : ℕ
  monthlyReturn : ℕ
  hCurrentValue : currentValue = 90
  hTwiceOver : totalReturns = 2 * principal
  hValueBalance : currentValue = principal + totalReturns
  hMonths : months = 5
  hEqualMonthly : totalReturns = months * monthlyReturn

theorem investment_principal (m : InvestmentModel) : m.principal = 30 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  norm_num at * <;> omega

theorem investment_returns (m : InvestmentModel) : m.totalReturns = 60 := by
  rw [m.hTwiceOver, investment_principal m]

theorem investment_solution (m : InvestmentModel) : m.monthlyReturn = 12 := by
  have h := m.hEqualMonthly
  rw [investment_returns m, m.hMonths] at h
  omega

structure BoatHourlyModel where
  sailHourly : ℕ
  skiHourly : ℕ
  hoursPerDay : ℕ
  days : ℕ
  sailTotal : ℕ
  skiTotal : ℕ
  difference : ℕ
  hSailHourly : sailHourly = 60
  hSkiHourly : skiHourly = 80
  hHours : hoursPerDay = 3
  hDays : days = 2
  hSailTotal : sailTotal = sailHourly * hoursPerDay * days
  hSkiTotal : skiTotal = skiHourly * hoursPerDay * days
  hDifference : skiTotal = sailTotal + difference

theorem boat_hourly_solution (m : BoatHourlyModel) : m.difference = 120 := by
  have hs := m.hSailTotal
  rw [m.hSailHourly, m.hHours, m.hDays] at hs
  have hk := m.hSkiTotal
  rw [m.hSkiHourly, m.hHours, m.hDays] at hk
  have hd := m.hDifference
  omega

structure BoatFlatModel where
  sailFlat : ℕ
  skiHourly : ℕ
  hoursPerDay : ℕ
  days : ℕ
  sailTotal : ℕ
  skiTotal : ℕ
  difference : ℕ
  hSailFlat : sailFlat = 60
  hSkiHourly : skiHourly = 80
  hHours : hoursPerDay = 3
  hDays : days = 2
  hSailTotal : sailTotal = sailFlat
  hSkiTotal : skiTotal = skiHourly * hoursPerDay * days
  hDifference : skiTotal = sailTotal + difference

theorem boat_flat_solution (m : BoatFlatModel) : m.difference = 420 := by
  have hs := m.hSailTotal
  rw [m.hSailFlat] at hs
  have hk := m.hSkiTotal
  rw [m.hSkiHourly, m.hHours, m.hDays] at hk
  have hd := m.hDifference
  omega

theorem boat_readings_differ (hourly : BoatHourlyModel) (flat : BoatFlatModel) :
    hourly.difference = 120 ∧ flat.difference = 420 ∧ hourly.difference ≠ flat.difference := by
  have hHourly := boat_hourly_solution hourly
  have hFlat := boat_flat_solution flat
  exact ⟨hHourly, hFlat, by omega⟩

end LemmaWeave.Problems.GSM8K.Sprint0929A19P3
