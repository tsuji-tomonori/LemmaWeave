import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A17P2

theorem donated_soccer_balls :
    (4 + 5 : ℕ) = 9 ∧ 2 * 9 = 18 ∧ 18 * 5 = 90 := by
  norm_num

theorem three_harbors_lobster :
    (80 + 80 : ℕ) = 160 ∧ 2 * 160 = 320 ∧ 160 + 320 = 480 := by
  norm_num

theorem weekly_flower_shop_expenses :
    (16 * 5 : ℕ) = 80 ∧
      1250 * 80 = 100000 ∧
      2 * 100000 = 200000 ∧
      120000 / 5 = 24000 ∧
      120000 + 24000 + 200000 = 344000 := by
  norm_num

theorem racing_cars_left :
    (10 * 5 : ℕ) = 50 ∧ 50 / 5 = 10 ∧ 2 * 10 = 20 ∧ 50 - 20 = 30 := by
  norm_num

theorem tile_area_literal_and_reference_mismatch :
    (48 * 72 : ℕ) = 3456 ∧
      3456 / 6 = 576 ∧
      (48 / 6) * (72 / 6) = 96 ∧
      (576 : ℕ) ≠ 96 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A17P2
