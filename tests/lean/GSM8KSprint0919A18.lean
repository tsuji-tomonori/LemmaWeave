import LemmaWeave.Problems.GSM8K.Sprint0919A18Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A18
open LemmaWeave.Problems.GSM8K.Sprint0919A18

theorem taxes_paid (a b c d : Nat) (x : MonthlyTaxes a b c d) : c = 20 := by
  rcases x with ⟨ha, hb, hd, hsum⟩
  omega

theorem taxes_solution : MonthlyTaxes 80 42 20 18 ∧ 20 = 20 := by
  have x : MonthlyTaxes 80 42 20 18 := by norm_num [MonthlyTaxes]
  exact ⟨x, taxes_paid _ _ _ _ x⟩

theorem pies_with_forks (a b c d : Nat) (x : PiesWithoutForks a b c d) : c = 1360 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb] at hc
  omega

theorem pies_without_forks (a b c d : Nat) (x : PiesWithoutForks a b c d) : d = 640 := by
  have hc := pies_with_forks a b c d x
  rcases x with ⟨ha, hb, hx, hd⟩
  omega

theorem pies_solution : PiesWithoutForks 2000 68 1360 640 ∧ 1360 = 1360 ∧ 640 = 640 := by
  have x : PiesWithoutForks 2000 68 1360 640 := by norm_num [PiesWithoutForks]
  exact ⟨x, pies_with_forks _ _ _ _ x, pies_without_forks _ _ _ _ x⟩

theorem pizza_pieces (a b c d e f : Nat) (x : PizzaPepperoni a b c d e f) : c = 4 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hb] at hc
  exact hc

theorem pizza_per_piece (a b c d e f : Nat) (x : PizzaPepperoni a b c d e f) : d = 10 := by
  have hc := pizza_pieces a b c d e f x
  rcases x with ⟨ha, hb, hx, hd, he, hf⟩
  norm_num [ha, hc] at hd
  omega

theorem pizza_remaining (a b c d e f : Nat) (x : PizzaPepperoni a b c d e f) : f = 9 := by
  have hd := pizza_per_piece a b c d e f x
  rcases x with ⟨ha, hb, hc, hx, he, hf⟩
  omega

theorem pizza_solution : PizzaPepperoni 40 2 4 10 1 9 ∧ 4 = 4 ∧ 10 = 10 ∧ 9 = 9 := by
  have x : PizzaPepperoni 40 2 4 10 1 9 := by norm_num [PizzaPepperoni]
  exact ⟨x, pizza_pieces _ _ _ _ _ _ x, pizza_per_piece _ _ _ _ _ _ x,
    pizza_remaining _ _ _ _ _ _ x⟩

theorem caps_green (a b c d : Nat) (x : GreenCaps a b c d) : c = 75 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  omega

theorem caps_percent (a b c d : Nat) (x : GreenCaps a b c d) : d = 60 := by
  have hc := caps_green a b c d x
  rcases x with ⟨ha, hb, hx, hd⟩
  norm_num [ha, hc] at hd
  omega

theorem caps_solution : GreenCaps 125 50 75 60 ∧ 75 = 75 ∧ 60 = 60 := by
  have x : GreenCaps 125 50 75 60 := by norm_num [GreenCaps]
  exact ⟨x, caps_green _ _ _ _ x, caps_percent _ _ _ _ x⟩

theorem aids_total (a b c d e f : Nat) (x : HearingAids a b c d e f) : c = 5000 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb] at hc
  exact hc

theorem aids_covered (a b c d e f : Nat) (x : HearingAids a b c d e f) : e = 4000 := by
  have hc := aids_total a b c d e f x
  rcases x with ⟨ha, hb, hx, hd, he, hf⟩
  norm_num [hc, hd] at he
  omega

theorem aids_personal (a b c d e f : Nat) (x : HearingAids a b c d e f) : f = 1000 := by
  have hc := aids_total a b c d e f x
  have he := aids_covered a b c d e f x
  rcases x with ⟨ha, hb, hx, hd, hy, hf⟩
  omega

theorem aids_solution : HearingAids 2 2500 5000 80 4000 1000 ∧ 5000 = 5000 ∧ 4000 = 4000 ∧ 1000 = 1000 := by
  have x : HearingAids 2 2500 5000 80 4000 1000 := by norm_num [HearingAids]
  exact ⟨x, aids_total _ _ _ _ _ _ x, aids_covered _ _ _ _ _ _ x,
    aids_personal _ _ _ _ _ _ x⟩

#print axioms taxes_solution
#print axioms pies_solution
#print axioms pizza_solution
#print axioms caps_solution
#print axioms aids_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A18.taxes_solution to "work/gsm8k-sprint18-taxes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A18.pies_solution to "work/gsm8k-sprint18-pies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A18.pizza_solution to "work/gsm8k-sprint18-pizza-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A18.caps_solution to "work/gsm8k-sprint18-caps-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A18.aids_solution to "work/gsm8k-sprint18-aids-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A18
