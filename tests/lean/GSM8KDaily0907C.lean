import LemmaWeave.Problems.GSM8K.Daily0907CModels
import LemmaWeave.Lemmas.ArithmeticMethods
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0907C
open LemmaWeave.Problems.GSM8K.Daily0907C

theorem credit_repaid (p r : ℚ) (x : CreditBalance p r) : p = 38 := by
  have hp := x.1
  norm_num at hp ⊢
  exact hp
theorem credit_remaining (p r : ℚ) (x : CreditBalance p r) : r = 62 := by
  have hp := credit_repaid p r x
  have hr := x.2
  linarith
theorem credit_exists : CreditBalance 38 62 := by norm_num [CreditBalance]
theorem credit_solution :
    CreditBalance 38 62 ∧ (∀ p r, CreditBalance p r → p = 38) ∧
    (∀ p r, CreditBalance p r → r = 62) :=
  ⟨credit_exists, credit_repaid, credit_remaining⟩

theorem tennis_first (f n t : ℚ) (x : TennisMisses f n t) : f = 60 := by
  have hf := x.1
  norm_num at hf ⊢
  exact hf
theorem tennis_next (f n t : ℚ) (x : TennisMisses f n t) : n = 50 := by
  have hn := x.2.1
  norm_num at hn ⊢
  exact hn
theorem tennis_total (f n t : ℚ) (x : TennisMisses f n t) : t = 110 := by
  have hf := tennis_first f n t x
  have hn := tennis_next f n t x
  have ht := x.2.2
  linarith
theorem tennis_exists : TennisMisses 60 50 110 := by norm_num [TennisMisses]
theorem tennis_solution :
    TennisMisses 60 50 110 ∧ (∀ f n t, TennisMisses f n t → f = 60) ∧
    (∀ f n t, TennisMisses f n t → n = 50) ∧
    (∀ f n t, TennisMisses f n t → t = 110) :=
  ⟨tennis_exists, tennis_first, tennis_next, tennis_total⟩

theorem salt_liters (l m : ℚ) (x : EvaporatedSalt l m) : l = 2 / 5 := by
  have hl := x.1
  norm_num at hl ⊢
  exact hl
theorem salt_milliliters (l m : ℚ) (x : EvaporatedSalt l m) : m = 400 := by
  have hl := salt_liters l m x
  have hm := x.2
  linarith
theorem salt_unit_conversion : (2 / 5 : ℚ) * 1000 = 400 := by norm_num
theorem salt_exists : EvaporatedSalt (2 / 5) 400 := by norm_num [EvaporatedSalt]
theorem salt_solution :
    EvaporatedSalt (2 / 5) 400 ∧
    (∀ l m, EvaporatedSalt l m → l = 2 / 5) ∧
    (∀ l m, EvaporatedSalt l m → m = 400) ∧ (2 / 5 : ℚ) * 1000 = 400 :=
  ⟨salt_exists, salt_liters, salt_milliliters, salt_unit_conversion⟩

theorem files_first_irrelevant (a b c d t : ℚ) (x : ValuableFiles a b c d t) : a = 560 := by
  have ha := x.1
  norm_num at ha ⊢
  exact ha
theorem files_first_valuable (a b c d t : ℚ) (x : ValuableFiles a b c d t) : b = 240 := by
  have ha := files_first_irrelevant a b c d t x
  have hb := x.2.1
  linarith
theorem files_second_irrelevant (a b c d t : ℚ) (x : ValuableFiles a b c d t) : c = 240 := by
  have hc := x.2.2.1
  norm_num at hc ⊢
  exact hc
theorem files_second_valuable (a b c d t : ℚ) (x : ValuableFiles a b c d t) : d = 160 := by
  have hc := files_second_irrelevant a b c d t x
  have hd := x.2.2.2.1
  linarith
theorem files_total (a b c d t : ℚ) (x : ValuableFiles a b c d t) : t = 400 := by
  have hb := files_first_valuable a b c d t x
  have hd := files_second_valuable a b c d t x
  have ht := x.2.2.2.2
  linarith
