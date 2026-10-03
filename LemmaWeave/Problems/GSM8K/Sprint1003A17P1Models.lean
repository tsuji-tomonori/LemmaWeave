import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A17P1

theorem original_sweets (original : ℕ)
    (hTaken : 2 * original = 3 * (48 * 4)) : original = 288 := by
  omega

theorem chess_or_basketball_students :
    (40 + 10 : ℕ) = 50 ∧ 250 * 50 / 100 = 125 := by
  norm_num

theorem engagement_treats_value :
    (2 * 4000 : ℕ) = 8000 ∧
      4 * 30000 = 120000 ∧
      8000 + 30000 + 120000 = 158000 := by
  norm_num

theorem class_size_from_cards (classSize : ℕ)
    (hCards : 3 * classSize = 10 * 15) : classSize = 50 := by
  omega

theorem charity_dinner_cost :
    (10 + 40 : ℕ) = 50 ∧
      50 * 100 = 5000 ∧
      5000 / 100 = 50 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A17P1
