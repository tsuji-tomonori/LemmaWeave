import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A13P3

theorem market_spending :
    (17 + 11 : ℕ) = 28 := by
  norm_num

theorem market_money_left :
    (17 + 11 : ℕ) = 28 ∧
      100 - 28 = 72 := by
  exact ⟨market_spending, by norm_num⟩

theorem known_fruit_total :
    (18 + 10 + 12 : ℕ) = 40 := by
  norm_num

theorem lemons_in_basket
    (kiwi lemons : ℕ)
    (hEqual : kiwi = lemons)
    (hTotal : (18 + 10 + 12) + kiwi + lemons = 58) :
    lemons = 9 := by
  rw [known_fruit_total] at hTotal
  omega

theorem fruit_group_costs :
    (12 * 2 : ℕ) = 24 ∧
      4 * 1 = 4 ∧
      4 * 3 = 12 := by
  norm_num

theorem fruit_average_cost :
    (12 * 2 : ℕ) = 24 ∧
      4 * 1 = 4 ∧
      4 * 3 = 12 ∧
      24 + 4 + 12 = 40 ∧
      12 + 4 + 4 = 20 ∧
      40 / 20 = 2 := by
  exact ⟨fruit_group_costs.1, fruit_group_costs.2.1,
    fruit_group_costs.2.2, by norm_num, by norm_num, by norm_num⟩

theorem nongreen_notebook_cost :
    (15 + 10 : ℕ) = 25 := by
  norm_num

theorem green_notebooks_total :
    (45 - 25 : ℕ) = 20 := by
  norm_num

theorem green_notebook_cost_each :
    (15 + 10 : ℕ) = 25 ∧
      45 - 25 = 20 ∧
      20 / 2 = 10 := by
  exact ⟨nongreen_notebook_cost, green_notebooks_total, by norm_num⟩

theorem firings_per_minute :
    (60 / 15 : ℕ) = 4 := by
  norm_num

theorem flame_seconds_per_minute :
    (60 / 15 : ℕ) = 4 ∧
      4 * 5 = 20 := by
  exact ⟨firings_per_minute, by norm_num⟩

end LemmaWeave.Problems.GSM8K.Sprint1004A13P3
