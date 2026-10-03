import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1002A17P3

theorem schnauzer_count :
    (∀ s : ℤ, (3 * 20 - 5) + (s - 20) = 90 → s = 55) ∧
    (∀ s : ℤ, 0 ≤ s → (3 * 20 - 5) + (20 - s) = 90 → False) := by
  constructor
  · intro s h
    omega
  · intro s hs h
    omega

theorem jude_current_age (j : ℕ) (h : 3 * (j + 5) = 16 + 5) : j = 2 := by omega

theorem second_quarter_profit : (1500 + 3000 + 2000 : ℕ) = 6500 ∧ 8000 - 6500 = 1500 := by norm_num

theorem first_house_bottles : (180 - (40 + 80) : ℕ) = 60 ∧ 40 / 2 = 20 ∧ 80 / 2 = 40 ∧ 60 / 2 = 30 ∧ 20 + 40 + 30 = 90 := by norm_num

theorem cookie_sale_revenue : (72 * 2 : ℕ) = 144 ∧ (72 + 144) / 2 = 108 ∧ 72 + 144 + 108 = 324 ∧ 324 * 2 = 648 := by norm_num

end LemmaWeave.Problems.GSM8K.Sprint1002A17P3
