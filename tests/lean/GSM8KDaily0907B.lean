import LemmaWeave.Problems.GSM8K.Daily0907BModels
import LemmaWeave.Lemmas.ArithmeticMethods
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0907B
open LemmaWeave.Problems.GSM8K.Daily0907B
open LemmaWeave.Lemmas.ArithmeticMethods

theorem joy_minutes (m h : ℚ) (x : ReadingRate m h) : m = 300 := by linarith [x.1]
theorem joy_hours (m h : ℚ) (x : ReadingRate m h) : h = 5 := by
  have hm := joy_minutes m h x
  linarith [x.2]
theorem joy_unit_check : (8 / 20 : ℚ) * 300 = 120 := by norm_num
theorem joy_exists : ReadingRate 300 5 := by norm_num [ReadingRate]
theorem joy_solution :
    ReadingRate 300 5 ∧ (∀ m h, ReadingRate m h → m = 300) ∧
    (∀ m h, ReadingRate m h → h = 5) ∧ (8 / 20 : ℚ) * 300 = 120 :=
  ⟨joy_exists, joy_minutes, joy_hours, joy_unit_check⟩

theorem empire_sale (s m u g n : ℚ) (x : Empire s m u g n) : s = 15 := by
  have hs := x.1
  norm_num at hs
  exact hs
theorem empire_margin (s m u g n : ℚ) (x : Empire s m u g n) : m = 9 := by
  rw [x.2.1, empire_sale s m u g n x]; norm_num
theorem empire_units (s m u g n : ℚ) (x : Empire s m u g n) : u = 50000 := by
  have hu := x.2.2.1
  norm_num at hu
  exact hu
theorem empire_gross (s m u g n : ℚ) (x : Empire s m u g n) : g = 450000 := by
  rw [x.2.2.2.1, empire_margin s m u g n x, empire_units s m u g n x]; norm_num
theorem empire_net (s m u g n : ℚ) (x : Empire s m u g n) : n = 448000 := by
  rw [x.2.2.2.2, empire_gross s m u g n x]; norm_num
theorem empire_exists : Empire 15 9 50000 450000 448000 := by norm_num [Empire]
theorem empire_solution :
    Empire 15 9 50000 450000 448000 ∧
    (∀ s m u g n, Empire s m u g n → s = 15) ∧
    (∀ s m u g n, Empire s m u g n → m = 9) ∧
    (∀ s m u g n, Empire s m u g n → u = 50000) ∧
    (∀ s m u g n, Empire s m u g n → g = 450000) ∧
    (∀ s m u g n, Empire s m u g n → n = 448000) :=
  ⟨empire_exists, empire_sale, empire_margin, empire_units, empire_gross, empire_net⟩

theorem partner_part (p m r : ℚ) (x : PartnerShare p m r) : p = 500 := by linarith [x.1]
theorem partner_mike (p m r : ℚ) (x : PartnerShare p m r) : m = 1000 := by
  rw [x.2.1, partner_part p m r x]; norm_num
theorem partner_remaining (p m r : ℚ) (x : PartnerShare p m r) : r = 800 := by
  rw [x.2.2, partner_mike p m r x]; norm_num
theorem partner_exists : PartnerShare 500 1000 800 := by norm_num [PartnerShare]
theorem partner_solution :
    PartnerShare 500 1000 800 ∧
    (∀ p m r, PartnerShare p m r → p = 500) ∧
    (∀ p m r, PartnerShare p m r → m = 1000) ∧
    (∀ p m r, PartnerShare p m r → r = 800) :=
  ⟨partner_exists, partner_part, partner_mike, partner_remaining⟩

theorem hats_pink (p g t : ℕ) (x : Hats p g t) : p = 16 := by omega
theorem hats_green (p g t : ℕ) (x : Hats p g t) : g = 3 := by omega
theorem hats_yellow : (24 : ℕ) = 24 := rfl
theorem hats_total (p g t : ℕ) (x : Hats p g t) : t = 43 := by
  rw [x.2.2, hats_pink p g t x, hats_green p g t x]
