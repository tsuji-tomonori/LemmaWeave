import LemmaWeave.Problems.GSM8K.Sprint0921A09Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract
namespace LemmaWeave.Tests.GSM8KSprint0921A09
open LemmaWeave.Problems.GSM8K.Sprint0921A09

theorem cards_rob_doubles : (40 : Nat) = 8 * 5 := by norm_num
theorem cards_total : (24 : Nat) = 8 * 3 := by norm_num
theorem cards_solution : BaseballCards 40 5 8 3 24 := by
  unfold BaseballCards
  exact ⟨cards_rob_doubles, cards_total⟩

theorem reunion_combos : (36 : Nat) = 6 * 6 := by norm_num
theorem reunion_cost : (72 : Nat) = 6 * 12 := by norm_num
theorem reunion_solution : ReunionMeals 36 6 6 12 72 := by
  unfold ReunionMeals
  exact ⟨reunion_combos, reunion_cost⟩

theorem well_hours : (33 : Nat) = 10 + 8 + 15 := by norm_num
theorem well_each : (330 : Nat) = 33 * 10 := by
  calc (330 : Nat) = (10 + 8 + 15) * 10 := by norm_num
       _ = 33 * 10 := by rw [← well_hours]
theorem well_total : (660 : Nat) = 330 * 2 := by
  calc (660 : Nat) = (33 * 10) * 2 := by norm_num
       _ = 330 * 2 := by rw [← well_each]
theorem well_solution : WellPay 10 8 15 33 10 2 330 660 := by
  unfold WellPay
  exact ⟨well_hours, well_each, well_total⟩

theorem pet_cat : (6 : Nat) = 2 * 3 := by norm_num
theorem pet_dog_each : (5 : Nat) = 3 + 2 := by norm_num
theorem pet_dog : (10 : Nat) = 2 * 5 := by
  calc (10 : Nat) = 2 * (3 + 2) := by norm_num
       _ = 2 * 5 := by rw [← pet_dog_each]
theorem pet_pounds : (16 : Nat) = 6 + 10 := by
  calc (16 : Nat) = (2 * 3) + (2 * 5) := by norm_num
       _ = 6 + 10 := by rw [← pet_cat, ← pet_dog]
theorem pet_ounces : (256 : Nat) = 16 * 16 := by norm_num
theorem pet_solution : PetFood 2 3 6 2 5 2 10 16 16 256 := by
  unfold PetFood
  exact ⟨pet_cat, pet_dog_each, pet_dog, pet_pounds, pet_ounces⟩

theorem zoo_before : (66 : Nat) + 6 = 68 + 1 + 3 := by norm_num
theorem zoo_meerkats : (16 : Nat) = 8 * 2 := by norm_num
theorem zoo_final : (90 : Nat) = 66 + 8 + 16 := by
  calc (90 : Nat) = 66 + 8 + (8 * 2) := by norm_num
       _ = 66 + 8 + 16 := by rw [← zoo_meerkats]
theorem zoo_solution : ZooCubs 68 6 1 3 66 90 8 16 := by
  unfold ZooCubs
  exact ⟨zoo_before, zoo_meerkats, zoo_final⟩

theorem lettuce_large : (200 : Nat) = 2 * 4 * 25 := by norm_num
theorem lettuce_medium : (120 : Nat) = 2 * 3 * 20 := by norm_num
theorem lettuce_total : (320 : Nat) = 200 + 120 := by
  calc (320 : Nat) = (2 * 4 * 25) + (2 * 3 * 20) := by norm_num
       _ = 200 + 120 := by rw [← lettuce_large, ← lettuce_medium]
theorem lettuce_solution : LettuceSeeds 2 4 25 200 2 3 20 120 320 := by
  unfold LettuceSeeds
  exact ⟨lettuce_large, lettuce_medium, lettuce_total⟩

theorem ketchup_rate : (69 : Nat) = 3 * 23 := by norm_num
theorem ketchup_needed : (115 : Nat) = 5 * 23 := by norm_num
theorem ketchup_solution : KetchupTomatoes 3 69 23 5 115 := by
  unfold KetchupTomatoes
  exact ⟨ketchup_rate, ketchup_needed⟩

theorem ramp_hours : (15 : Nat) = 3 * 5 := by norm_num
theorem ramp_contractor : (2250 : Nat) = 150 * 15 := by
  calc (2250 : Nat) = 150 * (3 * 5) := by norm_num
       _ = 150 * 15 := by rw [← ramp_hours]
theorem ramp_inspector : (450 : Nat) * 100 = 2250 * 20 := by norm_num
theorem ramp_total : (2950 : Nat) = 250 + 2250 + 450 := by norm_num
theorem ramp_solution : RampCost 250 150 3 5 15 2250 20 450 2950 := by
  unfold RampCost
  exact ⟨ramp_hours, ramp_contractor, ramp_inspector, ramp_total⟩

theorem apples_banana : (500 : Nat) * 2 = 1000 := by norm_num
theorem apples_transport : (700 : Nat) = 350 + 350 := by norm_num
theorem apples_committed : (2200 : Nat) = 1000 + 500 + 700 := by norm_num
theorem apples_remaining : (5000 : Nat) = 2200 + 2800 := by norm_num
theorem apples_maximum : (2 : Nat) * 1400 ≤ 2800 ∧ 2800 < (2 + 1) * 1400 := by norm_num
theorem apples_count : (24 : Nat) = 2 * 12 := by norm_num
theorem apples_solution : AppleBudget 5000 1000 500 350 350 700 2200 2800 1400 2 12 24 := by
  unfold AppleBudget
  exact ⟨apples_banana, apples_transport, apples_committed, apples_remaining,
    apples_maximum.1, apples_maximum.2, apples_count⟩

