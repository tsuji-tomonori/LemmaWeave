import LemmaWeave.Problems.GSM8K.Daily0918AModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0918A
open LemmaWeave.Problems.GSM8K.Daily0918A

theorem house_original_total (a b c d e : Nat) (h : HouseExpansion a b c d e) : c = 12500 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc

theorem house_expansion (a b c d e : Nat) (h : HouseExpansion a b c d e) : e = 3500 := by
  have hc := house_original_total a b c d e h
  rcases h with ⟨ha, hb, hx, hd, he⟩
  omega

theorem house_solution : HouseExpansion 5200 7300 12500 16000 3500 ∧
    12500 = 12500 ∧ 3500 = 3500 := by
  have h : HouseExpansion 5200 7300 12500 16000 3500 := by norm_num [HouseExpansion]
  exact ⟨h, house_original_total _ _ _ _ _ h, house_expansion _ _ _ _ _ h⟩

theorem snacks_goldfish (a b c d e f g : Nat) (h : SnackPacks a b c d e f g) : c = 256 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  exact hc

theorem snacks_total (a b c d e f g : Nat) (h : SnackPacks a b c d e f g) : e = 352 := by
  have hc := snacks_goldfish a b c d e f g h
  rcases h with ⟨ha, hb, hx, hd, he, hf, hg⟩
  norm_num [ha, hc, hd] at he
  exact he

theorem snacks_per_bag (a b c d e f g : Nat) (h : SnackPacks a b c d e f g) : g = 22 := by
  have he := snacks_total a b c d e f g h
  rcases h with ⟨ha, hb, hc, hd, hx, hf, hg⟩
  norm_num [hf, he] at hg
  exact hg

theorem snacks_solution : SnackPacks 64 4 256 32 352 16 22 ∧
    256 = 256 ∧ 352 = 352 ∧ 22 = 22 := by
  have h : SnackPacks 64 4 256 32 352 16 22 := by norm_num [SnackPacks]
  exact ⟨h, snacks_goldfish _ _ _ _ _ _ _ h, snacks_total _ _ _ _ _ _ _ h,
    snacks_per_bag _ _ _ _ _ _ _ h⟩

theorem matches_used (a b c d : Nat) (h : MatchstickModels a b c d) : c = 300 := by
  rcases h with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb] at hc
  exact hc

theorem matches_original (a b c d : Nat) (h : MatchstickModels a b c d) : d = 600 := by
  have hc := matches_used a b c d h
  rcases h with ⟨ha, hb, hx, hd⟩
  norm_num [hc] at hd
  exact hd

theorem matches_solution : MatchstickModels 30 10 300 600 ∧ 300 = 300 ∧ 600 = 600 := by
  have h : MatchstickModels 30 10 300 600 := by norm_num [MatchstickModels]
  exact ⟨h, matches_used _ _ _ _ h, matches_original _ _ _ _ h⟩

theorem basketball_total (a b c d e f g h i j k l : Nat)
    (x : BasketballPay a b c d e f g h i j k l) : f = 150 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  norm_num [ha, hb, hc, hd, he] at hf
  exact hf

theorem basketball_average (a b c d e f g h i j k l : Nat)
    (x : BasketballPay a b c d e f g h i j k l) : h = 30 := by
  have hf := basketball_total a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hc, hd, he, hx, hg, hh, hi, hj, hk, hl⟩
  norm_num [hg, hf] at hh
  exact hh

theorem basketball_pay (a b c d e f g h i j k l : Nat)
    (x : BasketballPay a b c d e f g h i j k l) : l = 10000 := by
  have hh := basketball_average a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hx, hi, hj, hk, hl⟩
  simp [hi, hh, hj] at hl
  exact hl

theorem basketball_solution :
    BasketballPay 30 28 32 34 26 150 5 30 30 10000 8000 10000 ∧
    150 = 150 ∧ 30 = 30 ∧ 10000 = 10000 := by
  have h : BasketballPay 30 28 32 34 26 150 5 30 30 10000 8000 10000 := by
    norm_num [BasketballPay]
  exact ⟨h, basketball_total _ _ _ _ _ _ _ _ _ _ _ _ h,
    basketball_average _ _ _ _ _ _ _ _ _ _ _ _ h,
    basketball_pay _ _ _ _ _ _ _ _ _ _ _ _ h⟩

theorem luggage_current (a b c d e f g h : Nat) (x : LuggageCapacity a b c d e f g h) :
    d = 30 ∧ e = 1500 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at hd
  norm_num [hd, hc] at he
  exact ⟨hd, he⟩

theorem luggage_remaining (a b c d e f g h : Nat) (x : LuggageCapacity a b c d e f g h) :
    g = 4500 := by
  have hde := luggage_current a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  omega

theorem luggage_additional (a b c d e f g h : Nat) (x : LuggageCapacity a b c d e f g h) :
    h = 90 := by
  have hg := luggage_remaining a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hx, hh⟩
  norm_num [hc, hg] at hh
  exact hh

theorem luggage_solution : LuggageCapacity 6 5 50 30 1500 6000 4500 90 ∧
    (30 = 30 ∧ 1500 = 1500) ∧ 4500 = 4500 ∧ 90 = 90 := by
  have h : LuggageCapacity 6 5 50 30 1500 6000 4500 90 := by norm_num [LuggageCapacity]
  exact ⟨h, luggage_current _ _ _ _ _ _ _ _ h, luggage_remaining _ _ _ _ _ _ _ _ h,
    luggage_additional _ _ _ _ _ _ _ _ h⟩

