import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A13P1

theorem daily_earnings_cents : (100 * 120 : ℕ) = 12000 := by norm_num
theorem daily_earnings_dollars : (12000 / 100 : ℕ) = 120 := by norm_num
theorem weekly_earnings_cents : (12000 * 6 : ℕ) = 72000 := by norm_num
theorem weekly_earnings_dollars : (72000 / 100 : ℕ) = 720 := by norm_num

theorem weekly_task_earnings :
    (100 * 120 : ℕ) = 12000 ∧
      (12000 / 100 : ℕ) = 120 ∧
      (12000 * 6 : ℕ) = 72000 ∧
      (72000 / 100 : ℕ) = 720 := by
  exact ⟨daily_earnings_cents, daily_earnings_dollars, weekly_earnings_cents, weekly_earnings_dollars⟩

theorem daily_calories : (3 * 20 : ℕ) = 60 := by norm_num
theorem calories_after_two_days : (60 * 2 : ℕ) = 120 := by norm_num

theorem two_day_calories :
    (3 * 20 : ℕ) = 60 ∧
      (60 * 2 : ℕ) = 120 := by
  exact ⟨daily_calories, calories_after_two_days⟩

theorem minnie_daily_horses : (7 + 3 : ℕ) = 10 := by norm_num
theorem twice_minnie_horses : (10 * 2 : ℕ) = 20 := by norm_num
theorem mickey_daily_horses : (20 - 6 : ℕ) = 14 := by norm_num
theorem mickey_week_horses : (14 * 7 : ℕ) = 98 := by norm_num

theorem mickey_weekly_horses :
    (7 + 3 : ℕ) = 10 ∧
      (10 * 2 : ℕ) = 20 ∧
      (20 - 6 : ℕ) = 14 ∧
      (14 * 7 : ℕ) = 98 := by
  exact ⟨minnie_daily_horses, twice_minnie_horses, mickey_daily_horses, mickey_week_horses⟩

theorem mother_sweets : (27 / 3 : ℕ) = 9 := by norm_num
theorem children_sweets : (27 - 9 : ℕ) = 18 := by norm_num
theorem youngest_sweets : (8 / 2 : ℕ) = 4 := by norm_num
theorem known_children_sweets : (8 + 4 : ℕ) = 12 := by norm_num
theorem second_child_gets : (18 - 12 : ℕ) = 6 := by norm_num

theorem second_child_sweets :
    (27 / 3 : ℕ) = 9 ∧
      (27 - 9 : ℕ) = 18 ∧
      (8 / 2 : ℕ) = 4 ∧
      (8 + 4 : ℕ) = 12 ∧
      (18 - 12 : ℕ) = 6 := by
  exact ⟨mother_sweets, children_sweets, youngest_sweets, known_children_sweets, second_child_gets⟩

theorem alex_guests : (84 * 2 / 3 : ℕ) = 56 := by norm_num
theorem all_guests : (84 + 56 : ℕ) = 140 := by norm_num
theorem all_plates : (140 + 10 : ℕ) = 150 := by norm_num
theorem all_asparagus_spears : (150 * 8 : ℕ) = 1200 := by norm_num

theorem asparagus_spears_total :
    (84 * 2 / 3 : ℕ) = 56 ∧
      (84 + 56 : ℕ) = 140 ∧
      (140 + 10 : ℕ) = 150 ∧
      (150 * 8 : ℕ) = 1200 := by
  exact ⟨alex_guests, all_guests, all_plates, all_asparagus_spears⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A13P1
