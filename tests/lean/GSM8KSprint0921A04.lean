import LemmaWeave.Problems.GSM8K.Sprint0921A04Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract
namespace LemmaWeave.Tests.GSM8KSprint0921A04
open LemmaWeave.Problems.GSM8K.Sprint0921A04

theorem concert_before : (900 : Nat) * 3 = 675 * 4 := by norm_num
theorem concert_remaining : (900 : Nat) = 675 + 225 := by
  calc (900 : Nat) = 675 * 4 / 3 := by norm_num
       _ = 675 + 225 := by rw [← concert_before]; norm_num
theorem concert_late : (225 : Nat) * 5 = 125 * 9 := by
  calc (225 : Nat) * 5 = (900 - 675) * 5 := by norm_num
       _ = 125 * 9 := by rw [concert_remaining]; norm_num
theorem concert_absent : (225 : Nat) = 125 + 80 + 20 := by
  calc (225 : Nat) = 125 * 9 / 5 := by norm_num
       _ = 125 + 80 + 20 := by rw [← concert_late]; norm_num
theorem concert_solution : Concert 900 675 225 125 80 20 := by
  unfold Concert; exact ⟨concert_before, concert_remaining, concert_late, concert_absent⟩

theorem gina_mom : (400 : Nat) = 100 * 4 := by norm_num
theorem gina_clothes : (400 : Nat) = 50 * 8 := by norm_num
theorem gina_charity : (400 : Nat) = 80 * 5 := by norm_num
theorem gina_spent : (230 : Nat) = 100 + 50 + 80 := by
  calc (230 : Nat) = 400 / 4 + 400 / 8 + 400 / 5 := by norm_num
       _ = 100 + 50 + 80 := by rw [gina_mom, gina_clothes, gina_charity]; norm_num
theorem gina_kept : (400 : Nat) = 230 + 170 := by
  calc (400 : Nat) = (100 + 50 + 80) + 170 := by norm_num
       _ = 230 + 170 := by rw [← gina_spent]
theorem gina_solution : GinaMoney 400 100 50 80 230 170 := by
  unfold GinaMoney; exact ⟨gina_mom, gina_clothes, gina_charity, gina_spent, gina_kept⟩

theorem friend_younger : (36 : Nat) + 2 + 36 = 74 := by norm_num
theorem friend_older : (38 : Nat) = 36 + 2 := by
  calc (38 : Nat) = 74 - 36 := by norm_num
       _ = 36 + 2 := by rw [← friend_younger]; norm_num
theorem friend_total : (74 : Nat) = 38 + 36 := by
  calc (74 : Nat) = (36 + 2) + 36 := by norm_num
       _ = 38 + 36 := by rw [← friend_older]
theorem friend_solution : FriendAges 38 36 2 74 := by
  unfold FriendAges; exact ⟨friend_older, friend_total⟩
theorem friend_unique {older younger : Nat} (h : FriendAges older younger 2 74) : older = 38 := by
  unfold FriendAges at h; omega
theorem friend_full_solution :
    FriendAges 38 36 2 74 ∧ ∀ older younger, FriendAges older younger 2 74 → older = 38 := by
  exact ⟨friend_solution, fun _ _ h => friend_unique h⟩

theorem coins_reference_unit : (12 : Nat) = 3 * 4 := by norm_num
theorem coins_reference_original : (20 : Nat) = 5 * 4 := by
  calc (20 : Nat) = 5 * (12 / 3) := by norm_num
       _ = 5 * 4 := by rw [coins_reference_unit]; norm_num
theorem coins_reference_left : (5 : Nat) = 3 + 2 := by
  calc (5 : Nat) = 20 / 4 := by norm_num
       _ = 3 + 2 := by rw [coins_reference_original]; norm_num
theorem coins_reference_solution : ReferenceCoinSale 12 3 4 20 5 2 := by
  unfold ReferenceCoinSale; exact ⟨coins_reference_unit, coins_reference_original, coins_reference_left⟩
theorem coins_literal_example_two : CashBalanceCoinSale 0 12 12 4 20 5 3 2 := by
  unfold CashBalanceCoinSale; norm_num
