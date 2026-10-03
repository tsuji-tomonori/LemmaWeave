import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A03P2

theorem clothing_change : (2 * 54 : ℕ) = 108 ∧ 4 * 33 = 132 ∧ 108 + 132 = 240 ∧ 250 - 240 = 10 := by norm_num

theorem pants_price (p : ℚ) (h : p + (3 / 4) * p + (p + 10) = 340) : p = 120 := by linarith

theorem pie_slices_left : (8 / 2 : ℕ) = 4 ∧ 8 / 4 = 2 ∧ 8 - 4 - 2 = 2 := by norm_num

theorem steak_knife_cost : (2 * 4 : ℕ) = 8 ∧ 2 * 80 = 160 ∧ 160 / 8 = 20 := by norm_num

theorem mushroom_total : (58 / 2 : ℕ) = 29 ∧ 2 * 12 = 24 ∧ 29 + 12 + 24 = 65 := by norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A03P2
