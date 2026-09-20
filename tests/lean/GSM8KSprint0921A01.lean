import LemmaWeave.Problems.GSM8K.Sprint0921A01Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract
namespace LemmaWeave.Tests.GSM8KSprint0921A01
open LemmaWeave.Problems.GSM8K.Sprint0921A01

theorem juice_weekly : (15 : Nat) = 3 * 5 := by norm_num
theorem juice_year : (375 : Nat) = 15 * 25 := by
  calc
    (375 : Nat) = (3 * 5) * 25 := by norm_num
    _ = 15 * 25 := by rw [← juice_weekly]
theorem juice_solution : JuiceBoxes 3 5 15 25 375 := by unfold JuiceBoxes; exact ⟨juice_weekly, juice_year⟩

theorem earrings_bought : (24 : Nat) = 12 * 2 := by norm_num
theorem earrings_given : (24 : Nat) = 12 * 2 := earrings_bought
theorem earrings_alissa : (36 : Nat) = 12 * 3 := by
  calc
    (36 : Nat) = 12 + 24 := by norm_num
    _ = 12 + 12 * 2 := by rw [earrings_given]
    _ = 12 * 3 := by norm_num
theorem earrings_solution : Earrings 12 2 24 12 2 3 36 := by unfold Earrings; exact ⟨earrings_bought, earrings_given, earrings_alissa⟩

theorem cakes_total : (36 : Nat) = 3 * 12 := by norm_num
theorem cakes_paid : (36 : Nat) = 18 * 2 := by
  calc
    (36 : Nat) = 3 * 12 := cakes_total
    _ = 18 * 2 := by norm_num
theorem cakes_solution : CakeShare 3 12 36 2 18 := by unfold CakeShare; exact ⟨cakes_total, cakes_paid⟩

theorem sandwiches_consumed : (7 : Nat) = 1 + 2 + 2 + 2 * 1 := by norm_num
theorem sandwiches_prepared : (10 : Nat) = 7 + 3 := by
  calc
    (10 : Nat) = (1 + 2 + 2 + 2 * 1) + 3 := by norm_num
    _ = 7 + 3 := by rw [← sandwiches_consumed]
theorem sandwiches_solution : Sandwiches 1 2 2 2 1 7 3 10 := by unfold Sandwiches; exact ⟨sandwiches_consumed, sandwiches_prepared⟩

theorem sugar_cake_equivalent : (24 : Nat) = 2 * 12 := by norm_num
theorem sugar_total_equivalent : (36 : Nat) = 24 + 12 := by
  calc
    (36 : Nat) = (2 * 12) + 12 := by norm_num
    _ = 24 + 12 := by rw [← sugar_cake_equivalent]
theorem sugar_each : (720 : Nat) = 36 * 20 := by
  calc
    (720 : Nat) = (24 + 12) * 20 := by norm_num
    _ = 36 * 20 := by rw [← sugar_total_equivalent]
theorem sugar_solution : SugarCake 2 12 24 12 36 720 20 := by unfold SugarCake; exact ⟨sugar_cake_equivalent, sugar_total_equivalent, sugar_each⟩

theorem pets_geckos : (45 : Nat) = 3 * 15 := by norm_num
theorem pets_iguanas : (10 : Nat) = 2 * 5 := by norm_num
theorem pets_snakes : (40 : Nat) = 4 * 10 := by norm_num
theorem pets_monthly : (95 : Nat) = 45 + 10 + 40 := by
  calc
    (95 : Nat) = 3 * 15 + 2 * 5 + 4 * 10 := by norm_num
    _ = 45 + 10 + 40 := by rw [← pets_geckos, ← pets_iguanas, ← pets_snakes]
theorem pets_annual : (1140 : Nat) = 95 * 12 := by
  calc
    (1140 : Nat) = (45 + 10 + 40) * 12 := by norm_num
    _ = 95 * 12 := by rw [← pets_monthly]
theorem pets_solution : PetFood 3 2 4 15 5 10 45 10 40 95 12 1140 := by unfold PetFood; exact ⟨pets_geckos, pets_iguanas, pets_snakes, pets_monthly, pets_annual⟩

