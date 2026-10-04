import LemmaWeave.Problems.GSM8K.Sprint0921A06Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract
namespace LemmaWeave.Tests.GSM8KSprint0921A06
open LemmaWeave.Problems.GSM8K.Sprint0921A06

theorem lollipops_henry : (90 : Nat) = 60 + 30 := by norm_num
theorem lollipops_diane : (120 : Nat) = 60 * 2 := by norm_num
theorem lollipops_total : (270 : Nat) = 60 + 90 + 120 := by
  calc (270 : Nat) = 60 + (60 + 30) + (60 * 2) := by norm_num
       _ = 60 + 90 + 120 := by rw [← lollipops_henry, ← lollipops_diane]
theorem lollipops_days : (270 : Nat) = 45 * 6 := by
  calc (270 : Nat) = 60 + 90 + 120 := lollipops_total
       _ = 45 * 6 := by norm_num
theorem lollipops_solution : Lollipops 60 90 120 270 45 6 := by
  unfold Lollipops; exact ⟨lollipops_henry, lollipops_diane, lollipops_total, lollipops_days⟩

theorem books_cost : (10 : Nat) = 5 * 2 := by norm_num
theorem books_remaining : (48 : Nat) = 10 + 38 := by
  calc (48 : Nat) = (5 * 2) + 38 := by norm_num
       _ = 10 + 38 := by rw [← books_cost]
theorem books_solution : Books 48 5 2 10 38 := by
  unfold Books; exact ⟨books_cost, books_remaining⟩

theorem dogs_daily : (1000 : Nat) = 4 * 250 := by norm_num
theorem dogs_total_grams : (14000 : Nat) = 1000 * 14 := by
  calc (14000 : Nat) = (4 * 250) * 14 := by norm_num
       _ = 1000 * 14 := by rw [← dogs_daily]
theorem dogs_kilograms : (14000 : Nat) = 14 * 1000 := by
  calc (14000 : Nat) = 1000 * 14 := dogs_total_grams
       _ = 14 * 1000 := by omega
theorem dogs_solution : DogFood 4 250 1000 14 14000 14 := by
  unfold DogFood; exact ⟨dogs_daily, dogs_total_grams, dogs_kilograms⟩

theorem oreos_relation : (43 : Nat) = 4 * 9 + 7 := by norm_num
theorem oreos_total : (52 : Nat) = 9 + 43 := by
  calc (52 : Nat) = 9 + (4 * 9 + 7) := by norm_num
       _ = 9 + 43 := by rw [← oreos_relation]
theorem oreos_solution : Oreos 9 43 52 := by
  unfold Oreos; exact ⟨oreos_relation, oreos_total⟩
theorem oreos_unique {jordan james : Nat} (h : Oreos jordan james 52) : james = 43 := by
  unfold Oreos at h; omega
theorem oreos_full_solution : Oreos 9 43 52 ∧ ∀ j k, Oreos j k 52 → k = 43 := by
  exact ⟨oreos_solution, fun _ _ h => oreos_unique h⟩

theorem savings_week1 : (30 : Nat) = 20 + 10 := by norm_num
theorem savings_week2 : (40 : Nat) = 30 + 10 := by
  calc (40 : Nat) = (20 + 10) + 10 := by norm_num
       _ = 30 + 10 := by rw [← savings_week1]
theorem savings_week3 : (50 : Nat) = 40 + 10 := by
  calc (50 : Nat) = (30 + 10) + 10 := by norm_num
       _ = 40 + 10 := by rw [← savings_week2]
theorem savings_week4 : (60 : Nat) = 50 + 10 := by
  calc (60 : Nat) = (40 + 10) + 10 := by norm_num
       _ = 50 + 10 := by rw [← savings_week3]
theorem savings_reference : WeeklyDeposit 20 10 4 60 := by
  unfold WeeklyDeposit
  calc (60 : Nat) = 50 + 10 := savings_week4
       _ = 20 + 10 * 4 := by norm_num
theorem savings_total_four : FourDepositSavings 20 30 40 50 140 := by
  unfold FourDepositSavings
  exact ⟨savings_week1, savings_week2, savings_week3, by norm_num⟩
theorem savings_total_five : FiveDepositSavings 20 30 40 50 60 200 := by
  unfold FiveDepositSavings
  exact ⟨savings_week1, savings_week2, savings_week3, savings_week4, by norm_num⟩
theorem savings_ambiguous : (60 : Nat) ≠ 140 ∧ (60 : Nat) ≠ 200 ∧ (140 : Nat) ≠ 200 := by
  have _ := savings_reference
  have _ := savings_total_four
  have _ := savings_total_five
  norm_num
