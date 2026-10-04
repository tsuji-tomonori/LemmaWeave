import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A15P3

theorem arcade_total_minutes : (3 * 60 : ℕ) = 180 := by norm_num
theorem arcade_payments : (180 / 6 : ℕ) = 30 := by norm_num
theorem arcade_total_cents : (30 * 50 : ℕ) = 1500 := by norm_num
theorem arcade_spending :
    (3 * 60 : ℕ) = 180 ∧
      180 / 6 = 30 ∧
      30 * 50 = 1500 ∧
      1500 / 100 = 15 := by
  exact ⟨arcade_total_minutes, arcade_payments, arcade_total_cents, by norm_num⟩

theorem race_known_tenths : (155 + 215 + 215 : ℕ) = 585 := by norm_num
theorem race_last_tenths : (745 - 585 : ℕ) = 160 := by norm_num
theorem race_last_part :
    (155 + 215 + 215 : ℕ) = 585 ∧
      745 - 585 = 160 ∧
      160 / 10 = 16 := by
  exact ⟨race_known_tenths, race_last_tenths, by norm_num⟩

theorem lunch_coupon_saving : (8 / 4 : ℕ) = 2 := by norm_num
theorem lunch_sandwich_with_avocado : (8 - 2 + 1 : ℕ) = 7 := by norm_num
theorem lunch_without_drink : (7 + 3 : ℕ) = 10 := by norm_num
theorem drink_price :
    (8 / 4 : ℕ) = 2 ∧
      8 - 2 + 1 = 7 ∧
      7 + 3 = 10 ∧
      12 - 10 = 2 := by
  exact ⟨lunch_coupon_saving, lunch_sandwich_with_avocado,
    lunch_without_drink, by norm_num⟩

theorem burger_meat_eaters : (10 - 1 : ℕ) = 9 := by norm_num
theorem burger_bun_eaters : (9 - 1 : ℕ) = 8 := by norm_num
theorem burger_buns_needed : (8 * 3 : ℕ) = 24 := by norm_num
theorem bun_packs :
    (10 - 1 : ℕ) = 9 ∧
      9 - 1 = 8 ∧
      8 * 3 = 24 ∧
      24 / 8 = 3 := by
  exact ⟨burger_meat_eaters, burger_bun_eaters, burger_buns_needed, by norm_num⟩

theorem alex_age_when_diane_thirty : (30 * 2 : ℕ) = 60 := by norm_num
theorem allison_age_when_diane_thirty : (30 / 2 : ℕ) = 15 := by norm_num
theorem years_until_diane_thirty : (30 - 16 : ℕ) = 14 := by norm_num
theorem alex_current_age : (60 - 14 : ℕ) = 46 := by norm_num
theorem allison_current_age : (15 - 14 : ℕ) = 1 := by norm_num
theorem current_age_sum :
    (30 * 2 : ℕ) = 60 ∧
      30 / 2 = 15 ∧
      30 - 16 = 14 ∧
      60 - 14 = 46 ∧
      15 - 14 = 1 ∧
      46 + 1 = 47 := by
  exact ⟨alex_age_when_diane_thirty, allison_age_when_diane_thirty,
    years_until_diane_thirty, alex_current_age, allison_current_age, by norm_num⟩

end LemmaWeave.Problems.GSM8K.Sprint1004A15P3

