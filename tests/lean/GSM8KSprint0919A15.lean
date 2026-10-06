import LemmaWeave.Problems.GSM8K.Sprint0919A15Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A15
open LemmaWeave.Problems.GSM8K.Sprint0919A15

theorem shells_ed (a b c d e f g h : Nat) (x : ShellCollection a b c d e f g h) : e = 13 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hb, hc, hd] at he
  exact he

theorem shells_jacob (a b c d e f g h : Nat) (x : ShellCollection a b c d e f g h) : g = 15 := by
  have he := shells_ed a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg, hh⟩
  norm_num [he, hf] at hg
  exact hg

theorem shells_total (a b c d e f g h : Nat) (x : ShellCollection a b c d e f g h) : h = 30 := by
  have he := shells_ed a b c d e f g h x
  have hg := shells_jacob a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hy, hh⟩
  norm_num [ha, he, hg] at hh
  exact hh

theorem shells_solution : ShellCollection 2 7 2 4 13 2 15 30 ∧ 13 = 13 ∧ 15 = 15 ∧ 30 = 30 := by
  have x : ShellCollection 2 7 2 4 13 2 15 30 := by norm_num [ShellCollection]
  exact ⟨x, shells_ed _ _ _ _ _ _ _ _ x, shells_jacob _ _ _ _ _ _ _ _ x,
    shells_total _ _ _ _ _ _ _ _ x⟩

theorem bananas_dawn (a b c d e : Nat) (x : Bananas a b c d e) : d = 100 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hb, hc] at hd
  exact hd

theorem bananas_donna (a b c d e : Nat) (x : Bananas a b c d e) : e = 40 := by
  have hd := bananas_dawn a b c d e x
  rcases x with ⟨ha, hb, hc, hx, he⟩
  omega

theorem bananas_solution : Bananas 200 60 40 100 40 ∧ 100 = 100 ∧ 40 = 40 := by
  have x : Bananas 200 60 40 100 40 := by norm_num [Bananas]
  exact ⟨x, bananas_dawn _ _ _ _ _ x, bananas_donna _ _ _ _ _ x⟩

theorem work_celeste (a b c d e f g h : Nat) (x : WorkMinutes a b c d e f g h) : c = 50 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at hc
  exact hc

theorem work_mcclain (a b c d e f g h : Nat) (x : WorkMinutes a b c d e f g h) : e = 33 := by
  have hc := work_celeste a b c d e f g h x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg, hh⟩
  omega

theorem work_total_half_hours (a b c d e f g h : Nat) (x : WorkMinutes a b c d e f g h) : f = 108 := by
  have hc := work_celeste a b c d e f g h x
  have he := work_mcclain a b c d e f g h x
  rcases x with ⟨ha, hb, hx, hd, hy, hf, hg, hh⟩
  norm_num [ha, hc, he] at hf
  exact hf

theorem work_total_minutes (a b c d e f g h : Nat) (x : WorkMinutes a b c d e f g h) : h = 3240 := by
  have hf := work_total_half_hours a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hx, hg, hh⟩
  norm_num [hf, hg] at hh
  exact hh

theorem work_solution : WorkMinutes 25 2 50 17 33 108 30 3240 ∧ 50 = 50 ∧ 33 = 33 ∧ 108 = 108 ∧ 3240 = 3240 := by
  have x : WorkMinutes 25 2 50 17 33 108 30 3240 := by norm_num [WorkMinutes]
  exact ⟨x, work_celeste _ _ _ _ _ _ _ _ x, work_mcclain _ _ _ _ _ _ _ _ x,
    work_total_half_hours _ _ _ _ _ _ _ _ x, work_total_minutes _ _ _ _ _ _ _ _ x⟩

theorem poker_half_deck (a b c d e f g h i : Nat) (x : PokerCards a b c d e f g h i) : b = 26 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [ha] at hb
  omega

theorem poker_full_cards (a b c d e f g h i : Nat) (x : PokerCards a b c d e f g h i) : e = 156 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [ha, hc] at he
  exact he

theorem poker_half_cards (a b c d e f g h i : Nat) (x : PokerCards a b c d e f g h i) : f = 78 := by
  have hb := poker_half_deck a b c d e f g h i x
  rcases x with ⟨ha, hx, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [hb, hd] at hf
  exact hf

theorem poker_before_trash (a b c d e f g h i : Nat) (x : PokerCards a b c d e f g h i) : g = 234 := by
  have he := poker_full_cards a b c d e f g h i x
  have hf := poker_half_cards a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, hx, hy, hg, hh, hi⟩
  norm_num [he, hf] at hg
  exact hg

theorem poker_remaining (a b c d e f g h i : Nat) (x : PokerCards a b c d e f g h i) : i = 200 := by
  have hg := poker_before_trash a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hx, hh, hi⟩
  omega

theorem poker_solution : PokerCards 52 26 3 3 156 78 234 34 200 ∧ 26 = 26 ∧ 156 = 156 ∧ 78 = 78 ∧ 234 = 234 ∧ 200 = 200 := by
  have x : PokerCards 52 26 3 3 156 78 234 34 200 := by norm_num [PokerCards]
  exact ⟨x, poker_half_deck _ _ _ _ _ _ _ _ _ x, poker_full_cards _ _ _ _ _ _ _ _ _ x,
    poker_half_cards _ _ _ _ _ _ _ _ _ x, poker_before_trash _ _ _ _ _ _ _ _ _ x,
    poker_remaining _ _ _ _ _ _ _ _ _ x⟩

theorem vegetables_weekly (a b c d e f g h : Nat) (x : VegetableMinimum a b c d e f g h) : c = 14 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at hc
  exact hc

theorem vegetables_days_left (a b c d e f g h : Nat) (x : VegetableMinimum a b c d e f g h) : f = 2 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  omega

theorem vegetables_cups_left (a b c d e f g h : Nat) (x : VegetableMinimum a b c d e f g h) : g = 6 := by
  have hc := vegetables_weekly a b c d e f g h x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg, hh⟩
  omega

theorem vegetables_daily_needed (a b c d e f g h : Nat) (x : VegetableMinimum a b c d e f g h) : h = 3 := by
  have hf := vegetables_days_left a b c d e f g h x
  have hg := vegetables_cups_left a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hx, hy, hh⟩
  norm_num [hf, hg] at hh
  omega

theorem vegetables_solution : VegetableMinimum 7 2 14 8 5 2 6 3 ∧ 14 = 14 ∧ 2 = 2 ∧ 6 = 6 ∧ 3 = 3 := by
  have x : VegetableMinimum 7 2 14 8 5 2 6 3 := by norm_num [VegetableMinimum]
  exact ⟨x, vegetables_weekly _ _ _ _ _ _ _ _ x, vegetables_days_left _ _ _ _ _ _ _ _ x,
    vegetables_cups_left _ _ _ _ _ _ _ _ x, vegetables_daily_needed _ _ _ _ _ _ _ _ x⟩

#print axioms shells_solution
#print axioms bananas_solution
#print axioms work_solution
#print axioms poker_solution
#print axioms vegetables_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A15.shells_solution to "work/gsm8k-sprint15-shells-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A15.bananas_solution to "work/gsm8k-sprint15-bananas-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A15.work_solution to "work/gsm8k-sprint15-work-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A15.poker_solution to "work/gsm8k-sprint15-poker-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A15.vegetables_solution to "work/gsm8k-sprint15-vegetables-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A15
