import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A07P2

theorem bars_sold : (5 + 7 : ℕ) = 12 := by norm_num
theorem bars_remaining : (18 - 12 : ℕ) = 6 := by norm_num
theorem chocolate_bars_remaining_to_sell :
    (5 + 7 : ℕ) = 12 ∧ 18 - 12 = 6 := by
  exact ⟨bars_sold, bars_remaining⟩

theorem left_building_height : (100 * 80 / 100 : ℕ) = 80 := by norm_num
theorem stacked_left_middle_height : (80 + 100 : ℕ) = 180 := by norm_num
theorem right_building_height : (180 - 20 : ℕ) = 160 := by norm_num
theorem buildings_total_height : (80 + 100 + 160 : ℕ) = 340 := by norm_num
theorem estimated_buildings_total_height :
    (100 * 80 / 100 : ℕ) = 80 ∧ 80 + 100 = 180 ∧
      180 - 20 = 160 ∧ 80 + 100 + 160 = 340 := by
  exact ⟨left_building_height, stacked_left_middle_height,
    right_building_height, buildings_total_height⟩

theorem race_initial_people : (20 * (2 + 1) : ℕ) = 60 := by norm_num
theorem race_added_people : (20 * 1 : ℕ) = 20 := by norm_num
theorem race_finish_people : (60 + 20 : ℕ) = 80 := by norm_num
theorem people_in_race_cars_at_finish :
    (20 * (2 + 1) : ℕ) = 60 ∧ 20 * 1 = 20 ∧ 60 + 20 = 80 := by
  exact ⟨race_initial_people, race_added_people, race_finish_people⟩

theorem groceries_after_fixed_costs : (32 - 3 - 2 : ℕ) = 27 := by norm_num
theorem turkey_cost : (27 / 3 : ℕ) = 9 := by norm_num
theorem groceries_final_money : (27 - 9 : ℕ) = 18 := by norm_num
theorem grocery_money_left :
    (32 - 3 - 2 : ℕ) = 27 ∧ 27 / 3 = 9 ∧ 27 - 9 = 18 := by
  exact ⟨groceries_after_fixed_costs, turkey_cost, groceries_final_money⟩

theorem ben_after_tax_income : (400 : ℚ) / (1 / 5) = 2000 := by norm_num
theorem ben_after_tax_fraction : (1 : ℚ) - 1 / 3 = 2 / 3 := by norm_num
theorem ben_gross_income : (2000 : ℚ) / (2 / 3) = 3000 := by norm_num
theorem ben_gross_monthly_income :
    (400 : ℚ) / (1 / 5) = 2000 ∧ (1 : ℚ) - 1 / 3 = 2 / 3 ∧
      (2000 : ℚ) / (2 / 3) = 3000 := by
  exact ⟨ben_after_tax_income, ben_after_tax_fraction, ben_gross_income⟩

end LemmaWeave.Problems.GSM8K.Sprint1004A07P2
