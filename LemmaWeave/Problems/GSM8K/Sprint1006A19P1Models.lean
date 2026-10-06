import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A19P1

theorem julio_bottle_count : (4 + 7 : ℕ) = 11 := by norm_num
theorem julio_liters : (11 * 2 : ℕ) = 22 := by norm_num
theorem mateo_bottle_count : (1 + 3 : ℕ) = 4 := by norm_num
theorem mateo_liters : (4 * 2 : ℕ) = 8 := by norm_num
theorem julio_extra_liters : (22 - 8 : ℕ) = 14 := by norm_num

theorem julio_soda_difference :
    (4 + 7 : ℕ) = 11 ∧
      (11 * 2 : ℕ) = 22 ∧
      (1 + 3 : ℕ) = 4 ∧
      (4 * 2 : ℕ) = 8 ∧
      (22 - 8 : ℕ) = 14 := by
  exact ⟨julio_bottle_count, julio_liters, mateo_bottle_count, mateo_liters, julio_extra_liters⟩

theorem initial_teaspoon_count : (2 * 24 : ℕ) = 48 := by norm_num
theorem additional_knife_count : (24 / 3 : ℕ) = 8 := by norm_num
theorem final_knife_count : (24 + 8 : ℕ) = 32 := by norm_num
theorem additional_teaspoon_count : (48 * 2 / 3 : ℕ) = 32 := by norm_num
theorem final_teaspoon_count : (48 + 32 : ℕ) = 80 := by norm_num
theorem all_cutlery_count : (32 + 80 : ℕ) = 112 := by norm_num

theorem braelynn_cutlery_total :
    (2 * 24 : ℕ) = 48 ∧
      (24 / 3 : ℕ) = 8 ∧
      (24 + 8 : ℕ) = 32 ∧
      (48 * 2 / 3 : ℕ) = 32 ∧
      (48 + 32 : ℕ) = 80 ∧
      (32 + 80 : ℕ) = 112 := by
  exact ⟨initial_teaspoon_count, additional_knife_count, final_knife_count, additional_teaspoon_count, final_teaspoon_count, all_cutlery_count⟩

theorem duck_purchase_cost : (30 * 10 : ℕ) = 300 := by norm_num
theorem duck_revenue_each : (4 * 5 : ℕ) = 20 := by norm_num
theorem duck_total_revenue : (30 * 20 : ℕ) = 600 := by norm_num
theorem duck_profit_amount : (600 - 300 : ℕ) = 300 := by norm_num

theorem duck_sale_profit :
    (30 * 10 : ℕ) = 300 ∧
      (4 * 5 : ℕ) = 20 ∧
      (30 * 20 : ℕ) = 600 ∧
      (600 - 300 : ℕ) = 300 := by
  exact ⟨duck_purchase_cost, duck_revenue_each, duck_total_revenue, duck_profit_amount⟩

theorem mars_minute_after_midnight : (10 : ℕ) = 10 := by norm_num
theorem jupiter_delay_minutes : (2 * 60 + 41 : ℕ) = 161 := by norm_num
theorem jupiter_minute_after_midnight : (10 + 161 : ℕ) = 171 := by norm_num
theorem uranus_delay_minutes : (3 * 60 + 16 : ℕ) = 196 := by norm_num
theorem uranus_minute_after_midnight : (171 + 196 : ℕ) = 367 := by norm_num
theorem minutes_after_six : (367 - 6 * 60 : ℕ) = 7 := by norm_num

theorem uranus_minutes_after_six :
    (10 : ℕ) = 10 ∧
      (2 * 60 + 41 : ℕ) = 161 ∧
      (10 + 161 : ℕ) = 171 ∧
      (3 * 60 + 16 : ℕ) = 196 ∧
      (171 + 196 : ℕ) = 367 ∧
      (367 - 6 * 60 : ℕ) = 7 := by
  exact ⟨mars_minute_after_midnight, jupiter_delay_minutes, jupiter_minute_after_midnight, uranus_delay_minutes, uranus_minute_after_midnight, minutes_after_six⟩

theorem marbles_given : (4 * 80 : ℕ) = 320 := by norm_num
theorem marbles_remaining : (500 - 320 : ℕ) = 180 := by norm_num
theorem fourfold_remaining : (4 * 180 : ℕ) = 720 := by norm_num

theorem marble_remaining_multiple :
    (4 * 80 : ℕ) = 320 ∧
      (500 - 320 : ℕ) = 180 ∧
      (4 * 180 : ℕ) = 720 := by
  exact ⟨marbles_given, marbles_remaining, fourfold_remaining⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A19P1
