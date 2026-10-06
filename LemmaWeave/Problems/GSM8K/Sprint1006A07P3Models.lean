import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A07P3

theorem puppy_first_sixty_ounces : (60 * 2 : ℕ) = 120 := by norm_num
theorem puppy_common_remaining_days : (365 - 60 : ℕ) = 305 := by norm_num
theorem puppy_common_later_ounces : (305 * 4 : ℕ) = 1220 := by norm_num
theorem puppy_common_total_ounces : (120 + 1220 : ℕ) = 1340 := by norm_num
theorem puppy_bag_ounces : (5 * 16 : ℕ) = 80 := by norm_num
theorem puppy_common_minimum_bags :
    (16 * 80 : ℕ) < 1340 ∧ 1340 ≤ 17 * 80 := by norm_num
theorem puppy_leap_remaining_days : (366 - 60 : ℕ) = 306 := by norm_num
theorem puppy_leap_later_ounces : (306 * 4 : ℕ) = 1224 := by norm_num
theorem puppy_leap_total_ounces : (120 + 1224 : ℕ) = 1344 := by norm_num
theorem puppy_leap_minimum_bags :
    (16 * 80 : ℕ) < 1344 ∧ 1344 ≤ 17 * 80 := by norm_num

theorem puppy_special_food_bags :
    (60 * 2 : ℕ) = 120 ∧
      365 - 60 = 305 ∧
      305 * 4 = 1220 ∧
      120 + 1220 = 1340 ∧
      5 * 16 = 80 ∧
      ((16 * 80 : ℕ) < 1340 ∧ 1340 ≤ 17 * 80) ∧
      366 - 60 = 306 ∧
      306 * 4 = 1224 ∧
      120 + 1224 = 1344 ∧
      ((16 * 80 : ℕ) < 1344 ∧ 1344 ≤ 17 * 80) := by
  exact ⟨puppy_first_sixty_ounces, puppy_common_remaining_days,
    puppy_common_later_ounces, puppy_common_total_ounces, puppy_bag_ounces,
    puppy_common_minimum_bags, puppy_leap_remaining_days,
    puppy_leap_later_ounces, puppy_leap_total_ounces,
    puppy_leap_minimum_bags⟩

theorem allowance_total : (14 * 100 / 35 : ℕ) = 40 := by norm_num
theorem allowance_remaining : (40 - 14 : ℕ) = 26 := by norm_num

theorem allowance_left :
    (14 * 100 / 35 : ℕ) = 40 ∧
      40 - 14 = 26 := by
  exact ⟨allowance_total, allowance_remaining⟩

theorem book_image_pages : (98 / 2 : ℕ) = 49 := by norm_num
theorem book_remaining_pages : (98 - 49 - 11 : ℕ) = 38 := by norm_num
theorem book_text_page_count : (38 / 2 : ℕ) = 19 := by norm_num

theorem book_text_pages :
    (98 / 2 : ℕ) = 49 ∧
      98 - 49 - 11 = 38 ∧
      38 / 2 = 19 := by
  exact ⟨book_image_pages, book_remaining_pages, book_text_page_count⟩

theorem butter_recipe_reduction : (16 / 4 : ℕ) = 4 := by norm_num
theorem butter_pounds_needed : (4 / 4 : ℕ) = 1 := by norm_num

theorem butter_needed :
    (16 / 4 : ℕ) = 4 ∧
      4 / 4 = 1 := by
  exact ⟨butter_recipe_reduction, butter_pounds_needed⟩

theorem croissant_count_needed : (24 * 2 : ℕ) = 48 := by norm_num
theorem croissant_dozen_count : (48 / 12 : ℕ) = 4 := by norm_num
theorem croissant_total_cost : (4 * 8 : ℕ) = 32 := by norm_num

theorem croissant_cost :
    (24 * 2 : ℕ) = 48 ∧
      48 / 12 = 4 ∧
      4 * 8 = 32 := by
  exact ⟨croissant_count_needed, croissant_dozen_count,
    croissant_total_cost⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A07P3