theorem sandwich_food : (90 : Nat) = 18 * 5 := by norm_num
theorem sandwich_subtotal : (110 : Nat) = 90 + 20 := by norm_num
theorem sandwich_tip : (11 : Nat) * 100 = 110 * 10 := by norm_num
theorem sandwich_total : (121 : Nat) = 110 + 11 := by norm_num
theorem sandwich_solution : SandwichOrder 18 5 90 20 110 10 11 121 := by
  unfold SandwichOrder
  exact ⟨sandwich_food, sandwich_subtotal, sandwich_tip, sandwich_total⟩

theorem season_average : (345 : Nat) = 15 * 23 := by norm_num
theorem season_non_three : (14 : Nat) = 4 + 5 * 2 := by norm_num
theorem season_three_points : (23 : Nat) = 14 + 9 := by norm_num
theorem season_three_baskets : (9 : Nat) = 3 * 3 := by norm_num
theorem season_solution : SeasonScoring 345 15 23 4 5 14 9 3 := by
  unfold SeasonScoring
  exact ⟨season_average, season_non_three, season_three_points, season_three_baskets⟩

theorem ages_bea : (30 : Nat) = 15 * 2 := by norm_num
theorem ages_reference_job : (45 : Nat) = 15 * 3 := by norm_num
theorem ages_reference_figaro : (52 : Nat) = 45 + 7 := by norm_num
theorem ages_reference_harry : (52 : Nat) = 26 * 2 := by norm_num
theorem ages_additive_job : (60 : Nat) = 15 + 15 * 3 := by norm_num
theorem ages_additive_figaro : (67 : Nat) = 60 + 7 := by norm_num
theorem ages_additive_harry_twice : (67 : Nat) = 67 ∧ (26 : Nat) * 2 ≠ 67 := by norm_num
theorem ages_solution : AgeAmbiguity 30 15 45 52 26 60 67 67 := by
  unfold AgeAmbiguity
  exact ⟨ages_bea, ages_reference_job, ages_reference_figaro, ages_reference_harry,
    ages_additive_job, ages_additive_figaro, ages_additive_harry_twice.1,
    ages_additive_harry_twice.2⟩

theorem bears_later_price : (400 : Nat) = 350 + 50 := by norm_num
theorem bears_later_cost : (35000 : Nat) = 100 * 350 := by norm_num
theorem bears_total : (35400 : Nat) = 400 + 35000 := by
  calc (35400 : Nat) = 400 + (100 * 350) := by norm_num
       _ = 400 + 35000 := by rw [← bears_later_cost]
theorem bears_solution : BearPurchase 400 50 350 100 35000 35400 := by
  unfold BearPurchase
  exact ⟨bears_later_price, bears_later_cost, bears_total⟩

theorem party_men : (40 : Nat) * 3 = 120 := by norm_num
theorem party_women : (60 : Nat) * 2 = 120 := by norm_num
theorem party_adults : (100 : Nat) = 40 + 60 := by norm_num
theorem party_children : (120 : Nat) = 100 + 20 := by norm_num
theorem party_solution : PartyChildren 120 40 60 100 20 := by
  unfold PartyChildren
  exact ⟨party_men, party_women, party_adults, party_children⟩

theorem market_oranges : (1350 : Nat) = 3 * 450 := by norm_num
theorem market_juice : (350 : Nat) = 7 * 50 := by norm_num
theorem market_honey : (1500 : Nat) = 3 * 500 := by norm_num
theorem market_plants : (4 : Nat) * 1800 = 3600 * 2 := by norm_num
theorem market_total : (6800 : Nat) = 1350 + 350 + 1500 + 3600 := by norm_num
theorem market_solution : MarketPurchase 3 450 1350 7 50 350 3 500 1500 4 2 1800 3600 6800 := by
  unfold MarketPurchase
  exact ⟨market_oranges, market_juice, market_honey, market_plants, market_total⟩

end LemmaWeave.Tests.GSM8KSprint0921A09

#print axioms LemmaWeave.Tests.GSM8KSprint0921A09.ages_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A09.apples_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A09.bears_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A09.cards_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A09.ketchup_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A09.lettuce_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A09.market_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A09.party_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A09.pet_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A09.ramp_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A09.reunion_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A09.sandwich_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A09.season_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A09.well_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A09.zoo_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A09.ages_solution to "work/gsm8k-sprint60-ages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A09.apples_solution to "work/gsm8k-sprint60-apples-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A09.bears_solution to "work/gsm8k-sprint60-bears-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A09.cards_solution to "work/gsm8k-sprint60-cards-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A09.ketchup_solution to "work/gsm8k-sprint60-ketchup-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A09.lettuce_solution to "work/gsm8k-sprint60-lettuce-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A09.market_solution to "work/gsm8k-sprint60-market-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A09.party_solution to "work/gsm8k-sprint60-party-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A09.pet_solution to "work/gsm8k-sprint60-pet-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A09.ramp_solution to "work/gsm8k-sprint60-ramp-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A09.reunion_solution to "work/gsm8k-sprint60-reunion-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A09.sandwich_solution to "work/gsm8k-sprint60-sandwich-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A09.season_solution to "work/gsm8k-sprint60-season-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A09.well_solution to "work/gsm8k-sprint60-well-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A09.zoo_solution to "work/gsm8k-sprint60-zoo-graph.json"
