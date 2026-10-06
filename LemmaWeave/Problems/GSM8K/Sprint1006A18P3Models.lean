import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A18P3

theorem first_day_rain_hours : (17 - 7 : ℕ) = 10 := by norm_num
theorem second_day_rain_hours : (10 + 2 : ℕ) = 12 := by norm_num
theorem third_day_rain_hours : (12 * 2 : ℕ) = 24 := by norm_num
theorem rain_hours_total : (10 + 12 + 24 : ℕ) = 46 := by norm_num

theorem three_day_rain_hours :
    (17 - 7 : ℕ) = 10 ∧
      (10 + 2 : ℕ) = 12 ∧
      (12 * 2 : ℕ) = 24 ∧
      (10 + 12 + 24 : ℕ) = 46 := by
  exact ⟨first_day_rain_hours, second_day_rain_hours, third_day_rain_hours, rain_hours_total⟩

theorem remaining_sticker_pages : (12 - 1 : ℕ) = 11 := by norm_num
theorem remaining_stickers : (11 * 20 : ℕ) = 220 := by norm_num

theorem remaining_sticker_count :
    (12 - 1 : ℕ) = 11 ∧
      (11 * 20 : ℕ) = 220 := by
  exact ⟨remaining_sticker_pages, remaining_stickers⟩

theorem pancake_daily_expenses : (30 + 12 : ℕ) = 42 := by norm_num
theorem pancakes_to_break_even : (42 / 2 : ℕ) = 21 := by norm_num

theorem break_even_pancakes :
    (30 + 12 : ℕ) = 42 ∧
      (42 / 2 : ℕ) = 21 := by
  exact ⟨pancake_daily_expenses, pancakes_to_break_even⟩

theorem other_toy_count : (9 - 1 : ℕ) = 8 := by norm_num
theorem other_toy_total_value : (52 - 12 : ℕ) = 40 := by norm_num
theorem other_toy_price : (40 / 8 : ℕ) = 5 := by norm_num

theorem other_toy_unit_price :
    (9 - 1 : ℕ) = 8 ∧
      (52 - 12 : ℕ) = 40 ∧
      (40 / 8 : ℕ) = 5 := by
  exact ⟨other_toy_count, other_toy_total_value, other_toy_price⟩

theorem cash_given : (20 * 2 : ℕ) = 40 := by norm_num
theorem ticket_total_cost : (40 - 1 : ℕ) = 39 := by norm_num
theorem adult_ticket_cost : (9 * 2 : ℕ) = 18 := by norm_num
theorem children_ticket_total : (39 - 18 : ℕ) = 21 := by norm_num
theorem child_ticket_price : (9 - 2 : ℕ) = 7 := by norm_num
theorem child_ticket_count : (21 / 7 : ℕ) = 3 := by norm_num

theorem movie_child_count :
    (20 * 2 : ℕ) = 40 ∧
      (40 - 1 : ℕ) = 39 ∧
      (9 * 2 : ℕ) = 18 ∧
      (39 - 18 : ℕ) = 21 ∧
      (9 - 2 : ℕ) = 7 ∧
      (21 / 7 : ℕ) = 3 := by
  exact ⟨cash_given, ticket_total_cost, adult_ticket_cost, children_ticket_total, child_ticket_price, child_ticket_count⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A18P3
