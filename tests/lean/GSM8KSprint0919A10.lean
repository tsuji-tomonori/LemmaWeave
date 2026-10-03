import LemmaWeave.Problems.GSM8K.Sprint0919A10Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A10
open LemmaWeave.Problems.GSM8K.Sprint0919A10

theorem gym_blue (a b c d e f g h : Nat) (x : GymWeights a b c d e f g h) : c = 8 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at hc
  exact hc

theorem gym_green (a b c d e f g h : Nat) (x : GymWeights a b c d e f g h) : f = 15 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hd, he] at hf
  exact hf

theorem gym_total (a b c d e f g h : Nat) (x : GymWeights a b c d e f g h) : h = 25 := by
  have hc := gym_blue a b c d e f g h x
  have hf := gym_green a b c d e f g h x
  rcases x with ⟨ha, hb, hx, hd, he, hy, hg, hh⟩
  norm_num [hc, hf, hg] at hh
  exact hh

theorem gym_solution : GymWeights 4 2 8 5 3 15 2 25 ∧ 8 = 8 ∧ 15 = 15 ∧ 25 = 25 := by
  have x : GymWeights 4 2 8 5 3 15 2 25 := by norm_num [GymWeights]
  exact ⟨x, gym_blue _ _ _ _ _ _ _ _ x, gym_green _ _ _ _ _ _ _ _ x,
    gym_total _ _ _ _ _ _ _ _ x⟩

theorem pond_deposited (a b c d e f g h i j k l m n : Nat)
    (x : PondCoins a b c d e f g h i j k l m n) : l = 225 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn⟩
  norm_num [ha, hb] at hc
  norm_num [hd, he] at hf
  norm_num [hg, hh] at hi
  norm_num [hj] at hk
  norm_num [hc, hf, hi, hk] at hl
  exact hl

theorem pond_remaining (a b c d e f g h i j k l m n : Nat)
    (x : PondCoins a b c d e f g h i j k l m n) : n = 200 := by
  have hl := pond_deposited a b c d e f g h i j k l m n x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hx, hm, hn⟩
  norm_num [hl, he] at hm hn
  omega

theorem pond_solution :
    PondCoins 5 10 50 3 25 75 8 5 40 60 60 225 25 200 ∧ 225 = 225 ∧ 200 = 200 := by
  have x : PondCoins 5 10 50 3 25 75 8 5 40 60 60 225 25 200 := by norm_num [PondCoins]
  exact ⟨x, pond_deposited _ _ _ _ _ _ _ _ _ _ _ _ _ _ x,
    pond_remaining _ _ _ _ _ _ _ _ _ _ _ _ _ _ x⟩

theorem animals_anthony_cats (a b c d e f g : Nat) (x : AdoptedAnimals a b c d e f g) : b = 8 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha] at hb
  omega

theorem animals_anthony_dogs (a b c d e f g : Nat) (x : AdoptedAnimals a b c d e f g) : c = 4 := by
  have hb := animals_anthony_cats a b c d e f g x
  rcases x with ⟨ha, hx, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  omega

theorem animals_total (a b c d e f g : Nat) (x : AdoptedAnimals a b c d e f g) : g = 27 := by
  have hb := animals_anthony_cats a b c d e f g x
  have hc := animals_anthony_dogs a b c d e f g x
  rcases x with ⟨ha, hx, hy, hd, he, hf, hg⟩
  norm_num [hb] at hd
  norm_num [hc, he] at hf
  norm_num [hb, hc, hd, hf] at hg
  omega

theorem animals_solution :
    AdoptedAnimals 12 8 4 4 7 11 27 ∧ 8 = 8 ∧ 4 = 4 ∧ 27 = 27 := by
  have x : AdoptedAnimals 12 8 4 4 7 11 27 := by norm_num [AdoptedAnimals]
  exact ⟨x, animals_anthony_cats _ _ _ _ _ _ _ x,
    animals_anthony_dogs _ _ _ _ _ _ _ x, animals_total _ _ _ _ _ _ _ x⟩

theorem berries_tuesday (a b c d e f g h i : Nat) (x : BerryPicking a b c d e f g h i) : e = 24 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [hc, hd] at he
  exact he

theorem berries_earned (a b c d e f g h i : Nat) (x : BerryPicking a b c d e f g h i) : g = 64 := by
  have he := berries_tuesday a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg, hh, hi⟩
  norm_num [hb, hc, he, hf] at hg
  exact hg

theorem berries_thursday (a b c d e f g h i : Nat) (x : BerryPicking a b c d e f g h i) : i = 18 := by
  have hg := berries_earned a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hx, hh, hi⟩
  norm_num [ha, hg] at hh
  norm_num [hb, hh] at hi
  omega

theorem berries_solution :
    BerryPicking 100 2 8 3 24 0 64 36 18 ∧ 24 = 24 ∧ 64 = 64 ∧ 18 = 18 := by
  have x : BerryPicking 100 2 8 3 24 0 64 36 18 := by norm_num [BerryPicking]
  exact ⟨x, berries_tuesday _ _ _ _ _ _ _ _ _ x,
    berries_earned _ _ _ _ _ _ _ _ _ x, berries_thursday _ _ _ _ _ _ _ _ _ x⟩

theorem toys_bert (a b c d e f g : Nat) (x : ToySales a b c d e f g) : c = 144 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  exact hc

theorem toys_tory (a b c d e f g : Nat) (x : ToySales a b c d e f g) : f = 140 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hd, he] at hf
  exact hf

theorem toys_difference (a b c d e f g : Nat) (x : ToySales a b c d e f g) : g = 4 := by
  have hc := toys_bert a b c d e f g x
  have hf := toys_tory a b c d e f g x
  rcases x with ⟨ha, hb, hx, hd, he, hy, hg⟩
  norm_num [hc, hf] at hg
  omega

theorem toys_solution : ToySales 8 18 144 7 20 140 4 ∧ 144 = 144 ∧ 140 = 140 ∧ 4 = 4 := by
  have x : ToySales 8 18 144 7 20 140 4 := by norm_num [ToySales]
  exact ⟨x, toys_bert _ _ _ _ _ _ _ x, toys_tory _ _ _ _ _ _ _ x,
    toys_difference _ _ _ _ _ _ _ x⟩

#print axioms gym_solution
#print axioms pond_solution
#print axioms animals_solution
#print axioms berries_solution
#print axioms toys_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A10.gym_solution to "work/gsm8k-sprint10-gym-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A10.pond_solution to "work/gsm8k-sprint10-pond-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A10.animals_solution to "work/gsm8k-sprint10-animals-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A10.berries_solution to "work/gsm8k-sprint10-berries-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A10.toys_solution to "work/gsm8k-sprint10-toys-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A10
