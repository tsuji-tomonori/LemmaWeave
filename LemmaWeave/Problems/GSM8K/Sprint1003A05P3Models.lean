import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A05P3

theorem school_capacity :
    (2 * 400 + 2 * 340 : ℕ) = 1480 := by
  norm_num

theorem doctor_daily_revenue :
    (4 * 50 + 3 * 25 : ℕ) = 275 ∧
    275 * 8 = 2200 := by
  norm_num

theorem grooming_minutes :
    (5 * 150 + 3 * 30 : ℕ) = 840 := by
  norm_num

theorem cookies_remaining :
    (20 * 2 / 5 : ℕ) = 8 ∧
    20 - 8 = 12 := by
  norm_num

theorem faye_money_left :
    (20 * 100 + 2 * 20 * 100 : ℕ) = 6000 ∧
    (10 * 150 + 5 * 300 : ℕ) = 3000 ∧
    6000 - 3000 = 3000 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A05P3