theorem files_exists : ValuableFiles 560 240 240 160 400 := by norm_num [ValuableFiles]
theorem files_solution :
    ValuableFiles 560 240 240 160 400 ∧
    (∀ a b c d t, ValuableFiles a b c d t → a = 560) ∧
    (∀ a b c d t, ValuableFiles a b c d t → b = 240) ∧
    (∀ a b c d t, ValuableFiles a b c d t → c = 240) ∧
    (∀ a b c d t, ValuableFiles a b c d t → d = 160) ∧
    (∀ a b c d t, ValuableFiles a b c d t → t = 400) :=
  ⟨files_exists, files_first_irrelevant, files_first_valuable,
    files_second_irrelevant, files_second_valuable, files_total⟩

theorem gnomes_first_four (fifth firstFour : ℕ) (x : GardenGnomes firstFour fifth) :
    firstFour = 12 := by
  exact x.1
theorem gnomes_fifth (fifth firstFour : ℕ) (x : GardenGnomes firstFour fifth) : fifth = 8 := by
  have h := gnomes_first_four fifth firstFour x
  have ht := x.2
  omega
theorem gnomes_exists : GardenGnomes 12 8 := by norm_num [GardenGnomes]
theorem gnomes_solution :
    GardenGnomes 12 8 ∧ (∀ fifth firstFour, GardenGnomes firstFour fifth → firstFour = 12) ∧
    (∀ fifth firstFour, GardenGnomes firstFour fifth → fifth = 8) :=
  ⟨gnomes_exists, gnomes_first_four, gnomes_fifth⟩

theorem income_cost_equation (o h n : ℚ) (x : PreviousIncome o h n) :
    (2 / 5) * o = (1 / 4) * (o + 600) := by
  rcases x with ⟨hh, hn, hh'⟩
  norm_num at hh hh' ⊢
  linarith
theorem income_old (o h n : ℚ) (x : PreviousIncome o h n) : o = 1000 := by
  have he := income_cost_equation o h n x
  linarith
theorem income_housing (o h n : ℚ) (x : PreviousIncome o h n) : h = 400 := by
  have ho := income_old o h n x
  have hh := x.1
  norm_num at hh
  linarith
theorem income_new (o h n : ℚ) (x : PreviousIncome o h n) : n = 1600 := by
  have ho := income_old o h n x
  have hn := x.2.1
  linarith
theorem income_exists : PreviousIncome 1000 400 1600 := by norm_num [PreviousIncome]
theorem income_solution :
    PreviousIncome 1000 400 1600 ∧
    (∀ o h n, PreviousIncome o h n → (2 / 5) * o = (1 / 4) * (o + 600)) ∧
    (∀ o h n, PreviousIncome o h n → o = 1000) ∧
    (∀ o h n, PreviousIncome o h n → h = 400) ∧
    (∀ o h n, PreviousIncome o h n → n = 1600) :=
  ⟨income_exists, income_cost_equation, income_old, income_housing, income_new⟩

theorem pizza_total (t b a e u : ℚ) (x : PizzaPieces t b a e u) : t = 16 := by
  have ht := x.1
  norm_num at ht ⊢
  exact ht
theorem pizza_bill_dale (t b a e u : ℚ) (x : PizzaPieces t b a e u) : b = 4 := by
  have hb := x.2.1
  norm_num at hb ⊢
  exact hb
theorem pizza_ann_cate (t b a e u : ℚ) (x : PizzaPieces t b a e u) : a = 6 := by
  have ha := x.2.2.1
  norm_num at ha ⊢
  exact ha
theorem pizza_eaten (t b a e u : ℚ) (x : PizzaPieces t b a e u) : e = 10 := by
  have hb := pizza_bill_dale t b a e u x
  have ha := pizza_ann_cate t b a e u x
  have he := x.2.2.2.1
  linarith
theorem pizza_uneaten (t b a e u : ℚ) (x : PizzaPieces t b a e u) : u = 6 := by
  have ht := pizza_total t b a e u x
  have he := pizza_eaten t b a e u x
  have hu := x.2.2.2.2
  linarith
