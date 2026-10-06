import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A14P2

theorem roses_per_ounce : (320 / 8 : ℕ) = 40 := by norm_num
theorem roses_per_bottle : (40 * 12 : ℕ) = 480 := by norm_num
theorem roses_for_bottles : (480 * 20 : ℕ) = 9600 := by norm_num
theorem bushes_needed : (9600 / 12 : ℕ) = 800 := by norm_num

theorem perfume_bushes_needed :
    (320 / 8 : ℕ) = 40 ∧
      (40 * 12 : ℕ) = 480 ∧
      (480 * 20 : ℕ) = 9600 ∧
      (9600 / 12 : ℕ) = 800 := by
  exact ⟨roses_per_ounce, roses_per_bottle, roses_for_bottles, bushes_needed⟩

theorem new_stores : (2000 / 2 : ℕ) = 1000 := by norm_num
theorem new_hospitals : (500 * 2 : ℕ) = 1000 := by norm_num
theorem new_schools : (200 - 50 : ℕ) = 150 := by norm_num
theorem new_police_stations : (20 + 5 : ℕ) = 25 := by norm_num
theorem new_city_total : (1000 + 1000 + 150 + 25 : ℕ) = 2175 := by norm_num

theorem new_city_buildings :
    (2000 / 2 : ℕ) = 1000 ∧
      (500 * 2 : ℕ) = 1000 ∧
      (200 - 50 : ℕ) = 150 ∧
      (20 + 5 : ℕ) = 25 ∧
      (1000 + 1000 + 150 + 25 : ℕ) = 2175 := by
  exact ⟨new_stores, new_hospitals, new_schools, new_police_stations, new_city_total⟩

theorem candies_after_gift : (60 - 20 : ℕ) = 40 := by norm_num
theorem packs_after_gift : (40 / 20 : ℕ) = 2 := by norm_num

theorem candy_packs_left :
    (60 - 20 : ℕ) = 40 ∧
      (40 / 20 : ℕ) = 2 := by
  exact ⟨candies_after_gift, packs_after_gift⟩

theorem four_day_window : (4 * 24 : ℕ) = 96 := by norm_num
theorem nap_time_total : (6 * 7 : ℕ) = 42 := by norm_num
theorem conditional_work_time : (96 - 42 : ℕ) = 54 := by norm_num
theorem other_activity_example : (4 : ℕ) ≤ 54 := by norm_num
theorem alternative_work_time : (96 - 42 - 4 : ℕ) = 50 := by norm_num
theorem work_times_differ : (54 : ℕ) ≠ 50 := by norm_num

theorem project_work_time_underdetermined :
    (4 * 24 : ℕ) = 96 ∧
      (6 * 7 : ℕ) = 42 ∧
      (96 - 42 : ℕ) = 54 ∧
      (4 : ℕ) ≤ 54 ∧
      (96 - 42 - 4 : ℕ) = 50 ∧
      (54 : ℕ) ≠ 50 := by
  exact ⟨four_day_window, nap_time_total, conditional_work_time, other_activity_example, alternative_work_time, work_times_differ⟩

theorem one_percent_income : (133 / 7 : ℕ) = 19 := by norm_num
theorem monthly_income : (19 * 100 : ℕ) = 1900 := by norm_num
theorem other_expenses : (1900 / 2 : ℕ) = 950 := by norm_num
theorem monthly_spending : (133 + 950 : ℕ) = 1083 := by norm_num
theorem savings_deposit : (1900 - 1083 : ℕ) = 817 := by norm_num

theorem monthly_savings_deposit :
    (133 / 7 : ℕ) = 19 ∧
      (19 * 100 : ℕ) = 1900 ∧
      (1900 / 2 : ℕ) = 950 ∧
      (133 + 950 : ℕ) = 1083 ∧
      (1900 - 1083 : ℕ) = 817 := by
  exact ⟨one_percent_income, monthly_income, other_expenses, monthly_spending, savings_deposit⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A14P2
