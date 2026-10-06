import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A16P3

theorem orange_count : (5 * 2 : ℕ) = 10 := by norm_num
theorem apple_count : (10 * 2 : ℕ) = 20 := by norm_num
theorem all_fruit_count : (20 + 10 + 5 : ℕ) = 35 := by norm_num

theorem fruit_display_total :
    (5 * 2 : ℕ) = 10 ∧
      (10 * 2 : ℕ) = 20 ∧
      (20 + 10 + 5 : ℕ) = 35 := by
  exact ⟨orange_count, apple_count, all_fruit_count⟩

theorem house_bulbs : (2 + 1 + 1 + 4 : ℕ) = 8 := by norm_num
theorem garage_bulbs : (8 / 2 : ℕ) = 4 := by norm_num
theorem all_bulbs : (8 + 4 : ℕ) = 12 := by norm_num
theorem bulb_packs : (12 / 2 : ℕ) = 6 := by norm_num

theorem light_bulb_pack_count :
    (2 + 1 + 1 + 4 : ℕ) = 8 ∧
      (8 / 2 : ℕ) = 4 ∧
      (8 + 4 : ℕ) = 12 ∧
      (12 / 2 : ℕ) = 6 := by
  exact ⟨house_bulbs, garage_bulbs, all_bulbs, bulb_packs⟩

theorem initial_prize_money : (2 * 100 : ℕ) = 200 := by norm_num
theorem money_still_needed : (1000 - 200 : ℕ) = 800 := by norm_num
theorem extra_win_weeks : (800 / 100 : ℕ) = 8 := by norm_num

theorem additional_winning_weeks :
    (2 * 100 : ℕ) = 200 ∧
      (1000 - 200 : ℕ) = 800 ∧
      (800 / 100 : ℕ) = 8 := by
  exact ⟨initial_prize_money, money_still_needed, extra_win_weeks⟩

theorem laundry_work_hours : (12 - 8 : ℕ) = 4 := by norm_num
theorem laundry_hourly_rate : (80 / 4 : ℕ) = 20 := by norm_num

theorem laundry_rate_per_hour :
    (12 - 8 : ℕ) = 4 ∧
      (80 / 4 : ℕ) = 20 := by
  exact ⟨laundry_work_hours, laundry_hourly_rate⟩

theorem one_watermelon_price : (23 * 2 : ℕ) = 46 := by norm_num
theorem watermelon_total_revenue : (46 * 18 : ℕ) = 828 := by norm_num

theorem watermelon_sales_revenue :
    (23 * 2 : ℕ) = 46 ∧
      (46 * 18 : ℕ) = 828 := by
  exact ⟨one_watermelon_price, watermelon_total_revenue⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A16P3
