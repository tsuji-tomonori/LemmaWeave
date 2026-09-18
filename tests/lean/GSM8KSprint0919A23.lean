import LemmaWeave.Problems.GSM8K.Sprint0919A23Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A23
open LemmaWeave.Problems.GSM8K.Sprint0919A23

theorem stripes_first (a b c d e f g h i j k l m : Nat)
    (x : HatStripes a b c d e f g h i j k l m) : c = 12 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  norm_num [ha, hb] at hc
  exact hc

theorem stripes_second (a b c d e f g h i j k l m : Nat)
    (x : HatStripes a b c d e f g h i j k l m) : f = 12 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  norm_num [hd, he] at hf
  exact hf

theorem stripes_plain (a b c d e f g h i j k l m : Nat)
    (x : HatStripes a b c d e f g h i j k l m) : i = 0 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  norm_num [hg, hh] at hi
  exact hi

theorem stripes_last (a b c d e f g h i j k l m : Nat)
    (x : HatStripes a b c d e f g h i j k l m) : l = 10 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  norm_num [hj, hk] at hl
  exact hl

theorem stripes_total (a b c d e f g h i j k l m : Nat)
    (x : HatStripes a b c d e f g h i j k l m) : m = 34 := by
  have hc := stripes_first a b c d e f g h i j k l m x
  have hf := stripes_second a b c d e f g h i j k l m x
  have hi := stripes_plain a b c d e f g h i j k l m x
  have hl := stripes_last a b c d e f g h i j k l m x
  rcases x with ⟨ha, hb, hx, hd, he, hy, hg, hh, hz, hj, hk, hw, hm⟩
  norm_num [hc, hf, hi, hl] at hm
  exact hm

theorem stripes_solution :
    HatStripes 4 3 12 3 4 12 6 0 0 2 5 10 34 ∧
    12 = 12 ∧ 12 = 12 ∧ 0 = 0 ∧ 10 = 10 ∧ 34 = 34 := by
  have x : HatStripes 4 3 12 3 4 12 6 0 0 2 5 10 34 := by norm_num [HatStripes]
  exact ⟨x, stripes_first _ _ _ _ _ _ _ _ _ _ _ _ _ x,
    stripes_second _ _ _ _ _ _ _ _ _ _ _ _ _ x,
    stripes_plain _ _ _ _ _ _ _ _ _ _ _ _ _ x,
    stripes_last _ _ _ _ _ _ _ _ _ _ _ _ _ x,
    stripes_total _ _ _ _ _ _ _ _ _ _ _ _ _ x⟩

theorem cakes_total (a b c d e : Nat) (x : Cheesecakes a b c d e) : c = 25 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc

theorem cakes_remaining (a b c d e : Nat) (x : Cheesecakes a b c d e) : e = 18 := by
  have hc := cakes_total a b c d e x
  rcases x with ⟨ha, hb, hx, hd, he⟩
  omega

theorem cakes_solution : Cheesecakes 10 15 25 7 18 ∧ 25 = 25 ∧ 18 = 18 := by
  have x : Cheesecakes 10 15 25 7 18 := by norm_num [Cheesecakes]
  exact ⟨x, cakes_total _ _ _ _ _ x, cakes_remaining _ _ _ _ _ x⟩

theorem keyboard_cleaning (a b c d e f g : Nat) (x : KeyboardHomework a b c d e f g) :
    e = 42 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  norm_num [hc, hd] at he
  exact he

theorem keyboard_total (a b c d e f g : Nat) (x : KeyboardHomework a b c d e f g) :
    g = 52 := by
  have he := keyboard_cleaning a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg⟩
  norm_num [he, hf] at hg
  exact hg

theorem keyboard_solution :
    KeyboardHomework 15 1 14 3 42 10 52 ∧ 42 = 42 ∧ 52 = 52 := by
  have x : KeyboardHomework 15 1 14 3 42 10 52 := by norm_num [KeyboardHomework]
  exact ⟨x, keyboard_cleaning _ _ _ _ _ _ _ x, keyboard_total _ _ _ _ _ _ _ x⟩

