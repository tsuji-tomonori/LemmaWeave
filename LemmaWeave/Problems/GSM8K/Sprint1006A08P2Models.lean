import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A08P2

theorem curry_points : (12 * 2 : ℕ) = 24 := by norm_num
theorem durant_points : (9 * 2 : ℕ) = 18 := by norm_num
theorem klay_points : (12 / 2 : ℕ) = 6 := by norm_num
theorem team_points : (12 + 24 + 9 + 18 + 6 : ℕ) = 69 := by norm_num

theorem team_total_points :
    (12 * 2 : ℕ) = 24 ∧
      (9 * 2 : ℕ) = 18 ∧
      (12 / 2 : ℕ) = 6 ∧
      (12 + 24 + 9 + 18 + 6 : ℕ) = 69 := by
  exact ⟨curry_points, durant_points, klay_points, team_points⟩

theorem after_anaconda : (30 - 2 : ℕ) = 28 := by norm_num
theorem poisoned_count : (28 / 2 : ℕ) = 14 := by norm_num
theorem unpoisoned_count : (28 - 14 : ℕ) = 14 := by norm_num
theorem recovered_count : (14 / 7 : ℕ) = 2 := by norm_num
theorem survivor_count : (14 + 2 : ℕ) = 16 := by norm_num

theorem rainforest_survivors :
    (30 - 2 : ℕ) = 28 ∧
      (28 / 2 : ℕ) = 14 ∧
      (28 - 14 : ℕ) = 14 ∧
      (14 / 7 : ℕ) = 2 ∧
      (14 + 2 : ℕ) = 16 := by
  exact ⟨after_anaconda, poisoned_count, unpoisoned_count, recovered_count, survivor_count⟩

theorem brother_double {k b : ℤ} (hLess : k = b - 14) (hSum : k + b = 112) : 2 * b = 126 := by omega
theorem brother_height {k b : ℤ} (hLess : k = b - 14) (hSum : k + b = 112) : b = 63 := by omega
theorem kirill_height {k b : ℤ} (hLess : k = b - 14) (hSum : k + b = 112) : k = 49 := by omega

theorem kirill_height_solution {k b : ℤ} (hLess : k = b - 14) (hSum : k + b = 112) :
    2 * b = 126 ∧ b = 63 ∧ k = 49 := by
  exact ⟨brother_double hLess hSum, brother_height hLess hSum, kirill_height hLess hSum⟩

theorem daily_music_minutes : (2 * 60 : ℕ) = 120 := by norm_num
theorem beats_per_day : (200 * 120 : ℕ) = 24000 := by norm_num
theorem beats_per_week : (24000 * 7 : ℕ) = 168000 := by norm_num

theorem weekly_beats :
    (2 * 60 : ℕ) = 120 ∧
      (200 * 120 : ℕ) = 24000 ∧
      (24000 * 7 : ℕ) = 168000 := by
  exact ⟨daily_music_minutes, beats_per_day, beats_per_week⟩

theorem sticks_per_carton : (5 * 3 : ℕ) = 15 := by norm_num
theorem cartons_total : (8 * 4 : ℕ) = 32 := by norm_num
theorem sticks_total : (32 * 15 : ℕ) = 480 := by norm_num

theorem gum_sticks_total :
    (5 * 3 : ℕ) = 15 ∧
      (8 * 4 : ℕ) = 32 ∧
      (32 * 15 : ℕ) = 480 := by
  exact ⟨sticks_per_carton, cartons_total, sticks_total⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A08P2
