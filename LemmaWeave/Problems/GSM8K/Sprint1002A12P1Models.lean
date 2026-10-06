import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1002A12P1

theorem initial_land_money : (30000 * 2 : ℕ) = 60000 ∧ 60000 / 3 = 20000 := by norm_num

theorem blueberry_muffin_percentage : (3 * 200 : ℕ) = 600 ∧ 600 / 10 = 60 ∧ 60 + 60 = 120 ∧ 60 * 100 / 120 = 50 := by norm_num

theorem tom_phillip_total_under_name_correction (tom phillip : ℕ) (hTom : tom = 30) (hPhillip : phillip = 2 * 30) : tom + phillip = 90 := by omega

theorem yellow_pick_count : (12 * 3 : ℕ) = 36 ∧ 36 / 2 = 18 ∧ 36 - 18 - 12 = 6 := by norm_num

theorem phone_bill_expense : (10 + 2 : ℕ) = 12 ∧ 3 * 12 = 36 ∧ 36 - 2 = 34 ∧ 10 * 34 = 340 := by norm_num

end LemmaWeave.Problems.GSM8K.Sprint1002A12P1