theorem savings_solution :
    WeeklyDeposit 20 10 4 60 ∧ FourDepositSavings 20 30 40 50 140 ∧
    FiveDepositSavings 20 30 40 50 60 200 ∧
    (60 : Nat) ≠ 140 ∧ (60 : Nat) ≠ 200 ∧ (140 : Nat) ≠ 200 := by
  exact ⟨savings_reference, savings_total_four, savings_total_five, savings_ambiguous⟩

theorem fish_red : (30 : Nat) = 3 * 10 := by norm_num
theorem fish_white : (50 : Nat) = 10 * 5 := by norm_num
theorem fish_total : (80 : Nat) = 30 + 50 := by
  calc (80 : Nat) = (3 * 10) + (10 * 5) := by norm_num
       _ = 30 + 50 := by rw [← fish_red, ← fish_white]
theorem fish_solution : FishBalls 3 10 30 10 5 50 80 := by
  unfold FishBalls; exact ⟨fish_red, fish_white, fish_total⟩

theorem basketball_old_wins : (28 : Nat) * 100 = 40 * 70 := by norm_num
theorem basketball_final_games : (50 : Nat) = 40 + 10 := by norm_num
theorem basketball_target_wins : (30 : Nat) * 100 = 50 * 60 := by
  calc (30 : Nat) * 100 = (40 + 10) * 60 := by norm_num
       _ = 50 * 60 := by rw [← basketball_final_games]
theorem basketball_needed_wins : (30 : Nat) = 28 + 2 := by
  calc (30 : Nat) = (50 * 60 / 100) := by
         rw [← basketball_target_wins]
         norm_num
       _ = (40 * 70 / 100) + 2 := by norm_num
       _ = 28 + 2 := by rw [← basketball_old_wins]; norm_num
theorem basketball_losses : (10 : Nat) = 2 + 8 := by
  calc (10 : Nat) = (30 - 28) + 8 := by norm_num
       _ = 2 + 8 := by rw [basketball_needed_wins]; norm_num
theorem basketball_solution : Basketball 40 70 28 10 50 60 30 2 8 := by
  unfold Basketball
  exact ⟨basketball_old_wins, basketball_final_games, basketball_target_wins,
    basketball_needed_wins, basketball_losses⟩

theorem pets_birds : (12 : Nat) = 6 * 2 := by norm_num
theorem pets_puppies : (9 : Nat) = 3 + 6 := by norm_num
theorem pets_spiders : (15 : Nat) = 7 + 8 := by norm_num
theorem pets_total : (25 : Nat) = 6 + 6 + 5 + 8 := by
  calc (25 : Nat) = (12 / 2) + (9 - 3) + 5 + (15 - 7) := by norm_num
       _ = 6 + 6 + 5 + 8 := by rw [pets_birds, pets_puppies, pets_spiders]; norm_num
theorem pets_solution : PetStore 12 6 9 3 6 5 15 7 8 25 := by
  unfold PetStore; exact ⟨pets_birds, pets_puppies, pets_spiders, pets_total⟩

theorem sharks_cape_may : (26 : Nat) = 3 * 7 + 5 := by norm_num
theorem sharks_solution : Sharks 26 7 := by
  unfold Sharks; exact sharks_cape_may
theorem sharks_unique {capeMay : Nat} (h : Sharks 26 capeMay) : capeMay = 7 := by
  unfold Sharks at h; omega
theorem sharks_full_solution : Sharks 26 7 ∧ ∀ n, Sharks 26 n → n = 7 := by
  exact ⟨sharks_solution, fun _ h => sharks_unique h⟩

theorem store_toys : (40 : Nat) = 2 * 20 := by norm_num
theorem store_hats : (30 : Nat) = 3 * 10 := by norm_num
theorem store_spent : (70 : Nat) = 40 + 30 := by
  calc (70 : Nat) = (2 * 20) + (3 * 10) := by norm_num
       _ = 40 + 30 := by rw [← store_toys, ← store_hats]
theorem store_change : (100 : Nat) = 70 + 30 := by
  calc (100 : Nat) = (40 + 30) + 30 := by norm_num
       _ = 70 + 30 := by rw [← store_spent]
theorem store_solution : StorePurchase 20 2 40 10 3 30 70 100 30 := by
  unfold StorePurchase; exact ⟨store_toys, store_hats, store_spent, store_change⟩

theorem brothers_older : (15 : Nat) = 5 * 3 := by norm_num
theorem brothers_michael : (15 : Nat) = 1 + 2 * (8 - 1) := by
  calc (15 : Nat) = 5 * 3 := brothers_older
       _ = 1 + 2 * (8 - 1) := by norm_num
