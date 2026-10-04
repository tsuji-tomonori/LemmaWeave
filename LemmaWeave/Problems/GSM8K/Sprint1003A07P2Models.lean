import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A07P2

theorem marker_share :
    (22 * 5 : ℕ) = 110 ∧
    10 * 2 + 15 * 4 = 80 ∧
    30 - 10 - 15 = 5 ∧
    110 - 80 = 30 ∧
    30 / 5 = 6 := by
  norm_num

theorem basketball_next_score :
    (62 / 2 : ℕ) = 31 ∧
    31 + 18 = 49 ∧
    49 + 2 = 51 ∧
    62 + 31 + 49 + 51 = 193 ∧
    4 * 62 = 248 ∧
    248 - 193 = 55 := by
  norm_num

theorem faster_runner_speed :
    (6 / 3 : ℚ) = 2 ∧
    (12 / 8 : ℚ) = 3 / 2 ∧
    (2 : ℚ) > 3 / 2 := by
  norm_num

theorem cake_revenue :
    (5 * 4 : ℕ) = 20 ∧
    20 * 8 = 160 ∧
    160 * 4 = 640 := by
  norm_num

theorem third_snail_time :
    (2 * 20 : ℕ) = 40 ∧
    2 * 2 = 4 ∧
    4 * 5 = 20 ∧
    40 / 20 = 2 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A07P2
