import LemmaWeave.Problems.GSM8K.Sprint0920A13Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0920A13
open LemmaWeave.Problems.GSM8K.Sprint0920A13

theorem pam_per_bag : (120 : Nat) = 40 * 3 := by norm_num
theorem pam_total : (1200 : Nat) = 10 * 120 := by norm_num
theorem pam_solution : PamApples 40 3 120 10 1200 := by
  unfold PamApples
  exact ⟨pam_per_bag, pam_total⟩

theorem juice_total : (100 : Nat) = 10 * 10 := by norm_num
theorem juice_drunk : (100 : Nat) = 95 + 5 := by norm_num
theorem juice_solution : JuiceCups 10 10 100 5 95 := by
  unfold JuiceCups
  exact ⟨juice_total, juice_drunk⟩

theorem garden_fruit : (64 : Nat) = 32 * 2 := by norm_num
theorem garden_strawberries : (32 : Nat) = 8 * 4 := by norm_num
theorem garden_solution : StrawberryArea 64 2 32 4 8 := by
  unfold StrawberryArea
  exact ⟨garden_fruit, garden_strawberries⟩

theorem grill_coals : (180 : Nat) = 3 * 60 := by norm_num
theorem grill_intervals : (180 : Nat) = 12 * 15 := by norm_num
theorem grill_minutes : (240 : Nat) = 12 * 20 := by norm_num
theorem grill_solution : GrillTime 3 60 180 15 12 20 240 := by
  unfold GrillTime
  exact ⟨grill_coals, grill_intervals, grill_minutes⟩

theorem sister_djibo_past : (17 : Nat) = 12 + 5 := by norm_num
theorem sister_past : (35 : Nat) = 12 + 23 := by norm_num
theorem sister_today : (28 : Nat) = 23 + 5 := by norm_num
theorem sister_solution : SisterAge 17 5 12 35 23 28 := by
  unfold SisterAge
  exact ⟨sister_djibo_past, sister_past, sister_today⟩

theorem snowballs_total : (200 : Nat) = 50 + 150 := by norm_num
theorem snowballs_percent : (25 : Nat) * 200 = 50 * 100 := by norm_num
theorem snowballs_solution : SnowballPercent 50 150 200 25 := by
  unfold SnowballPercent
  exact ⟨snowballs_total, snowballs_percent⟩

theorem greg_jan : (7 : Nat) = 5 + 2 := by norm_num
theorem greg_marcia : (14 : Nat) = 2 * 7 := by norm_num
theorem greg_age : (16 : Nat) = 14 + 2 := by norm_num
theorem greg_solution : GregAge 5 2 7 2 7 14 16 := by
  unfold GregAge
  exact ⟨greg_jan, greg_marcia, greg_age⟩

theorem movies_extra : (55 : Nat) * 100 = 220 * 25 := by norm_num
theorem movies_johnny : (275 : Nat) = 220 + 55 := by norm_num
theorem movies_yearly : (495 : Nat) = 275 + 220 := by norm_num
theorem movies_five_years : (2475 : Nat) = 5 * 495 := by norm_num
theorem movies_solution : MovieProduction 220 25 55 275 495 5 2475 := by
  unfold MovieProduction
  exact ⟨movies_extra, movies_johnny, movies_yearly, movies_five_years⟩

theorem biscuits_per_side : (12 : Nat) = 4 * 3 := by norm_num
theorem biscuits_total : (16 : Nat) = 4 * 4 := by norm_num
theorem biscuits_solution : SquareBiscuits 12 3 4 16 := by
  unfold SquareBiscuits
  exact ⟨biscuits_per_side, biscuits_total⟩

theorem event_women : (40 : Nat) = 2 * 20 := by norm_num
theorem event_adults : (60 : Nat) = 40 + 20 := by norm_num
theorem event_original_children : (80 : Nat) = 60 + 20 := by norm_num
theorem event_final_children : (30 : Nat) = 20 + 10 := by norm_num
theorem event_solution : EventChildren 80 40 20 60 20 10 30 := by
  unfold EventChildren
  exact ⟨event_women, event_adults, event_original_children, event_final_children⟩

