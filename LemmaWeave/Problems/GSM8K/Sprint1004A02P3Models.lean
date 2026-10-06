import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A02P3

theorem ice_cream_bill :
    (3 * 2 : ℕ) = 6 ∧
      4 * 2 = 8 ∧
      6 + 8 = 14 := by
  norm_num

theorem fouad_double_ahmed_age_interpretations :
    (∀ t : ℕ, 26 + t ≠ 2 * 11) ∧
      26 + 4 = 2 * (11 + 4) := by
  constructor
  · intro t
    omega
  · norm_num

theorem apples_per_guest :
    (3 * 8 : ℚ) = 24 ∧
      (24 : ℚ) * (3 / 2) = 36 ∧
      (36 : ℚ) / 12 = 3 := by
  norm_num

theorem freelance_income_total :
    (2 * 350 + 50 : ℕ) = 750 ∧
      4 * (350 + 750) = 4400 ∧
      350 + 750 + 4400 = 5500 := by
  norm_num

theorem shooting_stars_above_average :
    (14 - 2 : ℕ) = 12 ∧
      12 + 4 = 16 ∧
      (14 + 12 + 16) / 3 = 14 ∧
      16 - 14 = 2 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1004A02P3
