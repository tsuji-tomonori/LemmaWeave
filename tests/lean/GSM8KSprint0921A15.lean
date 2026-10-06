import LemmaWeave.Problems.GSM8K.Sprint0921A15Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0921A15
open LemmaWeave.Problems.GSM8K.Sprint0921A15

theorem tax_federal : (3000 : Nat) = 60 * 50 := by norm_num
theorem tax_state : (600 : Nat) = 20 * 30 := by norm_num
theorem tax_quarterly : (800 : Nat) = 10 * 80 := by norm_num
theorem tax_total : (4400 : Nat) = 3000 + 600 + 800 := by norm_num
theorem tax_solution : TaxRevenue 60 50 3000 20 30 600 10 80 800 4400 := by
  unfold TaxRevenue
  exact ⟨tax_federal, tax_state, tax_quarterly, tax_total⟩

theorem mortgage_balance : (280 : Nat) = 40 + 240 := by norm_num
theorem mortgage_months : (120 : Nat) = 10 * 12 := by norm_num
theorem mortgage_monthly : (240 : Nat) = 2 * 120 := by norm_num
theorem mortgage_solution : MortgagePayment 280 40 240 10 12 120 2 := by
  unfold MortgagePayment
  exact ⟨mortgage_balance, mortgage_months, mortgage_monthly⟩

theorem museum_discount : (10 : Nat) * 30 = 3 * 100 := by norm_num
theorem museum_discounted : (10 : Nat) = 3 + 7 := by norm_num
theorem museum_children : (14 : Nat) = 2 * 7 := by norm_num
theorem museum_adults : (30 : Nat) = 3 * 10 := by norm_num
theorem museum_trip : (44 : Nat) = 14 + 30 := by norm_num
theorem museum_remaining : (70 : Nat) = 44 + 26 := by norm_num
theorem museum_solution : MuseumTrip 10 30 3 7 2 3 14 30 44 70 26 := by
  unfold MuseumTrip
  exact ⟨museum_discount, museum_discounted, museum_children, museum_adults,
    museum_trip, museum_remaining⟩

theorem salary_raise : (500 : Nat) * 6 = 30 * 100 := by norm_num
theorem salary_new : (530 : Nat) = 500 + 30 := by norm_num
theorem salary_solution : RaisedSalary 500 6 30 530 := by
  unfold RaisedSalary
  exact ⟨salary_raise, salary_new⟩

theorem gum_half_price : (150 : Nat) = 75 * 2 := by norm_num
theorem gum_one_stick_total : (600 : Nat) = 2 * 75 + 3 * 150 := by norm_num
theorem gum_alternative_sticks : (2 : Nat) = 2 := by norm_num
theorem gum_two_stick_total : (750 : Nat) = 2 * 2 * 75 + 3 * 150 := by norm_num
theorem gum_nonunique : (600 : Nat) ≠ 750 := by norm_num
theorem gum_solution : GumPackAmbiguity 2 3 150 75 2 600 750 := by
  unfold GumPackAmbiguity
  exact ⟨gum_half_price, gum_one_stick_total, gum_alternative_sticks,
    gum_two_stick_total, gum_nonunique⟩

theorem pizza_teacher_eaters : (20 : Nat) * 3 = 30 * 2 := by norm_num
theorem pizza_teacher_non : (30 : Nat) = 20 + 10 := by norm_num
theorem pizza_staff_eaters : (36 : Nat) * 5 = 45 * 4 := by norm_num
theorem pizza_staff_non : (45 : Nat) = 36 + 9 := by norm_num
theorem pizza_total_non : (19 : Nat) = 10 + 9 := by norm_num
theorem pizza_solution : PizzaNonEaters 30 20 10 45 36 9 19 := by
  unfold PizzaNonEaters
  exact ⟨pizza_teacher_eaters, pizza_teacher_non, pizza_staff_eaters,
    pizza_staff_non, pizza_total_non⟩

theorem mats_green : (30 : Nat) = 15 * 2 := by norm_num
theorem mats_per : (65 : Nat) = 20 + 30 + 15 := by norm_num
theorem mats_total : (650 : Nat) = 65 * 10 := by norm_num
theorem mats_solution : StrawMats 20 30 15 65 10 650 := by
  unfold StrawMats
  exact ⟨mats_green, mats_per, mats_total⟩

theorem ages_eli : (19 : Nat) = 10 + 9 := by norm_num
theorem ages_sarah : (38 : Nat) = 2 * 19 := by norm_num
theorem ages_kaylin : (38 : Nat) = 33 + 5 := by norm_num
theorem ages_solution : FamilyAges 10 9 19 2 38 5 33 := by
  unfold FamilyAges
  exact ⟨ages_eli, ages_sarah, ages_kaylin⟩

