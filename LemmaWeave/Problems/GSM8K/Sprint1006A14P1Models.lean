import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A14P1

theorem lake_trip_and_return : (15 + 7 : ℕ) = 22 := by norm_num
theorem restaurant_walk_minutes : (32 - 22 : ℕ) = 10 := by norm_num

theorem park_to_restaurant_walk :
    (15 + 7 : ℕ) = 22 ∧
      (32 - 22 : ℕ) = 10 := by
  exact ⟨lake_trip_and_return, restaurant_walk_minutes⟩

theorem four_pounds_ounces : (4 * 16 : ℕ) = 64 := by norm_num
theorem half_pound_ounces : (16 / 2 : ℕ) = 8 := by norm_num
theorem chicken_ounces : (64 + 8 : ℕ) = 72 := by norm_num
theorem mixture_ounces : (72 + 24 : ℕ) = 96 := by norm_num
theorem serving_ounces : (96 / 12 : ℕ) = 8 := by norm_num

theorem chicken_surprise_serving_ounces :
    (4 * 16 : ℕ) = 64 ∧
      (16 / 2 : ℕ) = 8 ∧
      (64 + 8 : ℕ) = 72 ∧
      (72 + 24 : ℕ) = 96 ∧
      (96 / 12 : ℕ) = 8 := by
  exact ⟨four_pounds_ounces, half_pound_ounces, chicken_ounces, mixture_ounces, serving_ounces⟩

theorem cheetah_count : (100 / 2 : ℕ) = 50 := by norm_num
theorem fox_leopard_total : (80 + 20 : ℕ) = 100 := by norm_num
theorem alligator_count : (100 * 2 : ℕ) = 200 := by norm_num
theorem bee_eaters_ten_times : (20 * 10 : ℕ) = 200 := by norm_num
theorem conventional_total : (100 + 80 + 20 + 200 + 50 + 200 : ℕ) = 650 := by norm_num
theorem bee_eaters_ten_times_more : (20 + 20 * 10 : ℕ) = 220 := by norm_num
theorem literal_total : (100 + 80 + 20 + 220 + 50 + 200 : ℕ) = 670 := by norm_num
theorem animal_totals_differ : (650 : ℕ) ≠ 670 := by norm_num

theorem zoo_animal_count_ambiguity :
    (100 / 2 : ℕ) = 50 ∧
      (80 + 20 : ℕ) = 100 ∧
      (100 * 2 : ℕ) = 200 ∧
      (20 * 10 : ℕ) = 200 ∧
      (100 + 80 + 20 + 200 + 50 + 200 : ℕ) = 650 ∧
      (20 + 20 * 10 : ℕ) = 220 ∧
      (100 + 80 + 20 + 220 + 50 + 200 : ℕ) = 670 ∧
      (650 : ℕ) ≠ 670 := by
  exact ⟨cheetah_count, fox_leopard_total, alligator_count, bee_eaters_ten_times, conventional_total, bee_eaters_ten_times_more, literal_total, animal_totals_differ⟩

theorem wife_share : (2000 * 2 / 5 : ℕ) = 800 := by norm_num
theorem after_wife : (2000 - 800 : ℕ) = 1200 := by norm_num
theorem first_son_share : (1200 * 2 / 5 : ℕ) = 480 := by norm_num
theorem after_first_son : (1200 - 480 : ℕ) = 720 := by norm_num
theorem second_son_share : (720 * 40 / 100 : ℕ) = 288 := by norm_num
theorem savings_amount : (720 - 288 : ℕ) = 432 := by norm_num

theorem family_savings_amount :
    (2000 * 2 / 5 : ℕ) = 800 ∧
      (2000 - 800 : ℕ) = 1200 ∧
      (1200 * 2 / 5 : ℕ) = 480 ∧
      (1200 - 480 : ℕ) = 720 ∧
      (720 * 40 / 100 : ℕ) = 288 ∧
      (720 - 288 : ℕ) = 432 := by
  exact ⟨wife_share, after_wife, first_son_share, after_first_son, second_son_share, savings_amount⟩

theorem mary_funds : (600 * 5 : ℕ) = 3000 := by norm_num
theorem scott_funds : (3000 / 3 : ℕ) = 1000 := by norm_num
theorem fundraising_total : (3000 + 1000 + 600 : ℕ) = 4600 := by norm_num
theorem goal_excess : (4600 - 4000 : ℕ) = 600 := by norm_num

theorem fundraising_excess :
    (600 * 5 : ℕ) = 3000 ∧
      (3000 / 3 : ℕ) = 1000 ∧
      (3000 + 1000 + 600 : ℕ) = 4600 ∧
      (4600 - 4000 : ℕ) = 600 := by
  exact ⟨mary_funds, scott_funds, fundraising_total, goal_excess⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A14P1
