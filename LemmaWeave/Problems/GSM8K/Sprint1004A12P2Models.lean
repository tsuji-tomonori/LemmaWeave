import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A12P2

theorem winning_first_quarter_total :
    (10 * 2 : ℕ) = 20 := by
  norm_num

theorem winning_second_quarter_total :
    (20 + 10 : ℕ) = 30 := by
  norm_num

theorem winning_third_quarter_total :
    (30 + 20 : ℕ) = 50 := by
  norm_num

theorem winning_fourth_quarter_points :
    (10 * 2 : ℕ) = 20 ∧
      20 + 10 = 30 ∧
      30 + 20 = 50 ∧
      80 - 50 = 30 := by
  exact ⟨winning_first_quarter_total, winning_second_quarter_total,
    winning_third_quarter_total, by norm_num⟩

theorem cookie_total_minutes :
    (2 * 60 : ℕ) = 120 := by
  norm_num

theorem cookie_fixed_process_minutes :
    (15 + 30 + 30 : ℕ) = 75 := by
  norm_num

theorem cookie_dough_and_cooling_minutes :
    (2 * 60 : ℕ) = 120 ∧
      15 + 30 + 30 = 75 ∧
      120 - 75 = 45 := by
  exact ⟨cookie_total_minutes, cookie_fixed_process_minutes, by norm_num⟩

theorem regular_monthly_bills :
    (1250 + 150 + 400 + 300 + 200 + 200 : ℕ) = 2500 := by
  norm_num

theorem money_before_car_payment :
    (3200 - 2500 : ℕ) = 700 := by
  norm_num

theorem gas_and_maintenance_budget :
    (1250 + 150 + 400 + 300 + 200 + 200 : ℕ) = 2500 ∧
      3200 - 2500 = 700 ∧
      700 - 350 = 350 := by
  exact ⟨regular_monthly_bills, money_before_car_payment, by norm_num⟩

theorem annual_growth_inches :
    (12 / 2 : ℕ) = 6 := by
  norm_num

theorem growth_year_count :
    (12 - 8 : ℕ) = 4 := by
  norm_num

theorem height_gain_inches :
    (4 * 6 : ℕ) = 24 := by
  norm_num

theorem height_on_twelfth_birthday :
    (12 / 2 : ℕ) = 6 ∧
      12 - 8 = 4 ∧
      4 * 6 = 24 ∧
      50 + 24 = 74 := by
  exact ⟨annual_growth_inches, growth_year_count,
    height_gain_inches, by norm_num⟩

theorem birds_second_day :
    (300 * 2 : ℕ) = 600 := by
  norm_num

theorem birds_third_day :
    (600 - 200 : ℕ) = 400 := by
  norm_num

theorem fish_eater_birds_three_days :
    (300 * 2 : ℕ) = 600 ∧
      600 - 200 = 400 ∧
      300 + 600 + 400 = 1300 := by
  exact ⟨birds_second_day, birds_third_day, by norm_num⟩

end LemmaWeave.Problems.GSM8K.Sprint1004A12P2