theorem apples_equal_initial : (64 : Nat) = 4 * 16 := by norm_num
theorem apples_equal_after : (16 : Nat) = 3 + 13 := by norm_num
theorem apples_alternative_total : (64 : Nat) = 13 + 17 + 17 + 17 := by norm_num
theorem apples_alt_a : (13 : Nat) = 3 + 10 := by norm_num
theorem apples_alt_b : (17 : Nat) = 3 + 14 := by norm_num
theorem apples_alt_c : (17 : Nat) = 3 + 14 := by norm_num
theorem apples_alt_d : (17 : Nat) = 3 + 14 := by norm_num
theorem apples_nonuniform : (10 : Nat) ≠ 14 := by norm_num
theorem apples_solution : AppleBasketAmbiguity 64 4 3 16 13 13 17 17 17 10 14 14 14 := by
  unfold AppleBasketAmbiguity
  exact ⟨apples_equal_initial, apples_equal_after, apples_alternative_total,
    apples_alt_a, apples_alt_b, apples_alt_c, apples_alt_d, apples_nonuniform⟩

theorem yarn_red : (476 : Nat) = 3 * 156 + 8 := by norm_num
theorem yarn_total : (632 : Nat) = 156 + 476 := by norm_num
theorem yarn_solution : YarnLength 156 3 8 476 632 := by
  unfold YarnLength
  exact ⟨yarn_red, yarn_total⟩

theorem health_weekly : (750 : Nat) = 25 * 30 := by norm_num
theorem health_monthly : (3000 : Nat) = 750 * 4 := by norm_num
theorem health_annual_income : (36000 : Nat) = 3000 * 12 := by norm_num
theorem health_bracket : (10001 : Nat) ≤ 36000 ∧ (36000 : Nat) ≤ 40000 := by norm_num
theorem health_premium_split : (500 : Nat) = 250 + 250 ∧ (250 : Nat) = 250 := by norm_num
theorem health_annual_cost : (3000 : Nat) = 250 * 12 := by norm_num
theorem health_solution : HealthcareCost 25 30 750 4 3000 12 36000 10001 40000 500 250 250 3000 := by
  unfold HealthcareCost
  exact ⟨health_weekly, health_monthly, health_annual_income, health_bracket.1,
    health_bracket.2, health_premium_split.1, health_premium_split.2, health_annual_cost⟩

theorem savings_earned : (1600 : Nat) = 80 * 20 := by norm_num
theorem savings_saved : (1600 : Nat) = 1360 + 240 := by norm_num
theorem savings_solution : Savings 80 20 1600 1360 240 := by
  unfold Savings
  exact ⟨savings_earned, savings_saved⟩

theorem gold_bars : (80 : Nat) = 4 * 20 := by norm_num
theorem gold_value : (1600000 : Nat) = 80 * 20000 := by norm_num
theorem gold_solution : GoldWorth 4 20 80 20000 1600000 := by
  unfold GoldWorth
  exact ⟨gold_bars, gold_value⟩

theorem crayons_beatrice : (128 : Nat) = 2 * 64 := by norm_num
theorem crayons_gilbert : (64 : Nat) = 2 * 32 := by norm_num
theorem crayons_judah : (32 : Nat) = 4 * 8 := by norm_num
theorem crayons_solution : CrayonChain 128 64 32 8 := by
  unfold CrayonChain
  exact ⟨crayons_beatrice, crayons_gilbert, crayons_judah⟩

theorem work_low_revenue : (10000 : Nat) = 400 * 25 := by norm_num
theorem work_high_revenue : (1000 : Nat) = 5 * 200 := by norm_num
theorem work_difference : (10000 : Nat) = 1000 + 9000 := by norm_num
theorem work_direction : (1000 : Nat) < 10000 := by norm_num
theorem work_solution : WorkComparison 400 25 5 200 10000 1000 9000 := by
  unfold WorkComparison
  exact ⟨work_low_revenue, work_high_revenue, work_difference, work_direction⟩

#print axioms tax_solution
#print axioms mortgage_solution
#print axioms museum_solution
#print axioms salary_solution
#print axioms gum_solution
#print axioms pizza_solution
#print axioms mats_solution
#print axioms ages_solution
#print axioms apples_solution
#print axioms yarn_solution
#print axioms health_solution
#print axioms savings_solution
#print axioms gold_solution
#print axioms crayons_solution
#print axioms work_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A15.tax_solution to "work/gsm8k-sprint66-tax-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A15.mortgage_solution to "work/gsm8k-sprint66-mortgage-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A15.museum_solution to "work/gsm8k-sprint66-museum-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A15.salary_solution to "work/gsm8k-sprint66-salary-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A15.gum_solution to "work/gsm8k-sprint66-gum-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A15.pizza_solution to "work/gsm8k-sprint66-pizza-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A15.mats_solution to "work/gsm8k-sprint66-mats-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A15.ages_solution to "work/gsm8k-sprint66-ages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A15.apples_solution to "work/gsm8k-sprint66-apples-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A15.yarn_solution to "work/gsm8k-sprint66-yarn-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A15.health_solution to "work/gsm8k-sprint66-health-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A15.savings_solution to "work/gsm8k-sprint66-savings-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A15.gold_solution to "work/gsm8k-sprint66-gold-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A15.crayons_solution to "work/gsm8k-sprint66-crayons-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A15.work_solution to "work/gsm8k-sprint66-work-graph.json"

end LemmaWeave.Tests.GSM8KSprint0921A15
