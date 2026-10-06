import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A12P2

theorem second_tomatoes : (8 + 4 : ℕ) = 12 := by norm_num
theorem first_two_tomatoes : (8 + 12 : ℕ) = 20 := by norm_num
theorem each_remaining_tomatoes : (20 * 3 : ℕ) = 60 := by norm_num
theorem remaining_two_tomatoes : (60 * 2 : ℕ) = 120 := by norm_num
theorem all_tomatoes : (20 + 120 : ℕ) = 140 := by norm_num

theorem tomato_total :
    (8 + 4 : ℕ) = 12 ∧
      (8 + 12 : ℕ) = 20 ∧
      (20 * 3 : ℕ) = 60 ∧
      (60 * 2 : ℕ) = 120 ∧
      (20 + 120 : ℕ) = 140 := by
  exact ⟨second_tomatoes, first_two_tomatoes, each_remaining_tomatoes, remaining_two_tomatoes, all_tomatoes⟩

theorem highlight_seconds : (130 + 145 + 85 + 60 + 180 : ℕ) = 600 := by norm_num
theorem highlight_minutes : (600 / 60 : ℕ) = 10 := by norm_num
theorem minutes_per_player : (10 / 5 : ℕ) = 2 := by norm_num

theorem average_player_minutes :
    (130 + 145 + 85 + 60 + 180 : ℕ) = 600 ∧
      (600 / 60 : ℕ) = 10 ∧
      (10 / 5 : ℕ) = 2 := by
  exact ⟨highlight_seconds, highlight_minutes, minutes_per_player⟩

theorem required_laps : (99 / 9 : ℕ) = 11 := by norm_num
theorem laps_left : (11 - 6 : ℕ) = 5 := by norm_num

theorem remaining_complete_laps :
    (99 / 9 : ℕ) = 11 ∧
      (11 - 6 : ℕ) = 5 := by
  exact ⟨required_laps, laps_left⟩

theorem second_jar : (80 * 2 : ℕ) = 160 := by norm_num
theorem third_jar : (80 / 4 : ℕ) = 20 := by norm_num
theorem all_jars : (80 + 160 + 20 : ℕ) = 260 := by norm_num

theorem marble_jar_total :
    (80 * 2 : ℕ) = 160 ∧
      (80 / 4 : ℕ) = 20 ∧
      (80 + 160 + 20 : ℕ) = 260 := by
  exact ⟨second_jar, third_jar, all_jars⟩

theorem chair_students : (4 + 1 : ℕ) = 5 := by norm_num
theorem chairs_per_student : (5 * 10 : ℕ) = 50 := by norm_num
theorem all_chairs : (50 * 5 : ℕ) = 250 := by norm_num

theorem chairs_to_hall :
    (4 + 1 : ℕ) = 5 ∧
      (5 * 10 : ℕ) = 50 ∧
      (50 * 5 : ℕ) = 250 := by
  exact ⟨chair_students, chairs_per_student, all_chairs⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A12P2
