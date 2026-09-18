import LemmaWeave.Problems.GSM8K.Daily0917EModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0917E
open LemmaWeave.Problems.GSM8K.Daily0917E

theorem dance_after_quit (a b c d e : Nat) (h : DanceTeam a b c d e) : c = 17 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  omega

theorem dance_current (a b c d e : Nat) (h : DanceTeam a b c d e) : e = 30 := by
  have hc := dance_after_quit a b c d e h
  rcases h with ⟨ha, hb, hx, hd, he⟩
  omega

theorem dance_solution : DanceTeam 25 8 17 13 30 ∧ 17 = 17 ∧ 30 = 30 := by
  have h : DanceTeam 25 8 17 13 30 := by norm_num [DanceTeam]
  exact ⟨h, dance_after_quit _ _ _ _ _ h, dance_current _ _ _ _ _ h⟩

theorem pay_daily_hours (a b c d e : Nat) (h : DailyPay a b c d e) : c = 7 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  omega

theorem pay_each_day (a b c d e : Nat) (h : DailyPay a b c d e) : e = 63 := by
  have hc := pay_daily_hours a b c d e h
  rcases h with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  exact he

theorem pay_solution : DailyPay 35 5 7 9 63 ∧ 7 = 7 ∧ 63 = 63 := by
  have h : DailyPay 35 5 7 9 63 := by norm_num [DailyPay]
  exact ⟨h, pay_daily_hours _ _ _ _ _ h, pay_each_day _ _ _ _ _ h⟩

theorem rain_daily_totals (a b c d e f g h : ℚ) (x : RainAverages a b c d e f g h) :
    a = 3 ∧ b = 6 ∧ d = 1 ∧ e = 10 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num at ha
  norm_num [ha] at hb
  norm_num [ha, hb, hc, hd] at he
  exact ⟨ha, hb, hd, he⟩

theorem rain_total (a b c d e f g h : ℚ) (x : RainAverages a b c d e f g h) : f = 20 := by
  have habde := rain_daily_totals a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [habde.1, habde.2.1, hc, habde.2.2.1, habde.2.2.2] at hf
  exact hf

theorem rain_averages (a b c d e f g h : ℚ) (x : RainAverages a b c d e f g h) :
    g = 4 ∧ h = 20 / 7 := by
  have hf := rain_total a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hx, hg, hh⟩
  norm_num [hf] at hg hh
  exact ⟨hg, hh⟩

theorem rain_solution :
    RainAverages 3 6 0 1 10 20 4 (20 / 7) ∧
    ((3 : ℚ) = 3 ∧ (6 : ℚ) = 6 ∧ (1 : ℚ) = 1 ∧ (10 : ℚ) = 10) ∧
    (20 : ℚ) = 20 ∧ ((4 : ℚ) = 4 ∧ (20 / 7 : ℚ) = 20 / 7) ∧
    (4 : ℚ) ≠ 20 / 7 := by
  have x : RainAverages 3 6 0 1 10 20 4 (20 / 7) := by norm_num [RainAverages]
  exact ⟨x, rain_daily_totals _ _ _ _ _ _ _ _ x, rain_total _ _ _ _ _ _ _ _ x,
    rain_averages _ _ _ _ _ _ _ _ x, by norm_num⟩

theorem pineapple_cost_and_rings (a b c d e f g h i : Nat)
    (x : PineappleLiteral a b c d e f g h i) : d = 18 ∧ e = 72 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [ha, hb] at hd
  norm_num [ha, hc] at he
  exact ⟨hd, he⟩

theorem pineapple_literal_profit (a b c d e f g h i : Nat)
    (x : PineappleLiteral a b c d e f g h i) : h = 20 ∧ i = 2 := by
  have hde := pineapple_cost_and_rings a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [hf, hg] at hh
  omega

theorem pineapple_bundle_profit (a b c d e f g h i j : Nat)
    (x : PineappleBundles a b c d e f g h i j) : g = 18 ∧ i = 90 ∧ j = 72 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [ha, hb] at hd
  norm_num [ha, hc] at he
  norm_num [hf, he] at hg
  norm_num [hg, hh] at hi
  omega

theorem pineapple_solution :
    PineappleLiteral 6 3 12 18 72 4 5 20 2 ∧
    PineappleBundles 6 3 12 18 72 4 18 5 90 72 ∧
    ((18 = 18 ∧ 72 = 72) ∧ (20 = 20 ∧ 2 = 2)) ∧
    (18 = 18 ∧ 90 = 90 ∧ 72 = 72) ∧ 2 ≠ 72 := by
  have hl : PineappleLiteral 6 3 12 18 72 4 5 20 2 := by norm_num [PineappleLiteral]
  have hb : PineappleBundles 6 3 12 18 72 4 18 5 90 72 := by norm_num [PineappleBundles]
  exact ⟨hl, hb, ⟨pineapple_cost_and_rings _ _ _ _ _ _ _ _ _ hl,
    pineapple_literal_profit _ _ _ _ _ _ _ _ _ hl⟩,
    pineapple_bundle_profit _ _ _ _ _ _ _ _ _ _ hb, by norm_num⟩

theorem boutique_sticker (a b c d e f g h i : Nat)
    (x : BoutiqueDiscount a b c d e f g h i) : d = 700 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [ha, hb, hc] at hd
  omega

theorem boutique_payment (a b c d e f g h i : Nat)
    (x : BoutiqueDiscount a b c d e f g h i) : g = 105 ∧ h = 595 := by
  have hd := boutique_sticker a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hx, he, hf, hg, hh, hi, hj⟩
  norm_num [hf, hg, hd] at hh
  omega

