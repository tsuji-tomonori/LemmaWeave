import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A08P3

theorem flowers_remaining_after_cut :
    (50 * 400 : ℕ) = 20000 ∧
      20000 * 60 / 100 = 12000 ∧
      20000 - 12000 = 8000 := by
  norm_num

theorem breakfast_total_calories :
    (6 * 120 : ℕ) = 720 ∧
      2 * 100 = 200 ∧
      720 + 200 + 200 = 1120 := by
  norm_num

theorem stock_sale_profit :
    (20 * 3 : ℕ) = 60 ∧
      10 * 4 = 40 ∧
      20 - 10 = 10 ∧
      3 * 2 = 6 ∧
      10 * 6 = 60 ∧
      40 + 60 - 60 = 40 := by
  norm_num

theorem tomato_cucumber_total_price :
    (5 * 20 / 100 : ℕ) = 1 ∧
      5 - 1 = 4 ∧
      2 * 4 = 8 ∧
      3 * 5 = 15 ∧
      8 + 15 = 23 := by
  norm_num

theorem sandwiches_over_six_days :
    (2 * 2 : ℕ) = 4 ∧
      4 * 2 = 8 ∧
      2 + 4 + 8 = 14 ∧
      14 * 2 = 28 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1004A08P3
