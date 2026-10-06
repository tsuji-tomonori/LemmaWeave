import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A19P1

theorem corrected_animal_count :
    (60 - 7 + 3 : ℕ) = 56 := by
  norm_num

theorem medical_out_of_pocket_cost :
    (300 + 200 : ℕ) = 500 ∧ 500 * 60 / 100 = 300 ∧ 500 - 300 = 200 := by
  norm_num

theorem pizza_party_cost_cents :
    (8 + 10 : ℕ) = 18 ∧
      10 + 15 = 25 ∧
      18 * 1400 = 25200 ∧
      25 * 180 = 4500 ∧
      25200 + 4500 = 29700 := by
  norm_num

theorem egg_saving_per_egg_cents :
    (1200 / 30 : ℕ) = 40 ∧ 50 - 40 = 10 := by
  norm_num

theorem history_book_count :
    (10 * 2 / 5 : ℕ) = 4 ∧
      10 * 3 / 10 = 3 ∧
      3 - 1 = 2 ∧
      10 - (4 + 3 + 2) = 1 := by
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A19P1
