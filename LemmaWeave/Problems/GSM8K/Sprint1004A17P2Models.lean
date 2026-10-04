import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A17P2

theorem first_two_tomato_plants : (8 + (8 + 4) : ℕ) = 20 := by norm_num
theorem each_remaining_tomato_plant : (20 * 3 : ℕ) = 60 := by norm_num
theorem tomatoes_total :
    (8 + (8 + 4) : ℕ) = 20 ∧
      20 * 3 = 60 ∧
      8 + 12 + 60 + 60 = 140 := by
  exact ⟨first_two_tomato_plants, each_remaining_tomato_plant, by norm_num⟩

theorem highlight_total_seconds : (130 + 145 + 85 + 60 + 180 : ℕ) = 600 := by norm_num
theorem highlight_total_minutes : (600 / 60 : ℕ) = 10 := by norm_num
theorem average_minutes_per_player :
    (130 + 145 + 85 + 60 + 180 : ℕ) = 600 ∧
      600 / 60 = 10 ∧
      10 / 5 = 2 := by
  exact ⟨highlight_total_seconds, highlight_total_minutes, by norm_num⟩

theorem total_track_laps : (99 / 9 : ℕ) = 11 := by norm_num
theorem remaining_track_laps :
    (99 / 9 : ℕ) = 11 ∧
      11 - 6 = 5 := by
  exact ⟨total_track_laps, by norm_num⟩

theorem second_jar_marbles : (80 * 2 : ℕ) = 160 := by norm_num
theorem third_jar_marbles : (80 / 4 : ℕ) = 20 := by norm_num
theorem jar_marbles_total :
    (80 * 2 : ℕ) = 160 ∧
      80 / 4 = 20 ∧
      80 + 160 + 20 = 260 := by
  exact ⟨second_jar_marbles, third_jar_marbles, by norm_num⟩

theorem chair_students : (4 + 1 : ℕ) = 5 := by norm_num
theorem chairs_per_student : (5 * 10 : ℕ) = 50 := by norm_num
theorem chairs_reference_reading :
    (4 + 1 : ℕ) = 5 ∧
      5 * 10 = 50 ∧
      5 * 50 = 250 := by
  exact ⟨chair_students, chairs_per_student, by norm_num⟩
theorem chairs_collective_trip_reading : (10 * 5 : ℕ) = 50 := by norm_num
theorem chair_readings_differ : (250 : ℕ) ≠ 50 := by norm_num
theorem chair_trip_wording_is_not_unique :
    ((4 + 1 : ℕ) = 5 ∧ 5 * 10 = 50 ∧ 5 * 50 = 250) ∧
      (10 * 5 : ℕ) = 50 ∧
      (250 : ℕ) ≠ 50 := by
  exact ⟨chairs_reference_reading, chairs_collective_trip_reading,
    chair_readings_differ⟩

end LemmaWeave.Problems.GSM8K.Sprint1004A17P2
