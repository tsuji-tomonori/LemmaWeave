import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A11P1

theorem paper_sheets_left : (212 + 307 - 156 : ℕ) = 363 := by norm_num

theorem run_walk_minutes : (((1 : ℚ) / 2) / 3 * 60) = 10 ∧ (((1 : ℚ) / 2) / 1 * 60) = 30 ∧ 10 + 30 = 40 := by norm_num

theorem houses_painted : (3 * 60 / 20 : ℕ) = 9 := by norm_num

theorem matthew_egg_rolls : (4 / 2 : ℕ) = 2 ∧ 2 * 3 = 6 := by norm_num

theorem inside_hours_readings :
    (24 * 2 / 3 : ℕ) = 16 ∧ 16 / 2 = 8 ∧
    (24 * 3 / 4 : ℕ) = 18 ∧ 18 * 2 / 3 = 12 ∧ (8 + 12) / 2 = 10 ∧
    18 - 24 / 3 = 10 ∧ (8 + 10) / 2 = 9 := by norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A11P1
