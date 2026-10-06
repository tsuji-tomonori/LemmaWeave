import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A04P3

theorem two_people_leg_count : (2 * 2 : ℕ) = 4 := by norm_num
theorem dog_leg_count_in_pool : (24 - 4 : ℕ) = 20 := by norm_num
theorem pool_dog_count : (20 / 4 : ℕ) = 5 := by norm_num

theorem pool_dogs :
    (2 * 2 : ℕ) = 4 ∧
      24 - 4 = 20 ∧
      20 / 4 = 5 := by
  exact ⟨two_people_leg_count, dog_leg_count_in_pool, pool_dog_count⟩

theorem chihuahua_weight : ((439 - 10) / 13 : ℕ) = 33 := by norm_num
theorem pitbull_weight : (3 * 33 : ℕ) = 99 := by norm_num
theorem great_dane_weight_value : (3 * 99 + 10 : ℕ) = 307 := by norm_num
theorem dog_weight_total_check : (33 + 99 + 307 : ℕ) = 439 := by norm_num

theorem great_dane_weight :
    ((439 - 10) / 13 : ℕ) = 33 ∧
      3 * 33 = 99 ∧
      3 * 99 + 10 = 307 ∧
      33 + 99 + 307 = 439 := by
  exact ⟨chihuahua_weight, pitbull_weight, great_dane_weight_value,
    dog_weight_total_check⟩

theorem phd_research_half_years : (4 * 175 / 100 : ℕ) = 7 := by norm_num
theorem phd_total_half_years : (2 + 4 + 7 + 1 : ℕ) = 14 := by norm_num
theorem phd_total_year_count : (14 / 2 : ℕ) = 7 := by norm_num

theorem phd_total_years :
    (4 * 175 / 100 : ℕ) = 7 ∧
      2 + 4 + 7 + 1 = 14 ∧
      14 / 2 = 7 := by
  exact ⟨phd_research_half_years, phd_total_half_years, phd_total_year_count⟩

theorem old_drive_capacity_tenths : (24 + 126 : ℕ) = 150 := by norm_num
theorem used_after_deletion_tenths : (126 - 46 : ℕ) = 80 := by norm_num
theorem used_after_new_files_tenths : (80 + 20 : ℕ) = 100 := by norm_num
theorem new_drive_free_tenths : (200 - 100 : ℕ) = 100 := by norm_num
theorem new_drive_free_gigabytes : (100 / 10 : ℕ) = 10 := by norm_num

theorem external_drive_free_space :
    (24 + 126 : ℕ) = 150 ∧
      126 - 46 = 80 ∧
      80 + 20 = 100 ∧
      200 - 100 = 100 ∧
      100 / 10 = 10 := by
  exact ⟨old_drive_capacity_tenths, used_after_deletion_tenths,
    used_after_new_files_tenths, new_drive_free_tenths,
    new_drive_free_gigabytes⟩

theorem soap_bars_per_year : (12 / 2 : ℕ) = 6 := by norm_num
theorem soap_annual_cost : (6 * 8 : ℕ) = 48 := by norm_num

theorem annual_soap_cost :
    (12 / 2 : ℕ) = 6 ∧
      6 * 8 = 48 := by
  exact ⟨soap_bars_per_year, soap_annual_cost⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A04P3
