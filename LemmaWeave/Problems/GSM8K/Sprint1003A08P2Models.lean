import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A08P2

theorem tent_stakes (x : ℕ) (h : x + 3 * x + (x + 2) = 22) : x = 4 := by
  omega

theorem second_dog_daily_miles :
    (7 * 2 : ℕ) = 14 ∧
    70 - 14 = 56 ∧
    56 / 7 = 8 := by
  norm_num

theorem soda_bottles :
    ((20 + 30) * 20 : ℕ) = 1000 := by
  norm_num

theorem pencil_boxes :
    (20 * 2 : ℕ) = 40 ∧
    20 + 40 = 60 ∧
    20 + 40 + 40 + 60 = 160 ∧
    160 / 20 = 8 := by
  norm_num

theorem fourth_buoy_distance :
    (72 / 3 : ℕ) = 24 ∧
    24 * 4 = 96 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A08P2
