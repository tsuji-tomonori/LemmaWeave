import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1002A07P3

theorem apartment_money_shortfall : (2 * 1250 : ℕ) = 2500 ∧ 2500 + 500 = 3000 ∧ 3000 - 2225 = 775 := by norm_num

theorem minimum_surface_trips : (5 * 3 : ℕ) < 17 ∧ 17 ≤ 6 * 3 := by norm_num

theorem snack_fundraising_shortfall_cents : (15 * 1200 : ℕ) = 18000 ∧ 40 * 30 = 1200 ∧ 25 * 200 = 5000 ∧ 18000 + 1200 + 5000 = 24200 ∧ 50000 - 24200 = 25800 := by norm_num

theorem pizza_slices_left : (3 * 4 + 2 * 8 : ℕ) = 28 ∧ 3 + 4 + 2 + 3 + 3 + 3 = 18 ∧ 28 - 18 = 10 := by norm_num

theorem comic_book_remainder_cents : (2000 * 5 : ℕ) = 10000 ∧ 16 * 600 = 9600 ∧ 9600 ≤ 10000 ∧ 10000 < 17 * 600 ∧ 10000 - 9600 = 400 := by norm_num

end LemmaWeave.Problems.GSM8K.Sprint1002A07P3
