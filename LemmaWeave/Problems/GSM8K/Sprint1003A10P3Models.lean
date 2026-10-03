import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A10P3

theorem combined_weight :
    (103 + 17 : ℕ) = 120 ∧
    120 * 2 = 240 ∧
    120 + 240 = 360 := by
  norm_num

theorem unfenced_length :
    (120000 / 30 : ℕ) = 4000 ∧
    5000 - 4000 = 1000 := by
  norm_num

theorem yearly_cleanings :
    (2 + 1 : ℕ) = 3 ∧
    52 * 3 = 156 := by
  norm_num

theorem wig_cost_interpretations :
    (5 * 2 : ℕ) = 10 ∧
    10 * 3 = 30 ∧
    30 * 5 = 150 ∧
    10 * 4 = 40 ∧
    150 - 40 = 110 ∧
    150 - 4 = 146 := by
  norm_num

theorem father_age_conventional :
    (20 * 3 : ℕ) = 60 ∧
    60 + 6 = 66 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A10P3
