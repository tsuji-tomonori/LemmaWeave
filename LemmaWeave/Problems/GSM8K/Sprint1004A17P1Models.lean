import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A17P1

theorem ludo_extra_marbles : (16 / 4 : ℕ) = 4 := by norm_num
theorem ludo_total_marbles : (16 + 4 : ℕ) = 20 := by norm_num
theorem wolfgang_ludo_total : (16 + 20 : ℕ) = 36 := by norm_num
theorem michael_marbles : (36 * 2 / 3 : ℕ) = 24 := by norm_num
theorem shared_marbles_each :
    (16 / 4 : ℕ) = 4 ∧
      16 + 4 = 20 ∧
      16 + 20 = 36 ∧
      36 * 2 / 3 = 24 ∧
      (36 + 24) / 3 = 20 := by
  exact ⟨ludo_extra_marbles, ludo_total_marbles, wolfgang_ludo_total,
    michael_marbles, by norm_num⟩

theorem repaired_comics : (150 / 25 : ℕ) = 6 := by norm_num
theorem comics_in_box :
    (150 / 25 : ℕ) = 6 ∧
      6 + 5 = 11 := by
  exact ⟨repaired_comics, by norm_num⟩

theorem crown_tip : (20000 * 10 / 100 : ℕ) = 2000 := by norm_num
theorem crown_total_payment :
    (20000 * 10 / 100 : ℕ) = 2000 ∧
      20000 + 2000 = 22000 := by
  exact ⟨crown_tip, by norm_num⟩

theorem mary_chickens : (10 + 6 : ℕ) = 16 := by norm_num
theorem john_chickens : (16 + 5 : ℕ) = 21 := by norm_num
theorem john_more_than_ray :
    (10 + 6 : ℕ) = 16 ∧
      16 + 5 = 21 ∧
      21 - 10 = 11 := by
  exact ⟨mary_chickens, john_chickens, by norm_num⟩

theorem rob_animals : (6 / 2 : ℕ) = 3 := by norm_num
theorem sam_rob_animals : (6 + 3 : ℕ) = 9 := by norm_num
theorem mark_animals : (9 / 3 : ℕ) = 3 := by norm_num
theorem peter_animals : (3 * 3 : ℕ) = 9 := by norm_num
theorem hunted_animals_total :
    (6 / 2 : ℕ) = 3 ∧
      6 + 3 = 9 ∧
      9 / 3 = 3 ∧
      3 * 3 = 9 ∧
      6 + 3 + 3 + 9 = 21 := by
  exact ⟨rob_animals, sam_rob_animals, mark_animals, peter_animals, by norm_num⟩

end LemmaWeave.Problems.GSM8K.Sprint1004A17P1

