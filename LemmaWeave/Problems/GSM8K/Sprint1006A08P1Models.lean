import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A08P1

theorem fruit_basket_total : (25 * 5 : ℕ) = 125 := by norm_num
theorem fruit_known_total : (15 + 30 + 20 + 25 : ℕ) = 90 := by norm_num
theorem banana_count : (125 - 90 : ℕ) = 35 := by norm_num

theorem basket_e_bananas :
    (25 * 5 : ℕ) = 125 ∧
      (15 + 30 + 20 + 25 : ℕ) = 90 ∧
      (125 - 90 : ℕ) = 35 := by
  exact ⟨fruit_basket_total, fruit_known_total, banana_count⟩

theorem bet_prize : (2 * 400 : ℕ) = 800 := by norm_num
theorem bet_total : (400 + 800 : ℕ) = 1200 := by norm_num

theorem braden_money_after_bet :
    (2 * 400 : ℕ) = 800 ∧
      (400 + 800 : ℕ) = 1200 := by
  exact ⟨bet_prize, bet_total⟩

theorem fabric_area_first : (8 * 5 : ℕ) = 40 := by norm_num
theorem fabric_area_second : (10 * 7 : ℕ) = 70 := by norm_num
theorem fabric_area_third : (5 * 5 : ℕ) = 25 := by norm_num
theorem fabric_area_total : (40 + 70 + 25 : ℕ) = 135 := by norm_num
theorem flag_height : (135 / 15 : ℕ) = 9 := by norm_num

theorem flag_dimensions :
    (8 * 5 : ℕ) = 40 ∧
      (10 * 7 : ℕ) = 70 ∧
      (5 * 5 : ℕ) = 25 ∧
      (40 + 70 + 25 : ℕ) = 135 ∧
      (135 / 15 : ℕ) = 9 := by
  exact ⟨fabric_area_first, fabric_area_second, fabric_area_third, fabric_area_total, flag_height⟩

theorem math_book_cost : (4 * 20 : ℕ) = 80 := by norm_num
theorem science_book_count : (4 + 6 : ℕ) = 10 := by norm_num
theorem science_book_cost : (10 * 10 : ℕ) = 100 := by norm_num
theorem art_book_count : (2 * 4 : ℕ) = 8 := by norm_num
theorem art_book_cost : (8 * 20 : ℕ) = 160 := by norm_num
theorem known_book_cost : (80 + 100 + 160 : ℕ) = 340 := by norm_num
theorem music_book_cost : (500 - 340 : ℕ) = 160 := by norm_num

theorem music_book_spending :
    (4 * 20 : ℕ) = 80 ∧
      (4 + 6 : ℕ) = 10 ∧
      (10 * 10 : ℕ) = 100 ∧
      (2 * 4 : ℕ) = 8 ∧
      (8 * 20 : ℕ) = 160 ∧
      (80 + 100 + 160 : ℕ) = 340 ∧
      (500 - 340 : ℕ) = 160 := by
  exact ⟨math_book_cost, science_book_count, science_book_cost, art_book_count, art_book_cost, known_book_cost, music_book_cost⟩

theorem draw_minutes : (2 * 60 : ℕ) = 120 := by norm_num
theorem color_reduction : (120 * 30 / 100 : ℕ) = 36 := by norm_num
theorem color_minutes : (120 - 36 : ℕ) = 84 := by norm_num
theorem picture_minutes : (120 + 84 : ℕ) = 204 := by norm_num
theorem total_minutes : (204 * 10 : ℕ) = 2040 := by norm_num
theorem total_hours : (2040 / 60 : ℕ) = 34 := by norm_num

theorem illustration_time :
    (2 * 60 : ℕ) = 120 ∧
      (120 * 30 / 100 : ℕ) = 36 ∧
      (120 - 36 : ℕ) = 84 ∧
      (120 + 84 : ℕ) = 204 ∧
      (204 * 10 : ℕ) = 2040 ∧
      (2040 / 60 : ℕ) = 34 := by
  exact ⟨draw_minutes, color_reduction, color_minutes, picture_minutes, total_minutes, total_hours⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A08P1
