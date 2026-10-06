import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A05P2

theorem shirt_discount :
    (22 - 16 : ℕ) = 6 := by
  norm_num

theorem fourth_day_daisies :
    (45 + 20 : ℕ) = 65 ∧
      2 * 65 - 10 = 120 ∧
      45 + 65 + 120 = 230 ∧
      350 - 230 = 120 := by
  norm_num

theorem moving_hours :
    (15 + 30 : ℕ) = 45 ∧
      45 * 6 = 270 ∧
      30 * 5 = 150 ∧
      270 + 150 = 420 ∧
      420 / 60 = 7 := by
  norm_num

theorem amusement_park_cost :
    (1 + 3 : ℕ) = 4 ∧
      18 + 5 = 23 ∧
      23 * 4 = 92 := by
  norm_num

theorem lifting_capacity_interpretations :
    (30 + 60 : ℕ) = 90 ∧
      3 * 30 = 90 ∧
      60 / 3 = 20 ∧
      20 + 60 = 80 ∧
      90 ≠ 80 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1004A05P2
