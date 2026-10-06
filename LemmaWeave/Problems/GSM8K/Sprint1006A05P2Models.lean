import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A05P2

theorem loot_box_count : (40 / 5 : ℕ) = 8 := by norm_num
theorem expected_loss_per_box_cents : (500 - 350 : ℕ) = 150 := by norm_num
theorem expected_total_loss_cents : (150 * 8 : ℕ) = 1200 := by norm_num

theorem loot_box_expected_loss :
    (40 / 5 : ℕ) = 8 ∧
      500 - 350 = 150 ∧
      150 * 8 = 1200 := by
  exact ⟨loot_box_count, expected_loss_per_box_cents, expected_total_loss_cents⟩

theorem jeremy_common_initial_money : (3000 * 2 : ℕ) = 6000 := by norm_num
theorem jeremy_accessory_cost : (3000 * 10 / 100 : ℕ) = 300 := by norm_num
theorem jeremy_common_remaining : (6000 - 3000 - 300 : ℕ) = 2700 := by norm_num
theorem jeremy_literal_initial_money : (3000 * 3 : ℕ) = 9000 := by norm_num
theorem jeremy_literal_remaining : (9000 - 3000 - 300 : ℕ) = 5700 := by norm_num
theorem jeremy_readings_differ : (2700 : ℕ) ≠ 5700 := by norm_num

theorem jeremy_money_ambiguous :
    (3000 * 2 : ℕ) = 6000 ∧
      3000 * 10 / 100 = 300 ∧
      6000 - 3000 - 300 = 2700 ∧
      3000 * 3 = 9000 ∧
      9000 - 3000 - 300 = 5700 ∧
      (2700 : ℕ) ≠ 5700 := by
  exact ⟨jeremy_common_initial_money, jeremy_accessory_cost, jeremy_common_remaining,
    jeremy_literal_initial_money, jeremy_literal_remaining, jeremy_readings_differ⟩

theorem shirt_discount_amount : (80 * 15 / 100 : ℕ) = 12 := by norm_num
theorem shirt_discounted_price : (80 - 12 : ℕ) = 68 := by norm_num

theorem birthday_shirt_price :
    (80 * 15 / 100 : ℕ) = 12 ∧
      80 - 12 = 68 := by
  exact ⟨shirt_discount_amount, shirt_discounted_price⟩

theorem bernard_age_in_eight_years : (3 * 20 : ℕ) = 60 := by norm_num
theorem bernard_current_age : (60 - 8 : ℕ) = 52 := by norm_num
theorem current_age_sum : (52 + 20 : ℕ) = 72 := by norm_num
theorem current_age_average : (72 / 2 : ℕ) = 36 := by norm_num
theorem ten_less_than_average : (36 - 10 : ℕ) = 26 := by norm_num

theorem ten_less_average_age :
    (3 * 20 : ℕ) = 60 ∧
      60 - 8 = 52 ∧
      52 + 20 = 72 ∧
      72 / 2 = 36 ∧
      36 - 10 = 26 := by
  exact ⟨bernard_age_in_eight_years, bernard_current_age, current_age_sum,
    current_age_average, ten_less_than_average⟩

theorem gift_after_monday : (200 / 2 : ℕ) = 100 := by norm_num
theorem gift_tuesday_spending : (100 / 4 : ℕ) = 25 := by norm_num
theorem gift_card_remaining : (100 - 25 : ℕ) = 75 := by norm_num

theorem gift_card_balance :
    (200 / 2 : ℕ) = 100 ∧
      100 / 4 = 25 ∧
      100 - 25 = 75 := by
  exact ⟨gift_after_monday, gift_tuesday_spending, gift_card_remaining⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A05P2
