import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A08P3

theorem flower_total : (50 * 400 : ℕ) = 20000 := by norm_num
theorem flower_cut_count : (20000 * 60 / 100 : ℕ) = 12000 := by norm_num
theorem flower_remaining_count : (20000 - 12000 : ℕ) = 8000 := by norm_num

theorem flowers_remaining_after_cut :
    (50 * 400 : ℕ) = 20000 ∧
      20000 * 60 / 100 = 12000 ∧
      20000 - 12000 = 8000 := by
  exact ⟨flower_total, flower_cut_count, flower_remaining_count⟩

theorem pancake_calories : (6 * 120 : ℕ) = 720 := by norm_num
theorem bacon_calories : (2 * 100 : ℕ) = 200 := by norm_num
theorem breakfast_calories_sum : (720 + 200 + 200 : ℕ) = 1120 := by norm_num

theorem breakfast_total_calories :
    (6 * 120 : ℕ) = 720 ∧
      2 * 100 = 200 ∧
      720 + 200 + 200 = 1120 := by
  exact ⟨pancake_calories, bacon_calories, breakfast_calories_sum⟩

theorem stock_purchase_cost : (20 * 3 : ℕ) = 60 := by norm_num
theorem stock_first_sale : (10 * 4 : ℕ) = 40 := by norm_num
theorem stock_remaining_shares : (20 - 10 : ℕ) = 10 := by norm_num
theorem stock_doubled_price : (3 * 2 : ℕ) = 6 := by norm_num
theorem stock_second_sale : (10 * 6 : ℕ) = 60 := by norm_num
theorem stock_profit_amount : (40 + 60 - 60 : ℕ) = 40 := by norm_num

theorem stock_sale_profit :
    (20 * 3 : ℕ) = 60 ∧
      10 * 4 = 40 ∧
      20 - 10 = 10 ∧
      3 * 2 = 6 ∧
      10 * 6 = 60 ∧
      40 + 60 - 60 = 40 := by
  exact ⟨stock_purchase_cost, stock_first_sale, stock_remaining_shares,
    stock_doubled_price, stock_second_sale, stock_profit_amount⟩

theorem tomato_discount_amount : (5 * 20 / 100 : ℕ) = 1 := by norm_num
theorem tomato_unit_price : (5 - 1 : ℕ) = 4 := by norm_num
theorem tomato_two_kilograms : (2 * 4 : ℕ) = 8 := by norm_num
theorem cucumber_three_kilograms : (3 * 5 : ℕ) = 15 := by norm_num
theorem produce_total_price : (8 + 15 : ℕ) = 23 := by norm_num

theorem tomato_cucumber_total_price :
    (5 * 20 / 100 : ℕ) = 1 ∧
      5 - 1 = 4 ∧
      2 * 4 = 8 ∧
      3 * 5 = 15 ∧
      8 + 15 = 23 := by
  exact ⟨tomato_discount_amount, tomato_unit_price, tomato_two_kilograms,
    cucumber_three_kilograms, produce_total_price⟩

theorem sandwiches_day_two : (2 * 2 : ℕ) = 4 := by norm_num
theorem sandwiches_day_three : (4 * 2 : ℕ) = 8 := by norm_num
theorem sandwiches_three_day_total : (2 + 4 + 8 : ℕ) = 14 := by norm_num
theorem sandwiches_six_day_total : (14 * 2 : ℕ) = 28 := by norm_num

theorem sandwiches_over_six_days :
    (2 * 2 : ℕ) = 4 ∧
      4 * 2 = 8 ∧
      2 + 4 + 8 = 14 ∧
      14 * 2 = 28 := by
  exact ⟨sandwiches_day_two, sandwiches_day_three, sandwiches_three_day_total,
    sandwiches_six_day_total⟩

end LemmaWeave.Problems.GSM8K.Sprint1004A08P3