theorem squat_wrap : (150 : Nat) * 100 = 600 * 25 := by norm_num
theorem squat_more : (150 : Nat) = 30 + 120 := by
  calc
    (150 : Nat) = (150 * 100) / 100 := by norm_num
    _ = (600 * 25) / 100 := by rw [squat_wrap]
    _ = 30 + 120 := by norm_num
theorem squat_solution : SquatGear 600 30 25 150 120 := by unfold SquatGear; exact ⟨squat_wrap, squat_more⟩

theorem orchard_amelia_oranges : (45 : Nat) = 27 + 18 := by norm_num
theorem orchard_george_apples : (20 : Nat) = 15 + 5 := by norm_num
theorem orchard_oranges : (72 : Nat) = 45 + 27 := by
  calc
    (72 : Nat) = (27 + 18) + 27 := by norm_num
    _ = 45 + 27 := by rw [← orchard_amelia_oranges]
theorem orchard_apples : (35 : Nat) = 20 + 15 := by
  calc
    (35 : Nat) = (15 + 5) + 15 := by norm_num
    _ = 20 + 15 := by rw [← orchard_george_apples]
theorem orchard_total : (107 : Nat) = 72 + 35 := by
  calc
    (107 : Nat) = (45 + 27) + (20 + 15) := by norm_num
    _ = 72 + 35 := by rw [← orchard_oranges, ← orchard_apples]
theorem orchard_solution : Orchard 45 18 27 15 5 20 72 35 107 := by unfold Orchard; exact ⟨orchard_amelia_oranges, orchard_george_apples, orchard_oranges, orchard_apples, orchard_total⟩

theorem boxes_delivered : (2160 : Nat) = 180 * 12 := by norm_num
theorem boxes_remaining : (2160 : Nat) = 160 + 2000 := by
  calc
    (2160 : Nat) = 180 * 12 := boxes_delivered
    _ = 160 + 2000 := by norm_num
theorem boxes_count : (2000 : Nat) = 100 * 20 := by
  calc
    (2000 : Nat) = 2160 - 160 := by norm_num
    _ = 100 * 20 := by rw [boxes_remaining]; norm_num
theorem boxes_solution : AppleBoxes 180 12 2160 160 2000 20 100 := by unfold AppleBoxes; exact ⟨boxes_delivered, boxes_remaining, boxes_count⟩

theorem basketball_twos : (8 : Nat) = 2 * 4 := by norm_num
theorem basketball_threes : (6 : Nat) = 3 * 2 := by norm_num
theorem basketball_score : (14 : Nat) = 8 + 6 := by
  calc
    (14 : Nat) = 2 * 4 + 3 * 2 := by norm_num
    _ = 8 + 6 := by rw [← basketball_twos, ← basketball_threes]
theorem basketball_solution : Basketball 2 4 8 3 2 6 14 := by unfold Basketball; exact ⟨basketball_twos, basketball_threes, basketball_score⟩

theorem coins_quarters : (9 : Nat) = 4 + 5 := by norm_num
theorem coins_total : (300 : Nat) = 4 * 10 + 9 * 25 + 7 * 5 := by
  calc
    (300 : Nat) = 4 * 10 + (4 + 5) * 25 + 7 * 5 := by norm_num
    _ = 4 * 10 + 9 * 25 + 7 * 5 := by rw [← coins_quarters]
theorem coins_solution : Coins 4 10 4 5 9 25 7 5 300 := by unfold Coins; exact ⟨coins_quarters, coins_total⟩

theorem eggs_days : (14 : Nat) = 2 * 7 := by norm_num
theorem eggs_total : (42 : Nat) = 14 * 3 := by
  calc
    (42 : Nat) = (2 * 7) * 3 := by norm_num
    _ = 14 * 3 := by rw [← eggs_days]
theorem eggs_solution : Eggs 2 7 14 3 42 := by unfold Eggs; exact ⟨eggs_days, eggs_total⟩

theorem swim_back : (52 : Nat) = 48 + 4 := by norm_num
theorem swim_butterfly : (55 : Nat) = 52 + 3 := by
  calc
    (55 : Nat) = (48 + 4) + 3 := by norm_num
    _ = 52 + 3 := by rw [← swim_back]
