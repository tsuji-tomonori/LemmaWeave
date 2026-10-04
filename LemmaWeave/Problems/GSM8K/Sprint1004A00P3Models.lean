import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A00P3

theorem sandrine_dishes :
    (3 * 50 : ℕ) = 150 ∧
      150 + 10 = 160 := by
  norm_num

theorem longest_boat_feet :
    (500 + 3 * 500 : ℕ) = 2000 ∧
      20000 - 2000 = 18000 ∧
      12 * 1500 ≤ 18000 ∧
      18000 < 13 * 1500 ∧
      (∀ n : ℕ, n * 1500 ≤ 18000 → n ≤ 12) := by
  constructor
  · norm_num
  constructor
  · norm_num
  constructor
  · norm_num
  constructor
  · norm_num
  intro n hn
  omega

theorem fifty_hour_pay :
    (40 * 20 : ℕ) = 800 ∧
      2 * 20 = 40 ∧
      (50 - 40) * 40 = 400 ∧
      800 + 400 = 1200 := by
  norm_num

theorem gabrielle_peaches :
    (6 + 2 * 5 : ℕ) = 16 ∧
      15 = 3 * 5 ∧
      (∀ b g : ℕ, 6 + 2 * b = 16 → g = 3 * b → g = 15) := by
  constructor
  · norm_num
  constructor
  · norm_num
  intro b g hb hg
  omega

theorem cookie_sales_revenue :
    (220 * 1 : ℕ) = 220 ∧
      70 * 2 = 140 ∧
      220 + 140 = 360 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1004A00P3
