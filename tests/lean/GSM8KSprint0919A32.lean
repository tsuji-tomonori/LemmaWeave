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

#print axioms dough_solution
#print axioms party_solution
#print axioms grocery_solution
#print axioms pens_solution
#print axioms ribbon_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A32.dough_solution to "work/gsm8k-sprint32-dough-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A32.party_solution to "work/gsm8k-sprint32-party-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A32.grocery_solution to "work/gsm8k-sprint32-grocery-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A32.pens_solution to "work/gsm8k-sprint32-pens-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A32.ribbon_solution to "work/gsm8k-sprint32-ribbon-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A32
