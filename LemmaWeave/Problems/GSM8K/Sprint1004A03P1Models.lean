import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A03P1

theorem office_population_interpretations :
    (6 * 5 : ℕ) = 30 ∧
      30 + 30 = 60 ∧
      (∃ men : ℕ, men % 2 = 0 ∧ men + 30 ≠ 60) := by
  norm_num
  exact ⟨32, by norm_num⟩

theorem melody_pages_tomorrow :
    (20 / 4 : ℕ) = 5 ∧
      16 / 4 = 4 ∧
      8 / 4 = 2 ∧
      12 / 4 = 3 ∧
      5 + 4 + 2 + 3 = 14 := by
  norm_num

theorem guilty_cases :
    (17 - 2 : ℕ) = 15 ∧
      15 * 2 / 3 = 10 ∧
      15 - 10 - 1 = 4 := by
  norm_num

theorem book_collection_interpretations :
    (600 * 4 : ℕ) + 600 = 3000 ∧
      (500 * 5 : ℕ) + 500 = 3000 ∧
      600 ≠ 500 := by
  norm_num

theorem circus_back_legs_minutes :
    (3 * 10 : ℕ) = 30 ∧
      30 / 6 = 5 ∧
      10 + 30 + 5 = 45 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1004A03P1
