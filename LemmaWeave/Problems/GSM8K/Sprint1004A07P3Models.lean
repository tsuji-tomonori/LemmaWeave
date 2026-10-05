import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A07P3

theorem marching_band_students : (600 / 5 : ℕ) = 120 := by norm_num
theorem brass_students : (120 / 2 : ℕ) = 60 := by norm_num
theorem saxophone_students : (60 / 5 : ℕ) = 12 := by norm_num
theorem alto_students : (12 / 3 : ℕ) = 4 := by norm_num
theorem alto_saxophone_students :
    (600 / 5 : ℕ) = 120 ∧ 120 / 2 = 60 ∧ 60 / 5 = 12 ∧ 12 / 3 = 4 := by
  exact ⟨marching_band_students, brass_students, saxophone_students, alto_students⟩

theorem harry_double_mike : (17 * 2 : ℕ) = 34 := by norm_num
theorem harry_gift : (34 + 10 : ℕ) = 44 := by norm_num
theorem stamp_gifts_total : (44 + 17 : ℕ) = 61 := by norm_num
theorem stamp_collection_total : (3000 + 61 : ℕ) = 3061 := by norm_num
theorem stamp_collection_after_gifts :
    (17 * 2 : ℕ) = 34 ∧ 34 + 10 = 44 ∧ 44 + 17 = 61 ∧ 3000 + 61 = 3061 := by
  exact ⟨harry_double_mike, harry_gift, stamp_gifts_total, stamp_collection_total⟩

theorem grace_age_today : (3 + 1 : ℕ) = 4 := by norm_num
theorem diana_twice_grace : (4 * 2 : ℕ) = 8 := by norm_num
theorem diana_age_today : (3 + 1 : ℕ) = 4 ∧ 4 * 2 = 8 := by
  exact ⟨grace_age_today, diana_twice_grace⟩

theorem parking_second_level : (90 + 8 : ℕ) = 98 := by norm_num
theorem parking_third_level : (98 + 12 : ℕ) = 110 := by norm_num
theorem parking_fourth_level : (110 - 9 : ℕ) = 101 := by norm_num
theorem parking_total_capacity : (90 + 98 + 110 + 101 : ℕ) = 399 := by norm_num
theorem parking_available_capacity : (399 - 100 : ℕ) = 299 := by norm_num
theorem parking_spaces_remaining :
    (90 + 8 : ℕ) = 98 ∧ 98 + 12 = 110 ∧ 110 - 9 = 101 ∧
      90 + 98 + 110 + 101 = 399 ∧ 399 - 100 = 299 := by
  exact ⟨parking_second_level, parking_third_level, parking_fourth_level,
    parking_total_capacity, parking_available_capacity⟩

theorem incentive_food_cost : (240 / 3 : ℕ) = 80 := by norm_num
theorem incentive_clothes_cost : (240 / 5 : ℕ) = 48 := by norm_num
theorem incentive_remaining : (240 - 80 - 48 : ℕ) = 112 := by norm_num
theorem incentive_saved_amount : (112 * 3 / 4 : ℕ) = 84 := by norm_num
theorem incentive_savings :
    (240 / 3 : ℕ) = 80 ∧ 240 / 5 = 48 ∧ 240 - 80 - 48 = 112 ∧
      112 * 3 / 4 = 84 := by
  exact ⟨incentive_food_cost, incentive_clothes_cost,
    incentive_remaining, incentive_saved_amount⟩

end LemmaWeave.Problems.GSM8K.Sprint1004A07P3
