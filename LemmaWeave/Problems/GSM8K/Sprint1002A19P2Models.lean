import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1002A19P2

theorem blue_socks : (180 * 2 / 3 : ℕ) = 120 ∧ 180 - 120 = 60 := by norm_num

theorem beach_treasures : (3 * 10 : ℕ) = 30 ∧ 5 * 30 = 150 ∧ 10 + 30 + 150 = 190 := by norm_num

theorem doughnut_cost : (10 * 2 : ℕ) = 20 ∧ 15 * 1 = 15 ∧ 20 + 15 = 35 := by norm_num

theorem tablecloth_and_napkins : (102 * 54 : ℕ) = 5508 ∧ 8 * (6 * 7) = 336 ∧ 5508 + 336 = 5844 := by norm_num

theorem third_test_minimum (x : ℚ) : (95 + 80 + x) / 3 ≥ 90 ↔ x ≥ 95 := by
  constructor <;> intro h <;> norm_num at h ⊢ <;> linarith

end LemmaWeave.Problems.GSM8K.Sprint1002A19P2
