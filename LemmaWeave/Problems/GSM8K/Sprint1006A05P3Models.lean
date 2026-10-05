import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A05P3

theorem james_experience_eight_years_ago : (20 - 8 : ℕ) = 12 := by norm_num
theorem john_experience_eight_years_ago : (12 * 2 : ℕ) = 24 := by norm_num
theorem john_current_experience : (24 + 8 : ℕ) = 32 := by norm_num
theorem mike_current_experience : (32 - 16 : ℕ) = 16 := by norm_num
theorem combined_experience : (20 + 32 + 16 : ℕ) = 68 := by norm_num

theorem three_people_experience :
    (20 - 8 : ℕ) = 12 ∧
      12 * 2 = 24 ∧
      24 + 8 = 32 ∧
      32 - 16 = 16 ∧
      20 + 32 + 16 = 68 := by
  exact ⟨james_experience_eight_years_ago, john_experience_eight_years_ago,
    john_current_experience, mike_current_experience, combined_experience⟩

theorem yellow_chair_count : (5 * 4 : ℕ) = 20 := by norm_num
theorem blue_chair_count : (20 - 2 : ℕ) = 18 := by norm_num
theorem total_chair_count : (5 + 20 + 18 : ℕ) = 43 := by norm_num

theorem susan_chairs :
    (5 * 4 : ℕ) = 20 ∧
      20 - 2 = 18 ∧
      5 + 20 + 18 = 43 := by
  exact ⟨yellow_chair_count, blue_chair_count, total_chair_count⟩

theorem daily_ironing_minutes : (5 + 3 : ℕ) = 8 := by norm_num
theorem weekly_ironing_minutes : (8 * 5 : ℕ) = 40 := by norm_num
theorem four_week_ironing_minutes : (40 * 4 : ℕ) = 160 := by norm_num

theorem hayden_ironing_minutes :
    (5 + 3 : ℕ) = 8 ∧
      8 * 5 = 40 ∧
      40 * 4 = 160 := by
  exact ⟨daily_ironing_minutes, weekly_ironing_minutes, four_week_ironing_minutes⟩

theorem apple_total : (14 * 3 : ℕ) = 42 := by norm_num
theorem apples_eaten_per_day : (1 + 1 : ℕ) = 2 := by norm_num
theorem apple_eating_days : (42 / 2 : ℕ) = 21 := by norm_num
theorem apple_eating_weeks : (21 / 7 : ℕ) = 3 := by norm_num

theorem apple_supply_weeks :
    (14 * 3 : ℕ) = 42 ∧
      1 + 1 = 2 ∧
      42 / 2 = 21 ∧
      21 / 7 = 3 := by
  exact ⟨apple_total, apples_eaten_per_day, apple_eating_days, apple_eating_weeks⟩

theorem july_book_count : (8 * 2 : ℕ) = 16 := by norm_num
theorem august_book_count : (16 - 3 : ℕ) = 13 := by norm_num
theorem summer_book_total : (8 + 16 + 13 : ℕ) = 37 := by norm_num

theorem summer_reading_total :
    (8 * 2 : ℕ) = 16 ∧
      16 - 3 = 13 ∧
      8 + 16 + 13 = 37 := by
  exact ⟨july_book_count, august_book_count, summer_book_total⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A05P3
