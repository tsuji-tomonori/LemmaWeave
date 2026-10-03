import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup

structure BasketballPoints where
  wade : ℕ
  teammates : ℕ
  total : ℕ
  hWade : wade = 5 * 20
  hTeammates : teammates = 5 * 40
  hTotal : total = wade + teammates

theorem basketball_wade (m : BasketballPoints) : m.wade = 100 := by rw [m.hWade]
theorem basketball_teammates (m : BasketballPoints) : m.teammates = 200 := by rw [m.hTeammates]
theorem basketball_solution (m : BasketballPoints) : m.total = 300 := by
  rw [m.hTotal, basketball_wade m, basketball_teammates m]

structure ClothingIncome where
  refurbishedEach : ℕ
  refurbishedTotal : ℕ
  shirtsTotal : ℕ
  pantsTotal : ℕ
  skirtsTotal : ℕ
  totalCents : ℕ
  hRefurbishedEach : refurbishedEach * 2 = 500
  hRefurbishedTotal : refurbishedTotal = 6 * refurbishedEach
  hShirtsTotal : shirtsTotal = 2 * 500
  hPantsTotal : pantsTotal = 1 * 400
  hSkirtsTotal : skirtsTotal = 4 * 600
  hTotal : totalCents = refurbishedTotal + shirtsTotal + pantsTotal + skirtsTotal

theorem clothing_refurbished_each (m : ClothingIncome) : m.refurbishedEach = 250 := by cases m <;> omega
theorem clothing_refurbished_total (m : ClothingIncome) : m.refurbishedTotal = 1500 := by
  rw [m.hRefurbishedTotal, clothing_refurbished_each m]
theorem clothing_regular_totals (m : ClothingIncome) :
    m.shirtsTotal = 1000 ∧ m.pantsTotal = 400 ∧ m.skirtsTotal = 2400 := by
  constructor
  · rw [m.hShirtsTotal]
  constructor
  · rw [m.hPantsTotal]
  · rw [m.hSkirtsTotal]
theorem clothing_solution (m : ClothingIncome) : m.totalCents = 5300 := by
  obtain ⟨hs, hp, hk⟩ := clothing_regular_totals m
  rw [m.hTotal, clothing_refurbished_total m, hs, hp, hk]

structure ChocolateSharing where
  each : ℕ
  combined : ℕ
  hEach : each * 3 = 12
  hCombined : combined = each + each

theorem chocolate_each (m : ChocolateSharing) : m.each = 4 := by cases m <;> omega
theorem chocolate_solution (m : ChocolateSharing) : m.combined = 8 := by
  rw [m.hCombined, chocolate_each m]

structure PoolMinutes where
  elaine : ℕ
  george : ℕ
  kramer : ℕ
  total : ℕ
  hElaine : elaine = 2 * 3
  hGeorge : george * 3 = elaine
  hKramer : kramer = 0
  hTotal : total = 3 + elaine + george + kramer

theorem pool_elaine (m : PoolMinutes) : m.elaine = 6 := by rw [m.hElaine]
theorem pool_george (m : PoolMinutes) : m.george = 2 := by
  have h := m.hGeorge
  rw [pool_elaine m] at h
  omega
theorem pool_kramer (m : PoolMinutes) : m.kramer = 0 := m.hKramer
theorem pool_solution (m : PoolMinutes) : m.total = 11 := by
  rw [m.hTotal, pool_elaine m, pool_george m, pool_kramer m]

structure WeeklyPies where
  apple : ℕ
  cherry : ℕ
  difference : ℕ
  hApple : apple = 3 * 12
  hCherry : cherry = 2 * 12
  hDifference : difference + cherry = apple

theorem pies_apple (m : WeeklyPies) : m.apple = 36 := by rw [m.hApple]
theorem pies_cherry (m : WeeklyPies) : m.cherry = 24 := by rw [m.hCherry]
theorem pies_solution (m : WeeklyPies) : m.difference = 12 := by
  have h := m.hDifference
  rw [pies_apple m, pies_cherry m] at h
  omega

structure ZooTrip where
  admissionBudget : ℕ
  students : ℕ
  hBudget : admissionBudget + 100 = 350
  hAffordable : students * 10 ≤ admissionBudget
  hMaximal : ∀ n : ℕ, n * 10 ≤ admissionBudget → n ≤ students

theorem zoo_admission_budget (m : ZooTrip) : m.admissionBudget = 250 := by cases m <;> omega
theorem zoo_affords_25 (m : ZooTrip) : 25 * 10 ≤ m.admissionBudget := by
  rw [zoo_admission_budget m]
theorem zoo_upper_bound (m : ZooTrip) : m.students ≤ 25 := by
  have h := m.hAffordable
  rw [zoo_admission_budget m] at h
  omega
theorem zoo_solution (m : ZooTrip) : m.students = 25 := by
  apply Nat.le_antisymm (zoo_upper_bound m)
  exact m.hMaximal 25 (zoo_affords_25 m)

structure AnnualIncome where
  brady : ℕ
  combined : ℕ
  hBrady : brady = 1500 + 450
  hCombined : combined = 1500 + brady

theorem income_brady (m : AnnualIncome) : m.brady = 1950 := by rw [m.hBrady]
theorem income_solution (m : AnnualIncome) : m.combined = 3450 := by
  rw [m.hCombined, income_brady m]

