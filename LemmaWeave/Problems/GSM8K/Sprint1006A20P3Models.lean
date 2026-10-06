import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A20P3

theorem candies_per_bag : (63 / 9 : ℕ) = 7 := by norm_num
theorem chocolate_bag_count : (2 + 3 : ℕ) = 5 := by norm_num
theorem chocolate_candy_count : (5 * 7 : ℕ) = 35 := by norm_num
theorem non_chocolate_count : (63 - 35 : ℕ) = 28 := by norm_num

theorem non_chocolate_candy_count :
    (63 / 9 : ℕ) = 7 ∧
      (2 + 3 : ℕ) = 5 ∧
      (5 * 7 : ℕ) = 35 ∧
      (63 - 35 : ℕ) = 28 := by
  exact ⟨candies_per_bag, chocolate_bag_count, chocolate_candy_count, non_chocolate_count⟩

theorem two_candy_pack_cost : (49 * 2 : ℕ) = 98 := by norm_num
theorem money_still_needed : (98 - 20 : ℕ) = 78 := by norm_num

theorem cory_needed_money :
    (49 * 2 : ℕ) = 98 ∧
      (98 - 20 : ℕ) = 78 := by
  exact ⟨two_candy_pack_cost, money_still_needed⟩

theorem half_grass_weeds : (32 / 2 : ℕ) = 16 := by norm_num
theorem weeds_pulled_before_break : (11 + 14 + 16 : ℕ) = 41 := by norm_num
theorem weed_earnings : (41 * 6 : ℕ) = 246 := by norm_num
theorem cents_after_soda : (246 - 99 : ℕ) = 147 := by norm_num

theorem lucille_cents_left :
    (32 / 2 : ℕ) = 16 ∧
      (11 + 14 + 16 : ℕ) = 41 ∧
      (41 * 6 : ℕ) = 246 ∧
      (246 - 99 : ℕ) = 147 := by
  exact ⟨half_grass_weeds, weeds_pulled_before_break, weed_earnings, cents_after_soda⟩

theorem daily_peanut_servings : (1 + 1 : ℕ) = 2 := by norm_num
theorem thirty_day_servings : (30 * 2 : ℕ) = 60 := by norm_num
theorem needed_jar_count : (60 / 15 : ℕ) = 4 := by norm_num

theorem peanut_butter_jar_count :
    (1 + 1 : ℕ) = 2 ∧
      (30 * 2 : ℕ) = 60 ∧
      (60 / 15 : ℕ) = 4 := by
  exact ⟨daily_peanut_servings, thirty_day_servings, needed_jar_count⟩

theorem pass_total_at_twelve : (12 + 2 * 12 + (12 + 2) : ℕ) = 50 := by norm_num
theorem left_passes_unique : ∀ x : ℕ, x + 2 * x + (x + 2) = 50 → x = 12 := by intro x h; omega

theorem left_side_pass_count :
    (12 + 2 * 12 + (12 + 2) : ℕ) = 50 ∧
      ∀ x : ℕ, x + 2 * x + (x + 2) = 50 → x = 12 := by
  exact ⟨pass_total_at_twelve, left_passes_unique⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A20P3
