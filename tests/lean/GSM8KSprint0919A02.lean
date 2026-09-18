import LemmaWeave.Problems.GSM8K.Sprint0919A02Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A02
open LemmaWeave.Problems.GSM8K.Sprint0919A02

theorem pass_break_even : 5000 = 200 * 25 := by norm_num

theorem pass_strict_lower_bound (a b r : Nat) (h : PassRides a b r) : 26 ≤ r := by
  rcases h with ⟨ha, hb, hcheap, hminimal⟩
  rw [ha, hb, pass_break_even] at hcheap
  omega

theorem pass_minimum (a b r : Nat) (h : PassRides a b r) : r = 26 := by
  have hlower := pass_strict_lower_bound a b r h
  rcases h with ⟨ha, hb, hcheap, hminimal⟩
  have hupper : r ≤ 26 := hminimal 26 (by norm_num [ha, hb])
  omega

theorem pass_solution : PassRides 200 5000 26 ∧ 26 = 26 := by
  have h : PassRides 200 5000 26 := by
    refine ⟨rfl, rfl, by norm_num, ?_⟩
    intro n hn
    omega
  exact ⟨h, pass_minimum _ _ _ h⟩

theorem picnic_cookie_share (a b c d e f g h : Nat)
    (x : PicnicDesserts a b c d e f g h) : e = 6 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hd] at he
  omega

theorem picnic_candy_share (a b c d e f g h : Nat)
    (x : PicnicDesserts a b c d e f g h) : f = 9 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hb, hd] at hf
  omega

theorem picnic_brownie_share (a b c d e f g h : Nat)
    (x : PicnicDesserts a b c d e f g h) : g = 3 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hc, hd] at hg
  omega

theorem picnic_total_share (a b c d e f g h : Nat)
    (x : PicnicDesserts a b c d e f g h) : h = 18 := by
  have he := picnic_cookie_share a b c d e f g h x
  have hf := picnic_candy_share a b c d e f g h x
  have hg := picnic_brownie_share a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, hx, hy, hz, hh⟩
  norm_num [he, hf, hg] at hh
  exact hh

theorem picnic_solution : PicnicDesserts 42 63 21 7 6 9 3 18 ∧
    6 = 6 ∧ 9 = 9 ∧ 3 = 3 ∧ 18 = 18 := by
  have h : PicnicDesserts 42 63 21 7 6 9 3 18 := by norm_num [PicnicDesserts]
  exact ⟨h, picnic_cookie_share _ _ _ _ _ _ _ _ h,
    picnic_candy_share _ _ _ _ _ _ _ _ h,
    picnic_brownie_share _ _ _ _ _ _ _ _ h,
    picnic_total_share _ _ _ _ _ _ _ _ h⟩

theorem recovery_animal_count (a b c d e : Nat) (h : AnimalRecovery a b c d e) : c = 5 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc

theorem recovery_total_time (a b c d e : Nat) (h : AnimalRecovery a b c d e) : e = 10 := by
  have hc := recovery_animal_count a b c d e h
  rcases h with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  exact he

theorem recovery_solution : AnimalRecovery 3 2 5 2 10 ∧ 5 = 5 ∧ 10 = 10 := by
  have h : AnimalRecovery 3 2 5 2 10 := by norm_num [AnimalRecovery]
  exact ⟨h, recovery_animal_count _ _ _ _ _ h, recovery_total_time _ _ _ _ _ h⟩

theorem golf_dan_count (a b c d e f g h : Nat) (x : GolfBalls a b c d e f g h) : f = 60 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hd] at hf
  exact hf

theorem golf_gus_count (a b c d e f g h : Nat) (x : GolfBalls a b c d e f g h) : g = 24 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hb, hd] at hg
  exact hg

theorem golf_total (a b c d e f g h : Nat) (x : GolfBalls a b c d e f g h) : h = 132 := by
  have hf := golf_dan_count a b c d e f g h x
  have hg := golf_gus_count a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hx, hy, hh⟩
  norm_num [hc, hf, hg] at hh
  exact hh

theorem golf_solution : GolfBalls 5 2 48 12 3000 60 24 132 ∧
    60 = 60 ∧ 24 = 24 ∧ 132 = 132 := by
  have h : GolfBalls 5 2 48 12 3000 60 24 132 := by norm_num [GolfBalls]
  exact ⟨h, golf_dan_count _ _ _ _ _ _ _ _ h, golf_gus_count _ _ _ _ _ _ _ _ h,
    golf_total _ _ _ _ _ _ _ _ h⟩

theorem jelly_allowed_children (a b c d e f g : Nat)
    (h : JellyBeans a b c d e f g) : d = 32 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hb, hc] at hd
  omega

theorem jelly_taken (a b c d e f g : Nat) (h : JellyBeans a b c d e f g) : f = 64 := by
  have hd := jelly_allowed_children a b c d e f g h
  rcases h with ⟨ha, hb, hc, hx, he, hf, hg⟩
  norm_num [hd, he] at hf
  exact hf

theorem jelly_remaining (a b c d e f g : Nat) (h : JellyBeans a b c d e f g) : g = 36 := by
  have hf := jelly_taken a b c d e f g h
  rcases h with ⟨ha, hb, hc, hd, he, hx, hg⟩
  norm_num [ha, hf] at hg
  omega

theorem jelly_solution : JellyBeans 100 40 80 32 2 64 36 ∧
    32 = 32 ∧ 64 = 64 ∧ 36 = 36 := by
  have h : JellyBeans 100 40 80 32 2 64 36 := by norm_num [JellyBeans]
  exact ⟨h, jelly_allowed_children _ _ _ _ _ _ _ h, jelly_taken _ _ _ _ _ _ _ h,
    jelly_remaining _ _ _ _ _ _ _ h⟩

#print axioms pass_solution
#print axioms picnic_solution
#print axioms recovery_solution
#print axioms golf_solution
#print axioms jelly_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A02.pass_solution to "work/gsm8k-sprint02-pass-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A02.picnic_solution to "work/gsm8k-sprint02-picnic-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A02.recovery_solution to "work/gsm8k-sprint02-recovery-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A02.golf_solution to "work/gsm8k-sprint02-golf-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A02.jelly_solution to "work/gsm8k-sprint02-jelly-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A02
