import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1002A10P3

theorem dog_age : (8 + 2 : ℕ) = 10 ∧ 10 - 4 = 6 := by norm_num

theorem pages_to_read_tonight : (15 * 2 : ℕ) = 30 ∧ 30 + 5 = 35 ∧ 15 + 30 + 35 = 80 ∧ 100 - 80 = 20 := by norm_num

theorem green_tea_leaves : (3 * 2 : ℕ) = 6 ∧ 6 * 2 = 12 := by norm_num

theorem unsold_ice_creams : (50 * 3 / 5 : ℕ) = 30 ∧ 54 * 2 / 3 = 36 ∧ 50 + 54 - (30 + 36) = 38 := by norm_num

theorem original_chalk (x : ℕ) (hLost : 2 ≤ x) (hFinal : x - 2 + 12 = 21) : x = 11 := by omega

end LemmaWeave.Problems.GSM8K.Sprint1002A10P3
