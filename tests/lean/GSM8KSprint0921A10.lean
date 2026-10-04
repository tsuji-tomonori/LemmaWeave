import LemmaWeave.Problems.GSM8K.Sprint0921A10Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0921A10
open LemmaWeave.Problems.GSM8K.Sprint0921A10

theorem rope_small : (72 : Nat) = 6 * 12 := by norm_num
theorem rope_shortened : (6 : Nat) = 5 + 1 := by norm_num
theorem rope_combined : (15 : Nat) = 5 * 3 := by norm_num
theorem rope_solution : RopePieces 72 12 6 1 5 3 15 := by
  unfold RopePieces
  exact ⟨rope_small, rope_shortened, rope_combined⟩

theorem library_this_year : (150 : Nat) = 50 * 3 := by norm_num
theorem library_current : (300 : Nat) = 100 + 50 + 150 := by
  calc (300 : Nat) = 100 + 50 + (50 * 3) := by norm_num
       _ = 100 + 50 + 150 := by rw [← library_this_year]
theorem library_solution : LibraryBooks 100 50 3 150 300 := by
  unfold LibraryBooks
  exact ⟨library_this_year, library_current⟩

theorem wine_franzia : (120 : Nat) = 40 * 3 := by norm_num
theorem wine_reference_twin : (10 : Nat) * 4 = 40 := by norm_num
theorem wine_additive_twin : (8 : Nat) * 5 = 40 := by norm_num
theorem wine_reference_total : (170 : Nat) = 120 + 40 + 10 := by norm_num
theorem wine_additive_total : (168 : Nat) = 120 + 40 + 8 := by norm_num
theorem wine_nonunique : (170 : Nat) ≠ 168 := by norm_num
theorem wine_solution : WineAgeAmbiguity 40 120 10 8 170 168 := by
  unfold WineAgeAmbiguity
  exact ⟨wine_franzia, wine_reference_twin, wine_additive_twin,
    wine_reference_total, wine_additive_total, wine_nonunique⟩

theorem bracelet_needed : (48 : Nat) = 6 * 8 := by norm_num
theorem bracelet_more : (48 : Nat) = 36 + 12 := by norm_num
theorem bracelet_solution : BraceletBeads 6 8 48 36 12 := by
  unfold BraceletBeads
  exact ⟨bracelet_needed, bracelet_more⟩

theorem wallet_spent : (160 : Nat) * 5 = 200 * 4 := by norm_num
theorem wallet_remaining : (200 : Nat) = 160 + 40 := by norm_num
theorem wallet_solution : WalletRemainder 200 4 5 160 40 := by
  unfold WalletRemainder
  exact ⟨wallet_spent, wallet_remaining⟩

theorem shelves_usable : (400 : Nat) = 160 + 240 := by norm_num
theorem shelves_count : (240 : Nat) = 3 * 80 := by norm_num
theorem shelves_solution : BookshelfCapacity 400 160 240 80 3 := by
  unfold BookshelfCapacity
  exact ⟨shelves_usable, shelves_count⟩

theorem cleaning_weekly : (50 : Nat) = 5 + 20 + 15 + 10 := by norm_num
theorem cleaning_total : (200 : Nat) = 4 * 50 := by
  calc (200 : Nat) = 4 * (5 + 20 + 15 + 10) := by norm_num
       _ = 4 * 50 := by rw [← cleaning_weekly]
theorem cleaning_solution : LivingRoomCleaning 5 20 15 10 50 4 200 := by
  unfold LivingRoomCleaning
  exact ⟨cleaning_weekly, cleaning_total⟩

theorem nuts_betty : (90 : Nat) = 40 + 50 := by norm_num
theorem nuts_pack : (100 : Nat) = 50 * 2 := by norm_num
theorem nuts_total : (2000 : Nat) = 20 * 100 := by norm_num
theorem nuts_solution : NutPurchase 90 40 50 2 100 20 2000 := by
  unfold NutPurchase
  exact ⟨nuts_betty, nuts_pack, nuts_total⟩

theorem apartment_drive1 : (35960 : Nat) = 31 * 20 * 58 := by norm_num
theorem apartment_total1 : (141960 : Nat) = 80000 + 26000 + 35960 := by norm_num
theorem apartment_drive2 : (24360 : Nat) = 21 * 20 * 58 := by norm_num
theorem apartment_total2 : (134360 : Nat) = 90000 + 20000 + 24360 := by norm_num
theorem apartment_difference : (141960 : Nat) = 134360 + 7600 := by norm_num
theorem apartment_dollars : (7600 : Nat) = 76 * 100 := by norm_num
theorem apartment_solution :
    ApartmentCosts 80000 26000 31 90000 20000 21 20 58 35960 141960 24360 134360 7600 76 := by
  unfold ApartmentCosts
  exact ⟨apartment_drive1, apartment_total1, apartment_drive2, apartment_total2,
    apartment_difference, apartment_dollars⟩

theorem money_spent : (300 : Nat) = 175 + 125 := by norm_num
theorem money_initial : (900 : Nat) = 300 + 600 := by norm_num
theorem money_solution : InitialMoney 175 125 300 600 900 := by
  unfold InitialMoney
  exact ⟨money_spent, money_initial⟩