theorem swim_breast : (57 : Nat) = 55 + 2 := by
  calc
    (57 : Nat) = (52 + 3) + 2 := by norm_num
    _ = 55 + 2 := by rw [← swim_butterfly]
theorem swim_total : (212 : Nat) = 48 + 52 + 55 + 57 := by
  calc
    (212 : Nat) = 48 + (48 + 4) + (52 + 3) + (55 + 2) := by norm_num
    _ = 48 + 52 + 55 + 57 := by rw [← swim_back, ← swim_butterfly, ← swim_breast]
theorem swim_solution : SwimTimes 48 4 52 3 55 2 57 212 := by unfold SwimTimes; exact ⟨swim_back, swim_butterfly, swim_breast, swim_total⟩

theorem buttons_first : (600 : Nat) = 200 * 3 := by norm_num
theorem buttons_second : (1000 : Nat) = 200 * 5 := by norm_num
theorem buttons_total : (1600 : Nat) = 600 + 1000 := by
  calc
    (1600 : Nat) = 200 * 3 + 200 * 5 := by norm_num
    _ = 600 + 1000 := by rw [← buttons_first, ← buttons_second]
theorem buttons_solution : ShirtButtons 200 3 600 200 5 1000 1600 := by unfold ShirtButtons; exact ⟨buttons_first, buttons_second, buttons_total⟩

theorem fish_west_caught : (1350 : Nat) * 4 = 1800 * 3 := by norm_num
theorem fish_west_remain : (1800 : Nat) = 1350 + 450 := by
  calc
    (1800 : Nat) = (1350 * 4) / 3 := by norm_num
    _ = (1800 * 3) / 3 := by rw [fish_west_caught]
    _ = 1350 + 450 := by norm_num
theorem fish_east_caught : (1280 : Nat) * 5 = 3200 * 2 := by norm_num
theorem fish_east_remain : (3200 : Nat) = 1280 + 1920 := by
  calc
    (3200 : Nat) = (1280 * 5) / 2 := by norm_num
    _ = (3200 * 2) / 2 := by rw [fish_east_caught]
    _ = 1280 + 1920 := by norm_num
theorem fish_total : (2870 : Nat) = 450 + 1920 + 500 := by
  calc
    (2870 : Nat) = (1800 - 1350) + (3200 - 1280) + 500 := by norm_num
    _ = 450 + 1920 + 500 := by rw [fish_west_remain, fish_east_remain]; norm_num
theorem fish_solution : FishRemaining 1800 3200 500 3 4 1350 450 2 5 1280 1920 2870 := by unfold FishRemaining; exact ⟨fish_west_caught, fish_west_remain, fish_east_caught, fish_east_remain, fish_total⟩

#print axioms juice_solution
#print axioms earrings_solution
#print axioms cakes_solution
#print axioms sandwiches_solution
#print axioms sugar_solution
#print axioms pets_solution
#print axioms squat_solution
#print axioms orchard_solution
#print axioms boxes_solution
#print axioms basketball_solution
#print axioms coins_solution
#print axioms eggs_solution
#print axioms swim_solution
#print axioms buttons_solution
#print axioms fish_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A01.juice_solution to "work/gsm8k-sprint52-juice-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A01.earrings_solution to "work/gsm8k-sprint52-earrings-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A01.cakes_solution to "work/gsm8k-sprint52-cakes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A01.sandwiches_solution to "work/gsm8k-sprint52-sandwiches-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A01.sugar_solution to "work/gsm8k-sprint52-sugar-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A01.pets_solution to "work/gsm8k-sprint52-pets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A01.squat_solution to "work/gsm8k-sprint52-squat-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A01.orchard_solution to "work/gsm8k-sprint52-orchard-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A01.boxes_solution to "work/gsm8k-sprint52-boxes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A01.basketball_solution to "work/gsm8k-sprint52-basketball-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A01.coins_solution to "work/gsm8k-sprint52-coins-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A01.eggs_solution to "work/gsm8k-sprint52-eggs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A01.swim_solution to "work/gsm8k-sprint52-swim-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A01.buttons_solution to "work/gsm8k-sprint52-buttons-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A01.fish_solution to "work/gsm8k-sprint52-fish-graph.json"
end LemmaWeave.Tests.GSM8KSprint0921A01
