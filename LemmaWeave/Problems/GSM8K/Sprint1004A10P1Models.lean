import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A10P1

theorem dimes_nickels_pennies :
    (10 * 10 : ℕ) = 100 ∧
      10 * 5 = 50 ∧
      100 + 50 = 150 := by
  norm_num

theorem sleepover_donuts_total :
    (2 + 2 : ℕ) = 4 ∧
      3 + 1 = 4 ∧
      (4 + 1) * 4 = 20 := by
  norm_num

theorem average_weight_three_people :
    (75 + 6 : ℕ) = 81 ∧
      75 - 15 = 60 ∧
      (75 + 81 + 60) / 3 = 72 := by
  norm_num

theorem fruits_remaining_after_pick :
    (180 / 3 : ℕ) = 60 ∧
      180 * (5 - 3) / 5 = 72 ∧
      60 * (5 - 3) / 5 = 24 ∧
      72 + 24 = 96 := by
  norm_num

theorem rhonda_marble_count (r : ℕ)
    (h : r + (r + 55) = 215) :
    r = 80 := by
  omega

end LemmaWeave.Problems.GSM8K.Sprint1004A10P1

