import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A13P1

theorem ramp_speed_gap : (36 + 34 + 38 : ℕ) = 108 ∧ 108 / 3 = 36 ∧ 40 - 36 = 4 := by norm_num

theorem firefighter_monthly_remainder :
    (30 * 48 : ℕ) = 1440 ∧ 1440 * 4 = 5760 ∧ 5760 / 3 = 1920 ∧
    1920 + 500 + 1000 = 3420 ∧ 5760 - 3420 = 2340 := by norm_num

theorem jewelry_total_readings :
    (15 * 2 / 3 : ℕ) = 10 ∧ 10 + 10 / 5 = 12 ∧ 25 + 10 + 10 + 12 = 57 ∧
    10 / 5 = 2 ∧ 25 + 10 + 10 + 2 = 47 := by norm_num

theorem joe_height (sara joe : ℕ) (hsum : sara + joe = 120)
    (hrel : joe = 2 * sara + 6) : joe = 82 := by omega

theorem babysitting_nights : (1 + 14 : ℕ) = 15 ∧ 15 / 3 = 5 ∧ 5 * 12 = 60 ∧ 60 / 4 = 15 := by norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A13P1