theorem pizza_exists : PizzaPieces 16 4 6 10 6 := by norm_num [PizzaPieces]
theorem pizza_solution :
    PizzaPieces 16 4 6 10 6 ∧ (∀ t b a e u, PizzaPieces t b a e u → t = 16) ∧
    (∀ t b a e u, PizzaPieces t b a e u → b = 4) ∧
    (∀ t b a e u, PizzaPieces t b a e u → a = 6) ∧
    (∀ t b a e u, PizzaPieces t b a e u → e = 10) ∧
    (∀ t b a e u, PizzaPieces t b a e u → u = 6) :=
  ⟨pizza_exists, pizza_total, pizza_bill_dale, pizza_ann_cate, pizza_eaten, pizza_uneaten⟩

theorem sales_large (l s p c : ℚ) (x : PaintingSales l s p c) : l = 480 := by
  have hl := x.1
  norm_num at hl ⊢
  exact hl
theorem sales_small (l s p c : ℚ) (x : PaintingSales l s p c) : s = 120 := by
  have hs := x.2.1
  norm_num at hs ⊢
  exact hs
theorem sales_previous (l s p c : ℚ) (x : PaintingSales l s p c) : p = 600 := by
  have hl := sales_large l s p c x
  have hs := sales_small l s p c x
  have hp := x.2.2.1
  linarith
theorem sales_current (l s p c : ℚ) (x : PaintingSales l s p c) : c = 1200 := by
  have hp := sales_previous l s p c x
  have hc := x.2.2.2
  linarith
theorem sales_exists : PaintingSales 480 120 600 1200 := by norm_num [PaintingSales]
theorem sales_solution :
    PaintingSales 480 120 600 1200 ∧
    (∀ l s p c, PaintingSales l s p c → l = 480) ∧
    (∀ l s p c, PaintingSales l s p c → s = 120) ∧
    (∀ l s p c, PaintingSales l s p c → p = 600) ∧
    (∀ l s p c, PaintingSales l s p c → c = 1200) :=
  ⟨sales_exists, sales_large, sales_small, sales_previous, sales_current⟩

theorem tunnel_known (k t : ℕ) (x : TunnelDistance k t) : k = 13 := by
  exact x.1
theorem tunnel_third (k t : ℕ) (x : TunnelDistance k t) : t = 10 := by
  have hk := tunnel_known k t x
  have ht := x.2
  omega
theorem tunnel_exists : TunnelDistance 13 10 := by norm_num [TunnelDistance]
theorem tunnel_solution :
    TunnelDistance 13 10 ∧ (∀ k t, TunnelDistance k t → k = 13) ∧
    (∀ k t, TunnelDistance k t → t = 10) :=
  ⟨tunnel_exists, tunnel_known, tunnel_third⟩

theorem ingredients_salt (s t : ℚ) (x : NumericIngredientTotal s t) : s = 8 := by
  have hs := x.1
  norm_num at hs ⊢
  exact hs
theorem ingredients_total (s t : ℚ) (x : NumericIngredientTotal s t) : t = 34 := by
  have hs := ingredients_salt s t x
  have ht := x.2
  linarith
theorem ingredients_exists : NumericIngredientTotal 8 34 := by
  norm_num [NumericIngredientTotal]
theorem ingredients_solution :
    NumericIngredientTotal 8 34 ∧
    (∀ s t, NumericIngredientTotal s t → s = 8) ∧
    (∀ s t, NumericIngredientTotal s t → t = 34) :=
  ⟨ingredients_exists, ingredients_salt, ingredients_total⟩

end LemmaWeave.Tests.GSM8KDaily0907C

#print axioms LemmaWeave.Tests.GSM8KDaily0907C.credit_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907C.tennis_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907C.salt_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907C.files_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907C.gnomes_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907C.income_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907C.pizza_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907C.sales_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907C.tunnel_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907C.ingredients_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907C.credit_solution to "work/gsm8k-daily3-credit-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907C.tennis_solution to "work/gsm8k-daily3-tennis-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907C.salt_solution to "work/gsm8k-daily3-salt-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907C.files_solution to "work/gsm8k-daily3-files-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907C.gnomes_solution to "work/gsm8k-daily3-gnomes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907C.income_solution to "work/gsm8k-daily3-income-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907C.pizza_solution to "work/gsm8k-daily3-pizza-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907C.sales_solution to "work/gsm8k-daily3-sales-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907C.tunnel_solution to "work/gsm8k-daily3-tunnel-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907C.ingredients_solution to "work/gsm8k-daily3-ingredients-graph.json"
