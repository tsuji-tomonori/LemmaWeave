import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A12P3

theorem puppy_food_365_days :
    (60 * 2 + (365 - 60) * 4 : ℕ) = 1340 := by
  norm_num

theorem puppy_food_366_days :
    (60 * 2 + (366 - 60) * 4 : ℕ) = 1344 := by
  norm_num

theorem puppy_bag_capacity :
    (5 * 16 : ℕ) = 80 := by
  norm_num

theorem puppy_food_bags_required :
    (60 * 2 + (365 - 60) * 4 : ℕ) = 1340 ∧
      60 * 2 + (366 - 60) * 4 = 1344 ∧
      5 * 16 = 80 ∧
      16 * 80 < 1340 ∧
      1340 ≤ 17 * 80 ∧
      16 * 80 < 1344 ∧
      1344 ≤ 17 * 80 := by
  exact ⟨puppy_food_365_days, puppy_food_366_days, puppy_bag_capacity,
    by norm_num, by norm_num, by norm_num, by norm_num⟩

theorem allowance_total :
    (14 * 100 / 35 : ℕ) = 40 := by
  norm_num

theorem allowance_money_left :
    (14 * 100 / 35 : ℕ) = 40 ∧
      40 - 14 = 26 := by
  exact ⟨allowance_total, by norm_num⟩

theorem image_pages :
    (98 / 2 : ℕ) = 49 := by
  norm_num

theorem pages_after_images_and_intro :
    (98 - 49 - 11 : ℕ) = 38 := by
  norm_num

theorem text_pages :
    (98 / 2 : ℕ) = 49 ∧
      98 - 49 - 11 = 38 ∧
      38 / 2 = 19 := by
  exact ⟨image_pages, pages_after_images_and_intro, by norm_num⟩

theorem recipe_reduction_factor :
    (16 / 4 : ℕ) = 4 := by
  norm_num

theorem butter_pounds_needed :
    (16 / 4 : ℕ) = 4 ∧
      4 / 4 = 1 := by
  exact ⟨recipe_reduction_factor, by norm_num⟩

theorem croissants_needed :
    (24 * 2 : ℕ) = 48 := by
  norm_num

theorem croissant_dozen_count :
    (48 / 12 : ℕ) = 4 := by
  norm_num

theorem croissant_cost :
    (24 * 2 : ℕ) = 48 ∧
      48 / 12 = 4 ∧
      4 * 8 = 32 := by
  exact ⟨croissants_needed, croissant_dozen_count, by norm_num⟩

end LemmaWeave.Problems.GSM8K.Sprint1004A12P3
