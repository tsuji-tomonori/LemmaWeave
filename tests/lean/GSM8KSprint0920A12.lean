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

#print axioms games_solution
#print axioms pokemon_solution
#print axioms grandchildren_solution
#print axioms treadmill_solution
#print axioms donuts_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A12.games_solution to "work/gsm8k-sprint44-games-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A12.pokemon_solution to "work/gsm8k-sprint44-pokemon-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A12.grandchildren_solution to "work/gsm8k-sprint44-grandchildren-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A12.treadmill_solution to "work/gsm8k-sprint44-treadmill-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A12.donuts_solution to "work/gsm8k-sprint44-donuts-graph.json"

end LemmaWeave.Tests.GSM8KSprint0920A12
