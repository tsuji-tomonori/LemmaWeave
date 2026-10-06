import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A14P3

theorem restricted_hose_rate : (6 * 2 / 3 : ℕ) = 4 := by norm_num
theorem pond_fill_minutes : (200 / 4 : ℕ) = 50 := by norm_num

theorem duck_pond_fill_minutes :
    (6 * 2 / 3 : ℕ) = 4 ∧
      (200 / 4 : ℕ) = 50 := by
  exact ⟨restricted_hose_rate, pond_fill_minutes⟩

theorem coconut_trees : (20 * 2 : ℕ) = 40 := by norm_num
theorem coconuts_per_harvest : (40 * 6 : ℕ) = 240 := by norm_num
theorem harvest_count : (6 / 3 : ℕ) = 2 := by norm_num
theorem six_month_coconuts : (240 * 2 : ℕ) = 480 := by norm_num
theorem earnings_cents : (480 * 50 : ℕ) = 24000 := by norm_num
theorem earnings_dollars : (24000 / 100 : ℕ) = 240 := by norm_num

theorem coconut_six_month_earnings :
    (20 * 2 : ℕ) = 40 ∧
      (40 * 6 : ℕ) = 240 ∧
      (6 / 3 : ℕ) = 2 ∧
      (240 * 2 : ℕ) = 480 ∧
      (480 * 50 : ℕ) = 24000 ∧
      (24000 / 100 : ℕ) = 240 := by
  exact ⟨coconut_trees, coconuts_per_harvest, harvest_count, six_month_coconuts, earnings_cents, earnings_dollars⟩

theorem daily_pies : (3 + 6 + 8 : ℕ) = 17 := by norm_num
theorem weekly_pies : (17 * 7 : ℕ) = 119 := by norm_num

theorem family_weekly_pies :
    (3 + 6 + 8 : ℕ) = 17 ∧
      (17 * 7 : ℕ) = 119 := by
  exact ⟨daily_pies, weekly_pies⟩

theorem jeff_donated : (300 * 30 / 100 : ℕ) = 90 := by norm_num
theorem jeff_remaining : (300 - 90 : ℕ) = 210 := by norm_num
theorem vicki_initial : (300 * 2 : ℕ) = 600 := by norm_num
theorem vicki_donated : (600 * 3 / 4 : ℕ) = 450 := by norm_num
theorem vicki_remaining : (600 - 450 : ℕ) = 150 := by norm_num
theorem pencils_remaining_total : (210 + 150 : ℕ) = 360 := by norm_num

theorem remaining_pencils_total :
    (300 * 30 / 100 : ℕ) = 90 ∧
      (300 - 90 : ℕ) = 210 ∧
      (300 * 2 : ℕ) = 600 ∧
      (600 * 3 / 4 : ℕ) = 450 ∧
      (600 - 450 : ℕ) = 150 ∧
      (210 + 150 : ℕ) = 360 := by
  exact ⟨jeff_donated, jeff_remaining, vicki_initial, vicki_donated, vicki_remaining, pencils_remaining_total⟩

theorem bags_after_gift : (3 - 2 : ℕ) = 1 := by norm_num
theorem bags_after_purchase : (1 + 3 : ℕ) = 4 := by norm_num

theorem chocolate_bags_left :
    (3 - 2 : ℕ) = 1 ∧
      (1 + 3 : ℕ) = 4 := by
  exact ⟨bags_after_gift, bags_after_purchase⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A14P3