theorem solar_reference_rate : (9 : Nat) = 1 + 8 := by norm_num
theorem solar_reference_systems : (180 : Nat) = 20 * 9 := by norm_num
theorem solar_reference_total : (200 : Nat) = 180 + 20 := by norm_num
theorem solar_global_systems : (28 : Nat) = 20 + 8 := by norm_num
theorem solar_global_total : (48 : Nat) = 28 + 20 := by norm_num
theorem solar_nonunique : (200 : Nat) ≠ 48 := by norm_num
theorem solar_solution : SolarSystemAmbiguity 20 8 9 180 200 28 48 := by
  unfold SolarSystemAmbiguity
  exact ⟨solar_reference_rate, solar_reference_systems, solar_reference_total,
    solar_global_systems, solar_global_total, solar_nonunique⟩

theorem bones_women : (20 : Nat) = 10 * 2 := by norm_num
theorem bones_remaining : (20 : Nat) = 10 + 10 := by norm_num
theorem bones_split : (10 : Nat) = 5 + 5 := by norm_num
theorem bones_equal_groups : (5 : Nat) = 5 := by rfl
theorem bones_man_each : (25 : Nat) = 20 + 5 := by norm_num
theorem bones_child_each : (20 : Nat) = 10 * 2 := by norm_num
theorem bones_women_total : (200 : Nat) = 10 * 20 := by norm_num
theorem bones_men_total : (125 : Nat) = 5 * 25 := by norm_num
theorem bones_children_total : (50 : Nat) = 5 * 10 := by norm_num
theorem bones_total : (375 : Nat) = 200 + 125 + 50 := by norm_num
theorem bones_solution : GraveyardBones 20 10 10 5 5 20 5 25 10 200 125 50 375 := by
  unfold GraveyardBones
  exact ⟨bones_women, bones_remaining, bones_split, bones_equal_groups,
    bones_man_each, bones_child_each, bones_women_total, bones_men_total,
    bones_children_total, bones_total⟩

theorem jumps_session : (40 : Nat) = 4 * 10 := by norm_num
theorem jumps_sessions : (10 : Nat) = 2 * 5 := by norm_num
theorem jumps_total : (400 : Nat) = 40 * 10 := by norm_num
theorem jumps_solution : JumpRope 4 10 40 2 5 10 400 := by
  unfold JumpRope
  exact ⟨jumps_session, jumps_sessions, jumps_total⟩

theorem shells_first_two : (12 : Nat) = 5 + 7 := by norm_num
theorem shells_third : (24 : Nat) = 12 * 2 := by norm_num
theorem shells_total : (36 : Nat) = 12 + 24 := by norm_num
theorem shells_solution : Seashells 5 7 12 2 24 36 := by
  unfold Seashells
  exact ⟨shells_first_two, shells_third, shells_total⟩

theorem babies_hyena : (12 : Nat) = 6 * 2 := by norm_num
theorem babies_lion_baby : (12 : Nat) = 6 * 2 := by norm_num
theorem babies_hyena_baby : (6 : Nat) = 3 * 2 := by norm_num
theorem babies_lion_future : (11 : Nat) = 6 + 5 := by norm_num
theorem babies_hyena_future : (8 : Nat) = 3 + 5 := by norm_num
theorem babies_total : (19 : Nat) = 11 + 8 := by norm_num
theorem babies_solution : BabyAges 12 6 6 3 5 11 8 19 := by
  unfold BabyAges
  exact ⟨babies_hyena, babies_lion_baby, babies_hyena_baby,
    babies_lion_future, babies_hyena_future, babies_total⟩

#print axioms rope_solution
#print axioms library_solution
#print axioms wine_solution
#print axioms bracelet_solution
#print axioms wallet_solution
#print axioms shelves_solution
#print axioms cleaning_solution
#print axioms nuts_solution
#print axioms apartment_solution
#print axioms money_solution
#print axioms solar_solution
#print axioms bones_solution
#print axioms jumps_solution
#print axioms shells_solution
#print axioms babies_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A10.rope_solution to "work/gsm8k-sprint61-rope-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A10.library_solution to "work/gsm8k-sprint61-library-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A10.wine_solution to "work/gsm8k-sprint61-wine-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A10.bracelet_solution to "work/gsm8k-sprint61-bracelet-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A10.wallet_solution to "work/gsm8k-sprint61-wallet-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A10.shelves_solution to "work/gsm8k-sprint61-shelves-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A10.cleaning_solution to "work/gsm8k-sprint61-cleaning-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A10.nuts_solution to "work/gsm8k-sprint61-nuts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A10.apartment_solution to "work/gsm8k-sprint61-apartment-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A10.money_solution to "work/gsm8k-sprint61-money-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A10.solar_solution to "work/gsm8k-sprint61-solar-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A10.bones_solution to "work/gsm8k-sprint61-bones-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A10.jumps_solution to "work/gsm8k-sprint61-jumps-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A10.shells_solution to "work/gsm8k-sprint61-shells-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A10.babies_solution to "work/gsm8k-sprint61-babies-graph.json"

end LemmaWeave.Tests.GSM8KSprint0921A10
