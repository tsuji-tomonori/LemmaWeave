import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A05P1

theorem good_ingredients_independent :
    ((4 / 5 : ℚ) * (2 / 5) * (3 / 4)) = 6 / 25 ∧
      (6 / 25 : ℚ) * 100 = 24 := by
  norm_num

theorem picture_processing_hours :
    (960 * 2 : ℕ) = 1920 ∧
      1920 / 60 = 32 := by
  norm_num

theorem remaining_storage_unit_area :
    (8 * 4 : ℕ) = 32 ∧
      20 * 32 = 640 ∧
      5040 - 640 = 4400 ∧
      42 - 20 = 22 ∧
      4400 / 22 = 200 := by
  norm_num

theorem pool_water_three_trips :
    (4 + 2 : ℕ) = 6 ∧
      6 * 2 = 12 ∧
      4 + 6 + 12 = 22 ∧
      22 * 3 = 66 := by
  norm_num

theorem joey_swimming_days :
    (7 + 2 : ℚ) = 9 ∧
      (9 : ℚ) * (4 / 3) = 12 ∧
      (12 : ℚ) / 2 = 6 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1004A05P1
