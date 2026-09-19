import LemmaWeave.Problems.GSM8K.Sprint0919A04Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A04
open LemmaWeave.Problems.GSM8K.Sprint0919A04

theorem tree_chopped (a b c d e : Nat) (h : TreePlanting a b c d e) : c = 500 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc

theorem tree_to_plant (a b c d e : Nat) (h : TreePlanting a b c d e) : e = 1500 := by
  have hc := tree_chopped a b c d e h
  rcases h with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  exact he

theorem tree_solution : TreePlanting 200 300 500 3 1500 ∧ 500 = 500 ∧ 1500 = 1500 := by
  have h : TreePlanting 200 300 500 3 1500 := by norm_num [TreePlanting]
  exact ⟨h, tree_chopped _ _ _ _ _ h, tree_to_plant _ _ _ _ _ h⟩

theorem cutter_triangle_total (a b c d e f g h i j : Nat)
    (x : CutterSides a b c d e f g h i j) : c = 18 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [ha, hb] at hc
  exact hc

theorem cutter_square_total (a b c d e f g h i j : Nat)
    (x : CutterSides a b c d e f g h i j) : f = 16 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hd, he] at hf
  exact hf

theorem cutter_hexagon_total (a b c d e f g h i j : Nat)
    (x : CutterSides a b c d e f g h i j) : i = 12 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hg, hh] at hi
  exact hi

theorem cutter_total (a b c d e f g h i j : Nat)
    (x : CutterSides a b c d e f g h i j) : j = 46 := by
  have hc := cutter_triangle_total a b c d e f g h i j x
  have hf := cutter_square_total a b c d e f g h i j x
  have hi := cutter_hexagon_total a b c d e f g h i j x
  rcases x with ⟨ha, hb, hx, hd, he, hy, hg, hh, hz, hj⟩
  norm_num [hc, hf, hi] at hj
  exact hj

theorem cutter_solution :
    CutterSides 6 3 18 4 4 16 2 6 12 46 ∧ 18 = 18 ∧ 16 = 16 ∧ 12 = 12 ∧ 46 = 46 := by
  have h : CutterSides 6 3 18 4 4 16 2 6 12 46 := by norm_num [CutterSides]
  exact ⟨h, cutter_triangle_total _ _ _ _ _ _ _ _ _ _ h,
    cutter_square_total _ _ _ _ _ _ _ _ _ _ h,
    cutter_hexagon_total _ _ _ _ _ _ _ _ _ _ h,
    cutter_total _ _ _ _ _ _ _ _ _ _ h⟩

theorem gift_younger_spent (a b c d e : Nat) (h : EqualGiftSpending a b c d e) : c = 60 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc

theorem gift_lego_sets (a b c d e : Nat) (h : EqualGiftSpending a b c d e) : e = 3 := by
  have hc := gift_younger_spent a b c d e h
  rcases h with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  omega

theorem gift_solution : EqualGiftSpending 4 15 60 20 3 ∧ 60 = 60 ∧ 3 = 3 := by
  have h : EqualGiftSpending 4 15 60 20 3 := by norm_num [EqualGiftSpending]
  exact ⟨h, gift_younger_spent _ _ _ _ _ h, gift_lego_sets _ _ _ _ _ h⟩

theorem frosting_baked (a b c d e f g : Nat) (h : FrostingCans a b c d e f g) : c = 50 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  exact hc

theorem frosting_remaining (a b c d e f g : Nat) (h : FrostingCans a b c d e f g) : e = 38 := by
  have hc := frosting_baked a b c d e f g h
  rcases h with ⟨ha, hb, hx, hd, he, hf, hg⟩
  norm_num [hc, hd] at he
  omega

theorem frosting_total (a b c d e f g : Nat) (h : FrostingCans a b c d e f g) : g = 76 := by
  have he := frosting_remaining a b c d e f g h
  rcases h with ⟨ha, hb, hc, hd, hx, hf, hg⟩
  norm_num [he, hf] at hg
  exact hg

theorem frosting_solution :
    FrostingCans 10 5 50 12 38 2 76 ∧ 50 = 50 ∧ 38 = 38 ∧ 76 = 76 := by
  have h : FrostingCans 10 5 50 12 38 2 76 := by norm_num [FrostingCans]
  exact ⟨h, frosting_baked _ _ _ _ _ _ _ h, frosting_remaining _ _ _ _ _ _ _ h,
    frosting_total _ _ _ _ _ _ _ h⟩

theorem funding_half_payment (a b c d e f g h : Nat)
    (x : ClassFunding a b c d e f g h) : d = 25 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hb] at hd
  omega

theorem funding_half_total (a b c d e f g h : Nat)
    (x : ClassFunding a b c d e f g h) : e = 100 := by
  have hd := funding_half_payment a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hx, he, hf, hg, hh⟩
  norm_num [hc, hd] at he
  exact he

theorem funding_full_students (a b c d e f g h : Nat)
    (x : ClassFunding a b c d e f g h) : f = 21 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hc] at hf
  omega

theorem funding_full_total (a b c d e f g h : Nat)
    (x : ClassFunding a b c d e f g h) : g = 1050 := by
  have hf := funding_full_students a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hx, hg, hh⟩
  norm_num [hb, hf] at hg
  exact hg

theorem funding_total (a b c d e f g h : Nat)
    (x : ClassFunding a b c d e f g h) : h = 1150 := by
  have he := funding_half_total a b c d e f g h x
  have hg := funding_full_total a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hy, hh⟩
  norm_num [he, hg] at hh
  exact hh

theorem funding_solution :
    ClassFunding 25 50 4 25 100 21 1050 1150 ∧
    25 = 25 ∧ 100 = 100 ∧ 21 = 21 ∧ 1050 = 1050 ∧ 1150 = 1150 := by
  have x : ClassFunding 25 50 4 25 100 21 1050 1150 := by norm_num [ClassFunding]
  exact ⟨x, funding_half_payment _ _ _ _ _ _ _ _ x,
    funding_half_total _ _ _ _ _ _ _ _ x,
    funding_full_students _ _ _ _ _ _ _ _ x,
    funding_full_total _ _ _ _ _ _ _ _ x,
    funding_total _ _ _ _ _ _ _ _ x⟩

#print axioms tree_solution
#print axioms cutter_solution
#print axioms gift_solution
#print axioms frosting_solution
#print axioms funding_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A04.tree_solution to "work/gsm8k-sprint04-tree-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A04.cutter_solution to "work/gsm8k-sprint04-cutter-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A04.gift_solution to "work/gsm8k-sprint04-gift-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A04.frosting_solution to "work/gsm8k-sprint04-frosting-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A04.funding_solution to "work/gsm8k-sprint04-funding-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A04
