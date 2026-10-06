import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A18P2

theorem two_hour_calories : (2 * 30 : ℕ) = 60 := by norm_num
theorem five_hour_calories : (5 * 30 : ℕ) = 150 := by norm_num
theorem running_calorie_difference : (150 - 60 : ℕ) = 90 := by norm_num

theorem extra_running_calories :
    (2 * 30 : ℕ) = 60 ∧
      (5 * 30 : ℕ) = 150 ∧
      (150 - 60 : ℕ) = 90 := by
  exact ⟨two_hour_calories, five_hour_calories, running_calorie_difference⟩

theorem cake_work_hours : (2 * 4 : ℕ) = 8 := by norm_num
theorem cake_gross_pay : (8 * 22 : ℕ) = 176 := by norm_num
theorem cake_profit : (176 - 54 : ℕ) = 122 := by norm_num

theorem wedding_cake_profit :
    (2 * 4 : ℕ) = 8 ∧
      (8 * 22 : ℕ) = 176 ∧
      (176 - 54 : ℕ) = 122 := by
  exact ⟨cake_work_hours, cake_gross_pay, cake_profit⟩

theorem blue_fish_count : (10 * 2 : ℕ) = 20 := by norm_num
theorem tank_fish_count : (20 * 3 : ℕ) = 60 := by norm_num

theorem fish_tank_total :
    (10 * 2 : ℕ) = 20 ∧
      (20 * 3 : ℕ) = 60 := by
  exact ⟨blue_fish_count, tank_fish_count⟩

theorem phone_loss_dollars : (300 - 255 : ℕ) = 45 := by norm_num
theorem phone_loss_percent : (45 * 100 / 300 : ℕ) = 15 := by norm_num

theorem smartphone_loss_percentage :
    (300 - 255 : ℕ) = 45 ∧
      (45 * 100 / 300 : ℕ) = 15 := by
  exact ⟨phone_loss_dollars, phone_loss_percent⟩

theorem sunday_art_students : (20 / 2 : ℕ) = 10 := by norm_num
theorem weekend_art_students : (20 + 10 : ℕ) = 30 := by norm_num
theorem art_class_revenue : (30 * 10 : ℕ) = 300 := by norm_num

theorem weekend_art_class_revenue :
    (20 / 2 : ℕ) = 10 ∧
      (20 + 10 : ℕ) = 30 ∧
      (30 * 10 : ℕ) = 300 := by
  exact ⟨sunday_art_students, weekend_art_students, art_class_revenue⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A18P2
