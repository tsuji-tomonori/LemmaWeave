import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A15P3

theorem bathtub_gallons : (6 * 75 / 10 : ℕ) = 45 := by norm_num
theorem water_pounds : (45 * 8 : ℕ) = 360 := by norm_num
theorem jello_tablespoons : (360 * 15 / 10 : ℕ) = 540 := by norm_num
theorem jello_cost_cents : (540 * 50 : ℕ) = 27000 := by norm_num
theorem jello_cost_dollars : (27000 / 100 : ℕ) = 270 := by norm_num

theorem jello_bathtub_cost :
    (6 * 75 / 10 : ℕ) = 45 ∧
      (45 * 8 : ℕ) = 360 ∧
      (360 * 15 / 10 : ℕ) = 540 ∧
      (540 * 50 : ℕ) = 27000 ∧
      (27000 / 100 : ℕ) = 270 := by
  exact ⟨bathtub_gallons, water_pounds, jello_tablespoons, jello_cost_cents, jello_cost_dollars⟩

theorem cheap_dvd_cost : (10 * 2 : ℕ) = 20 := by norm_num
theorem expensive_dvd_cost : (5 * 5 : ℕ) = 25 := by norm_num
theorem dvd_count : (10 + 5 : ℕ) = 15 := by norm_num
theorem dvd_total_spent : (20 + 25 : ℕ) = 45 := by norm_num
theorem dvd_average : (45 / 15 : ℕ) = 3 := by norm_num

theorem dvd_average_price :
    (10 * 2 : ℕ) = 20 ∧
      (5 * 5 : ℕ) = 25 ∧
      (10 + 5 : ℕ) = 15 ∧
      (20 + 25 : ℕ) = 45 ∧
      (45 / 15 : ℕ) = 3 := by
  exact ⟨cheap_dvd_cost, expensive_dvd_cost, dvd_count, dvd_total_spent, dvd_average⟩

theorem potato_cost : (6 * 2 : ℕ) = 12 := by norm_num
theorem tomato_cost : (9 * 3 : ℕ) = 27 := by norm_num
theorem cucumber_cost : (5 * 4 : ℕ) = 20 := by norm_num
theorem banana_cost : (3 * 5 : ℕ) = 15 := by norm_num
theorem market_total_cost : (12 + 27 + 20 + 15 : ℕ) = 74 := by norm_num
theorem market_money_left : (500 - 74 : ℕ) = 426 := by norm_num

theorem market_remaining_money :
    (6 * 2 : ℕ) = 12 ∧
      (9 * 3 : ℕ) = 27 ∧
      (5 * 4 : ℕ) = 20 ∧
      (3 * 5 : ℕ) = 15 ∧
      (12 + 27 + 20 + 15 : ℕ) = 74 ∧
      (500 - 74 : ℕ) = 426 := by
  exact ⟨potato_cost, tomato_cost, cucumber_cost, banana_cost, market_total_cost, market_money_left⟩

theorem tray30_kelsey : (30 * 2 / 5 : ℕ) = 12 := by norm_num
theorem tray30_stephanie : (30 / 2 : ℕ) = 15 := by norm_num
theorem tray30_pair : (12 + 15 : ℕ) = 27 := by norm_num
theorem tray30_alayah : (27 + 40 : ℕ) = 67 := by norm_num
theorem tray30_brought : (27 + 67 : ℕ) = 94 := by norm_num
theorem tray30_willa : (2 * 30 : ℕ) = 60 := by norm_num
theorem tray30_total : (94 + 60 : ℕ) = 154 := by norm_num
theorem tray20_kelsey : (20 * 2 / 5 : ℕ) = 8 := by norm_num
theorem tray20_stephanie : (20 / 2 : ℕ) = 10 := by norm_num
theorem tray20_pair : (8 + 10 : ℕ) = 18 := by norm_num
theorem tray20_alayah : (18 + 40 : ℕ) = 58 := by norm_num
theorem tray20_brought : (18 + 58 : ℕ) = 76 := by norm_num
theorem tray20_willa : (2 * 20 : ℕ) = 40 := by norm_num
theorem tray20_total : (76 + 40 : ℕ) = 116 := by norm_num
theorem egg_totals_differ : (154 : ℕ) ≠ 116 := by norm_num

theorem party_eggs_underdetermined :
    (30 * 2 / 5 : ℕ) = 12 ∧
      (30 / 2 : ℕ) = 15 ∧
      (12 + 15 : ℕ) = 27 ∧
      (27 + 40 : ℕ) = 67 ∧
      (27 + 67 : ℕ) = 94 ∧
      (2 * 30 : ℕ) = 60 ∧
      (94 + 60 : ℕ) = 154 ∧
      (20 * 2 / 5 : ℕ) = 8 ∧
      (20 / 2 : ℕ) = 10 ∧
      (8 + 10 : ℕ) = 18 ∧
      (18 + 40 : ℕ) = 58 ∧
      (18 + 58 : ℕ) = 76 ∧
      (2 * 20 : ℕ) = 40 ∧
      (76 + 40 : ℕ) = 116 ∧
      (154 : ℕ) ≠ 116 := by
  exact ⟨tray30_kelsey, tray30_stephanie, tray30_pair, tray30_alayah, tray30_brought, tray30_willa, tray30_total, tray20_kelsey, tray20_stephanie, tray20_pair, tray20_alayah, tray20_brought, tray20_willa, tray20_total, egg_totals_differ⟩

theorem daily_project_hours : (10 + 5 : ℕ) = 15 := by norm_num
theorem project_days : (1500 / 15 : ℕ) = 100 := by norm_num

theorem work_project_days :
    (10 + 5 : ℕ) = 15 ∧
      (1500 / 15 : ℕ) = 100 := by
  exact ⟨daily_project_hours, project_days⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A15P3
