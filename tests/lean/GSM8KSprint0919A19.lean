import LemmaWeave.Problems.GSM8K.Sprint0919A19Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A19
open LemmaWeave.Problems.GSM8K.Sprint0919A19

theorem flyers_donna (a b c d : Nat) (x : Flyers a b c d) : d = 71 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb, hc] at hd
  exact hd

theorem flyers_solution : Flyers 33 2 5 71 ∧ 71 = 71 := by
  have x : Flyers 33 2 5 71 := by norm_num [Flyers]
  exact ⟨x, flyers_donna _ _ _ _ x⟩

theorem birth_sibling_gap (a b c d e f : Nat) (x : BirthYear a b c d e f) : c = 4 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  omega

theorem birth_grandma_gap (a b c d e f : Nat) (x : BirthYear a b c d e f) : e = 8 := by
  have hc := birth_sibling_gap a b c d e f x
  rcases x with ⟨ha, hb, hx, hd, he, hf⟩
  norm_num [hc, hd] at he
  exact he

theorem birth_grandma (a b c d e f : Nat) (x : BirthYear a b c d e f) : f = 1944 := by
  have he := birth_grandma_gap a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, hx, hf⟩
  norm_num [hb, he] at hf
  exact hf

theorem birth_solution : BirthYear 1932 1936 4 2 8 1944 ∧ 4 = 4 ∧ 8 = 8 ∧ 1944 = 1944 := by
  have x : BirthYear 1932 1936 4 2 8 1944 := by norm_num [BirthYear]
  exact ⟨x, birth_sibling_gap _ _ _ _ _ _ x, birth_grandma_gap _ _ _ _ _ _ x,
    birth_grandma _ _ _ _ _ _ x⟩

theorem balloons_kris (a b c d e f g h i j k l : Nat) (x : Balloons a b c d e f g h i j k l) : d = 60 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  norm_num [ha, hc] at hd
  exact hd

theorem balloons_first_rate (a b c d e f g h i j k l : Nat) (x : Balloons a b c d e f g h i j k l) : f = 4 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  norm_num [hc, he] at hf
  exact hf

theorem balloons_first (a b c d e f g h i j k l : Nat) (x : Balloons a b c d e f g h i j k l) : g = 60 := by
  have hf := balloons_first_rate a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hc, hd, he, hx, hg, hh, hi, hj, hk, hl⟩
  norm_num [hb, hf] at hg
  exact hg

theorem balloons_second_rate (a b c d e f g h i j k l : Nat) (x : Balloons a b c d e f g h i j k l) : i = 8 := by
  have hf := balloons_first_rate a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hc, hd, he, hx, hg, hh, hi, hj, hk, hl⟩
  norm_num [hf, hh] at hi
  exact hi

theorem balloons_second (a b c d e f g h i j k l : Nat) (x : Balloons a b c d e f g h i j k l) : j = 120 := by
  have hi := balloons_second_rate a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hx, hj, hk, hl⟩
  norm_num [hb, hi] at hj
  exact hj

theorem balloons_brother_total (a b c d e f g h i j k l : Nat) (x : Balloons a b c d e f g h i j k l) : k = 180 := by
  have hg := balloons_first a b c d e f g h i j k l x
  have hj := balloons_second a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hx, hh, hi, hy, hk, hl⟩
  norm_num [hg, hj] at hk
  exact hk

theorem balloons_total (a b c d e f g h i j k l : Nat) (x : Balloons a b c d e f g h i j k l) : l = 240 := by
  have hd := balloons_kris a b c d e f g h i j k l x
  have hk := balloons_brother_total a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hc, hx, he, hf, hg, hh, hi, hj, hy, hl⟩
  norm_num [hd, hk] at hl
  exact hl

theorem balloons_solution : Balloons 30 15 2 60 2 4 60 2 8 120 180 240 ∧ 60 = 60 ∧ 4 = 4 ∧ 60 = 60 ∧ 8 = 8 ∧ 120 = 120 ∧ 180 = 180 ∧ 240 = 240 := by
  have x : Balloons 30 15 2 60 2 4 60 2 8 120 180 240 := by norm_num [Balloons]
  exact ⟨x, balloons_kris _ _ _ _ _ _ _ _ _ _ _ _ x,
    balloons_first_rate _ _ _ _ _ _ _ _ _ _ _ _ x, balloons_first _ _ _ _ _ _ _ _ _ _ _ _ x,
    balloons_second_rate _ _ _ _ _ _ _ _ _ _ _ _ x, balloons_second _ _ _ _ _ _ _ _ _ _ _ _ x,
    balloons_brother_total _ _ _ _ _ _ _ _ _ _ _ _ x, balloons_total _ _ _ _ _ _ _ _ _ _ _ _ x⟩