theorem brothers_total : (28 : Nat) = 8 + 5 + 15 := by
  calc (28 : Nat) = 8 + 5 + (1 + 2 * (8 - 1)) := by norm_num
       _ = 8 + 5 + 15 := by rw [← brothers_michael]
theorem brothers_solution : Brothers 8 5 15 28 := by
  unfold Brothers; exact ⟨brothers_older, brothers_michael, brothers_total⟩

theorem tickets_cost : (360 : Nat) = 4 * 90 := by norm_num
theorem tickets_needed : (360 : Nat) = 189 + 171 := by
  calc (360 : Nat) = 4 * 90 := tickets_cost
       _ = 189 + 171 := by norm_num
theorem tickets_solution : ConcertTickets 4 90 360 189 171 := by
  unfold ConcertTickets; exact ⟨tickets_cost, tickets_needed⟩

theorem bulbs_irises : (20 : Nat) = 10 * 2 := by norm_num
theorem bulbs_crocuses : (90 : Nat) = 30 * 3 := by norm_num
theorem bulbs_total : (150 : Nat) = 20 + 10 + 30 + 90 := by
  calc (150 : Nat) = 20 + (20 / 2) + 30 + (30 * 3) := by norm_num
       _ = 20 + 10 + 30 + 90 := by rw [bulbs_irises, ← bulbs_crocuses]; norm_num
theorem bulbs_earnings_half : (150 : Nat) = 150 * 1 := by
  calc (150 : Nat) = 20 + 10 + 30 + 90 := bulbs_total
       _ = 150 * 1 := by norm_num
theorem bulbs_dollars : (150 : Nat) = 75 * 2 := by
  calc (150 : Nat) = 150 * 1 := bulbs_earnings_half
       _ = 75 * 2 := by norm_num
theorem bulbs_solution : BulbsHalfDollars 20 10 30 90 150 1 150 75 := by
  unfold BulbsHalfDollars
  exact ⟨bulbs_irises, bulbs_crocuses, bulbs_total, bulbs_earnings_half, bulbs_dollars⟩

theorem city_volume_difference : (9000 : Nat) = 6400 + 2600 := by norm_num
theorem city_people_difference : (208000 : Nat) = 2600 * 80 := by
  calc (208000 : Nat) = (9000 - 6400) * 80 := by norm_num
       _ = 2600 * 80 := by rw [city_volume_difference]; norm_num
theorem city_solution : CityPopulationDifference 9000 6400 2600 80 208000 := by
  unfold CityPopulationDifference; exact ⟨city_volume_difference, city_people_difference⟩

theorem rice_tablespoons : (16 : Nat) = 8 * 2 := by norm_num
theorem rice_teaspoons : (48 : Nat) = 16 * 3 := by
  calc (48 : Nat) = (8 * 2) * 3 := by norm_num
       _ = 16 * 3 := by rw [← rice_tablespoons]
theorem rice_grains : (480 : Nat) = 48 * 10 := by
  calc (480 : Nat) = (16 * 3) * 10 := by norm_num
       _ = 48 * 10 := by rw [← rice_teaspoons]
theorem rice_solution : Rice 480 8 16 3 48 10 := by
  unfold Rice; exact ⟨rice_tablespoons, rice_teaspoons, rice_grains⟩

#print axioms lollipops_solution
#print axioms books_solution
#print axioms dogs_solution
#print axioms oreos_full_solution
#print axioms savings_solution
#print axioms fish_solution
#print axioms basketball_solution
#print axioms pets_solution
#print axioms sharks_full_solution
#print axioms store_solution
#print axioms brothers_solution
#print axioms tickets_solution
#print axioms bulbs_solution
#print axioms city_solution
#print axioms rice_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A06.lollipops_solution to "work/gsm8k-sprint57-lollipops-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A06.books_solution to "work/gsm8k-sprint57-books-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A06.dogs_solution to "work/gsm8k-sprint57-dogs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A06.oreos_full_solution to "work/gsm8k-sprint57-oreos-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A06.savings_solution to "work/gsm8k-sprint57-savings-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A06.fish_solution to "work/gsm8k-sprint57-fish-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A06.basketball_solution to "work/gsm8k-sprint57-basketball-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A06.pets_solution to "work/gsm8k-sprint57-pets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A06.sharks_full_solution to "work/gsm8k-sprint57-sharks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A06.store_solution to "work/gsm8k-sprint57-store-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A06.brothers_solution to "work/gsm8k-sprint57-brothers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A06.tickets_solution to "work/gsm8k-sprint57-tickets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A06.bulbs_solution to "work/gsm8k-sprint57-bulbs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A06.city_solution to "work/gsm8k-sprint57-city-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A06.rice_solution to "work/gsm8k-sprint57-rice-graph.json"
end LemmaWeave.Tests.GSM8KSprint0921A06
