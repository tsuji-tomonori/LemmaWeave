import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A19P2

theorem notebook_cost : (7 * 4 : ℕ) = 28 := by norm_num
theorem book_cost : (2 * 7 : ℕ) = 14 := by norm_num
theorem joe_total_spent : (28 + 14 : ℕ) = 42 := by norm_num
theorem joe_remaining_money : (56 - 42 : ℕ) = 14 := by norm_num

theorem joe_money_left :
    (7 * 4 : ℕ) = 28 ∧
      (2 * 7 : ℕ) = 14 ∧
      (28 + 14 : ℕ) = 42 ∧
      (56 - 42 : ℕ) = 14 := by
  exact ⟨notebook_cost, book_cost, joe_total_spent, joe_remaining_money⟩

theorem rose_cost_per_centerpiece : (10 * 5 : ℕ) = 50 := by norm_num
theorem lily_cost_per_centerpiece : (15 * 4 : ℕ) = 60 := by norm_num
theorem place_setting_cost_per_table : (4 * 10 : ℕ) = 40 := by norm_num
theorem decoration_cost_per_table : (25 + 40 + 50 + 60 : ℕ) = 175 := by norm_num
theorem all_table_decoration_cost : (20 * 175 : ℕ) = 3500 := by norm_num

theorem wedding_decoration_cost :
    (10 * 5 : ℕ) = 50 ∧
      (15 * 4 : ℕ) = 60 ∧
      (4 * 10 : ℕ) = 40 ∧
      (25 + 40 + 50 + 60 : ℕ) = 175 ∧
      (20 * 175 : ℕ) = 3500 := by
  exact ⟨rose_cost_per_centerpiece, lily_cost_per_centerpiece, place_setting_cost_per_table, decoration_cost_per_table, all_table_decoration_cost⟩

theorem norris_saved_total : (29 + 25 + 31 : ℕ) = 85 := by norm_num
theorem conditional_norris_remainder : (85 - 75 : ℕ) = 10 := by norm_num
theorem distinct_person_remainder : (85 : ℕ) = 85 := by norm_num
theorem pronoun_models_differ : (10 : ℕ) ≠ 85 := by norm_num

theorem norris_hugo_pronoun_analysis :
    (29 + 25 + 31 : ℕ) = 85 ∧
      (85 - 75 : ℕ) = 10 ∧
      (85 : ℕ) = 85 ∧
      (10 : ℕ) ≠ 85 := by
  exact ⟨norris_saved_total, conditional_norris_remainder, distinct_person_remainder, pronoun_models_differ⟩

theorem dad_roasted_marshmallows : (21 / 3 : ℕ) = 7 := by norm_num
theorem joe_marshmallow_count : (4 * 21 : ℕ) = 84 := by norm_num
theorem joe_roasted_marshmallows : (84 / 2 : ℕ) = 42 := by norm_num
theorem all_roasted_marshmallows : (7 + 42 : ℕ) = 49 := by norm_num

theorem roasted_marshmallow_total :
    (21 / 3 : ℕ) = 7 ∧
      (4 * 21 : ℕ) = 84 ∧
      (84 / 2 : ℕ) = 42 ∧
      (7 + 42 : ℕ) = 49 := by
  exact ⟨dad_roasted_marshmallows, joe_marshmallow_count, joe_roasted_marshmallows, all_roasted_marshmallows⟩

theorem monday_audience : (80 - 20 : ℕ) = 60 := by norm_num
theorem wednesday_audience : (60 + 50 : ℕ) = 110 := by norm_num
theorem friday_audience : (80 + 60 : ℕ) = 140 := by norm_num
theorem weekly_audience : (80 + 60 + 110 + 140 : ℕ) = 390 := by norm_num
theorem audience_over_expectation : (390 - 350 : ℕ) = 40 := by norm_num

theorem football_audience_excess :
    (80 - 20 : ℕ) = 60 ∧
      (60 + 50 : ℕ) = 110 ∧
      (80 + 60 : ℕ) = 140 ∧
      (80 + 60 + 110 + 140 : ℕ) = 390 ∧
      (390 - 350 : ℕ) = 40 := by
  exact ⟨monday_audience, wednesday_audience, friday_audience, weekly_audience, audience_over_expectation⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A19P2
