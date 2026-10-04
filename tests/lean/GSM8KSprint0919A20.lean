import LemmaWeave.Problems.GSM8K.Sprint0919A20Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A20
open LemmaWeave.Problems.GSM8K.Sprint0919A20

theorem dogs_total (a b c d e f g : Nat) (x : DogWalking a b c d e f g) : e = 42 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb, hc, hd] at he
  exact he

theorem dogs_earnings (a b c d e f g : Nat) (x : DogWalking a b c d e f g) : g = 210 := by
  have he := dogs_total a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg⟩
  norm_num [he, hf] at hg
  exact hg

theorem dogs_solution : DogWalking 3 7 12 9 42 5 210 ∧ 42 = 42 ∧ 210 = 210 := by
  have x : DogWalking 3 7 12 9 42 5 210 := by norm_num [DogWalking]
  exact ⟨x, dogs_total _ _ _ _ _ _ _ x, dogs_earnings _ _ _ _ _ _ _ x⟩

theorem rabbits_after_added (a b c d e : Nat) (x : ParkRabbits a b c d e) : c = 20 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc

theorem rabbits_park (a b c d e : Nat) (x : ParkRabbits a b c d e) : e = 60 := by
  have hc := rabbits_after_added a b c d e x
  rcases x with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  exact he

theorem rabbits_solution : ParkRabbits 13 7 20 3 60 ∧ 20 = 20 ∧ 60 = 60 := by
  have x : ParkRabbits 13 7 20 3 60 := by norm_num [ParkRabbits]
  exact ⟨x, rabbits_after_added _ _ _ _ _ x, rabbits_park _ _ _ _ _ x⟩

theorem seagulls_scared (a b c d e f g : Nat) (x : Seagulls a b c d e f g) : c = 9 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  omega

theorem seagulls_after_scared (a b c d e f g : Nat) (x : Seagulls a b c d e f g) : d = 27 := by
  have hc := seagulls_scared a b c d e f g x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg⟩
  omega

theorem seagulls_moved (a b c d e f g : Nat) (x : Seagulls a b c d e f g) : f = 9 := by
  have hd := seagulls_after_scared a b c d e f g x
  rcases x with ⟨ha, hb, hc, hx, he, hf, hg⟩
  norm_num [hd, he] at hf
  omega

theorem seagulls_remaining (a b c d e f g : Nat) (x : Seagulls a b c d e f g) : g = 18 := by
  have hd := seagulls_after_scared a b c d e f g x
  have hf := seagulls_moved a b c d e f g x
  rcases x with ⟨ha, hb, hc, hx, he, hy, hg⟩
  omega

theorem seagulls_solution : Seagulls 36 4 9 27 3 9 18 ∧ 9 = 9 ∧ 27 = 27 ∧ 9 = 9 ∧ 18 = 18 := by
  have x : Seagulls 36 4 9 27 3 9 18 := by norm_num [Seagulls]
  exact ⟨x, seagulls_scared _ _ _ _ _ _ _ x, seagulls_after_scared _ _ _ _ _ _ _ x,
    seagulls_moved _ _ _ _ _ _ _ x, seagulls_remaining _ _ _ _ _ _ _ x⟩

theorem cats_twice_male (a b c d : Nat) (x : CatsTwice a b c d) : c = 4 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb] at hc
  exact hc

theorem cats_twice_total (a b c d : Nat) (x : CatsTwice a b c d) : d = 6 := by
  have hc := cats_twice_male a b c d x
  rcases x with ⟨ha, hb, hx, hd⟩
  norm_num [ha, hc] at hd
  exact hd

theorem cats_literal_male (a b c d : Nat) (x : CatsLiteralMore a b c d) : c = 6 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb] at hc
  exact hc

theorem cats_literal_total (a b c d : Nat) (x : CatsLiteralMore a b c d) : d = 8 := by
  have hc := cats_literal_male a b c d x
  rcases x with ⟨ha, hb, hx, hd⟩
  norm_num [ha, hc] at hd
  exact hd

theorem cats_solution : CatsTwice 2 2 4 6 ∧ CatsLiteralMore 2 3 6 8 ∧ 6 = 6 ∧ 8 = 8 := by
  have xt : CatsTwice 2 2 4 6 := by norm_num [CatsTwice]
  have xl : CatsLiteralMore 2 3 6 8 := by norm_num [CatsLiteralMore]
  exact ⟨xt, xl, cats_twice_total _ _ _ _ xt, cats_literal_total _ _ _ _ xl⟩

theorem drink_volume (a b c d e f : Nat) (x : LemonadePitcher a b c d e f) : c = 6 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb] at hc
  exact hc

theorem drink_count (a b c d e f : Nat) (x : LemonadePitcher a b c d e f) : e = 12 := by
  have hc := drink_volume a b c d e f x
  rcases x with ⟨ha, hb, hx, hd, he, hf⟩
  norm_num [hc, hd] at he
  omega

theorem lemonade_quarter_cups (a b c d e f : Nat) (x : LemonadePitcher a b c d e f) : f = 60 := by
  have he := drink_count a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, hx, hf⟩
  norm_num [hb, he] at hf
  exact hf

theorem lemonade_solution : LemonadePitcher 1 5 6 72 12 60 ∧ 6 = 6 ∧ 12 = 12 ∧ 60 = 4 * 15 := by
  have x : LemonadePitcher 1 5 6 72 12 60 := by norm_num [LemonadePitcher]
  have hf := lemonade_quarter_cups _ _ _ _ _ _ x
  exact ⟨x, drink_volume _ _ _ _ _ _ x, drink_count _ _ _ _ _ _ x, by norm_num [hf]⟩

#print axioms dogs_solution
#print axioms rabbits_solution
#print axioms seagulls_solution
#print axioms cats_solution
#print axioms lemonade_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A20.dogs_solution to "work/gsm8k-sprint20-dogs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A20.rabbits_solution to "work/gsm8k-sprint20-rabbits-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A20.seagulls_solution to "work/gsm8k-sprint20-seagulls-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A20.cats_solution to "work/gsm8k-sprint20-cats-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A20.lemonade_solution to "work/gsm8k-sprint20-lemonade-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A20
