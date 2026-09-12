import LemmaWeave.Problems.GSM8K.Daily0912DModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0912D
open LemmaWeave.Problems.GSM8K.Daily0912D

theorem shopping_spent (a b c d e f : ℕ) (x : ShoppingChange a b c d e f) : e = 45 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hb, hc, hd] at he
  exact he
theorem shopping_remaining (a b c d e f : ℕ) (x : ShoppingChange a b c d e f) : f = 50 := by
  have he0 := shopping_spent a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  omega
theorem shopping_solution : ShoppingChange 95 14 25 6 45 50 ∧
    (∀ a b c d e f, ShoppingChange a b c d e f → e = 45) ∧
    (∀ a b c d e f, ShoppingChange a b c d e f → f = 50) :=
  ⟨by norm_num [ShoppingChange], shopping_spent, shopping_remaining⟩

theorem apples_each (a b c d e : ℕ) (x : AppleBags a b c d e) : c = 120 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc
theorem apples_bags (a b c d e : ℕ) (x : AppleBags a b c d e) : e = 10 := by
  have hc0 := apples_each a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hd, hc0] at he
  omega
theorem apples_solution : AppleBags 40 3 120 1200 10 ∧
    (∀ a b c d e, AppleBags a b c d e → c = 120) ∧
    (∀ a b c d e, AppleBags a b c d e → e = 10) :=
  ⟨by norm_num [AppleBags], apples_each, apples_bags⟩

theorem sugar_each (a b c d e : ℚ) (x : SugarRemaining a b c d e) : c = 6 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  linarith
theorem sugar_spilled (a b c d e : ℚ) (x : SugarRemaining a b c d e) : d = 3 := by
  have hc0 := sugar_each a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  linarith
theorem sugar_remaining (a b c d e : ℚ) (x : SugarRemaining a b c d e) : e = 21 := by
  have hd0 := sugar_spilled a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  linarith
theorem sugar_solution : SugarRemaining 24 4 6 3 21 ∧
    (∀ a b c d e, SugarRemaining a b c d e → c = 6) ∧
    (∀ a b c d e, SugarRemaining a b c d e → d = 3) ∧
    (∀ a b c d e, SugarRemaining a b c d e → e = 21) :=
  ⟨by norm_num [SugarRemaining], sugar_each, sugar_spilled, sugar_remaining⟩

theorem crossword_days (a b c d e : ℕ) (x : CrosswordAverage a b c d e) : c = 14 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc
theorem crossword_average (a b c d e : ℕ) (x : CrosswordAverage a b c d e) : e = 75 := by
  have hc0 := crossword_days a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hd, hc0] at he
  omega
theorem crossword_solution : CrosswordAverage 2 7 14 1050 75 ∧
    (∀ a b c d e, CrosswordAverage a b c d e → c = 14) ∧
    (∀ a b c d e, CrosswordAverage a b c d e → e = 75) :=
  ⟨by norm_num [CrosswordAverage], crossword_days, crossword_average⟩

theorem sweets_half (a b c d e : ℕ) (x : TableSweets a b c d e) : b = 11 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem sweets_total (a b c d e : ℕ) (x : TableSweets a b c d e) : a = 22 := by
  have hb0 := sweets_half a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem sweets_solution : TableSweets 22 11 4 15 7 ∧
    (∀ a b c d e, TableSweets a b c d e → b = 11) ∧
    (∀ a b c d e, TableSweets a b c d e → a = 22) :=
  ⟨by norm_num [TableSweets], sweets_half, sweets_total⟩

theorem cookies_daily (a b c d e f g h : ℚ) (x : DogCookies a b c d e f g h) : d = 3 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb, hc] at hd
  exact hd
theorem cookies_total (a b c d e f g h : ℚ) (x : DogCookies a b c d e f g h) : f = 90 := by
  have hd0 := cookies_daily a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hd0, he] at hf
  exact hf
theorem cookies_boxes (a b c d e f g h : ℚ) (x : DogCookies a b c d e f g h) : h = 2 := by
  have hf0 := cookies_total a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hf0, hg] at hh
  linarith
theorem cookies_solution : DogCookies (1/2) (1/2) 2 3 30 90 45 2 ∧
    (∀ a b c d e f g h, DogCookies a b c d e f g h → d = 3) ∧
    (∀ a b c d e f g h, DogCookies a b c d e f g h → f = 90) ∧
    (∀ a b c d e f g h, DogCookies a b c d e f g h → h = 2) :=
  ⟨by norm_num [DogCookies], cookies_daily, cookies_total, cookies_boxes⟩

theorem print_pages (a b c d e f g h i j k l m : ℚ)
    (x : PrintPurchase a b c d e f g h i j k l m) : c = 175 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  norm_num [ha, hb] at hc
  exact hc
theorem print_cost (a b c d e f g h i j k l m : ℚ)
    (x : PrintPurchase a b c d e f g h i j k l m) : e = 35 / 2 := by
  have hc0 := print_pages a b c d e f g h i j k l m x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  norm_num [hc0, hd] at he
  exact he
theorem pen_cost (a b c d e f g h i j k l m : ℚ)
    (x : PrintPurchase a b c d e f g h i j k l m) : h = 21 / 2 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  norm_num [hf, hg] at hh
  exact hh
theorem print_spent (a b c d e f g h i j k l m : ℚ)
    (x : PrintPurchase a b c d e f g h i j k l m) : i = 28 := by
  have he0 := print_cost a b c d e f g h i j k l m x
  have hh0 := pen_cost a b c d e f g h i j k l m x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  norm_num [he0, hh0] at hi
  exact hi
