import LemmaWeave.Problems.GSM8K.Sprint0919A28Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A28
open LemmaWeave.Problems.GSM8K.Sprint0919A28

theorem lunch_third : (5 : Nat) * 30 = 150 := by norm_num
theorem lunch_fourth : (4 : Nat) * 28 = 112 := by norm_num
theorem lunch_fifth : (4 : Nat) * 27 = 108 := by norm_num
theorem lunch_students : (150 : Nat) + 112 + 108 = 370 := by norm_num
theorem lunch_each : (210 : Nat) + 50 + 20 = 280 := by norm_num
theorem lunch_total : (370 : Nat) * 280 = 103600 := by norm_num
theorem lunch_solution : SchoolLunch 5 30 150 4 28 112 4 27 108 370 210 50 20 280 103600 := by
  unfold SchoolLunch
  exact ⟨rfl, rfl, lunch_third.symm, rfl, rfl, lunch_fourth.symm,
    rfl, rfl, lunch_fifth.symm, lunch_students.symm, rfl, rfl, rfl,
    lunch_each.symm, lunch_total.symm⟩

theorem socks_brown_each : (45 : Nat) = 20 + 25 := by norm_num
theorem socks_total : (15 : Nat) * 20 = 300 := by norm_num
theorem socks_solution : BrownSocks 45 25 20 15 300 := by
  unfold BrownSocks
  exact ⟨rfl, rfl, socks_brown_each, rfl, socks_total.symm⟩

theorem pizza_slices : (3 : Nat) * 12 = 36 := by norm_num
theorem pizza_slice_cost : (36 : Nat) * 200 = 7200 := by norm_num
theorem pizza_five_cost : (5 : Nat) * 200 = 1000 := by norm_num
theorem pizza_solution : PizzaSlices 3 12 36 7200 200 5 1000 := by
  unfold PizzaSlices
  exact ⟨rfl, rfl, pizza_slices.symm, rfl, pizza_slice_cost.symm,
    rfl, pizza_five_cost.symm⟩

theorem account_after_shirt : (55 : Nat) = 7 + 48 := by norm_num
theorem account_second_shop : (3 : Nat) * 7 = 21 := by norm_num
theorem account_left : (48 : Nat) = 21 + 27 := by norm_num
theorem account_solution : Account 55 7 48 3 21 27 := by
  unfold Account
  exact ⟨rfl, rfl, account_after_shirt, rfl, account_second_shop.symm, account_left⟩

theorem guacamole_total : (5 : Nat) + 4 = 9 := by norm_num
theorem guacamole_servings : (3 : Nat) * 3 = 9 := by norm_num
theorem guacamole_solution : Guacamole 5 4 9 3 3 := by
  unfold Guacamole
  exact ⟨rfl, rfl, guacamole_total.symm, rfl, guacamole_servings.symm⟩

theorem cookies_after_brother : (20 : Nat) = 10 + 10 := by norm_num
theorem cookies_mother_gift : (5 : Nat) * 2 = 10 := by norm_num
theorem cookies_after_gift : (10 : Nat) + 5 = 15 := by norm_num
theorem cookies_sister_gift : (10 : Nat) * 3 = 15 * 2 := by norm_num
theorem cookies_left : (15 : Nat) = 10 + 5 := by norm_num
theorem cookies_solution : CookieTransfers 20 10 10 2 5 15 2 3 10 5 := by
  unfold CookieTransfers
  exact ⟨rfl, rfl, cookies_after_brother, rfl, cookies_mother_gift,
    cookies_after_gift.symm, rfl, rfl, cookies_sister_gift, cookies_left⟩

theorem piggy_after_toy : (102 : Nat) = 2 * 51 := by norm_num
theorem piggy_initial : (204 : Nat) = 2 * 102 := by norm_num
theorem piggy_solution : PiggyBank 204 102 51 := by
  unfold PiggyBank
  exact ⟨piggy_initial, piggy_after_toy, rfl⟩

theorem tiles_current : (48 : Nat) + 32 = 80 := by norm_num
theorem tiles_needed : (100 : Nat) = 80 + 20 := by norm_num
theorem tiles_solution : PoolTiles 48 32 80 100 20 := by
  unfold PoolTiles
  exact ⟨rfl, rfl, tiles_current.symm, rfl, tiles_needed⟩

theorem bread_first_tear : (1 : Nat) * 2 = 2 := by norm_num
theorem bread_per_slice : (2 : Nat) * 2 = 4 := by norm_num
theorem bread_total : (2 : Nat) * 4 = 8 := by norm_num
theorem bread_solution : BreadPieces 2 2 4 8 := by
  unfold BreadPieces
  exact ⟨rfl, bread_first_tear, bread_per_slice.symm, bread_total.symm⟩

