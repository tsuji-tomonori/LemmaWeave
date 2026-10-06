import LemmaWeave.Problems.GSM8K.Sprint0919A12Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A12
open LemmaWeave.Problems.GSM8K.Sprint0919A12

theorem leaves_later (a b c d e f g : Nat) (x : FallingLeaves a b c d e f g) : d = 8 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hb, hc] at hd
  exact hd

theorem leaves_total (a b c d e f g : Nat) (x : FallingLeaves a b c d e f g) : e = 15 := by
  have hd := leaves_later a b c d e f g x
  rcases x with ⟨ha, hb, hc, hx, he, hf, hg⟩
  norm_num [ha, hd] at he
  exact he

theorem leaves_average (a b c d e f g : Nat) (x : FallingLeaves a b c d e f g) : g = 5 := by
  have he := leaves_total a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg⟩
  norm_num [he, hf] at hg
  omega

theorem leaves_solution : FallingLeaves 7 4 2 8 15 3 5 ∧ 8 = 8 ∧ 15 = 15 ∧ 5 = 5 := by
  have x : FallingLeaves 7 4 2 8 15 3 5 := by norm_num [FallingLeaves]
  exact ⟨x, leaves_later _ _ _ _ _ _ _ x, leaves_total _ _ _ _ _ _ _ x,
    leaves_average _ _ _ _ _ _ _ x⟩

theorem igloo_half_rows (a b c d e f g : Nat) (x : SnowBricks a b c d e f g) : b = 5 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha] at hb
  omega

theorem igloo_bottom (a b c d e f g : Nat) (x : SnowBricks a b c d e f g) : e = 60 := by
  have hb := igloo_half_rows a b c d e f g x
  rcases x with ⟨ha, hx, hc, hd, he, hf, hg⟩
  norm_num [hb, hc] at he
  exact he

theorem igloo_top (a b c d e f g : Nat) (x : SnowBricks a b c d e f g) : f = 40 := by
  have hb := igloo_half_rows a b c d e f g x
  rcases x with ⟨ha, hx, hc, hd, he, hf, hg⟩
  norm_num [hb, hd] at hf
  exact hf

theorem igloo_total (a b c d e f g : Nat) (x : SnowBricks a b c d e f g) : g = 100 := by
  have he := igloo_bottom a b c d e f g x
  have hf := igloo_top a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, hx, hy, hg⟩
  norm_num [he, hf] at hg
  exact hg

theorem igloo_solution : SnowBricks 10 5 12 8 60 40 100 ∧ 5 = 5 ∧ 60 = 60 ∧ 40 = 40 ∧ 100 = 100 := by
  have x : SnowBricks 10 5 12 8 60 40 100 := by norm_num [SnowBricks]
  exact ⟨x, igloo_half_rows _ _ _ _ _ _ _ x, igloo_bottom _ _ _ _ _ _ _ x,
    igloo_top _ _ _ _ _ _ _ x, igloo_total _ _ _ _ _ _ _ x⟩

theorem ages_future (a b c d e f : Nat) (x : FutureAges a b c d e f) : d = 30 ∧ e = 15 := by
  rcases x with ⟨hc, hd, he, htwice, hsum, hf⟩
  omega

theorem ages_now (a b c d e f : Nat) (x : FutureAges a b c d e f) : a = 20 := by
  have h := ages_future a b c d e f x
  rcases x with ⟨hc, hd, he, htwice, hsum, hf⟩
  omega

theorem ages_solution : FutureAges 20 5 10 30 15 45 ∧ 30 = 30 ∧ 15 = 15 ∧ 20 = 20 := by
  have x : FutureAges 20 5 10 30 15 45 := by norm_num [FutureAges]
  have h := ages_future _ _ _ _ _ _ x
  exact ⟨x, h.1, h.2, ages_now _ _ _ _ _ _ x⟩

theorem tomatoes_picked (a b c d e f : Nat) (x : Tomatoes a b c d e f) : c = 108 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  omega

theorem tomatoes_given (a b c d e f : Nat) (x : Tomatoes a b c d e f) : e = 54 := by
  have hc := tomatoes_picked a b c d e f x
  rcases x with ⟨ha, hb, hx, hd, he, hf⟩
  norm_num [hc, hd] at he
  omega

theorem tomatoes_remaining (a b c d e f : Nat) (x : Tomatoes a b c d e f) : f = 54 := by
  have hc := tomatoes_picked a b c d e f x
  have he := tomatoes_given a b c d e f x
  rcases x with ⟨ha, hb, hx, hd, hy, hf⟩
  omega

theorem tomatoes_solution : Tomatoes 127 19 108 2 54 54 ∧ 108 = 108 ∧ 54 = 54 ∧ 54 = 54 := by
  have x : Tomatoes 127 19 108 2 54 54 := by norm_num [Tomatoes]
  exact ⟨x, tomatoes_picked _ _ _ _ _ _ x, tomatoes_given _ _ _ _ _ _ x,
    tomatoes_remaining _ _ _ _ _ _ x⟩

theorem leaks_rates (a b c d e f : Nat) (x : RoofLeaks a b c d e f) : b = 3 ∧ c = 1 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  omega

theorem leaks_combined (a b c d e f : Nat) (x : RoofLeaks a b c d e f) : d = 10 := by
  have h := leaks_rates a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, h.1, h.2] at hd
  exact hd

theorem leaks_total_half_ounces (a b c d e f : Nat) (x : RoofLeaks a b c d e f) : f = 1200 := by
  have hd := leaks_combined a b c d e f x
  rcases x with ⟨ha, hb, hc, hx, he, hf⟩
  norm_num [hd, he] at hf
  exact hf

theorem leaks_solution : RoofLeaks 6 3 1 10 120 1200 ∧ 3 = 3 ∧ 1 = 1 ∧ 10 = 10 ∧ 1200 = 2 * 600 := by
  have x : RoofLeaks 6 3 1 10 120 1200 := by norm_num [RoofLeaks]
  have h := leaks_rates _ _ _ _ _ _ x
  have ht := leaks_total_half_ounces _ _ _ _ _ _ x
  exact ⟨x, h.1, h.2, leaks_combined _ _ _ _ _ _ x, by norm_num [ht]⟩

#print axioms leaves_solution
#print axioms igloo_solution
#print axioms ages_solution
#print axioms tomatoes_solution
#print axioms leaks_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A12.leaves_solution to "work/gsm8k-sprint12-leaves-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A12.igloo_solution to "work/gsm8k-sprint12-igloo-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A12.ages_solution to "work/gsm8k-sprint12-ages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A12.tomatoes_solution to "work/gsm8k-sprint12-tomatoes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A12.leaks_solution to "work/gsm8k-sprint12-leaks-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A12
