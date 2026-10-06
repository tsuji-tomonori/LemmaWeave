import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A17P1

theorem gross_booking_revenue : (12000 + 16000 : ℕ) = 28000 := by norm_num
theorem net_booking_revenue : (28000 - 1600 : ℕ) = 26400 := by norm_num

theorem booking_revenue_after_refunds :
    (12000 + 16000 : ℕ) = 28000 ∧
      (28000 - 1600 : ℕ) = 26400 := by
  exact ⟨gross_booking_revenue, net_booking_revenue⟩

theorem current_month_books : (4 * 2 : ℕ) = 8 := by norm_num
theorem two_month_books : (4 + 8 : ℕ) = 12 := by norm_num

theorem two_month_reading_total :
    (4 * 2 : ℕ) = 8 ∧
      (4 + 8 : ℕ) = 12 := by
  exact ⟨current_month_books, two_month_books⟩

theorem ice_cream_cost : (2 * 3 : ℕ) = 6 := by norm_num
theorem coffee_cup_count : (3 * 2 : ℕ) = 6 := by norm_num
theorem coffee_cost : (6 * 4 : ℕ) = 24 := by norm_num
theorem cake_cost : (3 * 7 : ℕ) = 21 := by norm_num
theorem cafeteria_cost : (6 + 24 + 21 : ℕ) = 51 := by norm_num

theorem cafeteria_group_total :
    (2 * 3 : ℕ) = 6 ∧
      (3 * 2 : ℕ) = 6 ∧
      (6 * 4 : ℕ) = 24 ∧
      (3 * 7 : ℕ) = 21 ∧
      (6 + 24 + 21 : ℕ) = 51 := by
  exact ⟨ice_cream_cost, coffee_cup_count, coffee_cost, cake_cost, cafeteria_cost⟩

theorem daily_oranges : (10 * 12 : ℕ) = 120 := by norm_num
theorem daily_orange_packs : (120 / 6 : ℕ) = 20 := by norm_num
theorem three_week_packs : (20 * 7 * 3 : ℕ) = 420 := by norm_num
theorem orange_sales_revenue : (420 * 2 : ℕ) = 840 := by norm_num

theorem three_week_orange_revenue :
    (10 * 12 : ℕ) = 120 ∧
      (120 / 6 : ℕ) = 20 ∧
      (20 * 7 * 3 : ℕ) = 420 ∧
      (420 * 2 : ℕ) = 840 := by
  exact ⟨daily_oranges, daily_orange_packs, three_week_packs, orange_sales_revenue⟩

theorem mural_area : (6 * 3 : ℕ) = 18 := by norm_num
theorem mural_paint_cost : (18 * 4 : ℕ) = 72 := by norm_num
theorem mural_hours : (18 : ℚ) / (3 / 2) = 12 := by norm_num
theorem mural_labor_cost : (12 * 10 : ℕ) = 120 := by norm_num
theorem mural_cost_total : (72 + 120 : ℕ) = 192 := by norm_num

theorem mural_total_cost :
    (6 * 3 : ℕ) = 18 ∧
      (18 * 4 : ℕ) = 72 ∧
      (18 : ℚ) / (3 / 2) = 12 ∧
      (12 * 10 : ℕ) = 120 ∧
      (72 + 120 : ℕ) = 192 := by
  exact ⟨mural_area, mural_paint_cost, mural_hours, mural_labor_cost, mural_cost_total⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A17P1
