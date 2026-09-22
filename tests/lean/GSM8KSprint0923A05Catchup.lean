import LemmaWeave.Problems.GSM8K.Sprint0923A05CatchupModels
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A05Catchup
namespace P := LemmaWeave.Problems.GSM8K.Sprint0923A05Catchup

theorem basketball_wade (m : P.BasketballPoints) : m.wade = 100 := P.basketball_wade m
theorem basketball_teammates (m : P.BasketballPoints) : m.teammates = 200 := P.basketball_teammates m
theorem basketball_solution (m : P.BasketballPoints) : m.total = 300 := P.basketball_solution m
theorem clothing_refurbished_each (m : P.ClothingIncome) : m.refurbishedEach = 250 := P.clothing_refurbished_each m
theorem clothing_refurbished_total (m : P.ClothingIncome) : m.refurbishedTotal = 1500 := P.clothing_refurbished_total m
theorem clothing_regular_totals (m : P.ClothingIncome) : m.shirtsTotal = 1000 ∧ m.pantsTotal = 400 ∧ m.skirtsTotal = 2400 := P.clothing_regular_totals m
theorem clothing_solution (m : P.ClothingIncome) : m.totalCents = 5300 := P.clothing_solution m
theorem chocolate_each (m : P.ChocolateSharing) : m.each = 4 := P.chocolate_each m
theorem chocolate_solution (m : P.ChocolateSharing) : m.combined = 8 := P.chocolate_solution m
theorem pool_elaine (m : P.PoolMinutes) : m.elaine = 6 := P.pool_elaine m
theorem pool_george (m : P.PoolMinutes) : m.george = 2 := P.pool_george m
theorem pool_kramer (m : P.PoolMinutes) : m.kramer = 0 := P.pool_kramer m
theorem pool_solution (m : P.PoolMinutes) : m.total = 11 := P.pool_solution m
theorem pies_apple (m : P.WeeklyPies) : m.apple = 36 := P.pies_apple m
theorem pies_cherry (m : P.WeeklyPies) : m.cherry = 24 := P.pies_cherry m
theorem pies_solution (m : P.WeeklyPies) : m.difference = 12 := P.pies_solution m
theorem zoo_admission_budget (m : P.ZooTrip) : m.admissionBudget = 250 := P.zoo_admission_budget m
theorem zoo_affords_25 (m : P.ZooTrip) : 25 * 10 ≤ m.admissionBudget := P.zoo_affords_25 m
theorem zoo_upper_bound (m : P.ZooTrip) : m.students ≤ 25 := P.zoo_upper_bound m
theorem zoo_solution (m : P.ZooTrip) : m.students = 25 := P.zoo_solution m
theorem income_brady (m : P.AnnualIncome) : m.brady = 1950 := P.income_brady m
theorem income_solution (m : P.AnnualIncome) : m.combined = 3450 := P.income_solution m
theorem water_per_truck (m : P.WaterCapacity) : m.perTruck = 450 := P.water_per_truck m
theorem water_solution (m : P.WaterCapacity) : m.total = 1350 := P.water_solution m
theorem calls_total (m : P.CallAverage) : m.total = 200 := P.calls_total m
theorem calls_solution (m : P.CallAverage) : m.average = 40 := P.calls_solution m
theorem shrimp_count (m : P.ShrimpCost) : m.shrimp = 200 := P.shrimp_count m
theorem shrimp_pounds (m : P.ShrimpCost) : m.pounds = 10 := P.shrimp_pounds m
theorem shrimp_solution (m : P.ShrimpCost) : m.cost = 170 := P.shrimp_solution m
theorem crops_potato_bundles (m : P.CropRevenue) : m.potatoBundles = 10 := P.crops_potato_bundles m
theorem crops_potato_cents (m : P.CropRevenue) : m.potatoCents = 1900 := P.crops_potato_cents m
theorem crops_carrot_bundles (m : P.CropRevenue) : m.carrotBundles = 16 := P.crops_carrot_bundles m
theorem crops_carrot_cents (m : P.CropRevenue) : m.carrotCents = 3200 := P.crops_carrot_cents m
theorem crops_solution (m : P.CropRevenue) : m.totalCents = 5100 := P.crops_solution m
theorem babysitter_weekly (m : P.BabysitterIncome) : m.agnesWeekly = 120 := P.babysitter_weekly m
theorem babysitter_monthly (m : P.BabysitterIncome) : m.agnesMonthly = 480 := P.babysitter_monthly m
theorem babysitter_solution (m : P.BabysitterIncome) : m.milaHours = 48 := P.babysitter_solution m
theorem payroll_employees (m : P.CompanyPayroll) : m.employees = 700 := P.payroll_employees m
theorem payroll_days (m : P.CompanyPayroll) : m.days = 20 := P.payroll_days m
theorem payroll_monthly_each (m : P.CompanyPayroll) : m.monthlyEach = 2400 := P.payroll_monthly_each m
theorem payroll_solution (m : P.CompanyPayroll) : m.total = 1680000 := P.payroll_solution m
theorem marbles_mara (m : P.MarbleDifference) : m.mara = 24 := P.marbles_mara m
theorem marbles_markus (m : P.MarbleDifference) : m.markus = 26 := P.marbles_markus m
theorem marbles_solution (m : P.MarbleDifference) : m.difference = 2 := P.marbles_solution m
theorem vehicles_cars (m : P.VehicleCount) : m.cars = 2 * m.trucks := P.vehicles_cars m
theorem vehicles_solution (m : P.VehicleCount) : m.trucks = 20 := P.vehicles_solution m

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
