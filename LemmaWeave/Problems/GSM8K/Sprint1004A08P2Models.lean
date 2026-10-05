import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A08P2

theorem truck_current_gallons : (20 / 2 : ℕ) = 10 := by norm_num
theorem car_current_gallons : (12 / 3 : ℕ) = 4 := by norm_num
theorem truck_refill_gallons : (20 - 10 : ℕ) = 10 := by norm_num
theorem car_refill_gallons : (12 - 4 : ℕ) = 8 := by norm_num
theorem total_refill_gallons : (10 + 8 : ℕ) = 18 := by norm_num

theorem truck_car_refill_gallons :
    (20 / 2 : ℕ) = 10 ∧
      12 / 3 = 4 ∧
      20 - 10 = 10 ∧
      12 - 4 = 8 ∧
      10 + 8 = 18 := by
  exact ⟨truck_current_gallons, car_current_gallons, truck_refill_gallons,
    car_refill_gallons, total_refill_gallons⟩

theorem biscuit_count_needed : (18 * 2 : ℕ) = 36 := by norm_num
theorem biscuit_batches_needed : (36 / 9 : ℕ) = 4 := by norm_num
theorem flour_quarter_cups : (5 * 4 : ℕ) = 20 := by norm_num
theorem flour_cups_needed : (20 / 4 : ℕ) = 5 := by norm_num

theorem flour_cups_for_biscuits :
    (18 * 2 : ℕ) = 36 ∧
      36 / 9 = 4 ∧
      5 * 4 = 20 ∧
      20 / 4 = 5 := by
  exact ⟨biscuit_count_needed, biscuit_batches_needed, flour_quarter_cups,
    flour_cups_needed⟩

theorem total_light_bulbs : (20 * 7 : ℕ) = 140 := by norm_num
theorem lamps_with_burnt_bulbs : (20 / 4 : ℕ) = 5 := by norm_num
theorem burnt_light_bulbs : (5 * 2 : ℕ) = 10 := by norm_num
theorem working_light_bulbs_count : (140 - 10 : ℕ) = 130 := by norm_num

theorem working_light_bulbs :
    (20 * 7 : ℕ) = 140 ∧
      20 / 4 = 5 ∧
      5 * 2 = 10 ∧
      140 - 10 = 130 := by
  exact ⟨total_light_bulbs, lamps_with_burnt_bulbs, burnt_light_bulbs,
    working_light_bulbs_count⟩

theorem butterfly_model_egg_zero : (0 + 3 * 30 + 30 : ℕ) = 120 := by norm_num
theorem butterfly_model_egg_four : (4 + 3 * 29 + 29 : ℕ) = 120 := by norm_num
theorem butterfly_cocoon_values_differ : (30 : ℕ) ≠ 29 := by norm_num

theorem butterfly_cocoon_time_under_determined :
    (0 + 3 * 30 + 30 : ℕ) = 120 ∧
      (4 + 3 * 29 + 29 : ℕ) = 120 ∧
      30 ≠ 29 := by
  exact ⟨butterfly_model_egg_zero, butterfly_model_egg_four,
    butterfly_cocoon_values_differ⟩

theorem april_strawberries_harvested : (5 * 30 : ℕ) = 150 := by norm_num
theorem april_after_giving : (150 - 20 : ℕ) = 130 := by norm_num
theorem april_after_theft : (130 - 30 : ℕ) = 100 := by norm_num

theorem april_strawberries_remaining :
    (5 * 30 : ℕ) = 150 ∧
      150 - 20 = 130 ∧
      130 - 30 = 100 := by
  exact ⟨april_strawberries_harvested, april_after_giving, april_after_theft⟩

end LemmaWeave.Problems.GSM8K.Sprint1004A08P2