theorem tub_cycle_net : (10 : Nat) + 2 * 1 = 12 := by norm_num
theorem tub_after_22_minutes : (11 : Nat) * 10 = 110 := by norm_num
theorem tub_exact_fill_time : (22 : ℚ) + 10 / 11 = 252 / 11 := by norm_num
theorem tub_before_23_minutes : (252 : ℚ) / 11 < 23 ∧ (252 : ℚ) / 11 ≠ 24 := by norm_num
theorem tub_solution : AlternatingTub 120 12 1 10 11 110 ∧
    (22 : ℚ) + 10 / 11 = 252 / 11 ∧ (252 : ℚ) / 11 < 23 ∧ (252 : ℚ) / 11 ≠ 24 := by
  have hmodel : AlternatingTub 120 12 1 10 11 110 := by
    unfold AlternatingTub
    exact ⟨rfl, rfl, rfl, tub_cycle_net, rfl, tub_after_22_minutes.symm⟩
  exact ⟨hmodel, tub_exact_fill_time, tub_before_23_minutes⟩

theorem meatballs_total : (3 : Nat) * 3 = 9 := by norm_num
theorem meatballs_remaining : (3 : Nat) * 3 = 9 * (3 - 2) := by norm_num
theorem meatballs_solution : Meatballs 3 3 9 2 3 3 := by
  unfold Meatballs
  exact ⟨rfl, rfl, meatballs_total.symm, rfl, rfl, meatballs_remaining⟩

theorem candy_eaten : (2 : Nat) * 4 = 8 := by norm_num
theorem candy_left : (68 : Nat) = 8 + 60 := by norm_num
theorem candy_solution : Candy 68 2 4 8 60 := by
  unfold Candy
  exact ⟨rfl, rfl, rfl, candy_eaten.symm, candy_left⟩

theorem oranges_emily : (60 : Nat) + 120 = 180 := by norm_num
theorem oranges_alice : (120 : Nat) = 2 * 60 := by norm_num
theorem oranges_solution : Oranges 60 120 180 := by
  unfold Oranges
  exact ⟨oranges_alice, oranges_emily.symm, rfl⟩

theorem change_pens : (3 : Nat) * 1 = 3 := by norm_num
theorem change_notebooks : (4 : Nat) * 3 = 12 := by norm_num
theorem change_folders : (2 : Nat) * 5 = 10 := by norm_num
theorem change_spent : (3 : Nat) + 12 + 10 = 25 := by norm_num
theorem change_returned : (50 : Nat) = 25 + 25 := by norm_num
theorem change_solution : StoreChange 3 1 3 4 3 12 2 5 10 25 50 25 := by
  unfold StoreChange
  exact ⟨rfl, rfl, change_pens.symm, rfl, rfl, change_notebooks.symm,
    rfl, rfl, change_folders.symm, change_spent.symm, rfl, change_returned⟩

theorem sticks_boys : (10 : Nat) * 15 = 150 := by norm_num
theorem sticks_girls : (12 : Nat) * 12 = 144 := by norm_num
theorem sticks_fewer : (150 : Nat) = 144 + 6 := by norm_num
theorem sticks_solution : PopsicleSticks 10 15 150 12 12 144 6 := by
  unfold PopsicleSticks
  exact ⟨rfl, rfl, sticks_boys.symm, rfl, rfl, sticks_girls.symm, sticks_fewer⟩

#print axioms LemmaWeave.Tests.GSM8KSprint0919A28.account_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A28.bread_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A28.candy_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A28.change_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A28.cookies_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A28.guacamole_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A28.lunch_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A28.meatballs_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A28.oranges_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A28.piggy_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A28.pizza_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A28.socks_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A28.sticks_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A28.tiles_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0919A28.tub_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A28.account_solution to "work/gsm8k-sprint28-account-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A28.bread_solution to "work/gsm8k-sprint28-bread-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A28.candy_solution to "work/gsm8k-sprint28-candy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A28.change_solution to "work/gsm8k-sprint28-change-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A28.cookies_solution to "work/gsm8k-sprint28-cookies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A28.guacamole_solution to "work/gsm8k-sprint28-guacamole-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A28.lunch_solution to "work/gsm8k-sprint28-lunch-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A28.meatballs_solution to "work/gsm8k-sprint28-meatballs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A28.oranges_solution to "work/gsm8k-sprint28-oranges-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A28.piggy_solution to "work/gsm8k-sprint28-piggy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A28.pizza_solution to "work/gsm8k-sprint28-pizza-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A28.socks_solution to "work/gsm8k-sprint28-socks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A28.sticks_solution to "work/gsm8k-sprint28-sticks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A28.tiles_solution to "work/gsm8k-sprint28-tiles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A28.tub_solution to "work/gsm8k-sprint28-tub-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A28
