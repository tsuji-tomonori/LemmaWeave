import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A07P1

theorem bag_carrot_weight : (4 * 2 : ℕ) = 8 := by norm_num
theorem bag_grocery_weight : (4 + 6 + 8 : ℕ) = 18 := by norm_num
theorem bag_remaining_capacity : (20 - 18 : ℕ) = 2 := by norm_num
theorem remaining_bag_capacity :
    (4 * 2 : ℕ) = 8 ∧ 4 + 6 + 8 = 18 ∧ 20 - 18 = 2 := by
  exact ⟨bag_carrot_weight, bag_grocery_weight, bag_remaining_capacity⟩

theorem cakes_baked_total : (12 + 4 : ℕ) = 16 := by norm_num
theorem cakes_after_one_eaten : (16 - 1 : ℕ) = 15 := by norm_num
theorem cakes_left_after_one_eaten :
    (12 + 4 : ℕ) = 16 ∧ 16 - 1 = 15 := by
  exact ⟨cakes_baked_total, cakes_after_one_eaten⟩

theorem agatha_spent : (15 + 25 : ℕ) = 40 := by norm_num
theorem agatha_initial_total : (40 + 20 : ℕ) = 60 := by norm_num
theorem agatha_initial_money :
    (15 + 25 : ℕ) = 40 ∧ 40 + 20 = 60 := by
  exact ⟨agatha_spent, agatha_initial_total⟩

theorem chad_initial_stars : (4 * 2 : ℕ) = 8 := by norm_num
theorem chad_remaining_stars : (8 - 2 : ℕ) = 6 := by norm_num
theorem friends_current_stars : (4 + 6 + 6 : ℕ) = 16 := by norm_num
theorem ninja_stars_total :
    (4 * 2 : ℕ) = 8 ∧ 8 - 2 = 6 ∧ 4 + 6 + 6 = 16 := by
  exact ⟨chad_initial_stars, chad_remaining_stars, friends_current_stars⟩

theorem senior_year_points : (260 : ℚ) * (6 / 5) = 312 := by norm_num
theorem two_year_points : (260 : ℚ) + 312 = 572 := by norm_num
theorem basketball_points_two_years :
    (260 : ℚ) * (6 / 5) = 312 ∧ (260 : ℚ) + 312 = 572 := by
  exact ⟨senior_year_points, two_year_points⟩

end LemmaWeave.Problems.GSM8K.Sprint1004A07P1
