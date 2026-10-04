import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A11P3

theorem james_experience_eight_years_ago :
    (20 - 8 : ℕ) = 12 := by
  norm_num

theorem john_current_experience :
    (2 * 12 + 8 : ℕ) = 32 := by
  norm_num

theorem mike_current_experience :
    (32 - 16 : ℕ) = 16 := by
  norm_num

theorem combined_work_experience :
    (20 - 8 : ℕ) = 12 ∧
      2 * 12 + 8 = 32 ∧
      32 - 16 = 16 ∧
      20 + 32 + 16 = 68 := by
  exact ⟨james_experience_eight_years_ago, john_current_experience,
    mike_current_experience, by norm_num⟩

theorem yellow_chair_count :
    (4 * 5 : ℕ) = 20 := by
  norm_num

theorem blue_chair_count :
    (20 - 2 : ℕ) = 18 := by
  norm_num

theorem total_chairs :
    (4 * 5 : ℕ) = 20 ∧
      20 - 2 = 18 ∧
      5 + 20 + 18 = 43 := by
  exact ⟨yellow_chair_count, blue_chair_count, by norm_num⟩

theorem ironing_minutes_per_day :
    (5 + 3 : ℕ) = 8 := by
  norm_num

theorem ironing_minutes_per_week :
    (8 * 5 : ℕ) = 40 := by
  norm_num

theorem ironing_minutes_four_weeks :
    (5 + 3 : ℕ) = 8 ∧
      8 * 5 = 40 ∧
      40 * 4 = 160 := by
  exact ⟨ironing_minutes_per_day, ironing_minutes_per_week, by norm_num⟩

theorem apple_total :
    (14 * 3 : ℕ) = 42 := by
  norm_num

theorem apple_supply_days :
    (42 / 2 : ℕ) = 21 := by
  norm_num

theorem apple_supply_weeks :
    (14 * 3 : ℕ) = 42 ∧
      42 / 2 = 21 ∧
      21 / 7 = 3 := by
  exact ⟨apple_total, apple_supply_days, by norm_num⟩

theorem july_books :
    (2 * 8 : ℕ) = 16 := by
  norm_num

theorem august_books :
    (16 - 3 : ℕ) = 13 := by
  norm_num

theorem summer_books_total :
    (2 * 8 : ℕ) = 16 ∧
      16 - 3 = 13 ∧
      8 + 16 + 13 = 37 := by
  exact ⟨july_books, august_books, by norm_num⟩

end LemmaWeave.Problems.GSM8K.Sprint1004A11P3
