import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A17P2

theorem lee_jellybeans : (5 * 2 : ℕ) = 10 := by norm_num
theorem tino_jellybeans : (10 + 24 : ℕ) = 34 := by norm_num

theorem tino_jellybean_count :
    (5 * 2 : ℕ) = 10 ∧
      (10 + 24 : ℕ) = 34 := by
  exact ⟨lee_jellybeans, tino_jellybeans⟩

theorem fast_trip_hours : (1200 / 60 : ℕ) = 20 := by norm_num
theorem slow_trip_hours : (1200 / 50 : ℕ) = 24 := by norm_num
theorem saved_trip_hours : (24 - 20 : ℕ) = 4 := by norm_num

theorem driving_time_saved :
    (1200 / 60 : ℕ) = 20 ∧
      (1200 / 50 : ℕ) = 24 ∧
      (24 - 20 : ℕ) = 4 := by
  exact ⟨fast_trip_hours, slow_trip_hours, saved_trip_hours⟩

theorem daily_formula_portions : (105 / 5 : ℕ) = 21 := by norm_num
theorem daily_puppy_feedings : (21 / 7 : ℕ) = 3 := by norm_num

theorem puppy_feedings_per_day :
    (105 / 5 : ℕ) = 21 ∧
      (21 / 7 : ℕ) = 3 := by
  exact ⟨daily_formula_portions, daily_puppy_feedings⟩

theorem cousins_initial_money : (4 * 2 : ℕ) = 8 := by norm_num
theorem family_total_money : (7 + 8 : ℕ) = 15 := by norm_num
theorem family_people : (1 + 4 : ℕ) = 5 := by norm_num
theorem equal_money_share : (15 / 5 : ℕ) = 3 := by norm_num
theorem carmela_total_gift : (7 - 3 : ℕ) = 4 := by norm_num
theorem gift_per_cousin : (4 / 4 : ℕ) = 1 := by norm_num

theorem equalized_cousin_transfer :
    (4 * 2 : ℕ) = 8 ∧
      (7 + 8 : ℕ) = 15 ∧
      (1 + 4 : ℕ) = 5 ∧
      (15 / 5 : ℕ) = 3 ∧
      (7 - 3 : ℕ) = 4 ∧
      (4 / 4 : ℕ) = 1 := by
  exact ⟨cousins_initial_money, family_total_money, family_people, equal_money_share, carmela_total_gift, gift_per_cousin⟩

theorem first_bus_combined_time : (12 + 30 : ℕ) = 42 := by norm_num
theorem second_bus_time : (42 / 2 : ℕ) = 21 := by norm_num

theorem second_bus_ride_minutes :
    (12 + 30 : ℕ) = 42 ∧
      (42 / 2 : ℕ) = 21 := by
  exact ⟨first_bus_combined_time, second_bus_time⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A17P2
