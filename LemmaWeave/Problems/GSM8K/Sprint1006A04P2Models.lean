import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A04P2

theorem normal_car_minutes : (4 + 7 + 4 + 9 : ℕ) = 24 := by norm_num
theorem two_normal_cars_minutes : (24 * 2 : ℕ) = 48 := by norm_num
theorem suv_minutes : (24 * 2 : ℕ) = 48 := by norm_num
theorem all_vehicle_minutes : (48 + 48 : ℕ) = 96 := by norm_num

theorem vehicle_washing_minutes :
    (4 + 7 + 4 + 9 : ℕ) = 24 ∧
      24 * 2 = 48 ∧
      24 * 2 = 48 ∧
      48 + 48 = 96 := by
  exact ⟨normal_car_minutes, two_normal_cars_minutes, suv_minutes,
    all_vehicle_minutes⟩

theorem adult_ticket_total : (9 * 11 : ℕ) = 99 := by norm_num
theorem child_ticket_total : (7 * 7 : ℕ) = 49 := by norm_num
theorem ticket_total_difference : (99 - 49 : ℕ) = 50 := by norm_num

theorem ticket_cost_difference :
    (9 * 11 : ℕ) = 99 ∧
      7 * 7 = 49 ∧
      99 - 49 = 50 := by
  exact ⟨adult_ticket_total, child_ticket_total, ticket_total_difference⟩

theorem barbecue_total_sauce : (3 + 1 + 1 : ℕ) = 5 := by norm_num
theorem pulled_pork_sauce : (18 / 6 : ℕ) = 3 := by norm_num
theorem burger_sauce_remaining : (5 - 3 : ℕ) = 2 := by norm_num
theorem barbecue_burger_count : (2 * 4 : ℕ) = 8 := by norm_num

theorem barbecue_burgers :
    (3 + 1 + 1 : ℕ) = 5 ∧
      18 / 6 = 3 ∧
      5 - 3 = 2 ∧
      2 * 4 = 8 := by
  exact ⟨barbecue_total_sauce, pulled_pork_sauce, burger_sauce_remaining,
    barbecue_burger_count⟩

theorem blue_boxcar_capacity : (4000 * 2 : ℕ) = 8000 := by norm_num
theorem red_boxcar_capacity : (8000 * 3 : ℕ) = 24000 := by norm_num
theorem red_boxcars_total : (3 * 24000 : ℕ) = 72000 := by norm_num
theorem blue_boxcars_total : (4 * 8000 : ℕ) = 32000 := by norm_num
theorem black_boxcars_total : (7 * 4000 : ℕ) = 28000 := by norm_num
theorem all_boxcars_capacity : (72000 + 32000 + 28000 : ℕ) = 132000 := by norm_num

theorem boxcar_capacity :
    (4000 * 2 : ℕ) = 8000 ∧
      8000 * 3 = 24000 ∧
      3 * 24000 = 72000 ∧
      4 * 8000 = 32000 ∧
      7 * 4000 = 28000 ∧
      72000 + 32000 + 28000 = 132000 := by
  exact ⟨blue_boxcar_capacity, red_boxcar_capacity, red_boxcars_total,
    blue_boxcars_total, black_boxcars_total, all_boxcars_capacity⟩

theorem vending_exact_failure_count : (30 / 6 : ℕ) = 5 := by norm_num
theorem vending_exact_double_count : (30 / 10 : ℕ) = 3 := by norm_num
theorem vending_exact_normal_count : (30 - 5 - 3 : ℕ) = 22 := by norm_num
theorem vending_exact_frequency_total : (22 + 2 * 3 : ℕ) = 28 := by norm_num
theorem vending_all_normal_sample_total : (30 * 1 : ℕ) = 30 := by norm_num
theorem vending_possible_totals_differ : (28 : ℕ) ≠ 30 := by norm_num

theorem vending_machine_snacks_underdetermined :
    (30 / 6 : ℕ) = 5 ∧
      30 / 10 = 3 ∧
      30 - 5 - 3 = 22 ∧
      22 + 2 * 3 = 28 ∧
      30 * 1 = 30 ∧
      28 ≠ 30 := by
  exact ⟨vending_exact_failure_count, vending_exact_double_count,
    vending_exact_normal_count, vending_exact_frequency_total,
    vending_all_normal_sample_total, vending_possible_totals_differ⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A04P2
