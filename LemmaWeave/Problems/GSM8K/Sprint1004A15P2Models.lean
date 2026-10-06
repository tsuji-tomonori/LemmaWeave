import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A15P2

theorem sailing_travel_days : (4000 / 200 : ℕ) = 20 := by norm_num
theorem sailing_daily_half_gallons : (25 : ℕ) = 25 := by norm_num
theorem sailing_total_half_gallons : (25 * 20 : ℕ) = 500 := by norm_num
theorem sailing_water_gallons :
    (4000 / 200 : ℕ) = 20 ∧
      25 * 20 = 500 ∧
      500 / 2 = 250 := by
  exact ⟨sailing_travel_days, sailing_total_half_gallons, by norm_num⟩

theorem album_fifteen_songs : (2 * 15 : ℕ) = 30 := by norm_num
theorem album_twenty_songs : (1 * 20 : ℕ) = 20 := by norm_num
theorem songs_released :
    (2 * 15 : ℕ) = 30 ∧
      1 * 20 = 20 ∧
      5 + 30 + 20 = 55 := by
  exact ⟨album_fifteen_songs, album_twenty_songs, by norm_num⟩

theorem potato_half_pounds : (3 * 40 : ℕ) = 120 := by norm_num
theorem potato_total_pounds : (120 / 2 : ℕ) = 60 := by norm_num
theorem potato_bags : (60 / 20 : ℕ) = 3 := by norm_num
theorem potato_bag_cost :
    (3 * 40 : ℕ) = 120 ∧
      120 / 2 = 60 ∧
      60 / 20 = 3 ∧
      3 * 5 = 15 := by
  exact ⟨potato_half_pounds, potato_total_pounds, potato_bags, by norm_num⟩

theorem cats_from_hogs : (75 / 3 : ℕ) = 25 := by norm_num
theorem sixty_percent_of_cats : (25 * 60 / 100 : ℕ) = 15 := by norm_num
theorem hog_cat_expression :
    (75 / 3 : ℕ) = 25 ∧
      25 * 60 / 100 = 15 ∧
      15 - 5 = 10 := by
  exact ⟨cats_from_hogs, sixty_percent_of_cats, by norm_num⟩

theorem town_after_moves_literal : (60 * 16 : ℕ) = 960 := by norm_num
theorem town_original_literal : (960 + 400 - 100 : ℕ) = 1260 := by norm_num
theorem town_after_moves_reference_convention : (60 * 8 : ℕ) = 480 := by norm_num
theorem town_original_reference_convention : (480 + 400 - 100 : ℕ) = 780 := by norm_num
theorem town_population_interpretations :
    ((60 * 16 : ℕ) = 960 ∧ 960 + 400 - 100 = 1260) ∧
      ((60 * 8 : ℕ) = 480 ∧ 480 + 400 - 100 = 780) := by
  exact ⟨⟨town_after_moves_literal, town_original_literal⟩,
    ⟨town_after_moves_reference_convention, town_original_reference_convention⟩⟩

end LemmaWeave.Problems.GSM8K.Sprint1004A15P2

