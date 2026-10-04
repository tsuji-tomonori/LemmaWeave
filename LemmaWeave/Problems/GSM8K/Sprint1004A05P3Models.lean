import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A05P3

theorem gross_salary_interpretations :
    ((9 / 10 : ℚ) * 50000 - 2000 - 3000 = 40000) ∧
      ((9 / 10 : ℚ) * (400000 / 9) = 40000) ∧
      (50000 : ℚ) ≠ 400000 / 9 := by
  norm_num

theorem papaya_height_five_years :
    ((2 : ℚ) * (3 / 2)) = 3 ∧
      3 * (3 / 2) = 9 / 2 ∧
      (9 / 2 : ℚ) * 2 = 9 ∧
      (9 : ℚ) / 2 = 9 / 2 ∧
      (2 : ℚ) + 3 + 9 / 2 + 9 + 9 / 2 = 23 := by
  norm_num

theorem smiley_tulips_total :
    (2 * 8 : ℕ) = 16 ∧
      18 * 9 = 162 ∧
      16 + 18 + 162 = 196 := by
  norm_num

theorem right_triangle_perimeter :
    (3 ^ 2 + 4 ^ 2 : ℕ) = 5 ^ 2 ∧
      3 + 4 + 5 = 12 := by
  norm_num

theorem teeth_removed_each_adult_32 :
    (32 / 4 : ℕ) = 8 ∧
      32 * 3 / 8 = 12 ∧
      32 / 2 = 16 ∧
      8 + 12 + 16 + 4 = 40 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1004A05P3
