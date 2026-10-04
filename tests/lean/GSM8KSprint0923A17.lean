import LemmaWeave.Problems.GSM8K.Sprint0923A17Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A17
namespace P := LemmaWeave.Problems.GSM8K.Sprint0923A17

theorem filling_sand_weight (m : P.HeavyFilling) : m.sandAtEighty = 200 := P.filling_sand_weight m
theorem filling_extra_weight (m : P.HeavyFilling) : m.extraWeight = 80 := P.filling_extra_weight m
theorem filling_solution (m : P.HeavyFilling) : m.totalWeight = 280 := P.filling_solution m
theorem hole_father_depth (m : P.HoleDigging) : m.fatherDepth = 1600 := P.hole_father_depth m
theorem hole_target_depth (m : P.HoleDigging) : m.targetDepth = 2800 := P.hole_target_depth m
theorem hole_solution (m : P.HoleDigging) : m.hours = 700 := P.hole_solution m
theorem cars_per_month (m : P.CarSales) : m.perMonth = 100 := P.cars_per_month m
theorem cars_solution (m : P.CarSales) : m.months = 5 := P.cars_solution m
theorem calculator_second (m : P.CalculatorAnswers) : m.second = 1200 := P.calculator_second m
theorem calculator_first_two (m : P.CalculatorAnswers) : m.firstTwo = 1800 := P.calculator_first_two m
theorem calculator_third (m : P.CalculatorAnswers) : m.third = 1400 := P.calculator_third m
theorem calculator_solution (m : P.CalculatorAnswers) : m.total = 3200 := P.calculator_solution m
theorem lights_reference_used (m : P.StreetlightsReference) : m.used = 180 := P.lights_reference_used m
theorem lights_reference_solution (m : P.StreetlightsReference) : m.unused = 20 := P.lights_reference_solution m
theorem lights_ten_parks_countermodel : 10 * 12 + 80 = 200 := P.lights_ten_parks_countermodel
theorem lights_unused_not_unique : (20 : ℕ) ≠ 80 := P.lights_unused_not_unique
theorem toys_reed (m : P.ToySpending) : m.reed = 60 := P.toys_reed m
theorem toys_quinn (m : P.ToySpending) : m.quinn = 30 := P.toys_quinn m
theorem toys_annual (m : P.ToySpending) : m.annual = 170 := P.toys_annual m
theorem toys_solution (m : P.ToySpending) : m.fourYears = 680 := P.toys_solution m
theorem towels_jane (m : P.TowelFolding) : m.jane = 36 := P.towels_jane m
theorem towels_kyla (m : P.TowelFolding) : m.kyla = 30 := P.towels_kyla m
theorem towels_anthony (m : P.TowelFolding) : m.anthony = 21 := P.towels_anthony m
theorem towels_solution (m : P.TowelFolding) : m.total = 87 := P.towels_solution m
theorem stickers_remaining (m : P.Stickers) : m.remaining = 50 := P.stickers_remaining m
theorem stickers_solution (m : P.Stickers) : m.initial = 150 := P.stickers_solution m
theorem driving_tamika (m : P.DrivingDistance) : m.tamika = 360 := P.driving_tamika m
theorem driving_logan (m : P.DrivingDistance) : m.logan = 275 := P.driving_logan m
theorem driving_solution (m : P.DrivingDistance) : m.farther = 85 := P.driving_solution m
theorem profit_payment (m : P.TruckProfit) : m.payment = 30000 := P.profit_payment m
theorem profit_gallons (m : P.TruckProfit) : m.gallons = 30 := P.profit_gallons m
theorem profit_gas (m : P.TruckProfit) : m.gasCost = 12000 := P.profit_gas m
theorem profit_solution (m : P.TruckProfit) : m.profit = 18000 := P.profit_solution m
theorem schedule_fixed_hours : 4 * 2 + 2 * 1 + 2 * 1 + 4 * 3 = 24 := P.schedule_fixed_hours
theorem schedule_remaining_hours : 32 - 24 = 8 := P.schedule_remaining_hours
theorem schedule_four_achievable : 24 + 2 * 4 ≤ 32 := P.schedule_four_achievable
theorem schedule_four_is_maximum : ∀ x : ℕ, 24 + 2 * x ≤ 32 → x ≤ 4 := P.schedule_four_is_maximum
theorem schedule_solution :
    (24 + 2 * 4 ≤ 32) ∧ (∀ x : ℕ, 24 + 2 * x ≤ 32 → x ≤ 4) := P.schedule_solution
theorem cycling_wednesday (m : P.Cycling) : m.wednesday = 25 := P.cycling_wednesday m
theorem cycling_thursday (m : P.Cycling) : m.thursday = 65 := P.cycling_thursday m
theorem cycling_solution (m : P.Cycling) : m.total = 180 := P.cycling_solution m
theorem goals_reference_michael : 3 * 4 = 12 := P.goals_reference_michael
theorem goals_reference_total : 4 + 12 = 16 := P.goals_reference_total
theorem goals_additive_total : 4 + (4 + 3 * 4) = 20 := P.goals_additive_total
theorem goals_total_not_unique : (16 : ℕ) ≠ 20 := P.goals_total_not_unique
theorem download_remaining (m : P.GameDownload) : m.remaining = 570 := P.download_remaining m
theorem download_solution (m : P.GameDownload) : m.minutes = 190 := P.download_solution m
theorem hush_total (m : P.Hushpuppies) : m.total = 100 := P.hush_total m
theorem hush_batches (m : P.Hushpuppies) : m.batches = 10 := P.hush_batches m
theorem hush_solution (m : P.Hushpuppies) : m.minutes = 80 := P.hush_solution m

end LemmaWeave.Tests.GSM8KSprint0923A17

#print axioms LemmaWeave.Tests.GSM8KSprint0923A17.filling_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A17.hole_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A17.cars_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A17.calculator_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A17.lights_reference_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A17.lights_ten_parks_countermodel
#print axioms LemmaWeave.Tests.GSM8KSprint0923A17.toys_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A17.towels_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A17.stickers_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A17.driving_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A17.profit_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A17.schedule_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A17.cycling_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A17.goals_total_not_unique
#print axioms LemmaWeave.Tests.GSM8KSprint0923A17.download_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A17.hush_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A17.filling_solution to "work/gsm8k-sprint107-filling-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A17.hole_solution to "work/gsm8k-sprint107-hole-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A17.cars_solution to "work/gsm8k-sprint107-cars-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A17.calculator_solution to "work/gsm8k-sprint107-calculator-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A17.lights_reference_solution to "work/gsm8k-sprint107-lights-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A17.toys_solution to "work/gsm8k-sprint107-toys-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A17.towels_solution to "work/gsm8k-sprint107-towels-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A17.stickers_solution to "work/gsm8k-sprint107-stickers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A17.driving_solution to "work/gsm8k-sprint107-driving-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A17.profit_solution to "work/gsm8k-sprint107-profit-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A17.schedule_solution to "work/gsm8k-sprint107-schedule-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A17.cycling_solution to "work/gsm8k-sprint107-cycling-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A17.goals_reference_total to "work/gsm8k-sprint107-goals-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A17.download_solution to "work/gsm8k-sprint107-download-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A17.hush_solution to "work/gsm8k-sprint107-hush-graph.json"

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A17.goals_total_not_unique to "work/gsm8k-sprint107-goals-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A17.lights_unused_not_unique to "work/gsm8k-sprint107-lights-graph.json"
