import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A15P2

theorem cash_after_loan : (30 - 15 : ℕ) = 15 := by norm_num
theorem loan_interest : (15 * 20 / 100 : ℕ) = 3 := by norm_num
theorem loan_repayment : (15 + 3 : ℕ) = 18 := by norm_num
theorem cash_after_repayment : (15 + 18 : ℕ) = 33 := by norm_num

theorem loan_return_balance :
    (30 - 15 : ℕ) = 15 ∧
      (15 * 20 / 100 : ℕ) = 3 ∧
      (15 + 3 : ℕ) = 18 ∧
      (15 + 18 : ℕ) = 33 := by
  exact ⟨cash_after_loan, loan_interest, loan_repayment, cash_after_repayment⟩

theorem perry_fish : (4 * 2 : ℕ) = 8 := by norm_num
theorem total_fish_caught : (4 + 8 : ℕ) = 12 := by norm_num
theorem fish_lost : (12 / 4 : ℕ) = 3 := by norm_num
theorem fish_left : (12 - 3 : ℕ) = 9 := by norm_num

theorem fish_remaining :
    (4 * 2 : ℕ) = 8 ∧
      (4 + 8 : ℕ) = 12 ∧
      (12 / 4 : ℕ) = 3 ∧
      (12 - 3 : ℕ) = 9 := by
  exact ⟨perry_fish, total_fish_caught, fish_lost, fish_left⟩

theorem ten_dollar_cd_count : (200 * 40 / 100 : ℕ) = 80 := by norm_num
theorem five_dollar_cd_count : (200 - 80 : ℕ) = 120 := by norm_num
theorem ten_dollar_cd_bought : (80 / 2 : ℕ) = 40 := by norm_num
theorem ten_dollar_cost : (40 * 10 : ℕ) = 400 := by norm_num
theorem five_dollar_cost : (120 * 5 : ℕ) = 600 := by norm_num
theorem cd_total_cost : (400 + 600 : ℕ) = 1000 := by norm_num

theorem cd_purchase_cost :
    (200 * 40 / 100 : ℕ) = 80 ∧
      (200 - 80 : ℕ) = 120 ∧
      (80 / 2 : ℕ) = 40 ∧
      (40 * 10 : ℕ) = 400 ∧
      (120 * 5 : ℕ) = 600 ∧
      (400 + 600 : ℕ) = 1000 := by
  exact ⟨ten_dollar_cd_count, five_dollar_cd_count, ten_dollar_cd_bought, ten_dollar_cost, five_dollar_cost, cd_total_cost⟩

theorem first_four_weeks : (5 * 4 : ℕ) = 20 := by norm_num
theorem second_four_weeks : (10 * 4 : ℕ) = 40 := by norm_num
theorem third_four_weeks : (20 * 4 : ℕ) = 80 := by norm_num
theorem savings_total : (20 + 40 + 80 : ℕ) = 140 := by norm_num

theorem weekly_savings_total :
    (5 * 4 : ℕ) = 20 ∧
      (10 * 4 : ℕ) = 40 ∧
      (20 * 4 : ℕ) = 80 ∧
      (20 + 40 + 80 : ℕ) = 140 := by
  exact ⟨first_four_weeks, second_four_weeks, third_four_weeks, savings_total⟩

theorem driving_hours : (300 / 50 : ℕ) = 6 := by norm_num
theorem rest_stop_count : (6 / 2 - 1 : ℕ) = 2 := by norm_num
theorem rest_minutes : (2 * 30 : ℕ) = 60 := by norm_num
theorem total_trip_hours : (6 + 1 : ℕ) = 7 := by norm_num

theorem trip_duration_with_rests :
    (300 / 50 : ℕ) = 6 ∧
      (6 / 2 - 1 : ℕ) = 2 ∧
      (2 * 30 : ℕ) = 60 ∧
      (6 + 1 : ℕ) = 7 := by
  exact ⟨driving_hours, rest_stop_count, rest_minutes, total_trip_hours⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A15P2
