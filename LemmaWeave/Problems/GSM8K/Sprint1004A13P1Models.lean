import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A13P1

theorem five_baskets_total :
    (5 * 25 : ℕ) = 125 := by
  norm_num

theorem four_baskets_known :
    (15 + 30 + 20 + 25 : ℕ) = 90 := by
  norm_num

theorem bananas_in_basket_e :
    (5 * 25 : ℕ) = 125 ∧
      15 + 30 + 20 + 25 = 90 ∧
      125 - 90 = 35 := by
  exact ⟨five_baskets_total, four_baskets_known, by norm_num⟩

theorem bet_winnings :
    (2 * 400 : ℕ) = 800 := by
  norm_num

theorem money_after_bet :
    (2 * 400 : ℕ) = 800 ∧
      400 + 800 = 1200 := by
  exact ⟨bet_winnings, by norm_num⟩

theorem fabric_piece_areas :
    (8 * 5 : ℕ) = 40 ∧
      10 * 7 = 70 ∧
      5 * 5 = 25 := by
  norm_num

theorem fabric_total_area :
    (40 + 70 + 25 : ℕ) = 135 := by
  norm_num

theorem flag_height :
    (8 * 5 : ℕ) = 40 ∧
      10 * 7 = 70 ∧
      5 * 5 = 25 ∧
      40 + 70 + 25 = 135 ∧
      135 / 15 = 9 := by
  exact ⟨fabric_piece_areas.1, fabric_piece_areas.2.1,
    fabric_piece_areas.2.2, fabric_total_area, by norm_num⟩

theorem math_book_cost :
    (4 * 20 : ℕ) = 80 := by
  norm_num

theorem science_book_cost :
    ((4 + 6) * 10 : ℕ) = 100 := by
  norm_num

theorem art_book_cost :
    ((2 * 4) * 20 : ℕ) = 160 := by
  norm_num

theorem music_book_spending :
    (4 * 20 : ℕ) = 80 ∧
      (4 + 6) * 10 = 100 ∧
      (2 * 4) * 20 = 160 ∧
      500 - (80 + 100 + 160) = 160 := by
  exact ⟨math_book_cost, science_book_cost, art_book_cost, by norm_num⟩

theorem illustration_coloring_minutes :
    (120 * (100 - 30) / 100 : ℕ) = 84 := by
  norm_num

theorem illustration_minutes_per_picture :
    (120 + 84 : ℕ) = 204 := by
  norm_num

theorem illustration_total_hours :
    (120 * (100 - 30) / 100 : ℕ) = 84 ∧
      120 + 84 = 204 ∧
      204 * 10 = 2040 ∧
      2040 / 60 = 34 := by
  exact ⟨illustration_coloring_minutes, illustration_minutes_per_picture,
    by norm_num, by norm_num⟩

end LemmaWeave.Problems.GSM8K.Sprint1004A13P1
