import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A17P3

theorem second_week_miles : (2 * 2 + 3 : ℕ) = 7 := by norm_num
theorem third_week_miles : (7 * 9 / 7 : ℕ) = 9 := by norm_num
theorem injured_week_miles :
    (2 * 2 + 3 : ℕ) = 7 ∧
      7 * 9 / 7 = 9 ∧
      9 - 5 = 4 := by
  exact ⟨second_week_miles, third_week_miles, by norm_num⟩

theorem zoo_ticket_discount : (15 * 40 / 100 : ℕ) = 6 := by norm_num
theorem zoo_ticket_payment :
    (15 * 40 / 100 : ℕ) = 6 ∧
      15 - 6 = 9 := by
  exact ⟨zoo_ticket_discount, by norm_num⟩

theorem ham_cheese_slices : (10 * 2 : ℕ) = 20 := by norm_num
theorem grilled_cheese_slices : (50 - 20 : ℕ) = 30 := by norm_num
theorem grilled_cheese_sandwiches :
    (10 * 2 : ℕ) = 20 ∧
      50 - 20 = 30 ∧
      30 / 3 = 10 := by
  exact ⟨ham_cheese_slices, grilled_cheese_slices, by norm_num⟩

theorem sick_temperature : (95 + 10 : ℕ) = 105 := by norm_num
theorem degrees_above_fever_threshold :
    (95 + 10 : ℕ) = 105 ∧
      105 - 100 = 5 := by
  exact ⟨sick_temperature, by norm_num⟩

theorem outward_hike_hours : (12 / 4 : ℕ) = 3 := by norm_num
theorem return_hike_hours : (12 / 6 : ℕ) = 2 := by norm_num
theorem hike_total_hours :
    (12 / 4 : ℕ) = 3 ∧
      12 / 6 = 2 ∧
      3 + 2 = 5 := by
  exact ⟨outward_hike_hours, return_hike_hours, by norm_num⟩

end LemmaWeave.Problems.GSM8K.Sprint1004A17P3

