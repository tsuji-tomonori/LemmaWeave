import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A15P3

theorem two_day_sales_items :
    (20 * 2 : ℕ) = 40 ∧ 40 * 80 / 100 = 32 ∧
    (20 + 32) * 2 = 104 := by
  norm_num

theorem contribution_total :
    (80 * 3 : ℕ) = 240 ∧ 240 * 3 = 720 ∧
    80 + 240 + 720 = 1040 := by
  norm_num

theorem souffle_eggs :
    (8 * 3 : ℕ) = 24 ∧ 6 * 5 = 30 ∧ 24 + 30 = 54 := by
  norm_num

theorem painting_cost :
    (500 * 20 / 100 : ℕ) = 100 ∧ 500 + 100 = 600 ∧
    600 + 200 = 800 ∧ 500 + 600 + 800 = 1900 := by
  norm_num

theorem average_team_points :
    (20 / 2 : ℕ) = 10 ∧ 10 * 6 = 60 ∧
    20 + 10 + 60 = 90 ∧ 90 / 3 = 30 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A15P3
