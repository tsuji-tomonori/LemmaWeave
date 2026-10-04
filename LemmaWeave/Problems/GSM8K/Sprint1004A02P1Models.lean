import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A02P1

theorem boys_cans_total :
    (66 / 3 : ℕ) = 22 ∧
      22 / 2 = 11 ∧
      66 + 22 + 11 = 99 := by
  norm_num

theorem last_two_video_seconds :
    (2 * 60 : ℕ) = 120 ∧
      4 * 60 + 30 = 270 ∧
      510 - 120 - 270 = 120 ∧
      120 / 2 = 60 := by
  norm_num

theorem latest_start_time :
    (45 + 30 + 30 + 5 + 10 : ℕ) = 120 ∧
      20 * 60 - 120 = 1080 ∧
      1080 / 60 = 18 := by
  norm_num

theorem paris_trip_kilometers :
    (300 / 2 : ℕ) = 150 ∧
      150 / 3 = 50 ∧
      300 + 150 + 50 = 500 := by
  norm_num

theorem suit_shoes_payment :
    (430 + 190 : ℕ) = 620 ∧
      620 - 100 = 520 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1004A02P1
