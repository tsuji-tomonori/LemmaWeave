import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1002A13P3

theorem banana_count : (3 * 4 : ℕ) = 12 ∧ 4 + 12 = 16 ∧ 21 - 16 = 5 := by norm_num

theorem raking_time (minutes : ℕ) (h : 3 * minutes = 15 * 8) : minutes = 40 := by omega

theorem kept_cake_slices : (12 / 4 : ℕ) = 3 ∧ 12 - 3 = 9 := by norm_num

theorem remaining_trip_savings : (20 * 10 : ℕ) = 200 ∧ 4 * 24 = 96 ∧ 200 + 96 - 10 + 500 + 2 * 500 = 1786 ∧ 5000 - 1786 = 3214 := by norm_num

theorem highlighter_profit : (12 * 30 : ℕ) = 360 ∧ 5 * 30 = 150 ∧ 150 / 6 = 25 ∧ 7 * 30 = 210 ∧ 210 / 3 = 70 ∧ 25 * 3 + 70 * 2 = 215 ∧ 215 - 12 * 10 = 95 := by norm_num

end LemmaWeave.Problems.GSM8K.Sprint1002A13P3
