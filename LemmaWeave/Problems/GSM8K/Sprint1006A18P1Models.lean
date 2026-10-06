import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A18P1

theorem hour_seconds : (60 * 60 : ℕ) = 3600 := by norm_num
theorem records_after_first_interval : (3600 / 5 : ℕ) = 720 := by norm_num
theorem records_including_initial : (720 + 1 : ℕ) = 721 := by norm_num
theorem record_boundary_nonunique : (720 : ℕ) ≠ 721 := by norm_num

theorem temperature_record_count_analysis :
    (60 * 60 : ℕ) = 3600 ∧
      (3600 / 5 : ℕ) = 720 ∧
      (720 + 1 : ℕ) = 721 ∧
      (720 : ℕ) ≠ 721 := by
  exact ⟨hour_seconds, records_after_first_interval, records_including_initial, record_boundary_nonunique⟩

theorem bill_dump_trips : ((40 - 6) / 2 : ℕ) = 17 := by norm_num
theorem jean_dump_trips : (17 + 6 : ℕ) = 23 := by norm_num
theorem dump_trip_total_check : (17 + 23 : ℕ) = 40 := by norm_num

theorem jean_dump_trip_count :
    ((40 - 6) / 2 : ℕ) = 17 ∧
      (17 + 6 : ℕ) = 23 ∧
      (17 + 23 : ℕ) = 40 := by
  exact ⟨bill_dump_trips, jean_dump_trips, dump_trip_total_check⟩

theorem half_show_seasons : (10 / 2 : ℕ) = 5 := by norm_num
theorem first_half_episodes : (5 * 20 : ℕ) = 100 := by norm_num
theorem second_half_episodes : (5 * 25 : ℕ) = 125 := by norm_num
theorem all_show_episodes : (100 + 125 : ℕ) = 225 := by norm_num

theorem magic_king_episode_total :
    (10 / 2 : ℕ) = 5 ∧
      (5 * 20 : ℕ) = 100 ∧
      (5 * 25 : ℕ) = 125 ∧
      (100 + 125 : ℕ) = 225 := by
  exact ⟨half_show_seasons, first_half_episodes, second_half_episodes, all_show_episodes⟩

theorem english_exam_minutes : (1 * 60 : ℕ) = 60 := by norm_num
theorem english_minutes_per_question : (60 / 30 : ℕ) = 2 := by norm_num
theorem math_exam_minutes : (3 * 60 / 2 : ℕ) = 90 := by norm_num
theorem math_minutes_per_question : (90 / 15 : ℕ) = 6 := by norm_num
theorem extra_math_minutes : (6 - 2 : ℕ) = 4 := by norm_num

theorem exam_minutes_per_question_difference :
    (1 * 60 : ℕ) = 60 ∧
      (60 / 30 : ℕ) = 2 ∧
      (3 * 60 / 2 : ℕ) = 90 ∧
      (90 / 15 : ℕ) = 6 ∧
      (6 - 2 : ℕ) = 4 := by
  exact ⟨english_exam_minutes, english_minutes_per_question, math_exam_minutes, math_minutes_per_question, extra_math_minutes⟩

theorem match_box_count : (5 * 12 : ℕ) = 60 := by norm_num
theorem match_count : (60 * 20 : ℕ) = 1200 := by norm_num

theorem match_stick_total :
    (5 * 12 : ℕ) = 60 ∧
      (60 * 20 : ℕ) = 1200 := by
  exact ⟨match_box_count, match_count⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A18P1
