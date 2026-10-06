import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1002A12P3

theorem weekly_walking_distance : (2 * 7 : ℕ) = 14 ∧ 14 * 5 = 70 ∧ 2 * 2 = 4 ∧ 70 + 4 = 74 := by norm_num

theorem total_savings : (100 / 2 : ℕ) = 50 ∧ 50 * 60 / 100 = 30 ∧ 50 + 30 = 80 ∧ 80 / 2 = 40 ∧ 50 + 40 = 90 := by norm_num

theorem total_pet_count : (30 - 10 : ℕ) = 20 ∧ 20 + 30 = 50 ∧ 3 * 50 = 150 ∧ 150 + 50 = 200 := by norm_num

theorem equal_savings_weeks (w : ℕ) (h : 60 + 9 * w = 90 + 3 * w) : w = 5 := by omega

theorem factory_capped_bottles : (12 - 2 : ℕ) = 10 ∧ 10 + 5 = 15 ∧ (12 + 10 + 15) * 10 = 370 := by norm_num

end LemmaWeave.Problems.GSM8K.Sprint1002A12P3
