import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A03P3

theorem sailboat_land_miles :
    (4 * 25 : ℕ) = 100 ∧
      4 * 50 = 200 ∧
      100 + 200 = 300 ∧
      300 * 115 / 100 = 345 := by
  norm_num

theorem iphone_case_original_prices :
    (625 * 80 / 100 : ℕ) = 500 ∧
      ((625 : ℚ) / 18) * 18 = 625 := by
  norm_num

theorem detergent_cost :
    (4 * 4 : ℕ) = 16 ∧
      16 + 3 = 19 ∧
      60 - 30 = 30 ∧
      30 - 19 = 11 := by
  norm_num

theorem annie_candy_cost :
    (35 - 1 : ℕ) = 34 ∧
      34 * 2 = 68 ∧
      68 + 12 = 80 ∧
      80 * 10 = 800 ∧
      800 / 100 = 8 := by
  norm_num

theorem andrew_donuts_total :
    (14 / 2 : ℕ) = 7 ∧
      4 * 14 = 56 ∧
      14 + 7 + 56 = 77 ∧
      14 + 7 + 28 ≠ 77 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1004A03P3
