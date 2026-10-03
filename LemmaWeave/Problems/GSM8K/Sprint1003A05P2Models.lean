import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A05P2

theorem cap_collection_after_losses :
    (3 * 12 : ℕ) = 36 ∧
    5 * 12 * 4 = 240 ∧
    40 * 5 = 200 ∧
    15 * 5 = 75 ∧
    36 + 240 + 200 - 75 = 401 := by
  norm_num

theorem quarterback_sacks :
    (80 * 30 / 100 : ℕ) = 24 ∧
    24 / 2 = 12 := by
  norm_num

theorem bethany_current_age :
    (16 - 5 : ℕ) = 11 ∧
    11 - 3 = 8 ∧
    8 * 2 = 16 ∧
    16 + 3 = 19 := by
  norm_num

theorem lost_holiday_revenue :
    (5000 * 3 * 6 : ℕ) = 90000 := by
  norm_num

theorem cow_sale_total :
    (52 * 4 * 2 * 200 : ℕ) = 83200 ∧
    (13 * 2 * 200 : ℕ) = 5200 ∧
    83200 ≠ 5200 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A05P2