theorem age_tony_now (a b c d e : Nat) (x : BrotherAge a b c d e) : c = 12 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  omega

theorem age_tony_future (a b c d e : Nat) (x : BrotherAge a b c d e) : e = 18 := by
  have hc := age_tony_now a b c d e x
  rcases x with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  exact he

theorem age_solution : BrotherAge 24 2 12 6 18 ∧ 12 = 12 ∧ 18 = 18 := by
  have x : BrotherAge 24 2 12 6 18 := by norm_num [BrotherAge]
  exact ⟨x, age_tony_now _ _ _ _ _ x, age_tony_future _ _ _ _ _ x⟩

theorem lotto_cost (a b c d e f g h i j k l m n o p : Nat)
    (x : LottoProfit a b c d e f g h i j k l m n o p) : c = 400 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn, ho, hp⟩
  norm_num [ha, hb] at hc
  exact hc

theorem lotto_winners (a b c d e f g h i j k l m n o p : Nat)
    (x : LottoProfit a b c d e f g h i j k l m n o p) : e = 40 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn, ho, hp⟩
  norm_num [ha, hd] at he
  omega

theorem lotto_five_winners (a b c d e f g h i j k l m n o p : Nat)
    (x : LottoProfit a b c d e f g h i j k l m n o p) : g = 32 := by
  have he := lotto_winners a b c d e f g h i j k l m n o p x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg, hh, hi, hj, hk, hl, hm, hn, ho, hp⟩
  norm_num [he, hf] at hg
  omega

theorem lotto_other_winners (a b c d e f g h i j k l m n o p : Nat)
    (x : LottoProfit a b c d e f g h i j k l m n o p) : l = 7 := by
  have he := lotto_winners a b c d e f g h i j k l m n o p x
  have hg := lotto_five_winners a b c d e f g h i j k l m n o p x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hy, hh, hi, hj, hk, hl, hm, hn, ho, hp⟩
  omega

theorem lotto_revenue (a b c d e f g h i j k l m n o p : Nat)
    (x : LottoProfit a b c d e f g h i j k l m n o p) : o = 5230 := by
  have hg := lotto_five_winners a b c d e f g h i j k l m n o p x
  have hl := lotto_other_winners a b c d e f g h i j k l m n o p x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hx, hh, hi, hj, hk, hy, hm, hn, ho, hp⟩
  norm_num [hg, hh] at hi
  norm_num [hl, hm] at hn
  norm_num [hi, hj, hk, hn] at ho
  exact ho

theorem lotto_profit_amount (a b c d e f g h i j k l m n o p : Nat)
    (x : LottoProfit a b c d e f g h i j k l m n o p) : p = 4830 := by
  have hc := lotto_cost a b c d e f g h i j k l m n o p x
  have ho := lotto_revenue a b c d e f g h i j k l m n o p x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn, hy, hp⟩
  omega

theorem lotto_solution :
    LottoProfit 200 2 400 20 40 80 32 5 160 1 5000 7 10 70 5230 4830 ∧
    400 = 400 ∧ 40 = 40 ∧ 32 = 32 ∧ 7 = 7 ∧ 5230 = 5230 ∧ 4830 = 4830 := by
  have x : LottoProfit 200 2 400 20 40 80 32 5 160 1 5000 7 10 70 5230 4830 := by
    norm_num [LottoProfit]
  exact ⟨x, lotto_cost _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ x,
    lotto_winners _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ x,
    lotto_five_winners _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ x,
    lotto_other_winners _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ x,
    lotto_revenue _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ x,
    lotto_profit_amount _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ x⟩

#print axioms stripes_solution
#print axioms cakes_solution
#print axioms keyboard_solution
#print axioms age_solution
#print axioms lotto_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A23.stripes_solution to "work/gsm8k-sprint23-stripes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A23.cakes_solution to "work/gsm8k-sprint23-cakes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A23.keyboard_solution to "work/gsm8k-sprint23-keyboard-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A23.age_solution to "work/gsm8k-sprint23-age-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A23.lotto_solution to "work/gsm8k-sprint23-lotto-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A23
