import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A08P1

theorem better_value_unit_price :
    (480 / 30 : ℕ) = 16 ∧
    340 / 20 = 17 ∧
    16 < 17 := by
  norm_num

theorem thread_total_length :
    (12 * 3 / 4 : ℕ) = 9 ∧
    12 + 9 = 21 := by
  norm_num

theorem juice_bottles :
    (2 * 3 + 3 : ℕ) = 9 := by
  norm_num

theorem egg_difference :
    (5 + 13 + 9 : ℕ) = 27 ∧
    56 - 27 = 29 := by
  norm_num

theorem basketball_total_points :
    (13 * 3 : ℕ) = 39 ∧
    20 * 2 = 40 ∧
    39 + 40 = 79 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A08P1
