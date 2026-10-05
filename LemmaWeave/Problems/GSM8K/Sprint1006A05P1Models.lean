import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A05P1

theorem hannah_week2 : (4 * 2 : ℕ) = 8 := by norm_num
theorem hannah_week3 : (8 * 2 : ℕ) = 16 := by norm_num
theorem hannah_week4 : (16 * 2 : ℕ) = 32 := by norm_num
theorem hannah_first_four_total : (4 + 8 + 16 + 32 : ℕ) = 60 := by norm_num
theorem hannah_goal_remainder : (80 - 60 : ℕ) = 20 := by norm_num
theorem hannah_doubling_week5 : (32 * 2 : ℕ) = 64 := by norm_num
theorem hannah_requirements_inconsistent :
    ¬ ∃ week5 : ℕ, week5 = 64 ∧ 60 + week5 = 80 := by norm_num

theorem hannah_fifth_week_inconsistent :
    (4 * 2 : ℕ) = 8 ∧
      8 * 2 = 16 ∧
      16 * 2 = 32 ∧
      4 + 8 + 16 + 32 = 60 ∧
      80 - 60 = 20 ∧
      32 * 2 = 64 ∧
      (¬ ∃ week5 : ℕ, week5 = 64 ∧ 60 + week5 = 80) := by
  exact ⟨hannah_week2, hannah_week3, hannah_week4, hannah_first_four_total,
    hannah_goal_remainder, hannah_doubling_week5, hannah_requirements_inconsistent⟩

theorem cantaloupes_sold : (30 - 2 - 8 : ℕ) = 20 := by norm_num
theorem honeydews_sold : (27 - 3 - 9 : ℕ) = 15 := by norm_num
theorem cantaloupe_revenue : (20 * 2 : ℕ) = 40 := by norm_num
theorem honeydew_revenue : (15 * 3 : ℕ) = 45 := by norm_num
theorem melon_total_revenue : (40 + 45 : ℕ) = 85 := by norm_num

theorem melon_revenue :
    (30 - 2 - 8 : ℕ) = 20 ∧
      27 - 3 - 9 = 15 ∧
      20 * 2 = 40 ∧
      15 * 3 = 45 ∧
      40 + 45 = 85 := by
  exact ⟨cantaloupes_sold, honeydews_sold, cantaloupe_revenue,
    honeydew_revenue, melon_total_revenue⟩

theorem old_tax_paid : (1000000 * 20 / 100 : ℕ) = 200000 := by norm_num
theorem new_tax_paid : (1500000 * 30 / 100 : ℕ) = 450000 := by norm_num
theorem tax_increase : (450000 - 200000 : ℕ) = 250000 := by norm_num

theorem tax_payment_increase :
    (1000000 * 20 / 100 : ℕ) = 200000 ∧
      1500000 * 30 / 100 = 450000 ∧
      450000 - 200000 = 250000 := by
  exact ⟨old_tax_paid, new_tax_paid, tax_increase⟩

theorem big_nose_count : (28 / 2 : ℕ) = 14 := by norm_num
theorem red_hat_count : (28 * 3 / 4 : ℕ) = 21 := by norm_num
theorem red_big_nose_count : (14 - 6 : ℕ) = 8 := by norm_num
theorem red_small_nose_count : (21 - 8 : ℕ) = 13 := by norm_num

theorem red_hat_small_nose_gnomes :
    (28 / 2 : ℕ) = 14 ∧
      28 * 3 / 4 = 21 ∧
      14 - 6 = 8 ∧
      21 - 8 = 13 := by
  exact ⟨big_nose_count, red_hat_count, red_big_nose_count, red_small_nose_count⟩

theorem necklace_total : (9 * 8 : ℕ) = 72 := by norm_num
theorem necklaces_taken : (72 - 40 : ℕ) = 32 := by norm_num
theorem four_packs_if_emptied : (4 * 8 : ℕ) = 32 := by norm_num
theorem five_packs_can_cover_taken : (32 : ℕ) ≤ 5 * 8 := by norm_num
theorem five_opened_pack_remainder : (5 * 8 - 32 : ℕ) = 8 := by norm_num
theorem candy_openings_nonunique : (4 : ℕ) ≠ 5 := by norm_num

theorem candy_packs_opened_underdetermined :
    (9 * 8 : ℕ) = 72 ∧
      72 - 40 = 32 ∧
      4 * 8 = 32 ∧
      (32 : ℕ) ≤ 5 * 8 ∧
      5 * 8 - 32 = 8 ∧
      (4 : ℕ) ≠ 5 := by
  exact ⟨necklace_total, necklaces_taken, four_packs_if_emptied,
    five_packs_can_cover_taken, five_opened_pack_remainder, candy_openings_nonunique⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A05P1
