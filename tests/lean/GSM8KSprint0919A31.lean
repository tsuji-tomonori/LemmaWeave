import LemmaWeave.Problems.GSM8K.Sprint0919A31Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A31
open LemmaWeave.Problems.GSM8K.Sprint0919A31

theorem catch_equation : (40 : Nat) * 15 = 20 * (15 + 15) := by norm_num
theorem catch_unique (m : Nat) (h : 40 * m = 20 * (m + 15)) : m = 15 := by omega
theorem catch_solution : CatchUp 20 40 15 15 ∧ 15 = 15 := by
  exact ⟨by simp only [CatchUp, catch_equation], catch_unique 15 catch_equation⟩

theorem vegetables_lettuce : (2 : Nat) * 100 = 200 := by norm_num
theorem vegetables_tomatoes : (4 : Nat) * 50 = 200 := by norm_num
theorem vegetables_customer : (200 : Nat) + 200 = 400 := by norm_num
theorem vegetables_total : (500 : Nat) * 400 = 200000 ∧ 200000 = 2000 * 100 := by norm_num
theorem vegetables_solution : VegetableSales 500 2 100 4 50 400 200000 100 2000 := by
  simp only [VegetableSales, vegetables_lettuce, vegetables_tomatoes, vegetables_customer,
    vegetables_total]

theorem cousins_unit : (50 : Nat) = 1 * 50 := by norm_num
theorem cousins_sandra : (2 : Nat) * 50 = 100 := by norm_num
theorem cousins_solution : CousinShare 2 1 3 50 50 100 := by
  simp only [CousinShare, cousins_unit, cousins_sandra]

theorem rocket_second : (2 : Nat) * 500 = 1000 := by norm_num
theorem rocket_total : (500 : Nat) + 1000 = 1500 := by norm_num
theorem rocket_solution : RocketHeight 500 2 1000 1500 := by
  simp only [RocketHeight, rocket_second, rocket_total]

theorem jewelry_spent : (23 : Nat) + 48 = 71 := by norm_num
theorem jewelry_left : (80 : Nat) = 9 + 71 := by norm_num
theorem jewelry_solution : JewelrySavings 80 23 48 71 9 := by
  simp only [JewelrySavings, jewelry_spent, jewelry_left]

theorem erasers_anya : (4 : Nat) * 4 = 16 := by norm_num
theorem erasers_difference : (16 : Nat) = 12 + 4 := by norm_num
theorem erasers_solution : EraserDifference 4 4 16 12 := by
  simp only [EraserDifference, erasers_anya, erasers_difference]

theorem crayons_count : (4 : Nat) * 6 = 24 := by norm_num
theorem crayons_cents : (24 : Nat) * 200 = 4800 := by norm_num
theorem crayons_dollars : (4800 : Nat) = 48 * 100 := by norm_num
theorem crayons_solution : CrayonCost 4 6 24 200 4800 100 48 := by
  simp only [CrayonCost, crayons_count, crayons_cents, crayons_dollars]

theorem speed_tuesday_extra : (5 : Nat) * 100 = 10 * 50 := by norm_num
theorem speed_tuesday : (10 : Nat) + 5 = 15 := by norm_num
theorem speed_friday_extra : (9 : Nat) * 100 = 15 * 60 := by norm_num
theorem speed_friday : (15 : Nat) + 9 = 24 := by norm_num
theorem speed_solution : FridaySpeed 10 50 5 15 60 9 24 := by
  simp only [FridaySpeed, speed_tuesday_extra, speed_tuesday, speed_friday_extra, speed_friday]

theorem rectangle_width (w l a : Nat) (x : RectangleLength w l a) : w = 5 := by
  rcases x with ⟨hw, hl, ha, harea⟩
  subst l
  subst a
  nlinarith
theorem rectangle_length (w l a : Nat) (x : RectangleLength w l a) : l = 20 := by
  have hw := rectangle_width w l a x
  rcases x with ⟨hpos, hl, ha, harea⟩
  calc
    l = 4 * w := hl
    _ = 4 * 5 := by rw [hw]
    _ = 20 := by norm_num
theorem rectangle_solution : RectangleLength 5 20 100 ∧ 20 = 20 := by
  have hmodel : RectangleLength 5 20 100 := by norm_num [RectangleLength]
  exact ⟨hmodel, rectangle_length 5 20 100 hmodel⟩

