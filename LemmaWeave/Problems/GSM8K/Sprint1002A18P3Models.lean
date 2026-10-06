import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1002A18P3

theorem section_b_seats : (60 + 3 * 80 : ℕ) = 300 ∧ 3 * 300 + 20 = 920 := by norm_num

theorem beast_running_time : (2 * 60 : ℕ) = 120 ∧ 120 - 30 = 90 ∧ 90 + 10 = 100 := by norm_num

theorem remaining_candy : (30 + 40 + 50 : ℕ) = 120 ∧ 30 / 2 + 40 / 2 + 50 / 2 = 60 ∧ 120 - 60 - 5 = 55 := by norm_num

theorem oliver_bag_weight : (18 / 6 : ℕ) = 3 ∧ 2 * 3 = 6 := by norm_num

theorem ppo_reward : (240 / 2 : ℕ) = 120 ∧ 120 * 90 / 100 = 108 := by norm_num

end LemmaWeave.Problems.GSM8K.Sprint1002A18P3
