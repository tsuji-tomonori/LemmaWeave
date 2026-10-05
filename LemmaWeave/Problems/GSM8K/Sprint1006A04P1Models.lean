import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1006A04P1

theorem grace_dime_pennies : (10 * 10 : ℕ) = 100 := by norm_num
theorem grace_nickel_pennies : (10 * 5 : ℕ) = 50 := by norm_num
theorem grace_total_pennies : (100 + 50 : ℕ) = 150 := by norm_num

theorem grace_pennies :
    (10 * 10 : ℕ) = 100 ∧
      10 * 5 = 50 ∧
      100 + 50 = 150 := by
  exact ⟨grace_dime_pennies, grace_nickel_pennies, grace_total_pennies⟩

theorem sleepover_friend_count : (2 + 2 : ℕ) = 4 := by norm_num
theorem sleepover_donuts_per_person : (3 + 1 : ℕ) = 4 := by norm_num
theorem sleepover_people_count : (4 + 1 : ℕ) = 5 := by norm_num
theorem sleepover_total_donuts : (5 * 4 : ℕ) = 20 := by norm_num

theorem sleepover_donuts :
    (2 + 2 : ℕ) = 4 ∧
      3 + 1 = 4 ∧
      4 + 1 = 5 ∧
      5 * 4 = 20 := by
  exact ⟨sleepover_friend_count, sleepover_donuts_per_person,
    sleepover_people_count, sleepover_total_donuts⟩

theorem jimmy_weight : (75 + 6 : ℕ) = 81 := by norm_num
theorem adam_weight : (75 - 15 : ℕ) = 60 := by norm_num
theorem three_people_total_weight : (75 + 81 + 60 : ℕ) = 216 := by norm_num
theorem three_people_average_weight : (216 / 3 : ℕ) = 72 := by norm_num

theorem average_weight :
    (75 + 6 : ℕ) = 81 ∧
      75 - 15 = 60 ∧
      75 + 81 + 60 = 216 ∧
      216 / 3 = 72 := by
  exact ⟨jimmy_weight, adam_weight, three_people_total_weight,
    three_people_average_weight⟩

theorem initial_plum_count : (180 / 3 : ℕ) = 60 := by norm_num
theorem initial_fruit_total : (180 + 60 : ℕ) = 240 := by norm_num
theorem picked_fruit_count : (240 * 3 / 5 : ℕ) = 144 := by norm_num
theorem remaining_fruit_count : (240 - 144 : ℕ) = 96 := by norm_num

theorem fruits_remaining :
    (180 / 3 : ℕ) = 60 ∧
      180 + 60 = 240 ∧
      240 * 3 / 5 = 144 ∧
      240 - 144 = 96 := by
  exact ⟨initial_plum_count, initial_fruit_total, picked_fruit_count,
    remaining_fruit_count⟩

theorem marble_equal_parts_total : (215 - 55 : ℕ) = 160 := by norm_num
theorem rhonda_marble_count : (160 / 2 : ℕ) = 80 := by norm_num
theorem amon_marble_count : (80 + 55 : ℕ) = 135 := by norm_num
theorem marble_total_check : (80 + 135 : ℕ) = 215 := by norm_num

theorem rhonda_marbles :
    (215 - 55 : ℕ) = 160 ∧
      160 / 2 = 80 ∧
      80 + 55 = 135 ∧
      80 + 135 = 215 := by
  exact ⟨marble_equal_parts_total, rhonda_marble_count, amon_marble_count,
    marble_total_check⟩

end LemmaWeave.Problems.GSM8K.Sprint1006A04P1
