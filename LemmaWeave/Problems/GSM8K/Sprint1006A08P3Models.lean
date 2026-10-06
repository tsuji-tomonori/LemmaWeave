import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A08P3

theorem market_spent : (17 + 11 : ℕ) = 28 := by norm_num
theorem market_left : (100 - 28 : ℕ) = 72 := by norm_num

theorem market_money_left :
    (17 + 11 : ℕ) = 28 ∧
      (100 - 28 : ℕ) = 72 := by
  exact ⟨market_spent, market_left⟩

theorem known_fruits : (18 + 10 + 12 : ℕ) = 40 := by norm_num
theorem last_two_fruits : (58 - 40 : ℕ) = 18 := by norm_num
theorem lemon_count : (18 / 2 : ℕ) = 9 := by norm_num

theorem lemons_in_basket :
    (18 + 10 + 12 : ℕ) = 40 ∧
      (58 - 40 : ℕ) = 18 ∧
      (18 / 2 : ℕ) = 9 := by
  exact ⟨known_fruits, last_two_fruits, lemon_count⟩

theorem apple_cost : (12 * 2 : ℕ) = 24 := by norm_num
theorem banana_cost : (4 * 1 : ℕ) = 4 := by norm_num
theorem orange_cost : (4 * 3 : ℕ) = 12 := by norm_num
theorem fruit_total_cost : (24 + 4 + 12 : ℕ) = 40 := by norm_num
theorem fruit_count : (12 + 4 + 4 : ℕ) = 20 := by norm_num
theorem average_cost : (40 / 20 : ℕ) = 2 := by norm_num

theorem average_fruit_cost :
    (12 * 2 : ℕ) = 24 ∧
      (4 * 1 : ℕ) = 4 ∧
      (4 * 3 : ℕ) = 12 ∧
      (24 + 4 + 12 : ℕ) = 40 ∧
      (12 + 4 + 4 : ℕ) = 20 ∧
      (40 / 20 : ℕ) = 2 := by
  exact ⟨apple_cost, banana_cost, orange_cost, fruit_total_cost, fruit_count, average_cost⟩

theorem nongreen_cost : (15 + 10 : ℕ) = 25 := by norm_num
theorem green_total_cost : (45 - 25 : ℕ) = 20 := by norm_num
theorem green_each_cost : (20 / 2 : ℕ) = 10 := by norm_num

theorem green_notebook_cost :
    (15 + 10 : ℕ) = 25 ∧
      (45 - 25 : ℕ) = 20 ∧
      (20 / 2 : ℕ) = 10 := by
  exact ⟨nongreen_cost, green_total_cost, green_each_cost⟩

theorem fires_per_minute : (60 / 15 : ℕ) = 4 := by norm_num
theorem flame_seconds : (4 * 5 : ℕ) = 20 := by norm_num

theorem flame_seconds_per_minute :
    (60 / 15 : ℕ) = 4 ∧
      (4 * 5 : ℕ) = 20 := by
  exact ⟨fires_per_minute, flame_seconds⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A08P3
