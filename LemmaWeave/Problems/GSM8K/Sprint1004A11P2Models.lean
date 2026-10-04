import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A11P2

theorem loot_boxes_bought :
    (40 / 5 : ℕ) = 8 := by
  norm_num

theorem loot_box_loss_each :
    (5 - 7 / 2 : ℚ) = 3 / 2 := by
  norm_num

theorem loot_box_average_loss :
    (40 / 5 : ℕ) = 8 ∧
      (5 - 7 / 2 : ℚ) = 3 / 2 ∧
      (8 : ℚ) * (3 / 2) = 12 := by
  exact ⟨loot_boxes_bought, loot_box_loss_each, by norm_num⟩

theorem computer_accessory_cost :
    (3000 * 10 / 100 : ℕ) = 300 := by
  norm_num

theorem computer_conventional_remaining :
    (2 * 3000 - 3000 - 300 : ℕ) = 2700 := by
  norm_num

theorem computer_literal_more_remaining :
    (3000 + 2 * 3000 - 3000 - 300 : ℕ) = 5700 := by
  norm_num

theorem computer_remaining_money_ambiguous :
    (3000 * 10 / 100 : ℕ) = 300 ∧
      2 * 3000 - 3000 - 300 = 2700 ∧
      3000 + 2 * 3000 - 3000 - 300 = 5700 ∧
      2700 ≠ 5700 := by
  exact ⟨computer_accessory_cost, computer_conventional_remaining,
    computer_literal_more_remaining, by norm_num⟩

theorem shirt_discount_amount :
    (80 * 15 / 100 : ℕ) = 12 := by
  norm_num

theorem discounted_shirt_price :
    (80 * 15 / 100 : ℕ) = 12 ∧
      80 - 12 = 68 := by
  exact ⟨shirt_discount_amount, by norm_num⟩

theorem bernard_current_age :
    (3 * 20 - 8 : ℕ) = 52 := by
  norm_num

theorem bernard_luke_average :
    ((52 + 20) / 2 : ℕ) = 36 := by
  norm_num

theorem bernard_luke_average_minus_ten :
    (3 * 20 - 8 : ℕ) = 52 ∧
      (52 + 20) / 2 = 36 ∧
      36 - 10 = 26 := by
  exact ⟨bernard_current_age, bernard_luke_average, by norm_num⟩

theorem gift_card_after_monday :
    (200 - 200 / 2 : ℕ) = 100 := by
  norm_num

theorem gift_card_tuesday_spend :
    (100 / 4 : ℕ) = 25 := by
  norm_num

theorem gift_card_remaining :
    (200 - 200 / 2 : ℕ) = 100 ∧
      100 / 4 = 25 ∧
      100 - 25 = 75 := by
  exact ⟨gift_card_after_monday, gift_card_tuesday_spend, by norm_num⟩

end LemmaWeave.Problems.GSM8K.Sprint1004A11P2
