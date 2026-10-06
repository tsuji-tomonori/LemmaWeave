import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A17P3

theorem liam_orange_sets : (40 / 2 : ℕ) = 20 := by norm_num
theorem liam_orange_cents : (20 * 250 : ℕ) = 5000 := by norm_num
theorem claire_orange_cents : (30 * 120 : ℕ) = 3600 := by norm_num
theorem orange_savings_cents : (5000 + 3600 : ℕ) = 8600 := by norm_num

theorem orange_gift_savings :
    (40 / 2 : ℕ) = 20 ∧
      (20 * 250 : ℕ) = 5000 ∧
      (30 * 120 : ℕ) = 3600 ∧
      (5000 + 3600 : ℕ) = 8600 := by
  exact ⟨liam_orange_sets, liam_orange_cents, claire_orange_cents, orange_savings_cents⟩

theorem samuel_cinema_spend : (14 + 6 : ℕ) = 20 := by norm_num
theorem kevin_known_spend : (14 + 2 : ℕ) = 16 := by norm_num
theorem kevin_food_if_each_budget : (20 - 16 : ℕ) = 4 := by norm_num
theorem joint_budget_inconsistent : ¬ ((14 + 6 + (14 + 2) : ℕ) ≤ 20) := by norm_num

theorem cinema_food_cost_analysis :
    (14 + 6 : ℕ) = 20 ∧
      (14 + 2 : ℕ) = 16 ∧
      (20 - 16 : ℕ) = 4 ∧
      ¬ ((14 + 6 + (14 + 2) : ℕ) ≤ 20) := by
  exact ⟨samuel_cinema_spend, kevin_known_spend, kevin_food_if_each_budget, joint_budget_inconsistent⟩

theorem snapper_revenue : (8 * 3 : ℕ) = 24 := by norm_num
theorem tuna_revenue : (14 * 2 : ℕ) = 28 := by norm_num
theorem fish_revenue_total : (24 + 28 : ℕ) = 52 := by norm_num

theorem daily_fish_revenue :
    (8 * 3 : ℕ) = 24 ∧
      (14 * 2 : ℕ) = 28 ∧
      (24 + 28 : ℕ) = 52 := by
  exact ⟨snapper_revenue, tuna_revenue, fish_revenue_total⟩

theorem orange_count : (2 * 12 : ℕ) = 24 := by norm_num
theorem orange_apple_gap : (24 - 14 : ℕ) = 10 := by norm_num

theorem orange_apple_difference :
    (2 * 12 : ℕ) = 24 ∧
      (24 - 14 : ℕ) = 10 := by
  exact ⟨orange_count, orange_apple_gap⟩

theorem bruce_lego_count : (40 + 20 : ℕ) = 60 := by norm_num
theorem simon_extra_legos : (60 * 20 / 100 : ℕ) = 12 := by norm_num
theorem simon_legos : (60 + 12 : ℕ) = 72 := by norm_num

theorem simon_lego_count :
    (40 + 20 : ℕ) = 60 ∧
      (60 * 20 / 100 : ℕ) = 12 ∧
      (60 + 12 : ℕ) = 72 := by
  exact ⟨bruce_lego_count, simon_extra_legos, simon_legos⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A17P3
