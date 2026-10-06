import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A07P2

theorem game_first_quarter_points : (10 * 2 : ℕ) = 20 := by norm_num
theorem game_second_quarter_cumulative : (20 + 10 : ℕ) = 30 := by norm_num
theorem game_third_quarter_cumulative : (30 + 20 : ℕ) = 50 := by norm_num
theorem game_fourth_quarter_points_line : (80 - 50 : ℕ) = 30 := by norm_num

theorem game_fourth_quarter_points :
    (10 * 2 : ℕ) = 20 ∧
      20 + 10 = 30 ∧
      30 + 20 = 50 ∧
      80 - 50 = 30 := by
  exact ⟨game_first_quarter_points, game_second_quarter_cumulative,
    game_third_quarter_cumulative, game_fourth_quarter_points_line⟩

theorem cookie_known_minutes : (15 + 30 + 30 : ℕ) = 75 := by norm_num
theorem cookie_total_minutes : (2 * 60 : ℕ) = 120 := by norm_num
theorem cookie_batter_cooling_minutes : (120 - 75 : ℕ) = 45 := by norm_num

theorem batter_and_cooling_minutes :
    (15 + 30 + 30 : ℕ) = 75 ∧
      2 * 60 = 120 ∧
      120 - 75 = 45 := by
  exact ⟨cookie_known_minutes, cookie_total_minutes,
    cookie_batter_cooling_minutes⟩

theorem kyle_monthly_bills : (1250 + 150 + 400 + 300 + 200 + 200 : ℕ) = 2500 := by norm_num
theorem kyle_after_bills : (3200 - 2500 : ℕ) = 700 := by norm_num
theorem kyle_gas_maintenance : (700 - 350 : ℕ) = 350 := by norm_num

theorem car_gas_maintenance_budget :
    (1250 + 150 + 400 + 300 + 200 + 200 : ℕ) = 2500 ∧
      3200 - 2500 = 700 ∧
      700 - 350 = 350 := by
  exact ⟨kyle_monthly_bills, kyle_after_bills, kyle_gas_maintenance⟩

theorem alexander_half_foot_inches : (12 / 2 : ℕ) = 6 := by norm_num
theorem alexander_growth_years : (12 - 8 : ℕ) = 4 := by norm_num
theorem alexander_growth_inches : (4 * 6 : ℕ) = 24 := by norm_num
theorem alexander_final_height : (50 + 24 : ℕ) = 74 := by norm_num

theorem alexander_height :
    (12 / 2 : ℕ) = 6 ∧
      12 - 8 = 4 ∧
      4 * 6 = 24 ∧
      50 + 24 = 74 := by
  exact ⟨alexander_half_foot_inches, alexander_growth_years,
    alexander_growth_inches, alexander_final_height⟩

theorem birds_second_day : (300 * 2 : ℕ) = 600 := by norm_num
theorem birds_third_day : (600 - 200 : ℕ) = 400 := by norm_num
theorem birds_three_day_total : (300 + 600 + 400 : ℕ) = 1300 := by norm_num

theorem three_day_bird_total :
    (300 * 2 : ℕ) = 600 ∧
      600 - 200 = 400 ∧
      300 + 600 + 400 = 1300 := by
  exact ⟨birds_second_day, birds_third_day, birds_three_day_total⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A07P2
