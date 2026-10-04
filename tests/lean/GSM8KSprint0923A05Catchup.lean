import LemmaWeave.Problems.GSM8K.Sprint0923A05CatchupModels
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A05Catchup


theorem basketball_wade (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.BasketballPoints) : m.wade = 100 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.basketball_wade m
theorem basketball_teammates (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.BasketballPoints) : m.teammates = 200 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.basketball_teammates m
theorem basketball_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.BasketballPoints) : m.total = 300 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.basketball_solution m
theorem clothing_refurbished_each (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.ClothingIncome) : m.refurbishedEach = 250 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.clothing_refurbished_each m
theorem clothing_refurbished_total (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.ClothingIncome) : m.refurbishedTotal = 1500 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.clothing_refurbished_total m
theorem clothing_regular_totals (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.ClothingIncome) : m.shirtsTotal = 1000 ∧ m.pantsTotal = 400 ∧ m.skirtsTotal = 2400 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.clothing_regular_totals m
theorem clothing_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.ClothingIncome) : m.totalCents = 5300 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.clothing_solution m
theorem chocolate_each (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.ChocolateSharing) : m.each = 4 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.chocolate_each m
theorem chocolate_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.ChocolateSharing) : m.combined = 8 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.chocolate_solution m
theorem pool_elaine (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.PoolMinutes) : m.elaine = 6 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.pool_elaine m
theorem pool_george (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.PoolMinutes) : m.george = 2 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.pool_george m
theorem pool_kramer (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.PoolMinutes) : m.kramer = 0 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.pool_kramer m
theorem pool_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.PoolMinutes) : m.total = 11 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.pool_solution m
theorem pies_apple (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.WeeklyPies) : m.apple = 36 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.pies_apple m
theorem pies_cherry (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.WeeklyPies) : m.cherry = 24 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.pies_cherry m
theorem pies_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.WeeklyPies) : m.difference = 12 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.pies_solution m
theorem zoo_admission_budget (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.ZooTrip) : m.admissionBudget = 250 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.zoo_admission_budget m
theorem zoo_affords_25 (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.ZooTrip) : 25 * 10 ≤ m.admissionBudget := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.zoo_affords_25 m
theorem zoo_upper_bound (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.ZooTrip) : m.students ≤ 25 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.zoo_upper_bound m
theorem zoo_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.ZooTrip) : m.students = 25 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.zoo_solution m
theorem income_brady (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.AnnualIncome) : m.brady = 1950 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.income_brady m
theorem income_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.AnnualIncome) : m.combined = 3450 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.income_solution m
theorem water_per_truck (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.WaterCapacity) : m.perTruck = 450 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.water_per_truck m
theorem water_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.WaterCapacity) : m.total = 1350 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.water_solution m
theorem calls_total (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.CallAverage) : m.total = 200 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.calls_total m
theorem calls_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.CallAverage) : m.average = 40 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.calls_solution m
theorem shrimp_count (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.ShrimpCost) : m.shrimp = 200 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.shrimp_count m
theorem shrimp_pounds (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.ShrimpCost) : m.pounds = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.shrimp_pounds m
theorem shrimp_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.ShrimpCost) : m.cost = 170 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.shrimp_solution m
theorem crops_potato_bundles (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.CropRevenue) : m.potatoBundles = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.crops_potato_bundles m
theorem crops_potato_cents (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.CropRevenue) : m.potatoCents = 1900 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.crops_potato_cents m
theorem crops_carrot_bundles (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.CropRevenue) : m.carrotBundles = 16 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.crops_carrot_bundles m
theorem crops_carrot_cents (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.CropRevenue) : m.carrotCents = 3200 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.crops_carrot_cents m
theorem crops_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.CropRevenue) : m.totalCents = 5100 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.crops_solution m
theorem babysitter_weekly (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.BabysitterIncome) : m.agnesWeekly = 120 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.babysitter_weekly m
theorem babysitter_monthly (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.BabysitterIncome) : m.agnesMonthly = 480 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.babysitter_monthly m
theorem babysitter_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.BabysitterIncome) : m.milaHours = 48 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.babysitter_solution m
theorem payroll_employees (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.CompanyPayroll) : m.employees = 700 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.payroll_employees m
theorem payroll_days (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.CompanyPayroll) : m.days = 20 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.payroll_days m
theorem payroll_monthly_each (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.CompanyPayroll) : m.monthlyEach = 2400 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.payroll_monthly_each m
theorem payroll_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.CompanyPayroll) : m.total = 1680000 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.payroll_solution m
theorem marbles_mara (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.MarbleDifference) : m.mara = 24 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.marbles_mara m
theorem marbles_markus (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.MarbleDifference) : m.markus = 26 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.marbles_markus m
theorem marbles_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.MarbleDifference) : m.difference = 2 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.marbles_solution m
theorem vehicles_cars (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.VehicleCount) : m.cars = 2 * m.trucks := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.vehicles_cars m
theorem vehicles_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.VehicleCount) : m.trucks = 20 := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup.vehicles_solution m

end LemmaWeave.Tests.GSM8KSprint0923A05Catchup

#print axioms LemmaWeave.Tests.GSM8KSprint0923A05Catchup.basketball_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A05Catchup.clothing_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A05Catchup.chocolate_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A05Catchup.pool_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A05Catchup.pies_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A05Catchup.zoo_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A05Catchup.income_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A05Catchup.water_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A05Catchup.calls_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A05Catchup.shrimp_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A05Catchup.crops_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A05Catchup.babysitter_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A05Catchup.payroll_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A05Catchup.marbles_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A05Catchup.vehicles_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A05Catchup.basketball_solution to "work/gsm8k-sprint97-basketball-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A05Catchup.clothing_solution to "work/gsm8k-sprint97-clothing-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A05Catchup.chocolate_solution to "work/gsm8k-sprint97-chocolate-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A05Catchup.pool_solution to "work/gsm8k-sprint97-pool-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A05Catchup.pies_solution to "work/gsm8k-sprint97-pies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A05Catchup.zoo_solution to "work/gsm8k-sprint97-zoo-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A05Catchup.income_solution to "work/gsm8k-sprint97-income-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A05Catchup.water_solution to "work/gsm8k-sprint97-water-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A05Catchup.calls_solution to "work/gsm8k-sprint97-calls-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A05Catchup.shrimp_solution to "work/gsm8k-sprint97-shrimp-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A05Catchup.crops_solution to "work/gsm8k-sprint97-crops-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A05Catchup.babysitter_solution to "work/gsm8k-sprint97-babysitter-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A05Catchup.payroll_solution to "work/gsm8k-sprint97-payroll-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A05Catchup.marbles_solution to "work/gsm8k-sprint97-marbles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A05Catchup.vehicles_solution to "work/gsm8k-sprint97-vehicles-graph.json"

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A05Catchup.babysitter_solution to "work/gsm8k-sprint97-babysitters-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A05Catchup.basketball_solution to "work/gsm8k-sprint97-wade-graph.json"
