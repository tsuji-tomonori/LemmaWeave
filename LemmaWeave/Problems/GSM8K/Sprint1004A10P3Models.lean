import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A10P3

theorem pool_dog_count :
    (2 * 2 : ℕ) = 4 ∧
      24 - 4 = 20 ∧
      20 / 4 = 5 := by
  norm_num

theorem great_dane_weight (x : ℕ)
    (h : x + 3 * x + (3 * (3 * x) + 10) = 439) :
    3 * (3 * x) + 10 = 307 := by
  omega

theorem phd_total_years :
    (2 * (1 + 75 / 100) : ℚ) = 7 / 2 ∧
      (1 / 2 : ℚ) = 1 / 2 ∧
      (1 : ℚ) + 2 + 7 / 2 + 1 / 2 = 7 := by
  norm_num

theorem new_drive_free_space :
    (126 / 10 - 46 / 10 : ℚ) = 8 ∧
      8 + 2 = 10 ∧
      20 - 10 = 10 := by
  norm_num

theorem annual_soap_cost :
    (12 / 2 : ℕ) = 6 ∧
      6 * 8 = 48 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1004A10P3
