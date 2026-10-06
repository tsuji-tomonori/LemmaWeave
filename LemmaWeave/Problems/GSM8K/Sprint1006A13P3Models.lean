import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A13P3

theorem five_sisters_people : (1 + 4 : ℕ) = 5 := by norm_num
theorem bars_each : (20 / 5 : ℕ) = 4 := by norm_num
theorem bars_given_each : (4 / 2 : ℕ) = 2 := by norm_num
theorem father_received : (2 * 5 : ℕ) = 10 := by norm_num
theorem after_mother : (10 - 3 : ℕ) = 7 := by norm_num
theorem father_bars_left : (7 - 2 : ℕ) = 5 := by norm_num

theorem father_chocolate_bars_left :
    (1 + 4 : ℕ) = 5 ∧
      (20 / 5 : ℕ) = 4 ∧
      (4 / 2 : ℕ) = 2 ∧
      (2 * 5 : ℕ) = 10 ∧
      (10 - 3 : ℕ) = 7 ∧
      (7 - 2 : ℕ) = 5 := by
  exact ⟨five_sisters_people, bars_each, bars_given_each, father_received, after_mother, father_bars_left⟩

theorem reference_increment : (4000 * 10 : ℕ) = 40000 := by norm_num
theorem reference_four_day_total : (4000 + 40000 : ℕ) = 44000 := by norm_num
theorem reference_final_views : (44000 + 50000 : ℕ) = 94000 := by norm_num
theorem literal_increment : (4000 + 4000 * 10 : ℕ) = 44000 := by norm_num
theorem literal_four_day_total : (4000 + 44000 : ℕ) = 48000 := by norm_num
theorem literal_final_views : (48000 + 50000 : ℕ) = 98000 := by norm_num
theorem final_views_differ : (94000 : ℕ) ≠ 98000 := by norm_num

theorem youtube_views_ambiguity :
    (4000 * 10 : ℕ) = 40000 ∧
      (4000 + 40000 : ℕ) = 44000 ∧
      (44000 + 50000 : ℕ) = 94000 ∧
      (4000 + 4000 * 10 : ℕ) = 44000 ∧
      (4000 + 44000 : ℕ) = 48000 ∧
      (48000 + 50000 : ℕ) = 98000 ∧
      (94000 : ℕ) ≠ 98000 := by
  exact ⟨reference_increment, reference_four_day_total, reference_final_views, literal_increment, literal_four_day_total, literal_final_views, final_views_differ⟩

theorem derek_money_left : (40 - 14 - 11 - 5 : ℕ) = 10 := by norm_num
theorem dave_money_left : (50 - 7 : ℕ) = 43 := by norm_num
theorem dave_more_money : (43 - 10 : ℕ) = 33 := by norm_num

theorem dave_more_money_left :
    (40 - 14 - 11 - 5 : ℕ) = 10 ∧
      (50 - 7 : ℕ) = 43 ∧
      (43 - 10 : ℕ) = 33 := by
  exact ⟨derek_money_left, dave_money_left, dave_more_money⟩

theorem land_cost : (30 * 20 : ℕ) = 600 := by norm_num
theorem cow_cost : (20 * 1000 : ℕ) = 20000 := by norm_num
theorem chicken_cost : (100 * 5 : ℕ) = 500 := by norm_num
theorem solar_installation_cost : (6 * 100 : ℕ) = 600 := by norm_num
theorem all_land_living_cost : (600 + 120000 + 20000 + 500 + 600 + 6000 : ℕ) = 147700 := by norm_num

theorem living_off_land_total_cost :
    (30 * 20 : ℕ) = 600 ∧
      (20 * 1000 : ℕ) = 20000 ∧
      (100 * 5 : ℕ) = 500 ∧
      (6 * 100 : ℕ) = 600 ∧
      (600 + 120000 + 20000 + 500 + 600 + 6000 : ℕ) = 147700 := by
  exact ⟨land_cost, cow_cost, chicken_cost, solar_installation_cost, all_land_living_cost⟩

theorem five_dinosaurs_weight : (5 * 800 : ℕ) = 4000 := by norm_num
theorem barney_weight : (4000 + 1500 : ℕ) = 5500 := by norm_num
theorem all_dinosaurs_weight : (5500 + 4000 : ℕ) = 9500 := by norm_num

theorem dinosaur_combined_weight :
    (5 * 800 : ℕ) = 4000 ∧
      (4000 + 1500 : ℕ) = 5500 ∧
      (5500 + 4000 : ℕ) = 9500 := by
  exact ⟨five_dinosaurs_weight, barney_weight, all_dinosaurs_weight⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A13P3
