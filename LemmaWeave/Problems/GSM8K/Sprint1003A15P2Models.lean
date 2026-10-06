import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A15P2

theorem jenga_blocks_before_turn :
    (5 * 5 : ℕ) = 25 ∧ 25 + 1 = 26 ∧ 54 - 26 = 28 := by
  norm_num

theorem sequins_total :
    (6 * 8 : ℕ) = 48 ∧ 5 * 12 = 60 ∧ 9 * 6 = 54 ∧
    48 + 60 + 54 = 162 := by
  norm_num

theorem weekly_writing_hours :
    ((5 * 2 : ℕ) = 10 ∧ 10 * 7 = 70 ∧ 70 / 10 = 7) ∧
    (((5 : ℚ) * 7) / 10 = 7 / 2) := by
  norm_num

theorem diesel_gallons_two_weeks :
    (36 / 3 : ℕ) = 12 ∧ 12 * 2 = 24 := by
  norm_num

theorem bird_count_readings :
    ((2 * 2 : ℕ) = 4 ∧ 3 * 4 = 12 ∧ 2 + 4 + 12 = 18) ∧
    (4 * 4 = 16 ∧ 2 + 4 + 16 = 22) := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A15P2
