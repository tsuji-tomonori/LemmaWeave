import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A19P3

theorem known_pizza_count : (4 + 5 : ℕ) = 9 := by norm_num
theorem large_pizza_count : (15 - 9 : ℕ) = 6 := by norm_num
theorem small_pizza_slices : (4 * 6 : ℕ) = 24 := by norm_num
theorem medium_pizza_slices : (5 * 8 : ℕ) = 40 := by norm_num
theorem large_pizza_slices : (6 * 12 : ℕ) = 72 := by norm_num
theorem all_pizza_slices : (24 + 40 + 72 : ℕ) = 136 := by norm_num

theorem pizza_slice_total :
    (4 + 5 : ℕ) = 9 ∧
      (15 - 9 : ℕ) = 6 ∧
      (4 * 6 : ℕ) = 24 ∧
      (5 * 8 : ℕ) = 40 ∧
      (6 * 12 : ℕ) = 72 ∧
      (24 + 40 + 72 : ℕ) = 136 := by
  exact ⟨known_pizza_count, large_pizza_count, small_pizza_slices, medium_pizza_slices, large_pizza_slices, all_pizza_slices⟩

theorem cafeteria_capacity : (15 * 10 : ℕ) = 150 := by norm_num
theorem usual_empty_seats : (150 / 10 : ℕ) = 15 := by norm_num
theorem usual_taken_seats : (150 - 15 : ℕ) = 135 := by norm_num

theorem cafeteria_taken_seats :
    (15 * 10 : ℕ) = 150 ∧
      (150 / 10 : ℕ) = 15 ∧
      (150 - 15 : ℕ) = 135 := by
  exact ⟨cafeteria_capacity, usual_empty_seats, usual_taken_seats⟩

theorem six_slice_option_total : (5 * 6 : ℕ) = 30 := by norm_num
theorem eight_slice_option_total : (5 * 8 : ℕ) = 40 := by norm_num
theorem ten_slice_option_total : (5 * 10 : ℕ) = 50 := by norm_num
theorem six_option_remainder : (30 % 20 : ℕ) = 10 := by norm_num
theorem eight_option_remainder : (40 % 20 : ℕ) = 0 := by norm_num
theorem ten_option_remainder : (50 % 20 : ℕ) = 10 := by norm_num
theorem slices_per_child : (40 / 20 : ℕ) = 2 := by norm_num

theorem birthday_pizza_slice_choice :
    (5 * 6 : ℕ) = 30 ∧
      (5 * 8 : ℕ) = 40 ∧
      (5 * 10 : ℕ) = 50 ∧
      (30 % 20 : ℕ) = 10 ∧
      (40 % 20 : ℕ) = 0 ∧
      (50 % 20 : ℕ) = 10 ∧
      (40 / 20 : ℕ) = 2 := by
  exact ⟨six_slice_option_total, eight_slice_option_total, ten_slice_option_total, six_option_remainder, eight_option_remainder, ten_option_remainder, slices_per_child⟩

theorem sleep_hours : (24 / 3 : ℕ) = 8 := by norm_num
theorem school_hours : (24 / 6 : ℕ) = 4 := by norm_num
theorem assignment_hours : (24 / 12 : ℕ) = 2 := by norm_num
theorem nonfamily_hours : (8 + 4 + 2 : ℕ) = 14 := by norm_num
theorem family_hours : (24 - 14 : ℕ) = 10 := by norm_num

theorem steve_family_hours :
    (24 / 3 : ℕ) = 8 ∧
      (24 / 6 : ℕ) = 4 ∧
      (24 / 12 : ℕ) = 2 ∧
      (8 + 4 + 2 : ℕ) = 14 ∧
      (24 - 14 : ℕ) = 10 := by
  exact ⟨sleep_hours, school_hours, assignment_hours, nonfamily_hours, family_hours⟩

theorem cheese_price : (10 / 2 : ℕ) = 5 := by norm_num
theorem butter_price : (5 * 80 / 100 : ℕ) = 4 := by norm_num
theorem conditional_bread_price : (4 / 2 : ℕ) = 2 := by norm_num
theorem shopping_total : (2 + 4 + 5 + 10 : ℕ) = 21 := by norm_num

theorem ursula_purchase_total :
    (10 / 2 : ℕ) = 5 ∧
      (5 * 80 / 100 : ℕ) = 4 ∧
      (4 / 2 : ℕ) = 2 ∧
      (2 + 4 + 5 + 10 : ℕ) = 21 := by
  exact ⟨cheese_price, butter_price, conditional_bread_price, shopping_total⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A19P3
