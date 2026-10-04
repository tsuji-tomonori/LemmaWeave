import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A18P3

theorem painting_wall_percentage :
    (2 * 4 : ℕ) = 8 ∧ (5 * 10 : ℕ) = 50 ∧ 8 * 100 / 50 = 16 := by
  norm_num

theorem pet_sitting_cost_per_night (nights : ℕ) :
    (2 + 3) * 13 * nights = 65 * nights := by
  omega

theorem savings_after_purchases :
    (27 + 13 + 28 : ℕ) = 68 ∧ (49 + 5 : ℕ) = 54 ∧ 68 - 54 = 14 := by
  norm_num

theorem hot_sauce_percentage_under_reference_model :
    (4 * (1 / 2 : ℚ)) = 2 ∧
      10 - 4 * (1 - (1 / 2 : ℚ)) = 8 ∧
      (2 / 8 : ℚ) * 100 = 25 := by
  norm_num

theorem inbox_new_email_count :
    (15 + 5 + 10 : ℕ) = 30 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A18P3
