import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A12P3

theorem week_two_miles : (2 * 2 + 3 : ℕ) = 7 := by norm_num
theorem week_three_miles : (7 * 9 / 7 : ℕ) = 9 := by norm_num
theorem injured_miles : (9 - 5 : ℕ) = 4 := by norm_num

theorem injured_week_miles :
    (2 * 2 + 3 : ℕ) = 7 ∧
      (7 * 9 / 7 : ℕ) = 9 ∧
      (9 - 5 : ℕ) = 4 := by
  exact ⟨week_two_miles, week_three_miles, injured_miles⟩

theorem zoo_discount : (15 * 40 / 100 : ℕ) = 6 := by norm_num
theorem zoo_paid : (15 - 6 : ℕ) = 9 := by norm_num

theorem zoo_ticket_price :
    (15 * 40 / 100 : ℕ) = 6 ∧
      (15 - 6 : ℕ) = 9 := by
  exact ⟨zoo_discount, zoo_paid⟩

theorem ham_cheese_slices : (10 * 2 : ℕ) = 20 := by norm_num
theorem grilled_cheese_slices : (50 - 20 : ℕ) = 30 := by norm_num
theorem grilled_sandwiches : (30 / 3 : ℕ) = 10 := by norm_num

theorem grilled_cheese_count :
    (10 * 2 : ℕ) = 20 ∧
      (50 - 20 : ℕ) = 30 ∧
      (30 / 3 : ℕ) = 10 := by
  exact ⟨ham_cheese_slices, grilled_cheese_slices, grilled_sandwiches⟩

theorem sick_temperature : (95 + 10 : ℕ) = 105 := by norm_num
theorem above_fever_threshold : (105 - 100 : ℕ) = 5 := by norm_num

theorem fever_degrees_above :
    (95 + 10 : ℕ) = 105 ∧
      (105 - 100 : ℕ) = 5 := by
  exact ⟨sick_temperature, above_fever_threshold⟩

theorem uphill_hours : (12 / 4 : ℕ) = 3 := by norm_num
theorem downhill_hours : (12 / 6 : ℕ) = 2 := by norm_num
theorem hike_total_hours : (3 + 2 : ℕ) = 5 := by norm_num

theorem round_trip_hike_hours :
    (12 / 4 : ℕ) = 3 ∧
      (12 / 6 : ℕ) = 2 ∧
      (3 + 2 : ℕ) = 5 := by
  exact ⟨uphill_hours, downhill_hours, hike_total_hours⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A12P3
