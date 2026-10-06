import LemmaWeave.Problems.GSM8K.Sprint0919A17Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A17
open LemmaWeave.Problems.GSM8K.Sprint0919A17

theorem presents_birthdays (a b c d e f g h i j : Nat) (x : BrotherPresents a b c d e f g h i j) : f = 3 ∧ g = 4 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  have hf' : f = 3 := by
    norm_num [hb] at hf
    exact hf
  have hg' : g = 4 := by
    norm_num [hc, hd, he] at hg
    exact hg
  exact ⟨hf', hg'⟩

theorem presents_half_totals (a b c d e f g h i j : Nat) (x : BrotherPresents a b c d e f g h i j) : h = 3 ∧ i = 11 := by
  have hfg := presents_birthdays a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  constructor
  · norm_num [hfg.1] at hh
    exact hh
  · norm_num [ha, hfg.2] at hi
    exact hi

theorem presents_difference (a b c d e f g h i j : Nat) (x : BrotherPresents a b c d e f g h i j) : j = 8 := by
  have hhi := presents_half_totals a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  omega

theorem presents_solution : BrotherPresents 7 3 1 1 2 3 4 3 11 8 ∧ 3 = 3 ∧ 4 = 4 ∧ 3 = 3 ∧ 11 = 11 ∧ 8 = 8 := by
  have x : BrotherPresents 7 3 1 1 2 3 4 3 11 8 := by norm_num [BrotherPresents]
  have hfg := presents_birthdays _ _ _ _ _ _ _ _ _ _ x
  have hhi := presents_half_totals _ _ _ _ _ _ _ _ _ _ x
  exact ⟨x, hfg.1, hfg.2, hhi.1, hhi.2, presents_difference _ _ _ _ _ _ _ _ _ _ x⟩

theorem dice_jerry (a b c d : Nat) (x : DiceTotal a b c d) : c = 40 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb] at hc
  exact hc

theorem dice_total (a b c d : Nat) (x : DiceTotal a b c d) : d = 60 := by
  have hc := dice_jerry a b c d x
  rcases x with ⟨ha, hb, hx, hd⟩
  norm_num [ha, hc] at hd
  exact hd

theorem dice_solution : DiceTotal 20 2 40 60 ∧ 40 = 40 ∧ 60 = 60 := by
  have x : DiceTotal 20 2 40 60 := by norm_num [DiceTotal]
  exact ⟨x, dice_jerry _ _ _ _ x, dice_total _ _ _ _ x⟩

theorem marbles_reference_green (a b c d e f g : Nat) (x : MarblesReference a b c d e f g) : c = 60 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  exact hc

theorem marbles_reference_yellow (a b c d e f g : Nat) (x : MarblesReference a b c d e f g) : e = 12 := by
  have hc := marbles_reference_green a b c d e f g x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg⟩
  norm_num [hc, hd] at he
  omega

theorem marbles_reference_other (a b c d e f g : Nat) (x : MarblesReference a b c d e f g) : g = 88 := by
  have hc := marbles_reference_green a b c d e f g x
  have he := marbles_reference_yellow a b c d e f g x
  rcases x with ⟨ha, hb, hx, hd, hy, hf, hg⟩
  norm_num [hb, hc] at hf
  omega

theorem marbles_literal_green (a b c d e f g : Nat) (x : MarblesLiteralMore a b c d e f g) : c = 80 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  exact hc

theorem marbles_literal_yellow (a b c d e f g : Nat) (x : MarblesLiteralMore a b c d e f g) : e = 16 := by
  have hc := marbles_literal_green a b c d e f g x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg⟩
  norm_num [hc, hd] at he
  omega

theorem marbles_literal_other (a b c d e f g : Nat) (x : MarblesLiteralMore a b c d e f g) : g = 204 := by
  have hc := marbles_literal_green a b c d e f g x
  have he := marbles_literal_yellow a b c d e f g x
  rcases x with ⟨ha, hb, hx, hd, hy, hf, hg⟩
  norm_num [hb, hc] at hf
  omega

theorem marbles_solution :
    MarblesReference 20 3 60 20 12 180 88 ∧
    MarblesLiteralMore 20 4 80 20 16 320 204 ∧ 88 = 88 ∧ 204 = 204 := by
  have xr : MarblesReference 20 3 60 20 12 180 88 := by norm_num [MarblesReference]
  have xl : MarblesLiteralMore 20 4 80 20 16 320 204 := by norm_num [MarblesLiteralMore]
  exact ⟨xr, xl, marbles_reference_other _ _ _ _ _ _ _ xr,
    marbles_literal_other _ _ _ _ _ _ _ xl⟩

theorem tokens_self (a b c d e f : Nat) (x : SafeMoonTokens a b c d e f) : c = 500000 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb] at hc
  omega

theorem tokens_each (a b c d e f : Nat) (x : SafeMoonTokens a b c d e f) : e = 125000 := by
  have hc := tokens_self a b c d e f x
  rcases x with ⟨ha, hb, hx, hd, he, hf⟩
  norm_num [hc, hd] at he
  omega

theorem tokens_difference (a b c d e f : Nat) (x : SafeMoonTokens a b c d e f) : f = 375000 := by
  have hc := tokens_self a b c d e f x
  have he := tokens_each a b c d e f x
  rcases x with ⟨ha, hb, hx, hd, hy, hf⟩
  omega

theorem tokens_solution : SafeMoonTokens 1000000 2 500000 4 125000 375000 ∧ 500000 = 500000 ∧ 125000 = 125000 ∧ 375000 = 375000 := by
  have x : SafeMoonTokens 1000000 2 500000 4 125000 375000 := by norm_num [SafeMoonTokens]
  exact ⟨x, tokens_self _ _ _ _ _ _ x, tokens_each _ _ _ _ _ _ x,
    tokens_difference _ _ _ _ _ _ x⟩

theorem ages_zhang (a b c d e : Nat) (x : Ages a b c d e) : c = 24 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc

theorem ages_jung (a b c d e : Nat) (x : Ages a b c d e) : e = 26 := by
  have hc := ages_zhang a b c d e x
  rcases x with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  exact he

theorem ages_solution : Ages 12 2 24 2 26 ∧ 24 = 24 ∧ 26 = 26 := by
  have x : Ages 12 2 24 2 26 := by norm_num [Ages]
  exact ⟨x, ages_zhang _ _ _ _ _ x, ages_jung _ _ _ _ _ x⟩

#print axioms presents_solution
#print axioms dice_solution
#print axioms marbles_solution
#print axioms tokens_solution
#print axioms ages_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A17.presents_solution to "work/gsm8k-sprint17-presents-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A17.dice_solution to "work/gsm8k-sprint17-dice-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A17.marbles_solution to "work/gsm8k-sprint17-marbles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A17.tokens_solution to "work/gsm8k-sprint17-tokens-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A17.ages_solution to "work/gsm8k-sprint17-ages-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A17
