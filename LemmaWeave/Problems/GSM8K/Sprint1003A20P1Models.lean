import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A20P1

theorem strawberries_per_bucket_after_removal :
    (300 / 5 : ℕ) = 60 ∧ 60 - 20 = 40 := by
  norm_num

theorem usa_scientist_count :
    (70 / 2 : ℕ) = 35 ∧
      70 / 5 = 14 ∧
      70 - (35 + 14) = 21 := by
  norm_num

theorem weekly_rose_total :
    (2 * 12 : ℕ) = 24 ∧ 24 * 7 = 168 := by
  norm_num

theorem biology_exam_failure_range_conditional_and_nonunique
    (failed atEighty : ℕ)
    (hpartition : failed + atEighty = 24) :
    ((80 * 2 / 5 : ℕ) = 32 ∧
      80 - 32 = 48 ∧
      48 / 2 = 24 ∧
      failed ≤ 24 ∧
      (atEighty = 0 → failed = 24)) ∧
      (∃ exact80 below80 : ℕ,
        below80 + exact80 = 24 ∧ below80 = 0) ∧
      (∃ exact80 below80 : ℕ,
        below80 + exact80 = 24 ∧ below80 = 24) := by
  constructor
  · constructor
    · norm_num
    constructor
    · norm_num
    constructor
    · norm_num
    constructor <;> omega
  constructor
  · exact ⟨24, 0, by norm_num, rfl⟩
  · exact ⟨0, 24, by norm_num, rfl⟩

theorem weekly_pig_feed_pounds :
    (2 * 7 : ℕ) = 14 ∧ 10 * 14 = 140 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A20P1
