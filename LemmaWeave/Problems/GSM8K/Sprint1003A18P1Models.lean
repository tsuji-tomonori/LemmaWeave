import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A18P1

theorem reading_difference_three_hours :
    (20 * 3 : ℕ) = 60 ∧ (15 * 3 : ℕ) = 45 ∧ 60 - 45 = 15 := by
  norm_num

theorem tylenol_pill_count_for_stated_schedule :
    (1000 / 500 : ℕ) = 2 ∧
      (24 / 6 : ℕ) = 4 ∧
      2 * 7 = 14 ∧
      2 * 4 * 14 = 112 := by
  norm_num

theorem siblings_money_total :
    (8 * 3 : ℕ) = 24 ∧ (8 / 2 : ℕ) = 4 ∧ 8 + 24 + 4 = 36 := by
  norm_num

theorem wire_necklace_count :
    (3 * 20 : ℕ) = 60 ∧ 60 / 4 = 15 := by
  norm_num

theorem poster_count :
    (8 + 4 : ℕ) = 12 ∧ 20 - 12 = 8 ∧ 8 / 4 = 2 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A18P1
