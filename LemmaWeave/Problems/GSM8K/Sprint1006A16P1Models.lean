import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A16P1

theorem stuffers_per_child : (4 + 2 + 1 : ℕ) = 7 := by norm_num
theorem all_stocking_stuffers : (7 * 3 : ℕ) = 21 := by norm_num

theorem stocking_stuffers_total :
    (4 + 2 + 1 : ℕ) = 7 ∧
      (7 * 3 : ℕ) = 21 := by
  exact ⟨stuffers_per_child, all_stocking_stuffers⟩

theorem daily_pizzas : (60 + 40 : ℕ) = 100 := by norm_num
theorem daily_food_total : (100 + 60 : ℕ) = 160 := by norm_num
theorem june_food_total : (160 * 30 : ℕ) = 4800 := by norm_num

theorem june_pizza_hotdog_total :
    (60 + 40 : ℕ) = 100 ∧
      (100 + 60 : ℕ) = 160 ∧
      (160 * 30 : ℕ) = 4800 := by
  exact ⟨daily_pizzas, daily_food_total, june_food_total⟩

theorem rooster_count : (12 / 3 : ℕ) = 4 := by norm_num
theorem chick_count : (12 * 5 : ℕ) = 60 := by norm_num
theorem all_chickens : (12 + 4 + 60 : ℕ) = 76 := by norm_num

theorem poultry_chickens_total :
    (12 / 3 : ℕ) = 4 ∧
      (12 * 5 : ℕ) = 60 ∧
      (12 + 4 + 60 : ℕ) = 76 := by
  exact ⟨rooster_count, chick_count, all_chickens⟩

theorem grandfather_age : (12 * 7 : ℕ) = 84 := by norm_num
theorem mother_age : (84 / 2 : ℕ) = 42 := by norm_num
theorem father_current_age : (42 + 5 : ℕ) = 47 := by norm_num
theorem years_until_25 : (25 - 12 : ℕ) = 13 := by norm_num
theorem father_future_age : (47 + 13 : ℕ) = 60 := by norm_num

theorem father_age_when_rachel_25 :
    (12 * 7 : ℕ) = 84 ∧
      (84 / 2 : ℕ) = 42 ∧
      (42 + 5 : ℕ) = 47 ∧
      (25 - 12 : ℕ) = 13 ∧
      (47 + 13 : ℕ) = 60 := by
  exact ⟨grandfather_age, mother_age, father_current_age, years_until_25, father_future_age⟩

theorem tuesday_crates : (5 * 2 : ℕ) = 10 := by norm_num
theorem wednesday_crates : (10 - 2 : ℕ) = 8 := by norm_num
theorem thursday_crates : (10 / 2 : ℕ) = 5 := by norm_num
theorem four_day_crates : (5 + 10 + 8 + 5 : ℕ) = 28 := by norm_num

theorem egg_crates_four_days :
    (5 * 2 : ℕ) = 10 ∧
      (10 - 2 : ℕ) = 8 ∧
      (10 / 2 : ℕ) = 5 ∧
      (5 + 10 + 8 + 5 : ℕ) = 28 := by
  exact ⟨tuesday_crates, wednesday_crates, thursday_crates, four_day_crates⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A16P1
