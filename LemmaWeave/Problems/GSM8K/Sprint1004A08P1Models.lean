import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A08P1

theorem recycling_can_weight : (20 * 2 : ℕ) = 40 := by norm_num
theorem recycling_bottle_capacity : (100 - 40 : ℕ) = 60 := by norm_num
theorem recycling_bottle_count : (60 / 6 : ℕ) = 10 := by norm_num
theorem recycling_bottle_income : (10 * 10 : ℕ) = 100 := by norm_num
theorem recycling_can_income : (20 * 3 : ℕ) = 60 := by norm_num
theorem recycling_total_income : (100 + 60 : ℕ) = 160 := by norm_num

theorem recycling_center_earnings :
    (20 * 2 : ℕ) = 40 ∧
      100 - 40 = 60 ∧
      60 / 6 = 10 ∧
      10 * 10 = 100 ∧
      20 * 3 = 60 ∧
      100 + 60 = 160 := by
  exact ⟨recycling_can_weight, recycling_bottle_capacity, recycling_bottle_count,
    recycling_bottle_income, recycling_can_income, recycling_total_income⟩

theorem coat_cheap_count : (30 / 5 : ℕ) = 6 := by norm_num
theorem coat_cheap_cost : (6 * 120 : ℕ) = 720 := by norm_num
theorem coat_expensive_count : (30 / 15 : ℕ) = 2 := by norm_num
theorem coat_expensive_cost : (2 * 300 : ℕ) = 600 := by norm_num
theorem coat_savings : (720 - 600 : ℕ) = 120 := by norm_num

theorem coat_savings_over_thirty_years :
    (30 / 5 : ℕ) = 6 ∧
      6 * 120 = 720 ∧
      30 / 15 = 2 ∧
      2 * 300 = 600 ∧
      720 - 600 = 120 := by
  exact ⟨coat_cheap_count, coat_cheap_cost, coat_expensive_count,
    coat_expensive_cost, coat_savings⟩

theorem july_age_then : (6 / 2 : ℕ) = 3 := by norm_num
theorem july_age_now : (3 + 20 : ℕ) = 23 := by norm_num
theorem july_husband_age_now : (23 + 2 : ℕ) = 25 := by norm_num

theorem july_husband_age :
    (6 / 2 : ℕ) = 3 ∧
      3 + 20 = 23 ∧
      23 + 2 = 25 := by
  exact ⟨july_age_then, july_age_now, july_husband_age_now⟩

theorem pyramid_second_layer : (1 * 3 : ℕ) = 3 := by norm_num
theorem pyramid_third_layer : (3 * 3 : ℕ) = 9 := by norm_num
theorem pyramid_fourth_layer : (9 * 3 : ℕ) = 27 := by norm_num
theorem pyramid_total_blocks : (1 + 3 + 9 + 27 : ℕ) = 40 := by norm_num

theorem four_layer_pyramid_blocks :
    (1 * 3 : ℕ) = 3 ∧
      3 * 3 = 9 ∧
      9 * 3 = 27 ∧
      1 + 3 + 9 + 27 = 40 := by
  exact ⟨pyramid_second_layer, pyramid_third_layer, pyramid_fourth_layer,
    pyramid_total_blocks⟩

theorem emmy_remaining_ipods : (14 - 6 : ℕ) = 8 := by norm_num
theorem rosa_ipods : (8 / 2 : ℕ) = 4 := by norm_num
theorem emmy_rosa_total_ipods : (8 + 4 : ℕ) = 12 := by norm_num

theorem emmy_rosa_ipods_total :
    (14 - 6 : ℕ) = 8 ∧
      8 / 2 = 4 ∧
      8 + 4 = 12 := by
  exact ⟨emmy_remaining_ipods, rosa_ipods, emmy_rosa_total_ipods⟩

end LemmaWeave.Problems.GSM8K.Sprint1004A08P1
