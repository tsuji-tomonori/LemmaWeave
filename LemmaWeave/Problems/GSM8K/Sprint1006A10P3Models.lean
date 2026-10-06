import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A10P3

theorem arcade_minutes : (3 * 60 : ℕ) = 180 := by norm_num
theorem arcade_charges : (180 / 6 : ℕ) = 30 := by norm_num
theorem arcade_cents : (30 * 50 : ℕ) = 1500 := by norm_num
theorem arcade_dollars : (1500 / 100 : ℕ) = 15 := by norm_num

theorem arcade_spending :
    (3 * 60 : ℕ) = 180 ∧
      (180 / 6 : ℕ) = 30 ∧
      (30 * 50 : ℕ) = 1500 ∧
      (1500 / 100 : ℕ) = 15 := by
  exact ⟨arcade_minutes, arcade_charges, arcade_cents, arcade_dollars⟩

theorem race_known_tenths : (155 + 2 * 215 : ℕ) = 585 := by norm_num
theorem race_remaining_tenths : (745 - 585 : ℕ) = 160 := by norm_num
theorem race_remaining_km : (160 / 10 : ℕ) = 16 := by norm_num

theorem race_last_part :
    (155 + 2 * 215 : ℕ) = 585 ∧
      (745 - 585 : ℕ) = 160 ∧
      (160 / 10 : ℕ) = 16 := by
  exact ⟨race_known_tenths, race_remaining_tenths, race_remaining_km⟩

theorem lunch_coupon_discount : (8 / 4 : ℕ) = 2 := by norm_num
theorem lunch_sandwich_cost : (8 - 2 + 1 : ℕ) = 7 := by norm_num
theorem lunch_without_drink : (7 + 3 : ℕ) = 10 := by norm_num
theorem lunch_drink_cost : (12 - 10 : ℕ) = 2 := by norm_num

theorem lunch_drink_dollars :
    (8 / 4 : ℕ) = 2 ∧
      (8 - 2 + 1 : ℕ) = 7 ∧
      (7 + 3 : ℕ) = 10 ∧
      (12 - 10 : ℕ) = 2 := by
  exact ⟨lunch_coupon_discount, lunch_sandwich_cost, lunch_without_drink, lunch_drink_cost⟩

theorem bun_guests : (10 - 1 : ℕ) = 9 := by norm_num
theorem bun_burgers : (9 * 3 : ℕ) = 27 := by norm_num
theorem buns_needed : (27 - 3 : ℕ) = 24 := by norm_num
theorem bun_packs : (24 / 8 : ℕ) = 3 := by norm_num

theorem bun_pack_count :
    (10 - 1 : ℕ) = 9 ∧
      (9 * 3 : ℕ) = 27 ∧
      (27 - 3 : ℕ) = 24 ∧
      (24 / 8 : ℕ) = 3 := by
  exact ⟨bun_guests, bun_burgers, buns_needed, bun_packs⟩

theorem future_alex_age : (30 * 2 : ℕ) = 60 := by norm_num
theorem future_allison_age : (30 / 2 : ℕ) = 15 := by norm_num
theorem years_to_thirty : (30 - 16 : ℕ) = 14 := by norm_num
theorem current_alex_age : (60 - 14 : ℕ) = 46 := by norm_num
theorem current_allison_age : (15 - 14 : ℕ) = 1 := by norm_num
theorem current_age_sum : (46 + 1 : ℕ) = 47 := by norm_num

theorem current_alex_allison_sum :
    (30 * 2 : ℕ) = 60 ∧
      (30 / 2 : ℕ) = 15 ∧
      (30 - 16 : ℕ) = 14 ∧
      (60 - 14 : ℕ) = 46 ∧
      (15 - 14 : ℕ) = 1 ∧
      (46 + 1 : ℕ) = 47 := by
  exact ⟨future_alex_age, future_allison_age, years_to_thirty,
    current_alex_age, current_allison_age, current_age_sum⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A10P3
