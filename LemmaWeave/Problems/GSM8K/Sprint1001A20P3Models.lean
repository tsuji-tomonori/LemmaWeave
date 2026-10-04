import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A20P3

structure PythonModel where
  weeklyAlligators : ℕ
  pythons : ℕ
  hWeekly : 3 * weeklyAlligators = 15
  hPythons : pythons = weeklyAlligators

theorem alligators_per_week (m : PythonModel) : m.weeklyAlligators = 5 := by omega
theorem pythons_required (m : PythonModel) : m.pythons = 5 := by
  have h := alligators_per_week m
  omega
structure VanModel where
  remaining : ℕ
  small : ℕ
  baseTotal : ℕ
  largeEach : ℕ
  largeTotal : ℕ
  total : ℕ
  hRemaining : 6 = 2 + 1 + remaining
  hSmall : 10 * small = 7 * 8000
  hBaseTotal : baseTotal = 2 * 8000
  hLargeEach : 2 * largeEach = 3 * 8000
  hLargeTotal : largeTotal = remaining * largeEach
  hTotal : total = small + baseTotal + largeTotal

theorem remaining_large_vans (m : VanModel) : m.remaining = 3 := by omega
theorem small_van_capacity (m : VanModel) : m.small = 5600 := by omega
theorem base_vans_capacity (m : VanModel) : m.baseTotal = 16000 := by omega
theorem large_van_capacity (m : VanModel) : m.largeEach = 12000 := by omega
theorem large_vans_capacity (m : VanModel) : m.largeTotal = 36000 := by
  have h1 := remaining_large_vans m
  have h2 := large_van_capacity m
  omega
theorem fleet_capacity (m : VanModel) : m.total = 57600 := by
  have h1 := small_van_capacity m
  have h2 := base_vans_capacity m
  have h3 := large_vans_capacity m
  omega
structure GrassModel where
  lot : ℕ
  concrete : ℕ
  grass : ℕ
  bags : ℕ
  hLot : lot = 120 * 60
  hConcrete : concrete = 40 * 40
  hGrass : lot = concrete + grass
  hBags : grass = 56 * bags

theorem lot_area (m : GrassModel) : m.lot = 7200 := by omega
theorem concrete_area (m : GrassModel) : m.concrete = 1600 := by omega
theorem grass_area (m : GrassModel) : m.grass = 5600 := by
  have h1 := lot_area m
  have h2 := concrete_area m
  omega
theorem grass_seed_bags (m : GrassModel) : m.bags = 100 := by
  have h := grass_area m
  omega
structure MatildaModel where
  louis : ℕ
  jerica : ℕ
  matilda : ℕ
  hLouis : louis = 14
  hJerica : jerica = 2 * louis
  hMatilda : matilda = jerica + 7

theorem jerica_age (m : MatildaModel) : m.jerica = 28 := by omega
theorem matilda_age (m : MatildaModel) : m.matilda = 35 := by
  have h := jerica_age m
  omega
structure PorterModel where
  regularWeekly : ℕ
  regularMonth : ℕ
  overtimeDaily : ℕ
  overtimeMonth : ℕ
  total : ℕ
  hRegularWeekly : regularWeekly = 5 * 8
  hRegularMonth : regularMonth = 4 * regularWeekly
  hOvertimeDaily : 2 * overtimeDaily = 3 * 8
  hOvertimeMonth : overtimeMonth = 4 * overtimeDaily
  hTotal : total = regularMonth + overtimeMonth

theorem porter_regular_weekly (m : PorterModel) : m.regularWeekly = 40 := by omega
theorem porter_regular_month (m : PorterModel) : m.regularMonth = 160 := by
  have h := porter_regular_weekly m
  omega
theorem porter_overtime_day (m : PorterModel) : m.overtimeDaily = 12 := by omega
theorem porter_overtime_month (m : PorterModel) : m.overtimeMonth = 48 := by
  have h := porter_overtime_day m
  omega
theorem porter_month_total (m : PorterModel) : m.total = 208 := by
  have h1 := porter_regular_month m
  have h2 := porter_overtime_month m
  omega
end LemmaWeave.Problems.GSM8K.Sprint1001A20P3
