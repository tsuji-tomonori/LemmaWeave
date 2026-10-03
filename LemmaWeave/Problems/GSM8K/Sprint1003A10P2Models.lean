import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A10P2

theorem seeds_needed :
    (4 * 6 : ℕ) = 24 ∧
    3 * 2 = 6 ∧
    9 * 3 = 27 ∧
    24 + 6 + 27 = 57 ∧
    60 - 57 = 3 := by
  norm_num

theorem coconut_oil_needed :
    (4 / 2 : ℕ) = 2 ∧
    6 - 2 = 4 ∧
    4 * 2 = 8 := by
  norm_num

theorem face_masks :
    (60 / 4 : ℕ) = 15 ∧
    60 / 6 = 10 ∧
    4 - 1 = 3 ∧
    15 + 10 * 3 = 45 := by
  norm_num

theorem paint_set_cost :
    (6 * 1 : ℕ) = 6 ∧
    6 * 3 = 18 ∧
    18 / 6 = 3 ∧
    6 * 6 + 18 * 2 + 3 * 1 = 75 ∧
    80 - 75 = 5 := by
  norm_num

theorem swimming_laps :
    (12 * 5 : ℕ) = 60 ∧
    60 * 5 = 300 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A10P2
