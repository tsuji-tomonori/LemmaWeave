import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1002A11P3

theorem leak_fill_minutes : (3 * 1000 : ℕ) = 3000 ∧ 3 * 20 = 60 ∧ 3000 / 60 = 50 := by norm_num

theorem ten_dollar_bill_count (n : ℕ) (hTotal : 4 * 5 + 3 * 20 + n * 10 = 100) : n = 2 := by omega

theorem girl_count : (50 * 30 / 100 : ℕ) = 15 ∧ 50 - 15 = 35 := by norm_num

theorem laundry_total_minutes : (72 + 50 : ℕ) = 122 ∧ 58 + 65 = 123 ∧ 45 + 54 = 99 ∧ 122 + 123 + 99 = 344 := by norm_num

theorem stars_still_needed : (85 * 4 : ℕ) = 340 ∧ 340 - 33 = 307 := by norm_num

end LemmaWeave.Problems.GSM8K.Sprint1002A11P3