theorem hats_exists : Hats 16 3 43 := by norm_num [Hats]
theorem hats_solution :
    Hats 16 3 43 ∧ (∀ p g t, Hats p g t → p = 16) ∧
    (∀ p g t, Hats p g t → g = 3) ∧ (24 : ℕ) = 24 ∧
    (∀ p g t, Hats p g t → t = 43) :=
  ⟨hats_exists, hats_pink, hats_green, hats_yellow, hats_total⟩

theorem commute_formula (wr br t : ℚ) (x : Commute wr br t) :
    t = 8 + 3 * wr + 2 * br := by rw [x.2.2]; ring
theorem commute_lower (wr br t : ℚ) (x : Commute wr br t) : 8 ≤ t := by
  rw [commute_formula wr br t x]
  nlinarith [x.1, x.2.1]
theorem commute_symmetric (t : ℚ) (x : Commute 2 1 t) : t = 16 := by
  rw [commute_formula 2 1 t x]; norm_num
theorem commute_examples : Commute 2 1 16 ∧ Commute 3 2 21 ∧ (16 : ℚ) ≠ 21 := by
  norm_num [Commute]
theorem commute_solution :
    (∀ wr br t, Commute wr br t → t = 8 + 3 * wr + 2 * br) ∧
    (∀ wr br t, Commute wr br t → 8 ≤ t) ∧
    (∀ t, Commute 2 1 t → t = 16) ∧
    (Commute 2 1 16 ∧ Commute 3 2 21 ∧ (16 : ℚ) ≠ 21) :=
  ⟨commute_formula, commute_lower, commute_symmetric, commute_examples⟩

theorem cycling_daily (d w a h : ℚ) (x : Cycling d w a h) : d = 40 := by
  have hd := x.1
  norm_num at hd
  exact hd
theorem cycling_work (d w a h : ℚ) (x : Cycling d w a h) : w = 200 := by
  rw [x.2.1, cycling_daily d w a h x]; norm_num
theorem cycling_all (d w a h : ℚ) (x : Cycling d w a h) : a = 400 := by
  rw [x.2.2.1, cycling_work d w a h x]; norm_num
theorem cycling_hours (d w a h : ℚ) (x : Cycling d w a h) : h = 16 := by
  rw [cycling_all d w a h x] at x; linarith [x.2.2.2]
theorem cycling_unit_check : (400 / 25 : ℚ) = 16 := by norm_num
theorem cycling_exists : Cycling 40 200 400 16 := by norm_num [Cycling]
theorem cycling_solution :
    Cycling 40 200 400 16 ∧
    (∀ d w a h, Cycling d w a h → d = 40) ∧
    (∀ d w a h, Cycling d w a h → w = 200) ∧
    (∀ d w a h, Cycling d w a h → a = 400) ∧
    (∀ d w a h, Cycling d w a h → h = 16) ∧ (400 / 25 : ℚ) = 16 :=
  ⟨cycling_exists, cycling_daily, cycling_work, cycling_all, cycling_hours, cycling_unit_check⟩

theorem stamps_truck (t r a : ℕ) (x : Stamps t r a) : t = 20 := by omega
theorem stamps_rose (t r a : ℕ) (x : Stamps t r a) : r = 7 := by
  have := stamps_truck t r a x; omega
theorem stamps_total (t r a : ℕ) (x : Stamps t r a) : a = 38 := by
  rw [x.2.2, stamps_truck t r a x, stamps_rose t r a x]
theorem stamps_exists : Stamps 20 7 38 := by norm_num [Stamps]
theorem stamps_solution :
    Stamps 20 7 38 ∧ (∀ t r a, Stamps t r a → t = 20) ∧
    (∀ t r a, Stamps t r a → r = 7) ∧ (∀ t r a, Stamps t r a → a = 38) :=
  ⟨stamps_exists, stamps_truck, stamps_rose, stamps_total⟩

theorem food_snakes (s b e : ℕ) (x : FoodChainEquivalent s b e) : s = 30 := by
  have hs := x.1
  norm_num at hs
  exact hs
theorem food_birds (s b e : ℕ) (x : FoodChainEquivalent s b e) : b = 90 := by
  rw [x.2.1, food_snakes s b e x]
theorem food_beetles (s b e : ℕ) (x : FoodChainEquivalent s b e) : e = 1080 := by
  rw [x.2.2, food_birds s b e x]
