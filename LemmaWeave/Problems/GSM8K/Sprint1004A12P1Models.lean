import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1004A12P1

theorem gecko_infertile_eggs :
    (30 * 20 / 100 : ℕ) = 6 := by
  norm_num

theorem gecko_fertile_eggs :
    (30 - 6 : ℕ) = 24 := by
  norm_num

theorem gecko_calcification_failures :
    (24 / 3 : ℕ) = 8 := by
  norm_num

theorem gecko_eggs_hatched :
    (30 * 20 / 100 : ℕ) = 6 ∧
      30 - 6 = 24 ∧
      24 / 3 = 8 ∧
      24 - 8 = 16 := by
  exact ⟨gecko_infertile_eggs, gecko_fertile_eggs,
    gecko_calcification_failures, by norm_num⟩

theorem sweater_yarn_cost_each :
    (4 * 6 : ℕ) = 24 := by
  norm_num

theorem sweater_profit_each :
    (35 - 24 : ℕ) = 11 := by
  norm_num

theorem sweater_total_profit :
    (4 * 6 : ℕ) = 24 ∧
      35 - 24 = 11 ∧
      28 * 11 = 308 := by
  exact ⟨sweater_yarn_cost_each, sweater_profit_each, by norm_num⟩

theorem balloon_bags_total :
    (5 * 8 : ℕ) = 40 := by
  norm_num

theorem balloons_total :
    (5 * 8 : ℕ) = 40 ∧
      40 * 12 = 480 := by
  exact ⟨balloon_bags_total, by norm_num⟩

theorem quarter_count :
    (5 * 160 : ℕ) = 800 := by
  norm_num

theorem quarter_dollar_value :
    (800 / 4 : ℕ) = 200 := by
  norm_num

theorem bicycle_money_left :
    (5 * 160 : ℕ) = 800 ∧
      800 / 4 = 200 ∧
      200 - 180 = 20 := by
  exact ⟨quarter_count, quarter_dollar_value, by norm_num⟩

theorem dilan_ashley_mangoes :
    (60 / 4 : ℕ) = 15 := by
  norm_num

theorem mangoes_all_combined :
    (60 / 4 : ℕ) = 15 ∧
      60 + 15 = 75 := by
  exact ⟨dilan_ashley_mangoes, by norm_num⟩

end LemmaWeave.Problems.GSM8K.Sprint1004A12P1
