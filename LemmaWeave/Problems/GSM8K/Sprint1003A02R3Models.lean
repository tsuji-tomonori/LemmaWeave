import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A02R3

theorem weekly_income_difference_dollars :
    (24 * 7 : ℕ) = 168 ∧
      30 * 7 = 210 ∧
      210 - 168 = 42 := by
  norm_num

theorem combined_nail_count :
    (27 - 3 : ℕ) = 24 ∧
      24 / 2 = 12 ∧
      27 + 12 = 39 := by
  norm_num

theorem dog_age_in_six_years :
    (30 - 6 : ℕ) = 24 ∧
      24 / 4 = 6 ∧
      6 + 6 = 12 := by
  norm_num

theorem basketball_training_maximum_conditional_and_nonunique
    (firstWeek secondWeek : ℚ)
    (hfirst_pos : 0 < firstWeek)
    (hfirst_cap : firstWeek ≤ 14)
    (hsecond_pos : 0 < secondWeek)
    (hsecond_cap : secondWeek ≤ 21) :
    firstWeek + secondWeek ≤ 35 ∧
      (firstWeek = 14 → secondWeek = 21 → firstWeek + secondWeek = 35) ∧
      (∃ f s : ℚ, 0 < f ∧ f ≤ 14 ∧ 0 < s ∧ s ≤ 21 ∧ f + s = 14) ∧
      (∃ f s : ℚ, 0 < f ∧ f ≤ 14 ∧ 0 < s ∧ s ≤ 21 ∧ f + s = 35) := by
  constructor
  · linarith
  constructor
  · intro hf hs
    norm_num [hf, hs]
  constructor
  · exact ⟨7, 7, by norm_num, by norm_num, by norm_num, by norm_num, by norm_num⟩
  · exact ⟨14, 21, by norm_num, by norm_num, by norm_num, by norm_num, by norm_num⟩

theorem uncovered_playground_area_square_metres :
    (12 * 12 : ℕ) = 144 ∧
      8 * 5 = 40 ∧
      144 - 40 = 104 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A02R3
