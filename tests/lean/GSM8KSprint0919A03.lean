import LemmaWeave.Problems.GSM8K.Sprint0919A03Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A03
open LemmaWeave.Problems.GSM8K.Sprint0919A03

theorem age_claire_now (a b c d e : Nat) (h : Ages a b c d e) : c = 18 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  omega

theorem age_jessica_now (a b c d e : Nat) (h : Ages a b c d e) : e = 24 := by
  have hc := age_claire_now a b c d e h
  rcases h with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  exact he

theorem age_solution : Ages 20 2 18 6 24 ∧ 18 = 18 ∧ 24 = 24 := by
  have h : Ages 20 2 18 6 24 := by norm_num [Ages]
  exact ⟨h, age_claire_now _ _ _ _ _ h, age_jessica_now _ _ _ _ _ h⟩

theorem egg_count (a b c d e : Nat) (h : EggCost a b c d e) : c = 36 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc

theorem egg_total (a b c d e : Nat) (h : EggCost a b c d e) : e = 1800 := by
  have hc := egg_count a b c d e h
  rcases h with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  exact he

theorem egg_solution : EggCost 3 12 36 50 1800 ∧ 36 = 36 ∧ 1800 = 1800 := by
  have h : EggCost 3 12 36 50 1800 := by norm_num [EggCost]
  exact ⟨h, egg_count _ _ _ _ _ h, egg_total _ _ _ _ _ h⟩

theorem cake_unicorn (a b c d e f : Nat) (h : CakeVotes a b c d e f) : c = 21 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb] at hc
  exact hc

theorem cake_dragon (a b c d e f : Nat) (h : CakeVotes a b c d e f) : e = 32 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hd] at he
  exact he

theorem cake_total (a b c d e f : Nat) (h : CakeVotes a b c d e f) : f = 60 := by
  have hc := cake_unicorn a b c d e f h
  have he := cake_dragon a b c d e f h
  rcases h with ⟨ha, hb, hx, hd, hy, hf⟩
  norm_num [ha, hc, he] at hf
  exact hf

theorem cake_solution : CakeVotes 7 3 21 25 32 60 ∧ 21 = 21 ∧ 32 = 32 ∧ 60 = 60 := by
  have h : CakeVotes 7 3 21 25 32 60 := by norm_num [CakeVotes]
  exact ⟨h, cake_unicorn _ _ _ _ _ _ h, cake_dragon _ _ _ _ _ _ h,
    cake_total _ _ _ _ _ _ h⟩

theorem sailor_experienced (a b c d e f g h i j k l m : Nat)
    (x : SailorEarnings a b c d e f g h i j k l m) : c = 12 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  norm_num [ha, hb] at hc
  omega

theorem sailor_premium (a b c d e f g h i j k l m : Nat)
    (x : SailorEarnings a b c d e f g h i j k l m) : f = 2 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  norm_num [hd, he] at hf
  omega

theorem sailor_additive_rate (a b c d e f g h i j k l m : Nat)
    (x : SailorEarnings a b c d e f g h i j k l m) : g = 12 := by
  have hf := sailor_premium a b c d e f g h i j k l m x
  rcases x with ⟨ha, hb, hc, hd, he, hx, hg, hh, hi, hj, hk, hl, hm⟩
  norm_num [hd, hf] at hg
  exact hg

theorem sailor_additive_monthly_each (a b c d e f g h i j k l m : Nat)
    (x : SailorEarnings a b c d e f g h i j k l m) : j = 2880 := by
  have hg := sailor_additive_rate a b c d e f g h i j k l m x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hx, hh, hi, hj, hk, hl, hm⟩
  norm_num [hg, hh, hi] at hj
  exact hj

theorem sailor_additive_total (a b c d e f g h i j k l m : Nat)
    (x : SailorEarnings a b c d e f g h i j k l m) : k = 34560 := by
  have hc := sailor_experienced a b c d e f g h i j k l m x
  have hj := sailor_additive_monthly_each a b c d e f g h i j k l m x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg, hh, hi, hy, hk, hl, hm⟩
  norm_num [hc, hj] at hk
  exact hk

theorem sailor_multiplicative_total (a b c d e f g h i j k l m : Nat)
    (x : SailorEarnings a b c d e f g h i j k l m) : m = 5760 := by
  have hc := sailor_experienced a b c d e f g h i j k l m x
  have hf := sailor_premium a b c d e f g h i j k l m x
  rcases x with ⟨ha, hb, hx, hd, he, hy, hg, hh, hi, hj, hk, hl, hm⟩
  norm_num [hf] at hl
  norm_num [hc, hl, hh, hi] at hm
  exact hm

theorem sailor_solution :
    SailorEarnings 17 5 12 10 5 2 12 60 4 2880 34560 2 5760 ∧
    12 = 12 ∧ 2 = 2 ∧ 12 = 12 ∧ 2880 = 2880 ∧ 34560 = 34560 ∧ 5760 = 5760 := by
  have h : SailorEarnings 17 5 12 10 5 2 12 60 4 2880 34560 2 5760 := by
    norm_num [SailorEarnings]
  exact ⟨h, sailor_experienced _ _ _ _ _ _ _ _ _ _ _ _ _ h,
    sailor_premium _ _ _ _ _ _ _ _ _ _ _ _ _ h,
    sailor_additive_rate _ _ _ _ _ _ _ _ _ _ _ _ _ h,
    sailor_additive_monthly_each _ _ _ _ _ _ _ _ _ _ _ _ _ h,
    sailor_additive_total _ _ _ _ _ _ _ _ _ _ _ _ _ h,
    sailor_multiplicative_total _ _ _ _ _ _ _ _ _ _ _ _ _ h⟩

theorem bag_profit (a b c d : Nat) (h : BagResale a b c d) : c = 450 := by
  rcases h with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb] at hc
  omega

theorem bag_selling_price (a b c d : Nat) (h : BagResale a b c d) : d = 3450 := by
  have hc := bag_profit a b c d h
  rcases h with ⟨ha, hb, hx, hd⟩
  norm_num [ha, hc] at hd
  exact hd

theorem bag_solution : BagResale 3000 15 450 3450 ∧ 450 = 450 ∧ 3450 = 3450 := by
  have h : BagResale 3000 15 450 3450 := by norm_num [BagResale]
  exact ⟨h, bag_profit _ _ _ _ h, bag_selling_price _ _ _ _ h⟩

#print axioms age_solution
#print axioms egg_solution
#print axioms cake_solution
#print axioms sailor_solution
#print axioms bag_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A03.age_solution to "work/gsm8k-sprint03-age-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A03.egg_solution to "work/gsm8k-sprint03-egg-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A03.cake_solution to "work/gsm8k-sprint03-cake-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A03.sailor_solution to "work/gsm8k-sprint03-sailor-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A03.bag_solution to "work/gsm8k-sprint03-bag-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A03
