import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A20P2

theorem months_in_three_years : (3 * 12 : ℕ) = 36 := by norm_num
theorem songs_in_three_years : (36 * 3 : ℕ) = 108 := by norm_num
theorem three_year_income : (108 * 2000 : ℕ) = 216000 := by norm_num

theorem seal_three_year_income :
    (3 * 12 : ℕ) = 36 ∧
      (36 * 3 : ℕ) = 108 ∧
      (108 * 2000 : ℕ) = 216000 := by
  exact ⟨months_in_three_years, songs_in_three_years, three_year_income⟩

theorem net_spaces_moved : (8 + 2 - 5 + 6 : ℕ) = 11 := by norm_num
theorem spaces_to_finish : (48 - 11 : ℕ) = 37 := by norm_num

theorem board_game_spaces_remaining :
    (8 + 2 - 5 + 6 : ℕ) = 11 ∧
      (48 - 11 : ℕ) = 37 := by
  exact ⟨net_spaces_moved, spaces_to_finish⟩

theorem field_perimeter : (2 * (20 + 60) : ℕ) = 160 := by norm_num
theorem tape_leftover : (250 - 160 : ℕ) = 90 := by norm_num

theorem field_tape_leftover :
    (2 * (20 + 60) : ℕ) = 160 ∧
      (250 - 160 : ℕ) = 90 := by
  exact ⟨field_perimeter, tape_leftover⟩

theorem plant_discount : (10 * 10 / 100 : ℕ) = 1 := by norm_num
theorem plant_paid_price : (10 - 1 : ℕ) = 9 := by norm_num

theorem discounted_plant_price :
    (10 * 10 / 100 : ℕ) = 1 ∧
      (10 - 1 : ℕ) = 9 := by
  exact ⟨plant_discount, plant_paid_price⟩

theorem first_round_apples : (2 * 400 : ℕ) = 800 := by norm_num
theorem second_round_each : (400 * 3 / 4 : ℕ) = 300 := by norm_num
theorem second_round_apples : (2 * 300 : ℕ) = 600 := by norm_num
theorem picked_so_far : (800 + 600 : ℕ) = 1400 := by norm_num
theorem remaining_target_apples : (2 * 600 : ℕ) = 1200 := by norm_num
theorem target_apple_total : (1400 + 1200 : ℕ) = 2600 := by norm_num

theorem apple_target_total :
    (2 * 400 : ℕ) = 800 ∧
      (400 * 3 / 4 : ℕ) = 300 ∧
      (2 * 300 : ℕ) = 600 ∧
      (800 + 600 : ℕ) = 1400 ∧
      (2 * 600 : ℕ) = 1200 ∧
      (1400 + 1200 : ℕ) = 2600 := by
  exact ⟨first_round_apples, second_round_each, second_round_apples, picked_so_far, remaining_target_apples, target_apple_total⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A20P2
