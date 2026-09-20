import LemmaWeave.Problems.GSM8K.Sprint0920A12Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0920A12
open LemmaWeave.Problems.GSM8K.Sprint0920A12

theorem games_basketball : (10 : Nat) * 2 = 20 := by norm_num
theorem games_volleyball : (8 : Nat) * 5 = 20 * 2 := by norm_num
theorem games_both : (2 : Nat) * 10 = 20 := by norm_num
theorem games_union : (16 : Nat) + 2 = 10 + 8 := by norm_num
theorem games_neither : (20 : Nat) = 16 + 4 := by norm_num
theorem games_solution : BallGames 20 10 8 2 16 4 := by
  unfold BallGames
  exact ⟨games_basketball, games_volleyball, games_both, games_union, games_neither⟩

theorem pokemon_mark : (100 : Nat) = 90 + 10 := by norm_num
theorem pokemon_lloyd : (90 : Nat) = 3 * 30 := by norm_num
theorem pokemon_current : (220 : Nat) = 100 + 90 + 30 := by norm_num
theorem pokemon_needed : (300 : Nat) = 220 + 80 := by norm_num
theorem pokemon_solution : PokemonCards 100 10 90 3 30 220 300 80 := by
  unfold PokemonCards
  exact ⟨pokemon_mark, pokemon_lloyd, pokemon_current, pokemon_needed⟩

theorem grandchildren_each : (160 : Nat) = 2 * 80 := by norm_num
theorem grandchildren_total : (480 : Nat) = 3 * 160 := by norm_num
theorem grandchildren_solution : GrandchildGifts 3 2 80 160 480 := by
  unfold GrandchildGifts
  exact ⟨grandchildren_each, grandchildren_total⟩

theorem treadmill_movie_minutes : (90 : Nat) * 2 = 3 * 60 := by norm_num
theorem treadmill_total_minutes : (180 : Nat) = 2 * 90 := by norm_num
theorem treadmill_miles : (180 : Nat) = 15 * 12 := by norm_num
theorem treadmill_solution : TreadmillMiles 3 60 90 2 180 12 15 := by
  unfold TreadmillMiles
  exact ⟨treadmill_movie_minutes, treadmill_total_minutes, treadmill_miles⟩

theorem donuts_revenue : (1200 : Nat) = 12 * 100 := by norm_num
theorem donuts_profit : (1200 : Nat) = 240 + 960 := by norm_num
theorem donuts_goal : (9600 : Nat) = 10 * 960 := by norm_num
theorem donuts_solution : DonutFundraiser 12 240 100 1200 960 9600 10 := by
  unfold DonutFundraiser
  exact ⟨donuts_revenue, donuts_profit, donuts_goal⟩

theorem daisies_after_gift : (14 : Nat) = 5 + 9 := by norm_num
theorem daisies_remaining : (7 : Nat) * 2 = 14 := by norm_num
theorem daisies_solution : DaisyCount 5 9 14 2 7 := by
  unfold DaisyCount
  exact ⟨daisies_after_gift, daisies_remaining⟩

theorem coffee_daily : (4 : Nat) = 2 * 2 := by norm_num
theorem coffee_month : (120 : Nat) = 30 * 4 := by norm_num
theorem coffee_solution : AprilCoffee 2 2 4 30 120 := by
  unfold AprilCoffee
  exact ⟨coffee_daily, coffee_month⟩

theorem dance_average : (750 : Nat) * 10 = 7500 := by norm_num
theorem dance_extra_price : (1000 : Nat) * 3 = 750 * 4 := by norm_num
theorem dance_extra_classes : (13 : Nat) = 10 + 3 := by norm_num
theorem dance_extra_cost : (3000 : Nat) = 3 * 1000 := by norm_num
theorem dance_total : (10500 : Nat) = 7500 + 3000 := by norm_num
theorem dance_solution : DanceLessons 10 7500 750 4 3 1000 13 3 3000 10500 := by
  unfold DanceLessons
  exact ⟨dance_average, dance_extra_price, dance_extra_classes, dance_extra_cost, dance_total⟩

theorem practice_elapsed : (40 : Nat) = 20 + 20 := by norm_num
theorem practice_half : (40 : Nat) = 2 * 20 := by norm_num
theorem practice_target : (120 : Nat) = 3 * 40 := by norm_num
theorem practice_additional : (120 : Nat) = 40 + 80 := by norm_num
theorem practice_solution : GuitarPractice 40 20 20 2 3 120 80 := by
  unfold GuitarPractice
  exact ⟨practice_elapsed, practice_half, practice_target, practice_additional⟩

theorem library_fourfold_week : (8 : Nat) = 4 * 2 := by norm_num
theorem library_fourfold_total : (32 : Nat) = 4 * 8 := by norm_num
theorem library_additive_week : (10 : Nat) = 2 + 4 * 2 := by norm_num
theorem library_additive_total : (40 : Nat) = 4 * 10 := by norm_num
theorem library_nonunique : (32 : Nat) ≠ 40 := by norm_num
theorem library_solution : LibraryVisits 2 4 4 8 32 10 40 := by
  unfold LibraryVisits
  exact ⟨library_fourfold_week, library_fourfold_total, library_additive_week, library_additive_total, library_nonunique⟩

#print axioms games_solution
#print axioms pokemon_solution
#print axioms grandchildren_solution
#print axioms treadmill_solution
#print axioms donuts_solution
#print axioms daisies_solution
#print axioms coffee_solution
#print axioms dance_solution
#print axioms practice_solution
#print axioms library_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A12.games_solution to "work/gsm8k-sprint44-games-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A12.pokemon_solution to "work/gsm8k-sprint44-pokemon-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A12.grandchildren_solution to "work/gsm8k-sprint44-grandchildren-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A12.treadmill_solution to "work/gsm8k-sprint44-treadmill-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A12.donuts_solution to "work/gsm8k-sprint44-donuts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A12.daisies_solution to "work/gsm8k-sprint44-daisies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A12.coffee_solution to "work/gsm8k-sprint44-coffee-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A12.dance_solution to "work/gsm8k-sprint44-dance-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A12.practice_solution to "work/gsm8k-sprint44-practice-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A12.library_solution to "work/gsm8k-sprint44-library-graph.json"

end LemmaWeave.Tests.GSM8KSprint0920A12
