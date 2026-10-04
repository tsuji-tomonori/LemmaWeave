import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A12P2

theorem combined_savings_readings :
    (6 * 12 * 40 + 6 * 12 * 24 : ℕ) = 4608 ∧
    (6 * 12 * 40 + 6 * 12 * 16 : ℕ) = 4032 := by norm_num

theorem customs_and_quarantine_hours : (14 * 24 + 20 : ℕ) = 356 := by norm_num

theorem book_pages_remaining : (10 + 15 + 27 + 12 + 19 : ℕ) = 83 ∧ 2 * 83 = 166 := by norm_num

theorem weekly_cakes : (6 * 3 : ℕ) = 18 ∧ 6 + 9 + 18 = 33 := by norm_num

theorem alligators_after_year : (4 * 2 * 2 : ℕ) = 16 := by norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A12P2
