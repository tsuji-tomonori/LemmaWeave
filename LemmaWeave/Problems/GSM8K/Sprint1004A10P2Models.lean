import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A10P2

theorem vehicle_washing_minutes :
    (4 + 7 + 4 + 9 : ℕ) = 24 ∧
      2 * 24 = 48 ∧
      2 * 24 = 48 ∧
      48 + 48 = 96 := by
  norm_num

theorem ticket_cost_difference :
    (9 * 11 : ℕ) = 99 ∧
      7 * 7 = 49 ∧
      99 - 49 = 50 := by
  norm_num

theorem barbecue_sauce_burgers :
    (3 + 1 + 1 : ℕ) = 5 ∧
      18 / 6 = 3 ∧
      5 - 3 = 2 ∧
      2 * 4 = 8 := by
  norm_num

theorem boxcar_coal_capacity :
    (4000 * 2 : ℕ) = 8000 ∧
      8000 * 3 = 24000 ∧
      3 * 24000 = 72000 ∧
      4 * 8000 = 32000 ∧
      7 * 4000 = 28000 ∧
      72000 + 32000 + 28000 = 132000 := by
  norm_num

theorem vending_machine_snacks :
    (30 / 6 : ℕ) = 5 ∧
      30 / 10 = 3 ∧
      30 - 5 - 3 = 22 ∧
      22 + 3 * 2 = 28 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1004A10P2