theorem food_literal_examples : LiteralBeetles 0 0 ∧ LiteralBeetles 10 120 ∧ (0 : ℕ) ≠ 120 := by
  norm_num [LiteralBeetles]
theorem food_exists : FoodChainEquivalent 30 90 1080 := by norm_num [FoodChainEquivalent]
theorem food_solution :
    FoodChainEquivalent 30 90 1080 ∧
    (∀ s b e, FoodChainEquivalent s b e → s = 30) ∧
    (∀ s b e, FoodChainEquivalent s b e → b = 90) ∧
    (∀ s b e, FoodChainEquivalent s b e → e = 1080) ∧
    (LiteralBeetles 0 0 ∧ LiteralBeetles 10 120 ∧ (0 : ℕ) ≠ 120) :=
  ⟨food_exists, food_snakes, food_birds, food_beetles, food_literal_examples⟩

theorem names_jamie (j b s : ℕ) (x : LastNames j b s) : j = 4 := x.1
theorem names_bobbie (j b s : ℕ) (x : LastNames j b s) : b = 10 := by
  have hj := names_jamie j b s x
  have hb := x.2.2.1
  have hl := x.2.1
  omega
theorem names_removed (j b s : ℕ) (x : LastNames j b s) : b - 2 = 8 := by
  rw [x.2.2.1, names_jamie j b s x]
theorem names_samantha (j b s : ℕ) (x : LastNames j b s) : s = 7 := by
  have := names_bobbie j b s x; have := x.2.2.2; omega
theorem names_exists : LastNames 4 10 7 := by norm_num [LastNames]
theorem names_solution :
    LastNames 4 10 7 ∧ (∀ j b s, LastNames j b s → j = 4) ∧
    (∀ j b s, LastNames j b s → b = 10) ∧
    (∀ j b s, LastNames j b s → b - 2 = 8) ∧
    (∀ j b s, LastNames j b s → s = 7) :=
  ⟨names_exists, names_jamie, names_bobbie, names_removed, names_samantha⟩

theorem tops_shorts (s h t e : ℚ) (x : Tops s h t e) : s = 35 := by
  have hs := x.1
  norm_num at hs
  exact hs
theorem tops_shoes (s h t e : ℚ) (x : Tops s h t e) : h = 20 := by
  have hh := x.2.1
  norm_num at hh
  exact hh
theorem tops_total (s h t e : ℚ) (x : Tops s h t e) : t = 20 := by
  rw [tops_shorts s h t e x, tops_shoes s h t e x] at x; linarith [x.2.2.1]
theorem tops_each (s h t e : ℚ) (x : Tops s h t e) : e = 5 := by
  rw [tops_total s h t e x] at x; linarith [x.2.2.2]
theorem tops_exists : Tops 35 20 20 5 := by norm_num [Tops]
theorem tops_solution :
    Tops 35 20 20 5 ∧ (∀ s h t e, Tops s h t e → s = 35) ∧
    (∀ s h t e, Tops s h t e → h = 20) ∧
    (∀ s h t e, Tops s h t e → t = 20) ∧
    (∀ s h t e, Tops s h t e → e = 5) :=
  ⟨tops_exists, tops_shorts, tops_shoes, tops_total, tops_each⟩

end LemmaWeave.Tests.GSM8KDaily0907B

#print axioms LemmaWeave.Tests.GSM8KDaily0907B.joy_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907B.empire_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907B.partner_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907B.hats_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907B.commute_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907B.cycling_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907B.stamps_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907B.food_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907B.names_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907B.tops_solution
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907B.joy_solution to "work/gsm8k-daily2-joy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907B.empire_solution to "work/gsm8k-daily2-empire-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907B.partner_solution to "work/gsm8k-daily2-partner-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907B.hats_solution to "work/gsm8k-daily2-hats-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907B.commute_solution to "work/gsm8k-daily2-commute-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907B.cycling_solution to "work/gsm8k-daily2-cycling-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907B.stamps_solution to "work/gsm8k-daily2-stamps-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907B.food_solution to "work/gsm8k-daily2-food-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907B.names_solution to "work/gsm8k-daily2-names-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907B.tops_solution to "work/gsm8k-daily2-tops-graph.json"
