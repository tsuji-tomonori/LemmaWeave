import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A03P2

theorem potatoes_cost :
    (3 * 3 : ℕ) = 9 ∧
      15 - 9 = 6 := by
  norm_num

theorem singers_at_party :
    (120 + 50 : ℕ) = 170 ∧
      170 + 120 = 290 ∧
      400 - 290 = 110 := by
  norm_num

theorem reduced_weekly_coffee_ounces :
    (20 - 4 : ℕ) = 16 ∧
      16 * 2 = 32 ∧
      32 * 5 = 160 ∧
      160 / 4 = 40 := by
  norm_num

theorem copper_output_tons :
    (720 * 100 / 10 : ℕ) = 7200 ∧
      100 - 10 - 60 = 30 ∧
      7200 * 30 / 100 = 2160 ∧
      2160 ≠ 360 := by
  norm_num

theorem checkpoint_spacing_miles :
    (25 - 1 : ℕ) / 3 = 8 ∧
      9 - 1 = 8 ∧
      17 - 9 = 8 ∧
      25 - 17 = 8 ∧
      26 - 25 = 1 ∧
      1 + 3 * 6 ≠ 25 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1004A03P2