theorem coins_literal_example_seven : CashBalanceCoinSale 6 6 12 2 20 10 3 7 := by
  unfold CashBalanceCoinSale; norm_num
theorem coins_literal_not_unique : (2 : Nat) ≠ 7 := by
  have _ := coins_literal_example_two
  have _ := coins_literal_example_seven
  norm_num
theorem coins_solution :
    ReferenceCoinSale 12 3 4 20 5 2 ∧
    CashBalanceCoinSale 0 12 12 4 20 5 3 2 ∧
    CashBalanceCoinSale 6 6 12 2 20 10 3 7 ∧ (2 : Nat) ≠ 7 := by
  exact ⟨coins_reference_solution, coins_literal_example_two, coins_literal_example_seven,
    coins_literal_not_unique⟩

theorem cards_heike : (60 : Nat) = 10 * 6 := by norm_num
theorem cards_anton : (30 : Nat) = 10 * 3 := by
  calc (30 : Nat) = (60 / 6) * 3 := by norm_num
       _ = 10 * 3 := by rw [cards_heike]; norm_num
theorem cards_difference : (60 : Nat) = 30 + 30 := by
  calc (60 : Nat) = 10 * 3 + 30 := by norm_num
       _ = 30 + 30 := by rw [← cards_anton]
theorem cards_solution : Cards 60 6 10 3 30 30 := by
  unfold Cards; exact ⟨cards_heike, cards_anton, cards_difference⟩

theorem fruits_matt : (6 : Nat) = 3 * 2 := by norm_num
theorem fruits_mark : (9 : Nat) = 3 + 6 := by
  calc (9 : Nat) = 3 + 3 * 2 := by norm_num
       _ = 3 + 6 := by rw [← fruits_matt]
theorem fruits_total : (18 : Nat) = 3 + 6 + 9 := by
  calc (18 : Nat) = 3 + 6 + (3 + 6) := by norm_num
       _ = 3 + 6 + 9 := by rw [← fruits_mark]
theorem fruits_solution : Fruits 3 2 6 9 18 := by
  unfold Fruits; exact ⟨fruits_matt, fruits_mark, fruits_total⟩

theorem medicine_total_ml : (150 : Nat) = 30 * 5 := by norm_num
theorem medicine_each_ml : (150 : Nat) = 3 * 50 := by
  calc (150 : Nat) = 30 * 5 := medicine_total_ml
       _ = 3 * 50 := by norm_num
theorem medicine_volume_solution : DoseVolume 30 5 150 3 50 := by
  unfold DoseVolume; exact ⟨medicine_total_ml, medicine_each_ml⟩
theorem medicine_mass_example_50 : DoseMassReading 50 1 50 := by
  unfold DoseMassReading; norm_num
theorem medicine_mass_example_100 : DoseMassReading 50 2 100 := by
  unfold DoseMassReading; norm_num
theorem medicine_mass_not_unique : (50 : Nat) ≠ 100 := by
  have _ := medicine_mass_example_50
  have _ := medicine_mass_example_100
  norm_num
theorem medicine_solution :
    DoseVolume 30 5 150 3 50 ∧ DoseMassReading 50 1 50 ∧
    DoseMassReading 50 2 100 ∧ (50 : Nat) ≠ 100 := by
  exact ⟨medicine_volume_solution, medicine_mass_example_50, medicine_mass_example_100,
    medicine_mass_not_unique⟩

theorem butcher_steak_weight : (4 : Nat) = 4 * 1 := by norm_num
theorem butcher_steak_cost : (30 : Nat) * 2 = 4 * 15 := by
  calc (30 : Nat) * 2 = (4 * 1) * 15 := by norm_num
       _ = 4 * 15 := by rw [← butcher_steak_weight]
theorem butcher_chicken_cost : (12 : Nat) * 2 = 3 * 8 := by norm_num
theorem butcher_total : (42 : Nat) = 30 + 12 := by
  calc (42 : Nat) = (4 * 15 / 2) + (3 * 8 / 2) := by norm_num
       _ = 30 + 12 := by rw [← butcher_steak_cost, ← butcher_chicken_cost]; norm_num