theorem hotwings_kevin : (64 : Nat) = 8 * 8 := by norm_num
theorem hotwings_target : (9 : Nat) = 8 + 1 := by norm_num
theorem hotwings_extra : (9 : Nat) = 5 + 4 := by norm_num
theorem hotwings_minimum : ∀ r : Nat, 5 + r > 8 → 4 ≤ r := by omega
theorem hotwings_solution : HotWings 64 8 8 5 9 4 := by
  unfold HotWings
  exact ⟨hotwings_kevin, hotwings_target, hotwings_extra, hotwings_minimum⟩

theorem meal_discounted : (67 : Nat) = 63 + 4 := by norm_num
theorem meal_share : (63 : Nat) = 3 * 21 := by norm_num
theorem meal_solution : MealShare 67 4 63 3 21 := by
  unfold MealShare
  exact ⟨meal_discounted, meal_share⟩

theorem parties_ryan : (192 : Nat) = 4 * 48 := by norm_num
theorem parties_total : (240 : Nat) = 48 + 192 := by norm_num
theorem parties_solution : PartySizes 4 48 192 240 := by
  unfold PartySizes
  exact ⟨parties_ryan, parties_total⟩

theorem temperature_after : (84 : Nat) * 3 = 63 * 4 := by norm_num
theorem temperature_decrease : (84 : Nat) = 63 + 21 := by norm_num
theorem temperature_solution : TemperatureDrop 84 3 4 63 21 := by
  unfold TemperatureDrop
  exact ⟨temperature_after, temperature_decrease⟩

theorem shirts_blue_given : (26 : Nat) = 2 * 13 := by norm_num
theorem shirts_brown_given : (36 : Nat) = 3 * 12 := by norm_num
theorem shirts_blue_left : (26 : Nat) = 13 + 13 := by norm_num
theorem shirts_brown_left : (36 : Nat) = 12 + 24 := by norm_num
theorem shirts_total : (37 : Nat) = 13 + 24 := by norm_num
theorem shirts_solution : ShirtCount 26 36 13 12 13 24 37 := by
  unfold ShirtCount
  exact ⟨shirts_blue_given, shirts_brown_given, shirts_blue_left, shirts_brown_left, shirts_total⟩

#print axioms pam_solution
#print axioms juice_solution
#print axioms garden_solution
#print axioms grill_solution
#print axioms sister_solution
#print axioms snowballs_solution
#print axioms greg_solution
#print axioms movies_solution
#print axioms biscuits_solution
#print axioms event_solution
#print axioms hotwings_solution
#print axioms meal_solution
#print axioms parties_solution
#print axioms temperature_solution
#print axioms shirts_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A13.pam_solution to "work/gsm8k-sprint45-pam-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A13.juice_solution to "work/gsm8k-sprint45-juice-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A13.garden_solution to "work/gsm8k-sprint45-garden-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A13.grill_solution to "work/gsm8k-sprint45-grill-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A13.sister_solution to "work/gsm8k-sprint45-sister-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A13.snowballs_solution to "work/gsm8k-sprint45-snowballs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A13.greg_solution to "work/gsm8k-sprint45-greg-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A13.movies_solution to "work/gsm8k-sprint45-movies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A13.biscuits_solution to "work/gsm8k-sprint45-biscuits-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A13.event_solution to "work/gsm8k-sprint45-event-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A13.hotwings_solution to "work/gsm8k-sprint45-hotwings-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A13.meal_solution to "work/gsm8k-sprint45-meal-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A13.parties_solution to "work/gsm8k-sprint45-parties-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A13.temperature_solution to "work/gsm8k-sprint45-temperature-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A13.shirts_solution to "work/gsm8k-sprint45-shirts-graph.json"

end LemmaWeave.Tests.GSM8KSprint0920A13
