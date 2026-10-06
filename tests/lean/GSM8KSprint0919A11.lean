import LemmaWeave.Problems.GSM8K.Sprint0919A11Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A11
open LemmaWeave.Problems.GSM8K.Sprint0919A11

theorem tacos_peppers (a b c d e f g h : Nat) (x : TacoDinner a b c d e f g h) : d = 600 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hb, hc] at hd
  exact hd

theorem tacos_meat (a b c d e f g h : Nat) (x : TacoDinner a b c d e f g h) : g = 600 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [he, hf] at hg
  exact hg

theorem tacos_total (a b c d e f g h : Nat) (x : TacoDinner a b c d e f g h) : h = 1700 := by
  have hd := tacos_peppers a b c d e f g h x
  have hg := tacos_meat a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hx, he, hf, hy, hh⟩
  norm_num [ha, hd, hg] at hh
  exact hh

theorem tacos_solution : TacoDinner 500 4 150 600 2 300 600 1700 ∧ 600 = 600 ∧ 600 = 600 ∧ 1700 = 1700 := by
  have x : TacoDinner 500 4 150 600 2 300 600 1700 := by norm_num [TacoDinner]
  exact ⟨x, tacos_peppers _ _ _ _ _ _ _ _ x, tacos_meat _ _ _ _ _ _ _ _ x,
    tacos_total _ _ _ _ _ _ _ _ x⟩

theorem candy_total (a b c d e : Nat) (x : CandyCalories a b c d e) : c = 360 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc

theorem candy_eaten (a b c d e : Nat) (x : CandyCalories a b c d e) : e = 180 := by
  have hc := candy_total a b c d e x
  rcases x with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  omega

theorem candy_solution : CandyCalories 3 120 360 2 180 ∧ 360 = 360 ∧ 180 = 180 := by
  have x : CandyCalories 3 120 360 2 180 := by norm_num [CandyCalories]
  exact ⟨x, candy_total _ _ _ _ _ x, candy_eaten _ _ _ _ _ x⟩

theorem apples_diane (a b c d : Nat) (x : AppleTotal a b c d) : c = 35 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb] at hc
  exact hc

theorem apples_total (a b c d : Nat) (x : AppleTotal a b c d) : d = 50 := by
  have hc := apples_diane a b c d x
  rcases x with ⟨ha, hb, hx, hd⟩
  norm_num [ha, hc] at hd
  exact hd

theorem apples_solution : AppleTotal 15 20 35 50 ∧ 35 = 35 ∧ 50 = 50 := by
  have x : AppleTotal 15 20 35 50 := by norm_num [AppleTotal]
  exact ⟨x, apples_diane _ _ _ _ x, apples_total _ _ _ _ x⟩

theorem laces_members (a b c d e f g : Nat) (x : LaceSets a b c d e f g) : c = 40 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  exact hc

theorem laces_pairs (a b c d e f g : Nat) (x : LaceSets a b c d e f g) : e = 80 := by
  have hc := laces_members a b c d e f g x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg⟩
  norm_num [hc, hd] at he
  exact he

theorem laces_total (a b c d e f g : Nat) (x : LaceSets a b c d e f g) : g = 240 := by
  have he := laces_pairs a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg⟩
  norm_num [he, hf] at hg
  exact hg

theorem laces_solution : LaceSets 4 10 40 2 80 3 240 ∧ 40 = 40 ∧ 80 = 80 ∧ 240 = 240 := by
  have x : LaceSets 4 10 40 2 80 3 240 := by norm_num [LaceSets]
  exact ⟨x, laces_members _ _ _ _ _ _ _ x, laces_pairs _ _ _ _ _ _ _ x,
    laces_total _ _ _ _ _ _ _ x⟩

theorem fish_trout (a b c d e f g h i j k : Nat) (x : FishSavings a b c d e f g h i j k) : e = 3 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [hc, hd] at he
  omega

theorem fish_bluegill (a b c d e f g h i j k : Nat) (x : FishSavings a b c d e f g h i j k) : f = 2 := by
  have he := fish_trout a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg, hh, hi, hj, hk⟩
  norm_num [hc, he] at hf
  omega

theorem fish_sunday (a b c d e f g h i j k : Nat) (x : FishSavings a b c d e f g h i j k) : i = 23 := by
  have he := fish_trout a b c d e f g h i j k x
  have hf := fish_bluegill a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, hx, hy, hg, hh, hi, hj, hk⟩
  norm_num [he, hf, hg, hh] at hi
  exact hi

theorem fish_shortfall (a b c d e f g h i j k : Nat) (x : FishSavings a b c d e f g h i j k) : k = 2 := by
  have hi := fish_sunday a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hx, hj, hk⟩
  norm_num [hb, hi] at hj
  norm_num [ha, hj] at hk
  omega

theorem fish_solution :
    FishSavings 60 35 5 60 3 2 5 4 23 58 2 ∧ 3 = 3 ∧ 2 = 2 ∧ 23 = 23 ∧ 2 = 2 := by
  have x : FishSavings 60 35 5 60 3 2 5 4 23 58 2 := by norm_num [FishSavings]
  exact ⟨x, fish_trout _ _ _ _ _ _ _ _ _ _ _ x,
    fish_bluegill _ _ _ _ _ _ _ _ _ _ _ x, fish_sunday _ _ _ _ _ _ _ _ _ _ _ x,
    fish_shortfall _ _ _ _ _ _ _ _ _ _ _ x⟩

#print axioms tacos_solution
#print axioms candy_solution
#print axioms apples_solution
#print axioms laces_solution
#print axioms fish_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A11.tacos_solution to "work/gsm8k-sprint11-tacos-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A11.candy_solution to "work/gsm8k-sprint11-candy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A11.apples_solution to "work/gsm8k-sprint11-apples-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A11.laces_solution to "work/gsm8k-sprint11-laces-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A11.fish_solution to "work/gsm8k-sprint11-fish-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A11