theorem boutique_shortfall (a b c d e f g h i : Nat)
    (x : BoutiqueDiscount a b c d e f g h i) : i = 95 := by
  have hi := boutique_payment a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hx, hj⟩
  omega

theorem boutique_solution : BoutiqueDiscount 500 2 5 700 15 100 105 595 95 ∧
    700 = 700 ∧ (105 = 105 ∧ 595 = 595) ∧ 95 = 95 := by
  have x : BoutiqueDiscount 500 2 5 700 15 100 105 595 95 := by
    norm_num [BoutiqueDiscount]
  exact ⟨x, boutique_sticker _ _ _ _ _ _ _ _ _ x,
    boutique_payment _ _ _ _ _ _ _ _ _ x, boutique_shortfall _ _ _ _ _ _ _ _ _ x⟩

theorem books_revenues (a b c d e f g : Nat) (h : BookEarnings a b c d e f g) :
    e = 104 ∧ f = 92 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hc] at he
  norm_num [hb, hd] at hf
  exact ⟨he, hf⟩

theorem books_difference (a b c d e f g : Nat) (h : BookEarnings a b c d e f g) : g = 12 := by
  have hef := books_revenues a b c d e f g h
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega

theorem books_solution : BookEarnings 8 23 13 4 104 92 12 ∧
    (104 = 104 ∧ 92 = 92) ∧ 12 = 12 := by
  have h : BookEarnings 8 23 13 4 104 92 12 := by norm_num [BookEarnings]
  exact ⟨h, books_revenues _ _ _ _ _ _ _ h, books_difference _ _ _ _ _ _ _ h⟩

theorem triangle_known_sum (a b c d e : Nat) (h : TriangleSide a b c d e) : d = 90 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  norm_num [hb, hc] at hd
  exact hd

theorem triangle_third_and_valid (a b c d e : Nat) (h : TriangleSide a b c d e) :
    e = 70 ∧ e < d := by
  have hd := triangle_known_sum a b c d e h
  rcases h with ⟨ha, hb, hc, hx, he⟩
  omega

theorem triangle_solution : TriangleSide 160 40 50 90 70 ∧ 90 = 90 ∧
    (70 = 70 ∧ 70 < 90) := by
  have h : TriangleSide 160 40 50 90 70 := by norm_num [TriangleSide]
  exact ⟨h, triangle_known_sum _ _ _ _ _ h, triangle_third_and_valid _ _ _ _ _ h⟩

theorem errands_total (a b c d e f : Nat) (h : ErrandBlocks a b c d e f) : d = 25 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb, hc] at hd
  exact hd

theorem errands_remaining (a b c d e f : Nat) (h : ErrandBlocks a b c d e f) : f = 20 := by
  have hd := errands_total a b c d e f h
  rcases h with ⟨ha, hb, hc, hx, he, hf⟩
  omega

theorem errands_solution : ErrandBlocks 11 6 8 25 5 20 ∧ 25 = 25 ∧ 20 = 20 := by
  have h : ErrandBlocks 11 6 8 25 5 20 := by norm_num [ErrandBlocks]
  exact ⟨h, errands_total _ _ _ _ _ _ h, errands_remaining _ _ _ _ _ _ h⟩

theorem judges_groups (a b c d e f g : Nat) (h : JudgeAges a b c d e f g) :
    e = 4 ∧ f = 24 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb, hd] at he
  norm_num [ha, hc, hd] at hf
  omega

theorem judges_over (a b c d e f g : Nat) (h : JudgeAges a b c d e f g) : g = 12 := by
  have hef := judges_groups a b c d e f g h
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega

theorem judges_solution : JudgeAges 40 10 60 100 4 24 12 ∧
    (4 = 4 ∧ 24 = 24) ∧ 12 = 12 := by
  have h : JudgeAges 40 10 60 100 4 24 12 := by norm_num [JudgeAges]
  exact ⟨h, judges_groups _ _ _ _ _ _ _ h, judges_over _ _ _ _ _ _ _ h⟩

theorem party_contributions (a b c d e : Nat) (h : PartyExpenses a b c d e) : c = 5000 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc

theorem party_expenses (a b c d e : Nat) (h : PartyExpenses a b c d e) : e = 4500 := by
  have hc := party_contributions a b c d e h
  rcases h with ⟨ha, hb, hx, hd, he⟩
  omega

theorem party_solution : PartyExpenses 50 100 5000 500 4500 ∧
    5000 = 5000 ∧ 4500 = 4500 := by
  have h : PartyExpenses 50 100 5000 500 4500 := by norm_num [PartyExpenses]
  exact ⟨h, party_contributions _ _ _ _ _ h, party_expenses _ _ _ _ _ h⟩

#print axioms dance_solution
#print axioms pay_solution
#print axioms rain_solution
#print axioms pineapple_solution
#print axioms boutique_solution
#print axioms books_solution
#print axioms triangle_solution
#print axioms errands_solution
#print axioms judges_solution
#print axioms party_solution
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917E.dance_solution to "work/gsm8k-daily49-dance-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917E.pay_solution to "work/gsm8k-daily49-pay-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917E.rain_solution to "work/gsm8k-daily49-rain-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917E.pineapple_solution to "work/gsm8k-daily49-pineapple-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917E.boutique_solution to "work/gsm8k-daily49-boutique-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917E.books_solution to "work/gsm8k-daily49-books-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917E.triangle_solution to "work/gsm8k-daily49-triangle-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917E.errands_solution to "work/gsm8k-daily49-errands-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917E.judges_solution to "work/gsm8k-daily49-judges-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917E.party_solution to "work/gsm8k-daily49-party-graph.json"

end LemmaWeave.Tests.GSM8KDaily0917E