theorem butcher_solution : Butcher 4 1 4 15 30 3 8 12 42 := by
  unfold Butcher; exact ⟨butcher_steak_weight, butcher_steak_cost, butcher_chicken_cost, butcher_total⟩

theorem berries_raspberries : (42 : Nat) = 21 * 2 := by norm_num
theorem berries_blackberries : (42 : Nat) = 14 * 3 := by norm_num
theorem berries_blueberries : (42 : Nat) = 21 + 14 + 7 := by
  calc (42 : Nat) = 42 / 2 + 42 / 3 + 7 := by norm_num
       _ = 21 + 14 + 7 := by rw [berries_raspberries, berries_blackberries]; norm_num
theorem berries_solution : Berries 42 21 14 7 := by
  unfold Berries; exact ⟨berries_raspberries, berries_blackberries, berries_blueberries⟩

theorem viggo_then : (14 : Nat) = 2 * 2 + 10 := by norm_num
theorem viggo_gap : (14 : Nat) = 2 + 12 := by
  calc (14 : Nat) = 2 * 2 + 10 := viggo_then
       _ = 2 + 12 := by norm_num
theorem viggo_now : (22 : Nat) = 10 + 12 := by
  calc (22 : Nat) = 10 + (14 - 2) := by norm_num
       _ = 10 + 12 := by rw [viggo_gap]; norm_num
theorem viggo_total : (32 : Nat) = 10 + 22 := by
  calc (32 : Nat) = 10 + (10 + 12) := by norm_num
       _ = 10 + 22 := by rw [← viggo_now]
theorem viggo_solution : ViggoAges 2 14 12 10 22 32 := by
  unfold ViggoAges; exact ⟨viggo_then, viggo_gap, viggo_now, viggo_total⟩

theorem donuts_made : (120 : Nat) = 10 * 12 := by norm_num
theorem donuts_jeff : (12 : Nat) = 1 * 12 := by norm_num
theorem donuts_remaining : (120 : Nat) = 12 + 8 + 100 := by
  calc (120 : Nat) = 10 * 12 := donuts_made
       _ = 12 + 8 + 100 := by rw [← donuts_jeff]; norm_num
theorem donuts_boxes : (100 : Nat) = 10 * 10 := by
  calc (100 : Nat) = 120 - 12 - 8 := by norm_num
       _ = 10 * 10 := by rw [donuts_remaining]; norm_num
theorem donuts_solution : Donuts 10 12 120 1 12 8 100 10 10 := by
  unfold Donuts; exact ⟨donuts_made, donuts_jeff, donuts_remaining, donuts_boxes⟩

theorem scallops_needed : (16 : Nat) = 8 * 2 := by norm_num
theorem scallops_pounds : (16 : Nat) = 8 * 2 := by
  calc (16 : Nat) = 8 * 2 := scallops_needed
       _ = 8 * 2 := rfl
theorem scallops_cost : (48 : Nat) = 2 * 24 := by
  calc (48 : Nat) = (16 / 8) * 24 := by norm_num
       _ = 2 * 24 := by rw [scallops_pounds]; norm_num
theorem scallops_solution : Scallops 8 2 16 8 2 24 48 := by
  unfold Scallops; exact ⟨scallops_needed, scallops_pounds, scallops_cost⟩

theorem savings_daily : (50 : Nat) = 15 + 35 := by norm_num
theorem savings_doubled : (490 : Nat) = 7 * 35 * 2 := by
  calc (490 : Nat) = 7 * (50 - 15) * 2 := by norm_num
       _ = 7 * 35 * 2 := by rw [savings_daily]; norm_num
theorem savings_total : (500 : Nat) = 490 + 10 := by
  calc (500 : Nat) = 7 * 35 * 2 + 10 := by norm_num
       _ = 490 + 10 := by rw [← savings_doubled]