theorem earnings_santo (a b c : Nat) (h : CombinedEarnings a b c) : b = 978 := by
  rcases h with ⟨ha, hb, hc⟩
  norm_num [ha] at hb
  exact hb

theorem earnings_total (a b c : Nat) (h : CombinedEarnings a b c) : c = 2934 := by
  have hb := earnings_santo a b c h
  rcases h with ⟨ha, hx, hc⟩
  norm_num [ha, hb] at hc
  exact hc

theorem earnings_solution : CombinedEarnings 1956 978 2934 ∧ 978 = 978 ∧ 2934 = 2934 := by
  have h : CombinedEarnings 1956 978 2934 := by norm_num [CombinedEarnings]
  exact ⟨h, earnings_santo _ _ _ h, earnings_total _ _ _ h⟩

theorem catches_derek (a b c d : Nat) (h : CatchCounts a b c d) : b = 42 := by
  rcases h with ⟨ha, hb, hc, hd⟩
  omega

theorem catches_third (a b c d : Nat) (h : CatchCounts a b c d) : c = 14 := by
  have hb := catches_derek a b c d h
  rcases h with ⟨ha, hx, hc, hd⟩
  omega

theorem catches_tammy (a b c d : Nat) (h : CatchCounts a b c d) : d = 30 := by
  have hc := catches_third a b c d h
  rcases h with ⟨ha, hb, hx, hd⟩
  omega

theorem catches_solution : CatchCounts 23 42 14 30 ∧ 42 = 42 ∧ 14 = 14 ∧ 30 = 30 := by
  have h : CatchCounts 23 42 14 30 := by norm_num [CatchCounts]
  exact ⟨h, catches_derek _ _ _ _ h, catches_third _ _ _ _ h, catches_tammy _ _ _ _ h⟩

theorem pushup_training_days (a b c d e : Nat) (h : PushupProgress a b c d e) : c = 45 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc

theorem pushup_weeks (a b c d e : Nat) (h : PushupProgress a b c d e) : e = 9 := by
  have hc := pushup_training_days a b c d e h
  rcases h with ⟨ha, hb, hx, hd, he⟩
  norm_num [hd, hc] at he
  exact he

theorem pushup_solution : PushupProgress 3 15 45 5 9 ∧ 45 = 45 ∧ 9 = 9 := by
  have h : PushupProgress 3 15 45 5 9 := by norm_num [PushupProgress]
  exact ⟨h, pushup_training_days _ _ _ _ _ h, pushup_weeks _ _ _ _ _ h⟩

theorem garage_pair (a b c d : Nat) (h : GarageSale a b c d) : c = 12 := by
  rcases h with ⟨ha, hb, hc, hd⟩
  norm_num [ha] at hb
  exact hb

theorem garage_single (a b c d : Nat) (h : GarageSale a b c d) : d = 6 := by
  have hc := garage_pair a b c d h
  rcases h with ⟨ha, hb, hx, hd⟩
  norm_num [hx, hc] at hd
  exact hd

theorem garage_solution : GarageSale 3 2 12 6 ∧ 12 = 12 ∧ 6 = 6 := by
  have h : GarageSale 3 2 12 6 := by norm_num [GarageSale]
  exact ⟨h, garage_pair _ _ _ _ h, garage_single _ _ _ _ h⟩

theorem reading_total (a b c d e f : Nat) (h : ReadingPlan a b c d e f) : c = 280 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb] at hc
  exact hc

theorem reading_days (a b c d e f : Nat) (h : ReadingPlan a b c d e f) : e = 14 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hd] at he
  exact he

theorem reading_daily (a b c d e f : Nat) (h : ReadingPlan a b c d e f) : f = 20 := by
  have hc := reading_total a b c d e f h
  have he := reading_days a b c d e f h
  rcases h with ⟨ha, hb, hx, hd, hy, hf⟩
  norm_num [he, hc] at hf
  exact hf

theorem reading_solution : ReadingPlan 180 100 280 2 14 20 ∧
    280 = 280 ∧ 14 = 14 ∧ 20 = 20 := by
  have h : ReadingPlan 180 100 280 2 14 20 := by norm_num [ReadingPlan]
  exact ⟨h, reading_total _ _ _ _ _ _ h, reading_days _ _ _ _ _ _ h,
    reading_daily _ _ _ _ _ _ h⟩

#print axioms house_solution
#print axioms snacks_solution
#print axioms matches_solution
#print axioms basketball_solution
#print axioms luggage_solution
#print axioms earnings_solution
#print axioms catches_solution
#print axioms pushup_solution
#print axioms garage_solution
#print axioms reading_solution
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918A.house_solution to "work/gsm8k-daily50-house-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918A.snacks_solution to "work/gsm8k-daily50-snacks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918A.matches_solution to "work/gsm8k-daily50-matches-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918A.basketball_solution to "work/gsm8k-daily50-basketball-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918A.luggage_solution to "work/gsm8k-daily50-luggage-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918A.earnings_solution to "work/gsm8k-daily50-earnings-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918A.catches_solution to "work/gsm8k-daily50-catches-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918A.pushup_solution to "work/gsm8k-daily50-pushup-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918A.garage_solution to "work/gsm8k-daily50-garage-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918A.reading_solution to "work/gsm8k-daily50-reading-graph.json"

end LemmaWeave.Tests.GSM8KDaily0918A
