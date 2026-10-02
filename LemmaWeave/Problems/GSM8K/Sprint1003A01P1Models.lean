import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A01P1

theorem initial_money : (32 / 4 : ℕ) = 8 ∧ 32 - 8 = 24 := by norm_num

theorem votes_needed : (60 * 3 / 4 : ℕ) = 45 ∧ 60 / 2 = 30 ∧ 60 - 30 - 5 = 25 ∧ 25 / 5 = 5 ∧ 30 + 5 + 5 = 40 ∧ 45 - 40 = 5 := by norm_num

theorem garbage_accumulated : (3 * 200 : ℕ) = 600 ∧ 600 / 2 = 300 ∧ 600 + 300 = 900 := by norm_num

theorem friends_gift_total : (3 * 300 : ℕ) = 900 ∧ 900 / 2 = 450 ∧ 450 + 900 + 300 = 1650 ∧ 450 * 3 = 1350 ∧ 1650 > 1350 := by norm_num

theorem jellybeans_remaining : (37 - 15 : ℕ) = 22 ∧ 22 + 5 = 27 ∧ 27 - 4 = 23 := by norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A01P1
