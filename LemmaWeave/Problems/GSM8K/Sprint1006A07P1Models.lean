import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A07P1

theorem gecko_infertile_eggs : (30 * 20 / 100 : ℕ) = 6 := by norm_num
theorem gecko_fertile_eggs : (30 - 6 : ℕ) = 24 := by norm_num
theorem gecko_calcified_eggs : (24 / 3 : ℕ) = 8 := by norm_num
theorem gecko_hatched_eggs : (24 - 8 : ℕ) = 16 := by norm_num

theorem gecko_eggs_hatched :
    (30 * 20 / 100 : ℕ) = 6 ∧
      30 - 6 = 24 ∧
      24 / 3 = 8 ∧
      24 - 8 = 16 := by
  exact ⟨gecko_infertile_eggs, gecko_fertile_eggs,
    gecko_calcified_eggs, gecko_hatched_eggs⟩

theorem sweater_yarn_balls : (28 * 4 : ℕ) = 112 := by norm_num
theorem sweater_yarn_cost : (112 * 6 : ℕ) = 672 := by norm_num
theorem sweater_sales_revenue : (28 * 35 : ℕ) = 980 := by norm_num
theorem sweater_profit : (980 - 672 : ℕ) = 308 := by norm_num

theorem sweater_total_profit :
    (28 * 4 : ℕ) = 112 ∧
      112 * 6 = 672 ∧
      28 * 35 = 980 ∧
      980 - 672 = 308 := by
  exact ⟨sweater_yarn_balls, sweater_yarn_cost,
    sweater_sales_revenue, sweater_profit⟩

theorem balloon_bag_count : (5 * 8 : ℕ) = 40 := by norm_num
theorem balloon_total_count : (40 * 12 : ℕ) = 480 := by norm_num

theorem party_balloons :
    (5 * 8 : ℕ) = 40 ∧
      40 * 12 = 480 := by
  exact ⟨balloon_bag_count, balloon_total_count⟩

theorem quarter_count : (5 * 160 : ℕ) = 800 := by norm_num
theorem quarter_value_dollars : (800 / 4 : ℕ) = 200 := by norm_num
theorem bike_money_left : (200 - 180 : ℕ) = 20 := by norm_num

theorem bike_purchase_leftover :
    (5 * 160 : ℕ) = 800 ∧
      800 / 4 = 200 ∧
      200 - 180 = 20 := by
  exact ⟨quarter_count, quarter_value_dollars, bike_money_left⟩

theorem dilan_ashley_mangoes : (60 / 4 : ℕ) = 15 := by norm_num
theorem all_mangoes : (60 + 15 : ℕ) = 75 := by norm_num

theorem mango_total :
    (60 / 4 : ℕ) = 15 ∧
      60 + 15 = 75 := by
  exact ⟨dilan_ashley_mangoes, all_mangoes⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A07P1