theorem potatoes_bags : (29 : Nat) + 17 = 46 := by norm_num
theorem potatoes_weight : (46 : Nat) * 7 = 322 := by norm_num
theorem potatoes_solution : PotatoWeight 29 17 46 7 322 := by
  simp only [PotatoWeight, potatoes_bags, potatoes_weight]

theorem sundaes_subtotal : (750 : Nat) + 1000 + 850 + 900 = 3500 := by norm_num
theorem sundaes_tip : (700 : Nat) * 100 = 3500 * 20 := by norm_num
theorem sundaes_total : (3500 : Nat) + 700 = 4200 := by norm_num
theorem sundaes_solution : SundaeBill 750 1000 850 900 3500 20 700 4200 := by
  simp only [SundaeBill, sundaes_subtotal, sundaes_tip, sundaes_total]

theorem swim_distance : (2 : Nat) * 2 = 4 := by norm_num
theorem run_time : (2 : Nat) = 2 * 1 := by norm_num
theorem run_speed : (4 : Nat) * 2 = 8 := by norm_num
theorem run_distance : (1 : Nat) * 8 = 8 := by norm_num
theorem swim_run_total : (4 : Nat) + 8 = 12 := by norm_num
theorem swim_run_solution : SwimRun 2 2 4 2 1 4 8 8 12 := by
  simp only [SwimRun, swim_distance, run_time, run_speed, run_distance, swim_run_total]

theorem stamps_received : (28 : Nat) = 2 * 14 := by norm_num
theorem stamps_before_trade : (37 : Nat) + 14 = 51 := by norm_num
theorem stamps_final : (50 : Nat) + 2 = 51 + 1 := by norm_num
theorem stamps_solution : StampTrade 37 28 31 2 14 51 2 1 50 := by
  simp only [StampTrade, stamps_received, stamps_before_trade, stamps_final]

theorem kibble_mary : (1 : Nat) + 1 = 2 := by norm_num
theorem kibble_frank : (1 : Nat) + 2 * 1 = 3 := by norm_num
theorem kibble_fed : (2 : Nat) + 3 = 5 := by norm_num
theorem kibble_remaining : (12 : Nat) = 7 + 5 := by norm_num
theorem kibble_solution : KibbleRemaining 12 1 1 1 2 2 2 3 5 7 := by
  simp only [KibbleRemaining, kibble_mary, kibble_frank, kibble_fed, kibble_remaining]

theorem bakery_cost : (5 : Nat) + 28 = 33 := by norm_num
theorem bakery_bills : (2 : Nat) * 20 = 40 := by norm_num
theorem bakery_paid : (40 : Nat) + 3 = 43 := by norm_num
theorem bakery_change : (43 : Nat) = 10 + 33 := by norm_num
theorem bakery_solution : BakeryChange 5 28 33 2 20 40 3 43 10 := by
  simp only [BakeryChange, bakery_cost, bakery_bills, bakery_paid, bakery_change]

#print axioms catch_solution
#print axioms vegetables_solution
#print axioms cousins_solution
#print axioms rocket_solution
#print axioms jewelry_solution
#print axioms erasers_solution
#print axioms crayons_solution
#print axioms speed_solution
#print axioms rectangle_solution
#print axioms potatoes_solution
#print axioms sundaes_solution
#print axioms swim_run_solution
#print axioms stamps_solution
#print axioms kibble_solution
#print axioms bakery_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A31.catch_solution to "work/gsm8k-sprint31-catch-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A31.vegetables_solution to "work/gsm8k-sprint31-vegetables-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A31.cousins_solution to "work/gsm8k-sprint31-cousins-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A31.rocket_solution to "work/gsm8k-sprint31-rocket-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A31.jewelry_solution to "work/gsm8k-sprint31-jewelry-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A31.erasers_solution to "work/gsm8k-sprint31-erasers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A31.crayons_solution to "work/gsm8k-sprint31-crayons-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A31.speed_solution to "work/gsm8k-sprint31-speed-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A31.rectangle_solution to "work/gsm8k-sprint31-rectangle-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A31.potatoes_solution to "work/gsm8k-sprint31-potatoes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A31.sundaes_solution to "work/gsm8k-sprint31-sundaes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A31.swim_run_solution to "work/gsm8k-sprint31-swim-run-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A31.stamps_solution to "work/gsm8k-sprint31-stamps-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A31.kibble_solution to "work/gsm8k-sprint31-kibble-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A31.bakery_solution to "work/gsm8k-sprint31-bakery-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A31
