import LemmaWeave.Problems.GSM8K.Sprint0919A16Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A16
open LemmaWeave.Problems.GSM8K.Sprint0919A16

theorem candy_paid (a b c d e f g h i : Nat) (x : CandyCost a b c d e f g h i) : g = 135 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [ha, hb, hc, hd, he, hf] at hg
  exact hg

theorem candy_cost (a b c d e f g h i : Nat) (x : CandyCost a b c d e f g h i) : i = 131 := by
  have hg := candy_paid a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hx, hh, hi⟩
  omega

theorem candy_solution : CandyCost 4 25 3 10 1 5 135 4 131 ∧ 135 = 135 ∧ 131 = 131 := by
  have x : CandyCost 4 25 3 10 1 5 135 4 131 := by norm_num [CandyCost]
  exact ⟨x, candy_paid _ _ _ _ _ _ _ _ _ x, candy_cost _ _ _ _ _ _ _ _ _ x⟩

theorem typing_current (a b c d e : Nat) (x : TypingTime a b c d e) : c = 45 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega

theorem typing_minutes (a b c d e : Nat) (x : TypingTime a b c d e) : e = 18 := by
  have hc := typing_current a b c d e x
  rcases x with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  omega

theorem typing_solution : TypingTime 65 20 45 810 18 ∧ 45 = 45 ∧ 18 = 18 := by
  have x : TypingTime 65 20 45 810 18 := by norm_num [TypingTime]
  exact ⟨x, typing_current _ _ _ _ _ x, typing_minutes _ _ _ _ _ x⟩

theorem catch_rates (a b c d e f g h : Nat) (x : CheetahCatch a b c d e f g h) : d = 180 ∧ e = 120 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  have hd' : d = 180 := by
    norm_num [ha, hc] at hd
    exact hd
  have he' : e = 120 := by
    norm_num [hb, hc] at he
    exact he
  exact ⟨hd', he'⟩

theorem catch_closing_rate (a b c d e f g h : Nat) (x : CheetahCatch a b c d e f g h) : f = 60 := by
  have hr := catch_rates a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  omega

theorem catch_seconds (a b c d e f g h : Nat) (x : CheetahCatch a b c d e f g h) : h = 7 := by
  have hf := catch_closing_rate a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hx, hg, hh⟩
  norm_num [hf, hg] at hh
  omega

theorem catch_solution : CheetahCatch 60 40 3 180 120 60 420 7 ∧ 180 = 180 ∧ 120 = 120 ∧ 60 = 60 ∧ 7 = 7 := by
  have x : CheetahCatch 60 40 3 180 120 60 420 7 := by norm_num [CheetahCatch]
  have hr := catch_rates _ _ _ _ _ _ _ _ x
  exact ⟨x, hr.1, hr.2, catch_closing_rate _ _ _ _ _ _ _ _ x,
    catch_seconds _ _ _ _ _ _ _ _ x⟩

theorem prizes_top_three (a b c d e f g h i : Nat) (x : WritingPrizes a b c d e f g h i) : e = 470 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [hb, hc, hd] at he
  exact he

theorem prizes_remaining_writers (a b c d e f g h i : Nat) (x : WritingPrizes a b c d e f g h i) : g = 15 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  omega

theorem prizes_remaining_money (a b c d e f g h i : Nat) (x : WritingPrizes a b c d e f g h i) : h = 330 := by
  have he := prizes_top_three a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg, hh, hi⟩
  omega

theorem prizes_each (a b c d e f g h i : Nat) (x : WritingPrizes a b c d e f g h i) : i = 22 := by
  have hg := prizes_remaining_writers a b c d e f g h i x
  have hh := prizes_remaining_money a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hx, hy, hi⟩
  norm_num [hg, hh] at hi
  omega

theorem prizes_solution : WritingPrizes 800 200 150 120 470 18 15 330 22 ∧ 470 = 470 ∧ 15 = 15 ∧ 330 = 330 ∧ 22 = 22 := by
  have x : WritingPrizes 800 200 150 120 470 18 15 330 22 := by norm_num [WritingPrizes]
  exact ⟨x, prizes_top_three _ _ _ _ _ _ _ _ _ x,
    prizes_remaining_writers _ _ _ _ _ _ _ _ _ x, prizes_remaining_money _ _ _ _ _ _ _ _ _ x,
    prizes_each _ _ _ _ _ _ _ _ _ x⟩

theorem cans_collected (a b c d e : Nat) (x : CanCollection a b c d e) : d = 73 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hb, hc] at hd
  exact hd

theorem cans_remaining (a b c d e : Nat) (x : CanCollection a b c d e) : e = 27 := by
  have hd := cans_collected a b c d e x
  rcases x with ⟨ha, hb, hc, hx, he⟩
  omega

theorem cans_solution : CanCollection 100 30 43 73 27 ∧ 73 = 73 ∧ 27 = 27 := by
  have x : CanCollection 100 30 43 73 27 := by norm_num [CanCollection]
  exact ⟨x, cans_collected _ _ _ _ _ x, cans_remaining _ _ _ _ _ x⟩

#print axioms candy_solution
#print axioms typing_solution
#print axioms catch_solution
#print axioms prizes_solution
#print axioms cans_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A16.candy_solution to "work/gsm8k-sprint16-candy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A16.typing_solution to "work/gsm8k-sprint16-typing-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A16.catch_solution to "work/gsm8k-sprint16-catch-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A16.prizes_solution to "work/gsm8k-sprint16-prizes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A16.cans_solution to "work/gsm8k-sprint16-cans-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A16
