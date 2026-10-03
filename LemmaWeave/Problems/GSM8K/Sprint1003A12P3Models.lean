import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1003A12P3

theorem branches_per_foot_readings :
    (((200 : ℚ) / 50 + 180 / 40 + 180 / 60 + 153 / 34) / 4) = 4 ∧
    (((200 + 180 + 180 + 153 : ℚ) / (50 + 40 + 60 + 34))) = 713 / 184 := by norm_num

theorem added_monthly_cars : (1800 / 12 - 100 : ℕ) = 50 := by norm_num

theorem apples_sold : (80 * 25 / 100 : ℕ) = 20 ∧ 25 * 100 / 125 = 20 := by norm_num

theorem trip_gas_cost_cents : (10 + 6 + 5 + 9 : ℕ) = 30 ∧ 30 / 15 = 2 ∧ 2 * 350 = 700 := by norm_num

theorem report_hours_left : (20 - (10 + 2) : ℕ) = 8 := by norm_num

end LemmaWeave.Problems.GSM8K.Sprint1003A12P3
