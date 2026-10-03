import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A02R2

theorem equal_restaurant_share_dollars :
    (5 * 500 : ℕ) = 2500 ∧
      4 * 250 = 1000 ∧
      5 * 200 = 1000 ∧
      1000 + 2500 + 1000 + 1000 = 5500 ∧
      5500 / 5 = 1100 := by
  norm_num

theorem combined_current_income_dollars :
    (6000 * 4 / 5 : ℕ) = 4800 ∧
      2 * 6000 = 12000 ∧
      4800 + 12000 = 16800 := by
  norm_num

theorem total_fertilizer_ounces :
    (4 * 8 : ℕ) = 32 ∧
      3 * 6 = 18 ∧
      32 * 8 = 256 ∧
      18 * 3 = 54 ∧
      2 * 2 = 4 ∧
      256 + 54 + 4 = 314 := by
  norm_num

theorem john_lawyer_payment_dollars :
    (2 * 50 : ℕ) = 100 ∧
      50 + 100 = 150 ∧
      150 * 100 = 15000 ∧
      1000 + 15000 = 16000 ∧
      16000 / 2 = 8000 := by
  norm_num

theorem remaining_carousel_candies :
    (4 + 30 : ℕ) = 34 ∧
      34 * 20 = 680 ∧
      700 - 680 = 20 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A02R2
