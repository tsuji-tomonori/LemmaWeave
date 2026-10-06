import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A15P1

theorem initial_black_hair : (80 - 30 : ℕ) = 50 := by norm_num
theorem choir_after_addition : (80 + 10 : ℕ) = 90 := by norm_num
theorem blonde_after_addition : (30 + 10 : ℕ) = 40 := by norm_num
theorem black_after_addition : (90 - 40 : ℕ) = 50 := by norm_num

theorem choir_black_hair_count :
    (80 - 30 : ℕ) = 50 ∧
      (80 + 10 : ℕ) = 90 ∧
      (30 + 10 : ℕ) = 40 ∧
      (90 - 40 : ℕ) = 50 := by
  exact ⟨initial_black_hair, choir_after_addition, blonde_after_addition, black_after_addition⟩

theorem whole_sprigs_used : (8 * 1 : ℕ) = 8 := by norm_num
theorem half_sprigs_used : (12 / 2 : ℕ) = 6 := by norm_num
theorem total_sprigs_used : (8 + 6 : ℕ) = 14 := by norm_num
theorem sprigs_remaining : (25 - 14 : ℕ) = 11 := by norm_num

theorem parsley_sprigs_left :
    (8 * 1 : ℕ) = 8 ∧
      (12 / 2 : ℕ) = 6 ∧
      (8 + 6 : ℕ) = 14 ∧
      (25 - 14 : ℕ) = 11 := by
  exact ⟨whole_sprigs_used, half_sprigs_used, total_sprigs_used, sprigs_remaining⟩

theorem hamburger_cost : (2 * 5 : ℕ) = 10 := by norm_num
theorem cola_cost : (3 * 2 : ℕ) = 6 := by norm_num
theorem meal_subtotal : (10 + 6 : ℕ) = 16 := by norm_num
theorem payment_after_coupon : (16 - 4 : ℕ) = 12 := by norm_num

theorem fast_food_payment :
    (2 * 5 : ℕ) = 10 ∧
      (3 * 2 : ℕ) = 6 ∧
      (10 + 6 : ℕ) = 16 ∧
      (16 - 4 : ℕ) = 12 := by
  exact ⟨hamburger_cost, cola_cost, meal_subtotal, payment_after_coupon⟩

theorem round_trip_miles : (10 - 4 : ℕ) = 6 := by norm_num
theorem one_way_school_miles : (6 / 2 : ℕ) = 3 := by norm_num

theorem bicycle_home_school_distance :
    (10 - 4 : ℕ) = 6 ∧
      (6 / 2 : ℕ) = 3 := by
  exact ⟨round_trip_miles, one_way_school_miles⟩

theorem mary_height_cm : (180 * 2 / 3 : ℕ) = 120 := by norm_num
theorem growth_needed_cm : (140 - 120 : ℕ) = 20 := by norm_num

theorem roller_coaster_growth_needed :
    (180 * 2 / 3 : ℕ) = 120 ∧
      (140 - 120 : ℕ) = 20 := by
  exact ⟨mary_height_cm, growth_needed_cm⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A15P1
