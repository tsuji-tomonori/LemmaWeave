import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A20P1

theorem parts_per_tripodasaurus : (1 + 3 : ℕ) = 4 := by norm_num
theorem tripodasaurus_count : (20 / 4 : ℕ) = 5 := by norm_num

theorem tripodasaurus_flock_count :
    (1 + 3 : ℕ) = 4 ∧
      (20 / 4 : ℕ) = 5 := by
  exact ⟨parts_per_tripodasaurus, tripodasaurus_count⟩

theorem math_correct_answers : (40 * 75 / 100 : ℕ) = 30 := by norm_num
theorem english_correct_answers : (50 * 98 / 100 : ℕ) = 49 := by norm_num
theorem all_correct_answers : (30 + 49 : ℕ) = 79 := by norm_num

theorem test_correct_answer_total :
    (40 * 75 / 100 : ℕ) = 30 ∧
      (50 * 98 / 100 : ℕ) = 49 ∧
      (30 + 49 : ℕ) = 79 := by
  exact ⟨math_correct_answers, english_correct_answers, all_correct_answers⟩

theorem apple_cost : (5 * 2 : ℕ) = 10 := by norm_num
theorem walnut_half_kilogram : (500 * 2 : ℕ) = 1000 := by norm_num
theorem walnut_cost : (6 / 2 : ℕ) = 3 := by norm_num
theorem sugar_pack_price : (2 - 1 : ℕ) = 1 := by norm_num
theorem sugar_cost : (3 * 1 : ℕ) = 3 := by norm_num
theorem grocery_total : (10 + 3 + 3 : ℕ) = 16 := by norm_num

theorem fabian_grocery_cost :
    (5 * 2 : ℕ) = 10 ∧
      (500 * 2 : ℕ) = 1000 ∧
      (6 / 2 : ℕ) = 3 ∧
      (2 - 1 : ℕ) = 1 ∧
      (3 * 1 : ℕ) = 3 ∧
      (10 + 3 + 3 : ℕ) = 16 := by
  exact ⟨apple_cost, walnut_half_kilogram, walnut_cost, sugar_pack_price, sugar_cost, grocery_total⟩

theorem running_added_miles : (4 * 1 : ℕ) = 4 := by norm_num
theorem final_daily_miles : (3 + 4 : ℕ) = 7 := by norm_num

theorem running_program_final_miles :
    (4 * 1 : ℕ) = 4 ∧
      (3 + 4 : ℕ) = 7 := by
  exact ⟨running_added_miles, final_daily_miles⟩

theorem miss_count_remainder : (50 % 3 : ℕ) = 2 := by norm_num
theorem no_natural_hit_count : ¬ ∃ h : ℕ, 50 = 3 * h := by omega
theorem reversed_hit_count : (3 * 50 : ℕ) = 150 := by norm_num
theorem reversed_total : (150 + 50 : ℕ) = 200 := by norm_num

theorem mlb_miss_hit_inconsistency :
    (50 % 3 : ℕ) = 2 ∧
      ¬ ∃ h : ℕ, 50 = 3 * h ∧
      (3 * 50 : ℕ) = 150 ∧
      (150 + 50 : ℕ) = 200 := by
  exact ⟨miss_count_remainder, no_natural_hit_count, reversed_hit_count, reversed_total⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A20P1
