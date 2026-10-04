import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A07P1

theorem remaining_bag_capacity :
    (4 * 2 : ℕ) = 8 ∧
      4 + 6 + 8 = 18 ∧
      20 - 18 = 2 := by
  norm_num

theorem cakes_left_after_one_eaten :
    (12 + 4 : ℕ) = 16 ∧
      16 - 1 = 15 := by
  norm_num

theorem agatha_initial_money :
    (15 + 25 : ℕ) = 40 ∧
      40 + 20 = 60 := by
  norm_num

theorem ninja_stars_total :
    (4 * 2 : ℕ) = 8 ∧
      8 - 2 = 6 ∧
      4 + 6 + 6 = 16 := by
  norm_num

theorem basketball_points_two_years :
    (260 : ℚ) * (6 / 5) = 312 ∧
      (260 : ℚ) + 312 = 572 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1004A07P1