structure WaterCapacity where
  perTruck : ℕ
  total : ℕ
  hPerTruck : perTruck = 3 * 150
  hTotal : total = 3 * perTruck

theorem water_per_truck (m : WaterCapacity) : m.perTruck = 450 := by rw [m.hPerTruck]
theorem water_solution (m : WaterCapacity) : m.total = 1350 := by
  rw [m.hTotal, water_per_truck m]

structure CallAverage where
  total : ℕ
  average : ℕ
  hTotal : total = 35 + 46 + 27 + 61 + 31
  hAverage : average * 5 = total

theorem calls_total (m : CallAverage) : m.total = 200 := by rw [m.hTotal]
theorem calls_solution (m : CallAverage) : m.average = 40 := by
  have h := m.hAverage
  rw [calls_total m] at h
  omega

structure ShrimpCost where
  shrimp : ℕ
  pounds : ℕ
  cost : ℕ
  hShrimp : shrimp = 5 * 40
  hPounds : pounds * 20 = shrimp
  hCost : cost = pounds * 17

theorem shrimp_count (m : ShrimpCost) : m.shrimp = 200 := by rw [m.hShrimp]
theorem shrimp_pounds (m : ShrimpCost) : m.pounds = 10 := by
  have h := m.hPounds
  rw [shrimp_count m] at h
  omega
theorem shrimp_solution (m : ShrimpCost) : m.cost = 170 := by
  rw [m.hCost, shrimp_pounds m]

structure CropRevenue where
  potatoBundles : ℕ
  potatoCents : ℕ
  carrotBundles : ℕ
  carrotCents : ℕ
  totalCents : ℕ
  hPotatoBundles : potatoBundles * 25 = 250
  hPotatoCents : potatoCents = potatoBundles * 190
  hCarrotBundles : carrotBundles * 20 = 320
  hCarrotCents : carrotCents = carrotBundles * 200
  hTotal : totalCents = potatoCents + carrotCents

theorem crops_potato_bundles (m : CropRevenue) : m.potatoBundles = 10 := by cases m <;> omega
theorem crops_potato_cents (m : CropRevenue) : m.potatoCents = 1900 := by
  rw [m.hPotatoCents, crops_potato_bundles m]
theorem crops_carrot_bundles (m : CropRevenue) : m.carrotBundles = 16 := by cases m <;> omega
theorem crops_carrot_cents (m : CropRevenue) : m.carrotCents = 3200 := by
  rw [m.hCarrotCents, crops_carrot_bundles m]
theorem crops_solution (m : CropRevenue) : m.totalCents = 5100 := by
  rw [m.hTotal, crops_potato_cents m, crops_carrot_cents m]

/-- The intended textbook reading fixes a month at four working weeks. -/
structure BabysitterIncome where
  agnesWeekly : ℕ
  agnesMonthly : ℕ
  milaHours : ℕ
  hWeekly : agnesWeekly = 15 * 8
  hMonthly : agnesMonthly = agnesWeekly * 4
  hMila : milaHours * 10 = agnesMonthly

theorem babysitter_weekly (m : BabysitterIncome) : m.agnesWeekly = 120 := by rw [m.hWeekly]
theorem babysitter_monthly (m : BabysitterIncome) : m.agnesMonthly = 480 := by
  rw [m.hMonthly, babysitter_weekly m]
theorem babysitter_solution (m : BabysitterIncome) : m.milaHours = 48 := by
  have h := m.hMila
  rw [babysitter_monthly m] at h
  omega

structure CompanyPayroll where
  employees : ℕ
  days : ℕ
  monthlyEach : ℕ
  total : ℕ
  hEmployees : employees = 500 + 200
  hDays : days = 5 * 4
  hMonthlyEach : monthlyEach = 12 * 10 * days
  hTotal : total = employees * monthlyEach

theorem payroll_employees (m : CompanyPayroll) : m.employees = 700 := by rw [m.hEmployees]
theorem payroll_days (m : CompanyPayroll) : m.days = 20 := by rw [m.hDays]
theorem payroll_monthly_each (m : CompanyPayroll) : m.monthlyEach = 2400 := by
  rw [m.hMonthlyEach, payroll_days m]
theorem payroll_solution (m : CompanyPayroll) : m.total = 1680000 := by
  rw [m.hTotal, payroll_employees m, payroll_monthly_each m]

structure MarbleDifference where
  mara : ℕ
  markus : ℕ
  difference : ℕ
  hMara : mara = 12 * 2
  hMarkus : markus = 2 * 13
  hDifference : difference + mara = markus

theorem marbles_mara (m : MarbleDifference) : m.mara = 24 := by rw [m.hMara]
theorem marbles_markus (m : MarbleDifference) : m.markus = 26 := by rw [m.hMarkus]
theorem marbles_solution (m : MarbleDifference) : m.difference = 2 := by
  have h := m.hDifference
  rw [marbles_mara m, marbles_markus m] at h
  omega

structure VehicleCount where
  trucks : ℕ
  cars : ℕ
  hCars : cars = 2 * trucks
  hTotal : trucks + cars = 60

theorem vehicles_cars (m : VehicleCount) : m.cars = 2 * m.trucks := m.hCars
theorem vehicles_solution (m : VehicleCount) : m.trucks = 20 := by
  have h := m.hTotal
  rw [vehicles_cars m] at h
  omega

end LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup
