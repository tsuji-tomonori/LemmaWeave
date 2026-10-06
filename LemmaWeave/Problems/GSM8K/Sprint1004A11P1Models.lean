import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A11P1

theorem savings_first_four_total :
    (4 + 8 + 16 + 32 : ℕ) = 60 := by
  norm_num

theorem savings_exact_goal_fifth :
    (80 - 60 : ℕ) = 20 := by
  norm_num

theorem savings_doubling_fifth :
    (2 * 32 : ℕ) = 64 ∧ 60 + 64 = 124 := by
  norm_num

theorem fifth_week_savings_conditions_conflict :
    (4 + 8 + 16 + 32 : ℕ) = 60 ∧
      80 - 60 = 20 ∧
      (2 * 32 = 64 ∧ 60 + 64 = 124) ∧
      20 ≠ 64 := by
  exact ⟨savings_first_four_total, savings_exact_goal_fifth,
    savings_doubling_fifth, by norm_num⟩

theorem cantaloupes_sold :
    (30 - 2 - 8 : ℕ) = 20 := by
  norm_num

theorem honeydews_sold :
    (27 - 3 - 9 : ℕ) = 15 := by
  norm_num

theorem melon_sales_revenue :
    (30 - 2 - 8 : ℕ) = 20 ∧
      27 - 3 - 9 = 15 ∧
      20 * 2 + 15 * 3 = 85 := by
  exact ⟨cantaloupes_sold, honeydews_sold, by norm_num⟩

theorem old_tax_payment :
    (1000000 * 20 / 100 : ℕ) = 200000 := by
  norm_num

theorem new_tax_payment :
    (1500000 * 30 / 100 : ℕ) = 450000 := by
  norm_num

theorem tax_payment_increase :
    (1000000 * 20 / 100 : ℕ) = 200000 ∧
      1500000 * 30 / 100 = 450000 ∧
      450000 - 200000 = 250000 := by
  exact ⟨old_tax_payment, new_tax_payment, by norm_num⟩

theorem red_hat_count :
    (28 * 3 / 4 : ℕ) = 21 := by
  norm_num

theorem big_nose_count :
    (28 / 2 : ℕ) = 14 := by
  norm_num

theorem red_big_nose_count :
    (14 - 6 : ℕ) = 8 := by
  norm_num

theorem red_hat_small_nose_count :
    (28 * 3 / 4 : ℕ) = 21 ∧
      28 / 2 = 14 ∧
      14 - 6 = 8 ∧
      21 - 8 = 13 := by
  exact ⟨red_hat_count, big_nose_count, red_big_nose_count, by norm_num⟩

theorem candy_necklace_total :
    (9 * 8 : ℕ) = 72 := by
  norm_num

theorem candy_necklaces_taken :
    (72 - 40 : ℕ) = 32 := by
  norm_num

theorem candy_four_pack_scenario :
    (4 * 8 - 32 + (9 - 4) * 8 : ℕ) = 40 := by
  norm_num

theorem candy_five_pack_scenario :
    (5 * 8 - 32 + (9 - 5) * 8 : ℕ) = 40 := by
  norm_num

theorem candy_necklace_packs_under_determined :
    (9 * 8 : ℕ) = 72 ∧
      72 - 40 = 32 ∧
      4 * 8 - 32 + (9 - 4) * 8 = 40 ∧
      5 * 8 - 32 + (9 - 5) * 8 = 40 ∧
      4 ≠ 5 := by
  exact ⟨candy_necklace_total, candy_necklaces_taken,
    candy_four_pack_scenario, candy_five_pack_scenario, by norm_num⟩

end LemmaWeave.Problems.GSM8K.Sprint1004A11P1
