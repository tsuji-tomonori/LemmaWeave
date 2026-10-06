import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A15P1

theorem pizza_total_slices : (8 * 2 : ℕ) = 16 := by norm_num
theorem pizza_slices_remaining :
    (8 * 2 : ℕ) = 16 ∧ 16 - 7 = 9 := by
  exact ⟨pizza_total_slices, by norm_num⟩

theorem fence_sheet_rods_per_panel : (3 * 10 : ℕ) = 30 := by norm_num
theorem fence_beam_rods_per_panel : (2 * 4 : ℕ) = 8 := by norm_num
theorem fence_rods_per_panel : (30 + 8 : ℕ) = 38 := by norm_num
theorem fence_total_rods :
    (3 * 10 : ℕ) = 30 ∧
      (2 * 4 : ℕ) = 8 ∧
      30 + 8 = 38 ∧
      38 * 10 = 380 := by
  exact ⟨fence_sheet_rods_per_panel, fence_beam_rods_per_panel,
    fence_rods_per_panel, by norm_num⟩

theorem savings_half_daily : (12 / 2 : ℕ) = 6 := by norm_num
theorem savings_half_days : (7 - 1 : ℕ) = 6 := by norm_num
theorem savings_six_days : (6 * 6 : ℕ) = 36 := by norm_num
theorem savings_quarter_day : (12 / 4 : ℕ) = 3 := by norm_num
theorem weekly_savings :
    (12 / 2 : ℕ) = 6 ∧
      7 - 1 = 6 ∧
      6 * 6 = 36 ∧
      12 / 4 = 3 ∧
      36 + 3 = 39 := by
  exact ⟨savings_half_daily, savings_half_days, savings_six_days,
    savings_quarter_day, by norm_num⟩

theorem dog_eaten_matches : (2 * 10 : ℕ) = 20 := by norm_num
theorem camping_matches_left :
    (2 * 10 : ℕ) = 20 ∧
      70 - 10 - 20 = 40 := by
  exact ⟨dog_eaten_matches, by norm_num⟩

theorem water_in_eight_ounce_glasses : (4 * 8 : ℕ) = 32 := by norm_num
theorem water_in_five_ounce_glasses : (6 * 5 : ℕ) = 30 := by norm_num
theorem water_used : (32 + 30 : ℕ) = 62 := by norm_num
theorem water_remaining : (122 - 62 : ℕ) = 60 := by norm_num
theorem four_ounce_glasses :
    (4 * 8 : ℕ) = 32 ∧
      6 * 5 = 30 ∧
      32 + 30 = 62 ∧
      122 - 62 = 60 ∧
      60 / 4 = 15 := by
  exact ⟨water_in_eight_ounce_glasses, water_in_five_ounce_glasses,
    water_used, water_remaining, by norm_num⟩

end LemmaWeave.Problems.GSM8K.Sprint1004A15P1

