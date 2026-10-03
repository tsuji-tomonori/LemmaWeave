import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A15P1

theorem monday_biking_miles (monday : ℕ)
    (hTotal : monday + 12 + 2 * monday = 30) : monday = 6 := by
  omega

theorem snack_calories :
    (12 * 4 : ℕ) = 48 ∧ 6 * 17 = 102 ∧ 48 + 102 = 150 := by
  norm_num

theorem pokemon_cards_total :
    (6 + 2 : ℕ) = 8 ∧ 8 * 3 = 24 ∧ 6 + 8 + 24 = 38 := by
  norm_num

theorem bible_reading_weeks :
    (2 * 50 : ℕ) = 100 ∧ 100 * 7 = 700 ∧ 2800 / 700 = 4 := by
  norm_num

theorem round_trip_walk_miles :
    (2 * 3 : ℕ) = 6 ∧ 6 + 6 = 12 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A15P1
