import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A10P2

theorem voyage_days : (4000 / 200 : ℕ) = 20 := by norm_num
theorem voyage_person_days : (25 * 20 : ℕ) = 500 := by norm_num
theorem voyage_water : (500 / 2 : ℕ) = 250 := by norm_num

theorem voyage_water_gallons :
    (4000 / 200 : ℕ) = 20 ∧
      (25 * 20 : ℕ) = 500 ∧
      (500 / 2 : ℕ) = 250 := by
  exact ⟨voyage_days, voyage_person_days, voyage_water⟩

theorem two_album_songs : (2 * 15 : ℕ) = 30 := by norm_num
theorem third_album_songs : (1 * 20 : ℕ) = 20 := by norm_num
theorem all_songs : (30 + 20 + 5 : ℕ) = 55 := by norm_num

theorem songs_released_total :
    (2 * 15 : ℕ) = 30 ∧
      (1 * 20 : ℕ) = 20 ∧
      (30 + 20 + 5 : ℕ) = 55 := by
  exact ⟨two_album_songs, third_album_songs, all_songs⟩

theorem potato_half_pounds : (3 * 40 : ℕ) = 120 := by norm_num
theorem potato_pounds : (120 / 2 : ℕ) = 60 := by norm_num
theorem potato_bags : (60 / 20 : ℕ) = 3 := by norm_num
theorem potato_total_cost : (3 * 5 : ℕ) = 15 := by norm_num

theorem potato_cost :
    (3 * 40 : ℕ) = 120 ∧
      (120 / 2 : ℕ) = 60 ∧
      (60 / 20 : ℕ) = 3 ∧
      (3 * 5 : ℕ) = 15 := by
  exact ⟨potato_half_pounds, potato_pounds, potato_bags, potato_total_cost⟩

theorem cat_count : (75 / 3 : ℕ) = 25 := by norm_num
theorem sixty_percent_cats : (25 * 60 / 100 : ℕ) = 15 := by norm_num
theorem five_less_cats : (15 - 5 : ℕ) = 10 := by norm_num

theorem cats_percentage_minus_five :
    (75 / 3 : ℕ) = 25 ∧
      (25 * 60 / 100 : ℕ) = 15 ∧
      (15 - 5 : ℕ) = 10 := by
  exact ⟨cat_count, sixty_percent_cats, five_less_cats⟩

theorem population_after_moves : (60 * 16 : ℕ) = 960 := by norm_num
theorem original_population_unique {p : ℤ} (h : p + 100 - 400 = 960) : p = 1260 := by omega
theorem reference_three_halvings : (60 * 8 + 400 - 100 : ℕ) = 780 := by norm_num
theorem reference_four_year_check : ((780 + 100 - 400) / 16 : ℕ) = 30 := by norm_num

theorem town_population_literal {p : ℤ} (h : p + 100 - 400 = 960) :
    (60 * 16 : ℕ) = 960 ∧
      p = 1260 ∧
      (60 * 8 + 400 - 100 : ℕ) = 780 ∧
      ((780 + 100 - 400) / 16 : ℕ) = 30 := by
  exact ⟨population_after_moves, original_population_unique h,
    reference_three_halvings, reference_four_year_check⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A10P2
