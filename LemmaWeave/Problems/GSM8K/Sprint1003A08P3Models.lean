import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A08P3

theorem red_jellybeans :
    (14 + 26 + 40 : ℕ) = 80 ∧
    200 - 80 = 120 := by
  norm_num

theorem litter_weight :
    (82 * 2 : ℕ) = 164 ∧
    164 + 2 = 166 ∧
    166 * 4 = 664 := by
  norm_num

theorem coin_value :
    (4 * 10 * 25 : ℕ) = 1000 ∧
    6 * 10 * 10 = 600 ∧
    9 * 10 * 5 = 450 ∧
    5 * 10 = 50 ∧
    1000 + 600 + 450 + 50 = 2100 ∧
    2100 / 100 = 21 := by
  norm_num

theorem gas_spending_interpretations :
    (50 * 5 : ℕ) = 250 ∧
    250 * 4 = 1000 ∧
    25 * 10 = 250 ∧
    4 * 10 * 2 = 80 ∧
    3 * 10 * 2 = 60 := by
  norm_num

theorem cards_remaining_percent :
    (16 * 3 / 8 : ℕ) = 6 ∧
    6 + 2 = 8 ∧
    16 - 8 = 8 ∧
    8 * 100 / 16 = 50 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A08P3