theorem speeding_over (a b c d e f g h i j k l m n : Nat) (x : SpeedingCost a b c d e f g h i j k l m n) : c = 45 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn⟩
  omega

theorem speeding_penalty (a b c d e f g h i j k l m n : Nat) (x : SpeedingCost a b c d e f g h i j k l m n) : f = 90 := by
  have hc := speeding_over a b c d e f g h i j k l m n x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn⟩
  norm_num [hc, he] at hf
  exact hf

theorem speeding_fine (a b c d e f g h i j k l m n : Nat) (x : SpeedingCost a b c d e f g h i j k l m n) : i = 280 := by
  have hf := speeding_penalty a b c d e f g h i j k l m n x
  rcases x with ⟨ha, hb, hc, hd, he, hx, hg, hh, hi, hj, hk, hl, hm, hn⟩
  norm_num [hd, hf] at hg
  norm_num [hg, hh] at hi
  exact hi

theorem speeding_lawyer (a b c d e f g h i j k l m n : Nat) (x : SpeedingCost a b c d e f g h i j k l m n) : m = 240 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn⟩
  norm_num [hk, hl] at hm
  exact hm

theorem speeding_total (a b c d e f g h i j k l m n : Nat) (x : SpeedingCost a b c d e f g h i j k l m n) : n = 820 := by
  have hi := speeding_fine a b c d e f g h i j k l m n x
  have hm := speeding_lawyer a b c d e f g h i j k l m n x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hx, hj, hk, hl, hy, hn⟩
  norm_num [hi, hj, hm] at hn
  exact hn

theorem speeding_solution : SpeedingCost 75 30 45 50 2 90 140 2 280 300 80 3 240 820 ∧ 45 = 45 ∧ 90 = 90 ∧ 280 = 280 ∧ 240 = 240 ∧ 820 = 820 := by
  have x : SpeedingCost 75 30 45 50 2 90 140 2 280 300 80 3 240 820 := by norm_num [SpeedingCost]
  exact ⟨x, speeding_over _ _ _ _ _ _ _ _ _ _ _ _ _ _ x,
    speeding_penalty _ _ _ _ _ _ _ _ _ _ _ _ _ _ x, speeding_fine _ _ _ _ _ _ _ _ _ _ _ _ _ _ x,
    speeding_lawyer _ _ _ _ _ _ _ _ _ _ _ _ _ _ x, speeding_total _ _ _ _ _ _ _ _ _ _ _ _ _ _ x⟩

theorem virus_disjoint_vaccinated (a b c d e f g h : Nat) (x : VirusDisjoint a b c d e f g h) : e = 25 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hc, hd] at he
  omega

theorem virus_disjoint_risks (a b c d e f g h : Nat) (x : VirusDisjoint a b c d e f g h) : f = 10 ∧ g = 10 := by
  have he := virus_disjoint_vaccinated a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg, hh⟩
  constructor
  · norm_num [ha, he] at hf
    omega
  · norm_num [hb, hc] at hg
    omega

theorem virus_disjoint_either (a b c d e f g h : Nat) (x : VirusDisjoint a b c d e f g h) : h = 20 := by
  have hfg := virus_disjoint_risks a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hfg.1, hfg.2] at hh
  exact hh

theorem virus_coinfected_risks (a b c d e f g : Nat) (x : VirusCoinfectedNested a b c d e f g) : e = 5 ∧ f = 10 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  constructor
  · norm_num [ha, hc] at he
    omega
  · norm_num [hb, hd] at hf
    omega

theorem virus_coinfected_either (a b c d e f g : Nat) (x : VirusCoinfectedNested a b c d e f g) : g = 15 := by
  have hef := virus_coinfected_risks a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hef.1, hef.2] at hg
  exact hg

theorem virus_solution :
    VirusDisjoint 40 20 50 50 25 10 10 20 ∧
    VirusCoinfectedNested 20 20 25 50 5 10 15 ∧ 20 = 20 ∧ 15 = 15 := by
  have xd : VirusDisjoint 40 20 50 50 25 10 10 20 := by norm_num [VirusDisjoint]
  have xc : VirusCoinfectedNested 20 20 25 50 5 10 15 := by norm_num [VirusCoinfectedNested]
  exact ⟨xd, xc, virus_disjoint_either _ _ _ _ _ _ _ _ xd,
    virus_coinfected_either _ _ _ _ _ _ _ xc⟩

#print axioms flyers_solution
#print axioms birth_solution
#print axioms balloons_solution
#print axioms speeding_solution
#print axioms virus_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A19.flyers_solution to "work/gsm8k-sprint19-flyers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A19.birth_solution to "work/gsm8k-sprint19-birth-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A19.balloons_solution to "work/gsm8k-sprint19-balloons-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A19.speeding_solution to "work/gsm8k-sprint19-speeding-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A19.virus_solution to "work/gsm8k-sprint19-virus-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A19