theorem savings_solution : Savings 50 15 35 7 490 10 500 := by
  unfold Savings; exact ⟨savings_daily, savings_doubled, savings_total⟩
theorem savings_unique {days doubled : Nat} (h : Savings 50 15 35 days doubled 10 500) : days = 7 := by
  unfold Savings at h; omega
theorem savings_full_solution :
    Savings 50 15 35 7 490 10 500 ∧
    ∀ days doubled, Savings 50 15 35 days doubled 10 500 → days = 7 := by
  exact ⟨savings_solution, fun _ _ h => savings_unique h⟩

theorem gladys_billy : (30 : Nat) = 10 * 3 := by norm_num
theorem gladys_pair : (30 : Nat) = 15 * 2 := by norm_num
theorem gladys_lucas_now : (15 : Nat) = 10 + 5 := by
  calc (15 : Nat) = 30 / 2 := by norm_num
       _ = 10 + 5 := by rw [gladys_pair, gladys_billy]; norm_num
theorem gladys_future : (8 : Nat) = 5 + 3 := by
  calc (8 : Nat) = (15 - 10) + 3 := by norm_num
       _ = 5 + 3 := by rw [gladys_lucas_now]; norm_num
theorem gladys_solution : GladysAges 30 3 10 15 5 3 8 := by
  unfold GladysAges; exact ⟨gladys_billy, gladys_pair, gladys_lucas_now, gladys_future⟩

theorem golf_charlie : (12 : Nat) = 9 + 3 := by norm_num
theorem golf_dana : (11 : Nat) = 9 + 2 := by
  calc (11 : Nat) = (12 - 3) + 2 := by norm_num
       _ = 9 + 2 := by rw [golf_charlie]; norm_num
theorem golf_perry : (16 : Nat) = 11 + 5 := by
  calc (16 : Nat) = (9 + 2) + 5 := by norm_num
       _ = 11 + 5 := by rw [← golf_dana]
theorem golf_difference : (16 : Nat) = 12 + 4 := by
  calc (16 : Nat) = 11 + 5 := golf_perry
       _ = 12 + 4 := by norm_num
theorem golf_solution : Golf 12 9 11 16 4 := by
  unfold Golf; exact ⟨golf_charlie, golf_dana, golf_perry, golf_difference⟩

#print axioms concert_solution
#print axioms gina_solution
#print axioms friend_solution
#print axioms friend_unique
#print axioms friend_full_solution
#print axioms coins_reference_solution
#print axioms coins_literal_not_unique
#print axioms coins_solution
#print axioms cards_solution
#print axioms fruits_solution
#print axioms medicine_volume_solution
#print axioms medicine_mass_not_unique
#print axioms medicine_solution
#print axioms butcher_solution
#print axioms berries_solution
#print axioms viggo_solution
#print axioms donuts_solution
#print axioms scallops_solution
#print axioms savings_solution
#print axioms savings_unique
#print axioms savings_full_solution
#print axioms gladys_solution
#print axioms golf_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A04.concert_solution to "work/gsm8k-sprint55-concert-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A04.gina_solution to "work/gsm8k-sprint55-gina-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A04.friend_full_solution to "work/gsm8k-sprint55-friend-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A04.coins_solution to "work/gsm8k-sprint55-coins-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A04.cards_solution to "work/gsm8k-sprint55-cards-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A04.fruits_solution to "work/gsm8k-sprint55-fruits-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A04.medicine_solution to "work/gsm8k-sprint55-medicine-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A04.butcher_solution to "work/gsm8k-sprint55-butcher-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A04.berries_solution to "work/gsm8k-sprint55-berries-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A04.viggo_solution to "work/gsm8k-sprint55-viggo-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A04.donuts_solution to "work/gsm8k-sprint55-donuts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A04.scallops_solution to "work/gsm8k-sprint55-scallops-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A04.savings_full_solution to "work/gsm8k-sprint55-savings-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A04.gladys_solution to "work/gsm8k-sprint55-gladys-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A04.golf_solution to "work/gsm8k-sprint55-golf-graph.json"
end LemmaWeave.Tests.GSM8KSprint0921A04
