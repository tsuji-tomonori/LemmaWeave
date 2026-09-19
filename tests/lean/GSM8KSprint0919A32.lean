import LemmaWeave.Problems.GSM8K.Sprint0919A32Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A32
open LemmaWeave.Problems.GSM8K.Sprint0919A32

theorem dough_bags : (500 : Nat) = 10 * 50 := by norm_num
theorem dough_flour_cost : (10 : Nat) * 2000 = 20000 := by norm_num
theorem dough_salt_cost : (10 : Nat) * 20 = 200 := by norm_num
theorem dough_total_cost : (100000 : Nat) + 20000 + 200 = 120200 := by norm_num
theorem dough_profit : (2000 : Nat) * 500 = 879800 + 120200 ∧ 879800 = 8798 * 100 := by norm_num
theorem dough_solution : DoughProfit 500 50 10 2000 20000 10 20 200 100000 2000 500 1000000 120200 879800 100 8798 := by
  norm_num [DoughProfit]

theorem party_batches : (30 : Nat) = 15 * 2 := by norm_num
theorem party_potatoes : (15 : Nat) * 4 = 60 := by norm_num
theorem party_salt_teaspoons : (15 : Nat) * 1 = 15 := by norm_num
theorem party_salt_containers : (15 : Nat) = 3 * 5 := by norm_num
theorem party_costs : (60 : Nat) * 10 = 600 ∧ 3 * 200 = 600 := by norm_num
theorem party_total : (600 : Nat) + 600 = 1200 := by norm_num
theorem party_solution : PartyFood 30 2 15 4 60 10 600 1 15 5 3 200 600 1200 := by
  norm_num [PartyFood]

theorem grocery_hummus : (2 : Nat) * 5 = 10 := by norm_num
theorem grocery_fixed : (10 : Nat) + 20 + 10 + 10 = 50 := by norm_num
theorem grocery_remaining : (60 : Nat) = 10 + 50 := by norm_num
theorem grocery_apples : (10 : Nat) = 5 * 2 := by norm_num
theorem grocery_solution : GroceryApples 60 2 5 10 20 10 10 50 10 2 5 := by
  norm_num [GroceryApples]

theorem pens_total : (20 : Nat) * 5 = 100 := by norm_num
theorem pens_friends : (40 : Nat) * 100 = 100 * 40 ∧ 100 = 60 + 40 := by norm_num
theorem pens_classmates : (15 : Nat) * 4 = 60 := by norm_num
theorem pens_remaining : (60 : Nat) = 45 + 15 := by norm_num
theorem pens_solution : PenGiving 20 5 100 40 40 60 4 15 45 := by norm_num [PenGiving]

theorem ribbon_used : (6 : Nat) * 2 = 12 := by norm_num
theorem ribbon_remaining : (18 : Nat) = 6 + 12 := by norm_num
theorem ribbon_solution : RibbonLeft 18 6 2 12 6 := by norm_num [RibbonLeft]

theorem calories_eaten : (30 : Nat) * 4 = 40 * 3 := by norm_num
theorem calories_extra : (30 : Nat) = 5 + 25 := by norm_num
theorem calories_solution : LunchCalories 40 3 4 30 25 5 := by norm_num [LunchCalories]

theorem peaches_fresh : (150 : Nat) * 100 = 250 * 60 := by norm_num
theorem peaches_remaining : (150 : Nat) = 135 + 15 := by norm_num
theorem peaches_solution : PeachSorting 250 60 150 15 135 := by norm_num [PeachSorting]

theorem meals_sum : (7 : Nat) + 8 = 15 := by norm_num
theorem meals_union : (12 : Nat) + 3 = 7 + 8 := by norm_num
theorem meals_neither : (30 : Nat) = 18 + 12 := by norm_num
theorem meals_solution : MealNeeds 30 7 8 3 12 18 := by norm_num [MealNeeds]

theorem tubing_count : (10 : Nat) * 4 = 40 := by norm_num
theorem rafting_count : (5 : Nat) * 2 = 10 := by norm_num
theorem tubing_solution : TubingRafting 40 4 10 2 5 := by norm_num [TubingRafting]

theorem addresses_hawkins : (12 : Nat) = 6 * 2 := by norm_num
theorem addresses_sloan : (12 : Nat) + 10 = 22 := by norm_num
theorem addresses_total : (12 : Nat) + 6 + 22 = 40 := by norm_num
theorem addresses_solution : CommencementAddresses 12 2 6 10 22 40 := by
  norm_num [CommencementAddresses]

theorem fries_total_seconds : (5 : Nat) * 60 = 300 := by norm_num
theorem fries_remaining : (300 : Nat) = 255 + 45 := by norm_num
theorem fries_solution : FryCooking 5 60 300 45 255 := by norm_num [FryCooking]

theorem tv_weekly : (45 : Nat) * 4 = 180 := by norm_num
theorem tv_two_weeks : (180 : Nat) * 2 = 360 := by norm_num
theorem tv_hours : (360 : Nat) = 6 * 60 := by norm_num
theorem tv_solution : TelevisionTime 45 4 180 2 360 60 6 := by norm_num [TelevisionTime]

theorem bread_slices : (8 : Nat) * 2 = 16 := by norm_num
theorem bread_packs : (16 : Nat) = 4 * 4 := by norm_num
theorem bread_solution : SandwichBread 8 2 16 4 4 := by norm_num [SandwichBread]

theorem apples_second : (66 : Nat) * 2 = 132 := by norm_num
theorem apples_third : (22 : Nat) * 3 = 66 := by norm_num
theorem apples_total : (66 : Nat) + 132 + 22 = 220 := by norm_num
theorem apples_solution : ApplePicking 66 2 132 3 22 220 := by norm_num [ApplePicking]

theorem journey_amoli : (42 : Nat) * 3 = 126 := by norm_num
theorem journey_anayet : (61 : Nat) * 2 = 122 := by norm_num
theorem journey_remaining : (369 : Nat) = 121 + (126 + 122) := by norm_num
theorem journey_solution : RemainingJourney 369 42 3 126 61 2 122 248 121 := by
  norm_num [RemainingJourney]

#print axioms dough_solution
#print axioms party_solution
#print axioms grocery_solution
#print axioms pens_solution
#print axioms ribbon_solution
#print axioms calories_solution
#print axioms peaches_solution
#print axioms meals_solution
#print axioms tubing_solution
#print axioms addresses_solution
#print axioms fries_solution
#print axioms tv_solution
#print axioms bread_solution
#print axioms apples_solution
#print axioms journey_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A32.dough_solution to "work/gsm8k-sprint32-dough-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A32.party_solution to "work/gsm8k-sprint32-party-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A32.grocery_solution to "work/gsm8k-sprint32-grocery-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A32.pens_solution to "work/gsm8k-sprint32-pens-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A32.ribbon_solution to "work/gsm8k-sprint32-ribbon-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A32.calories_solution to "work/gsm8k-sprint32-calories-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A32.peaches_solution to "work/gsm8k-sprint32-peaches-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A32.meals_solution to "work/gsm8k-sprint32-meals-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A32.tubing_solution to "work/gsm8k-sprint32-tubing-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A32.addresses_solution to "work/gsm8k-sprint32-addresses-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A32.fries_solution to "work/gsm8k-sprint32-fries-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A32.tv_solution to "work/gsm8k-sprint32-tv-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A32.bread_solution to "work/gsm8k-sprint32-bread-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A32.apples_solution to "work/gsm8k-sprint32-apples-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A32.journey_solution to "work/gsm8k-sprint32-journey-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A32
