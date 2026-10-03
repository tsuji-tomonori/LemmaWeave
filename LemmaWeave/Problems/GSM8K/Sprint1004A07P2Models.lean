import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A07P2

theorem chocolate_bars_remaining_to_sell :
    (5 + 7 : ℕ) = 12 ∧
      18 - 12 = 6 := by
  norm_num

theorem estimated_buildings_total_height :
    (100 * 80 / 100 : ℕ) = 80 ∧
      80 + 100 = 180 ∧
      180 - 20 = 160 ∧
      80 + 100 + 160 = 340 := by
  norm_num

theorem people_in_race_cars_at_finish :
    (20 * (2 + 1) : ℕ) = 60 ∧
      20 * 1 = 20 ∧
      60 + 20 = 80 := by
  norm_num

theorem grocery_money_left :
    (32 - 3 - 2 : ℕ) = 27 ∧
      27 / 3 = 9 ∧
      27 - 9 = 18 := by
  norm_num

theorem ben_gross_monthly_income :
    (400 : ℚ) / (1 / 5) = 2000 ∧
      (1 : ℚ) - 1 / 3 = 2 / 3 ∧
      (2000 : ℚ) / (2 / 3) = 3000 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1004A07P2
