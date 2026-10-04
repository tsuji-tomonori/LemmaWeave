import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A08P2

theorem truck_car_refill_gallons :
    (20 / 2 : ℕ) = 10 ∧
      12 / 3 = 4 ∧
      20 - 10 = 10 ∧
      12 - 4 = 8 ∧
      10 + 8 = 18 := by
  norm_num

theorem flour_cups_for_biscuits :
    (18 * 2 : ℕ) = 36 ∧
      36 / 9 = 4 ∧
      5 * 4 = 20 ∧
      20 / 4 = 5 := by
  norm_num

theorem working_light_bulbs :
    (20 * 7 : ℕ) = 140 ∧
      20 / 4 = 5 ∧
      5 * 2 = 10 ∧
      140 - 10 = 130 := by
  norm_num

theorem butterfly_cocoon_time_under_determined :
    (0 + 3 * 30 + 30 : ℕ) = 120 ∧
      (4 + 3 * 29 + 29 : ℕ) = 120 ∧
      30 ≠ 29 := by
  norm_num

theorem april_strawberries_remaining :
    (5 * 30 : ℕ) = 150 ∧
      150 - 20 = 130 ∧
      130 - 30 = 100 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1004A08P2
