import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A14P2

theorem grid_walk_home_time :
    (3 * 7 : ℕ) = 21 ∧ 8 * 2 = 16 ∧ 21 - 16 = 5 ∧
    8 - 3 = 5 ∧ 5 + 5 = 10 ∧ 10 / 2 = 5 := by norm_num

theorem avocado_change :
    (3 * 2 : ℕ) = 6 ∧ 20 - 6 = 14 := by norm_num

theorem john_current_age (john : ℤ)
    (h : john + 9 = 3 * (john - 11)) : john = 21 := by omega

theorem conference_attendance :
    (6 * 80 : ℕ) = 480 ∧ 480 * 2 / 3 = 320 := by norm_num

theorem austin_fruit_bags :
    (14 + 6 : ℕ) = 20 ∧ 9 - 5 = 4 ∧ 20 + 4 = 24 := by norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A14P2
