import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A13P2

theorem girls_from_total : (30 - 10 : ℕ) = 20 := by norm_num
theorem girls_from_ratio : (10 * 2 : ℕ) = 20 := by norm_num
theorem boys_cups : (10 * 5 : ℕ) = 50 := by norm_num
theorem girls_cups_total : (90 - 50 : ℕ) = 40 := by norm_num
theorem each_girl_cups : (40 / 20 : ℕ) = 2 := by norm_num

theorem cups_per_girl :
    (30 - 10 : ℕ) = 20 ∧
      (10 * 2 : ℕ) = 20 ∧
      (10 * 5 : ℕ) = 50 ∧
      (90 - 50 : ℕ) = 40 ∧
      (40 / 20 : ℕ) = 2 := by
  exact ⟨girls_from_total, girls_from_ratio, boys_cups, girls_cups_total, each_girl_cups⟩

theorem day_one_miles : (5 * 7 : ℕ) = 35 := by norm_num
theorem day_two_first_miles : (6 * 6 : ℕ) = 36 := by norm_num
theorem half_speed : (6 / 2 : ℕ) = 3 := by norm_num
theorem day_two_second_miles : (3 * 3 : ℕ) = 9 := by norm_num
theorem day_three_miles : (7 * 5 : ℕ) = 35 := by norm_num
theorem trip_total_miles : (35 + 36 + 9 + 35 : ℕ) = 115 := by norm_num

theorem horseback_trip_miles :
    (5 * 7 : ℕ) = 35 ∧
      (6 * 6 : ℕ) = 36 ∧
      (6 / 2 : ℕ) = 3 ∧
      (3 * 3 : ℕ) = 9 ∧
      (7 * 5 : ℕ) = 35 ∧
      (35 + 36 + 9 + 35 : ℕ) = 115 := by
  exact ⟨day_one_miles, day_two_first_miles, half_speed, day_two_second_miles, day_three_miles, trip_total_miles⟩

theorem grandma_money : (30 * 3 : ℕ) = 90 := by norm_num
theorem grandparents_money_total : (30 + 90 : ℕ) = 120 := by norm_num

theorem grandparents_total_money :
    (30 * 3 : ℕ) = 90 ∧
      (30 + 90 : ℕ) = 120 := by
  exact ⟨grandma_money, grandparents_money_total⟩

theorem three_point_total : (5 * 3 : ℕ) = 15 := by norm_num
theorem two_point_total : (10 * 2 : ℕ) = 20 := by norm_num
theorem marcus_points : (15 + 20 : ℕ) = 35 := by norm_num
theorem marcus_percent : (35 * 100 / 70 : ℕ) = 50 := by norm_num

theorem marcus_points_percentage :
    (5 * 3 : ℕ) = 15 ∧
      (10 * 2 : ℕ) = 20 ∧
      (15 + 20 : ℕ) = 35 ∧
      (35 * 100 / 70 : ℕ) = 50 := by
  exact ⟨three_point_total, two_point_total, marcus_points, marcus_percent⟩

theorem zain_quarters : (6 + 10 : ℕ) = 16 := by norm_num
theorem zain_dimes : (7 + 10 : ℕ) = 17 := by norm_num
theorem zain_nickels : (5 + 10 : ℕ) = 15 := by norm_num
theorem zain_all_coins : (16 + 17 + 15 : ℕ) = 48 := by norm_num

theorem zain_coin_total :
    (6 + 10 : ℕ) = 16 ∧
      (7 + 10 : ℕ) = 17 ∧
      (5 + 10 : ℕ) = 15 ∧
      (16 + 17 + 15 : ℕ) = 48 := by
  exact ⟨zain_quarters, zain_dimes, zain_nickels, zain_all_coins⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A13P2
