import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A12P1

theorem ludo_extra : (16 / 4 : ℕ) = 4 := by norm_num
theorem ludo_total : (16 + 4 : ℕ) = 20 := by norm_num
theorem wolfgang_ludo_total : (16 + 20 : ℕ) = 36 := by norm_num
theorem michael_marbles : (36 * 2 / 3 : ℕ) = 24 := by norm_num
theorem three_friend_total : (36 + 24 : ℕ) = 60 := by norm_num
theorem marbles_each : (60 / 3 : ℕ) = 20 := by norm_num

theorem marble_equal_share :
    (16 / 4 : ℕ) = 4 ∧
      (16 + 4 : ℕ) = 20 ∧
      (16 + 20 : ℕ) = 36 ∧
      (36 * 2 / 3 : ℕ) = 24 ∧
      (36 + 24 : ℕ) = 60 ∧
      (60 / 3 : ℕ) = 20 := by
  exact ⟨ludo_extra, ludo_total, wolfgang_ludo_total, michael_marbles, three_friend_total, marbles_each⟩

theorem repaired_comics : (150 / 25 : ℕ) = 6 := by norm_num
theorem all_comics : (6 + 5 : ℕ) = 11 := by norm_num

theorem comics_in_box :
    (150 / 25 : ℕ) = 6 ∧
      (6 + 5 : ℕ) = 11 := by
  exact ⟨repaired_comics, all_comics⟩

theorem crown_tip : (20000 * 10 / 100 : ℕ) = 2000 := by norm_num
theorem crown_with_tip : (20000 + 2000 : ℕ) = 22000 := by norm_num

theorem crown_total_cost :
    (20000 * 10 / 100 : ℕ) = 2000 ∧
      (20000 + 2000 : ℕ) = 22000 := by
  exact ⟨crown_tip, crown_with_tip⟩

theorem mary_chickens : (10 + 6 : ℕ) = 16 := by norm_num
theorem john_chickens : (16 + 5 : ℕ) = 21 := by norm_num
theorem john_ray_difference : (21 - 10 : ℕ) = 11 := by norm_num

theorem john_more_than_ray :
    (10 + 6 : ℕ) = 16 ∧
      (16 + 5 : ℕ) = 21 ∧
      (21 - 10 : ℕ) = 11 := by
  exact ⟨mary_chickens, john_chickens, john_ray_difference⟩

theorem rob_animals : (6 / 2 : ℕ) = 3 := by norm_num
theorem sam_rob_total : (6 + 3 : ℕ) = 9 := by norm_num
theorem mark_animals : (9 / 3 : ℕ) = 3 := by norm_num
theorem peter_animals : (3 * 3 : ℕ) = 9 := by norm_num
theorem all_hunters : (6 + 3 + 3 + 9 : ℕ) = 21 := by norm_num

theorem hunters_total :
    (6 / 2 : ℕ) = 3 ∧
      (6 + 3 : ℕ) = 9 ∧
      (9 / 3 : ℕ) = 3 ∧
      (3 * 3 : ℕ) = 9 ∧
      (6 + 3 + 3 + 9 : ℕ) = 21 := by
  exact ⟨rob_animals, sam_rob_total, mark_animals, peter_animals, all_hunters⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A12P1
