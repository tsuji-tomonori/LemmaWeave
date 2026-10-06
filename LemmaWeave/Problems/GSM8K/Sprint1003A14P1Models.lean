import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A14P1

theorem soda_cost_share :
    (5 * 12 : ℕ) = 60 ∧ 60 * 2 = 120 ∧ 120 / 10 = 12 ∧
    12 * 2 = 24 ∧ 24 / 6 = 4 := by norm_num

theorem weekly_job_earnings_cents :
    (8 * 1600 * 5 : ℕ) = 64000 ∧ 2 * 1350 * 5 = 13500 ∧
    64000 + 13500 = 77500 ∧ 77500 / 100 = 775 := by norm_num

theorem sequential_discount_price_cents :
    (12500 * 10 / 100 : ℕ) = 1250 ∧ 12500 - 1250 = 11250 ∧
    11250 * 4 / 100 = 450 ∧ 11250 - 450 = 10800 := by norm_num

theorem orange_price :
    (6 / 2 : ℕ) = 3 ∧ 12 * 3 = 36 := by norm_num

theorem weekly_vlog_earnings_cents :
    (50 * 2 : ℕ) = 100 ∧ 100 * 50 = 5000 ∧
    5000 * 7 = 35000 ∧ 35000 / 100 = 350 := by norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A14P1
