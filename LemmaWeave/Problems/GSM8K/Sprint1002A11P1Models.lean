import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1002A11P1

theorem bike_trip_time : (2 * 3 : ℕ) = 6 ∧ 10 - 6 = 4 ∧ 4 / 1 = 4 ∧ 2 + 4 = 6 := by norm_num

theorem poem_word_count : (10 * 8 : ℕ) = 80 ∧ 20 * 80 = 1600 := by norm_num

theorem house_height_difference : (70 + 80 + 99 : ℕ) = 249 ∧ 249 / 3 = 83 ∧ 83 - 80 = 3 := by norm_num

theorem male_attendee_count (male female : ℕ) (hTotal : male + female = 120) (hDiff : male = female + 4) : male = 62 := by omega

theorem two_week_finance_fees : (100 * 5 / 100 : ℕ) = 5 ∧ 100 * 10 / 100 = 10 ∧ 5 + 10 = 15 := by norm_num

end LemmaWeave.Problems.GSM8K.Sprint1002A11P1