theorem print_paid (a b c d e f g h i j k l m : ℚ)
    (x : PrintPurchase a b c d e f g h i j k l m) : l = 40 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  norm_num [hj, hk] at hl
  exact hl
theorem print_change (a b c d e f g h i j k l m : ℚ)
    (x : PrintPurchase a b c d e f g h i j k l m) : m = 12 := by
  have hi0 := print_spent a b c d e f g h i j k l m x
  have hl0 := print_paid a b c d e f g h i j k l m x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  linarith
theorem print_solution :
    PrintPurchase 7 25 175 (1/10) (35/2) 7 (3/2) (21/2) 28 2 20 40 12 ∧
    (∀ a b c d e f g h i j k l m, PrintPurchase a b c d e f g h i j k l m → c = 175) ∧
    (∀ a b c d e f g h i j k l m, PrintPurchase a b c d e f g h i j k l m → e = 35/2) ∧
    (∀ a b c d e f g h i j k l m, PrintPurchase a b c d e f g h i j k l m → h = 21/2) ∧
    (∀ a b c d e f g h i j k l m, PrintPurchase a b c d e f g h i j k l m → i = 28) ∧
    (∀ a b c d e f g h i j k l m, PrintPurchase a b c d e f g h i j k l m → l = 40) ∧
    (∀ a b c d e f g h i j k l m, PrintPurchase a b c d e f g h i j k l m → m = 12) :=
  ⟨by norm_num [PrintPurchase], print_pages, print_cost, pen_cost,
    print_spent, print_paid, print_change⟩

theorem novels_three (a b c d e : ℕ) (x : NovelSurvey a b c d e) : b = 40 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem novels_two (a b c d e : ℕ) (x : NovelSurvey a b c d e) : c = 84 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem novels_one (a b c d e : ℕ) (x : NovelSurvey a b c d e) : d = 100 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem novels_none (a b c d e : ℕ) (x : NovelSurvey a b c d e) : e = 16 := by
  have hb0 := novels_three a b c d e x
  have hc0 := novels_two a b c d e x
  have hd0 := novels_one a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem novels_solution : NovelSurvey 240 40 84 100 16 ∧
    (∀ a b c d e, NovelSurvey a b c d e → b = 40) ∧
    (∀ a b c d e, NovelSurvey a b c d e → c = 84) ∧
    (∀ a b c d e, NovelSurvey a b c d e → d = 100) ∧
    (∀ a b c d e, NovelSurvey a b c d e → e = 16) :=
  ⟨by norm_num [NovelSurvey], novels_three, novels_two, novels_one, novels_none⟩

theorem wrapping_second (a b c d : ℚ) (x : WrappingPaper a b c d) : b = 3 / 2 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha] at hb
  exact hb
theorem wrapping_third (a b c d : ℚ) (x : WrappingPaper a b c d) : c = 7 / 2 := by
  have hb0 := wrapping_second a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb0] at hc
  exact hc
theorem wrapping_total (a b c d : ℚ) (x : WrappingPaper a b c d) : d = 7 := by
  have hb0 := wrapping_second a b c d x
  have hc0 := wrapping_third a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb0, hc0] at hd
  exact hd
theorem wrapping_solution : WrappingPaper 2 (3/2) (7/2) 7 ∧
    (∀ a b c d, WrappingPaper a b c d → b = 3/2) ∧
    (∀ a b c d, WrappingPaper a b c d → c = 7/2) ∧
    (∀ a b c d, WrappingPaper a b c d → d = 7) :=
  ⟨by norm_num [WrappingPaper], wrapping_second, wrapping_third, wrapping_total⟩

theorem flour_need : 12 * 4 = 48 := by norm_num
theorem flour_candidate : FlourPurchase 5 0 50 50 ∧ 48 ≤ 50 := by
  norm_num [FlourPurchase]
theorem flour_minimal (a b c d : ℕ) (x : FlourPurchase a b c d) (enough : 48 ≤ c) : 50 ≤ d := by
  rcases x with ⟨hc, hd⟩
  omega
theorem flour_solution : 12 * 4 = 48 ∧ FlourPurchase 5 0 50 50 ∧ 48 ≤ 50 ∧
    (∀ a b c d, FlourPurchase a b c d → 48 ≤ c → 50 ≤ d) :=
  ⟨flour_need, flour_candidate.1, flour_candidate.2, flour_minimal⟩

end LemmaWeave.Tests.GSM8KDaily0912D

#print axioms LemmaWeave.Tests.GSM8KDaily0912D.shopping_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912D.apples_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912D.sugar_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912D.crossword_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912D.sweets_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912D.cookies_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912D.print_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912D.novels_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912D.wrapping_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912D.flour_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912D.shopping_solution to "work/gsm8k-daily30-shopping-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912D.apples_solution to "work/gsm8k-daily30-apples-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912D.sugar_solution to "work/gsm8k-daily30-sugar-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912D.crossword_solution to "work/gsm8k-daily30-crossword-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912D.sweets_solution to "work/gsm8k-daily30-sweets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912D.cookies_solution to "work/gsm8k-daily30-cookies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912D.print_solution to "work/gsm8k-daily30-print-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912D.novels_solution to "work/gsm8k-daily30-novels-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912D.wrapping_solution to "work/gsm8k-daily30-wrapping-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912D.flour_solution to "work/gsm8k-daily30-flour-graph.json"
