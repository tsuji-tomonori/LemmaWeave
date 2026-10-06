import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A10P1

theorem pizza_total_slices : (8 * 2 : ℕ) = 16 := by norm_num
theorem pizza_remaining_slices : (16 - 7 : ℕ) = 9 := by norm_num

theorem pizza_slices_remaining :
    (8 * 2 : ℕ) = 16 ∧
      (16 - 7 : ℕ) = 9 := by
  exact ⟨pizza_total_slices, pizza_remaining_slices⟩

theorem sheet_rods_per_panel : (3 * 10 : ℕ) = 30 := by norm_num
theorem beam_rods_per_panel : (2 * 4 : ℕ) = 8 := by norm_num
theorem rods_per_panel : (30 + 8 : ℕ) = 38 := by norm_num
theorem fence_total_rods : (38 * 10 : ℕ) = 380 := by norm_num

theorem fence_metal_rods :
    (3 * 10 : ℕ) = 30 ∧
      (2 * 4 : ℕ) = 8 ∧
      (30 + 8 : ℕ) = 38 ∧
      (38 * 10 : ℕ) = 380 := by
  exact ⟨sheet_rods_per_panel, beam_rods_per_panel, rods_per_panel, fence_total_rods⟩

theorem half_allowance : (12 / 2 : ℕ) = 6 := by norm_num
theorem regular_saving_days : (7 - 1 : ℕ) = 6 := by norm_num
theorem regular_savings : (6 * 6 : ℕ) = 36 := by norm_num
theorem quarter_allowance : (12 / 4 : ℕ) = 3 := by norm_num
theorem weekly_savings : (36 + 3 : ℕ) = 39 := by norm_num

theorem weekly_allowance_savings :
    (12 / 2 : ℕ) = 6 ∧
      (7 - 1 : ℕ) = 6 ∧
      (6 * 6 : ℕ) = 36 ∧
      (12 / 4 : ℕ) = 3 ∧
      (36 + 3 : ℕ) = 39 := by
  exact ⟨half_allowance, regular_saving_days, regular_savings, quarter_allowance, weekly_savings⟩

theorem dog_eaten_matches : (10 * 2 : ℕ) = 20 := by norm_num
theorem matches_left : (70 - 10 - 20 : ℕ) = 40 := by norm_num

theorem matches_remaining :
    (10 * 2 : ℕ) = 20 ∧
      (70 - 10 - 20 : ℕ) = 40 := by
  exact ⟨dog_eaten_matches, matches_left⟩

theorem eight_ounce_used : (4 * 8 : ℕ) = 32 := by norm_num
theorem five_ounce_used : (6 * 5 : ℕ) = 30 := by norm_num
theorem water_used : (32 + 30 : ℕ) = 62 := by norm_num
theorem water_remaining : (122 - 62 : ℕ) = 60 := by norm_num
theorem small_glass_count : (60 / 4 : ℕ) = 15 := by norm_num

theorem four_ounce_glasses :
    (4 * 8 : ℕ) = 32 ∧
      (6 * 5 : ℕ) = 30 ∧
      (32 + 30 : ℕ) = 62 ∧
      (122 - 62 : ℕ) = 60 ∧
      (60 / 4 : ℕ) = 15 := by
  exact ⟨eight_ounce_used, five_ounce_used, water_used, water_remaining, small_glass_count⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A10P1
