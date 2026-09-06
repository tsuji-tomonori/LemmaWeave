import LemmaWeave.Problems.GSM8K.Daily0907Models
import LemmaWeave.Lemmas.FiniteExpectation
import LemmaWeave.Lemmas.ArithmeticMethods
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0907
open LemmaWeave.Problems.GSM8K.Daily0907
open LemmaWeave.Lemmas.ArithmeticMethods LemmaWeave.Lemmas.FiniteExpectation
open scoped BigOperators

theorem ships_second (a b c : ℕ) (h : Ships a b c) : b = 2*a := h.1
theorem ships_third (a b c : ℕ) (h : Ships a b c) : c = 4*a := by
  rw [h.2.1, ships_second a b c h]; omega
theorem ships_balance (a b c : ℕ) (h : Ships a b c) : 7*a = 847 := by
  have hb := ships_second a b c h
  have hc := ships_third a b c h
  have ht := h.2.2
  omega
theorem ships_first (a b c : ℕ) (h : Ships a b c) : a = 121 := by
  have := ships_balance a b c h; omega
theorem ships_exists : Ships 121 242 484 := by norm_num [Ships]
theorem ships_solution : (∃ a b c, Ships a b c) ∧ ∀ a b c, Ships a b c → a = 121 :=
  ⟨⟨121,242,484,ships_exists⟩, ships_first⟩

theorem shoes_allowance (a m s d : ℕ) (h : Shoes a m s d) : a = 15 := h.1
theorem shoes_mowing (a m s d : ℕ) (h : Shoes a m s d) : m = 60 := h.2.1
theorem shoes_saved (a m s d : ℕ) (h : Shoes a m s d) : a+m+s = 110 := h.2.2.2
theorem shoes_shoveling (a m s d : ℕ) (h : Shoes a m s d) : s = 35 := by
  have := shoes_saved a m s d h
  have := shoes_allowance a m s d h
  have := shoes_mowing a m s d h
  omega
theorem shoes_drives (a m s d : ℕ) (h : Shoes a m s d) : d = 5 := by
  have := shoes_shoveling a m s d h
  have := h.2.2.1
  omega
theorem shoes_exists : Shoes 15 60 35 5 := by norm_num [Shoes]
theorem shoes_solution : (∃ a m s d, Shoes a m s d) ∧ ∀ a m s d, Shoes a m s d → d = 5 :=
  ⟨⟨15,60,35,5,shoes_exists⟩, shoes_drives⟩

theorem trees_half (h c t : ℕ) (hp : Trees h c t) : h = 30 := by have := hp.1; omega
theorem trees_coconut (h c t : ℕ) (hp : Trees h c t) : c = 25 := by
  have := trees_half h c t hp; have := hp.2.1; omega
theorem trees_total (h c t : ℕ) (hp : Trees h c t) : t = 85 := by
  rw [hp.2.2, trees_coconut h c t hp]
theorem trees_exists : Trees 30 25 85 := by norm_num [Trees]
theorem trees_solution : (∃ h c t, Trees h c t) ∧ ∀ h c t, Trees h c t → t = 85 :=
  ⟨⟨30,25,85,trees_exists⟩, trees_total⟩

theorem cheese_cream (c m t : ℚ) (h : Cheese c m t) : c = 5 := by
  have hc : c*2 = 10 := by linarith [h.1]
  have := (fraction_from_balance c 10 2 (by norm_num)).mp hc
  norm_num at this; exact this
theorem cheese_cold (c m t : ℚ) (h : Cheese c m t) : m = 20 := by
  have := h.2.1; norm_num at this; exact this
theorem cheese_total (c m t : ℚ) (h : Cheese c m t) : t = 35 := by
  rw [h.2.2, cheese_cream c m t h, cheese_cold c m t h]; norm_num
theorem cheese_exists : Cheese 5 20 35 := by norm_num [Cheese]
theorem cheese_solution : (∃ c m t, Cheese c m t) ∧ ∀ c m t, Cheese c m t → t = 35 :=
  ⟨⟨5,20,35,cheese_exists⟩, cheese_total⟩

theorem cards_deck : deck.card = 36 := by decide
theorem cards_favorable : favorable.card = 6 := by decide
theorem cards_probability : (favorable.card : ℚ) / deck.card = 1/6 := by
  rw [cards_deck, cards_favorable]; norm_num
/-- 原題の公平な復元抽出を各回の周辺期待値として与える。全試行列の列挙ではない。 -/
theorem cards_expectation {Ω : Type*} (s : Finset Ω) (w : Ω → ℚ)
    (v : Fin 36 → Ω → ℚ)
    (hm : ∀ i, mean s w (v i) = (favorable.card : ℚ) / deck.card) :
    mean s w (fun x => ∑ i : Fin 36, v i x) = 6 := by
  have hp : ∀ i, mean s w (v i) = 1/6 := by intro i; rw [hm i, cards_probability]
  have he := expected_count s w 36 v (1/6) hp
  norm_num at he
  exact he
theorem cards_indicator_mean :
    mean deck (fun _ => (1/36 : ℚ)) (fun c => if c ∈ favorable then 1 else 0) = 1/6 := by
  decide
/-- 実現可能な有限確率モデル。線形性には独立性不要なので共通カードのモデルでも成立。 -/
theorem cards_witness :
    (∀ c ∈ deck, (0 : ℚ) ≤ 1/36) ∧
    (∑ c ∈ deck, (1/36 : ℚ)) = 1 ∧
    mean deck (fun _ => (1/36 : ℚ))
      (fun c => ∑ _i : Fin 36, if c ∈ favorable then (1 : ℚ) else 0) = 6 := by
  refine ⟨by intros; norm_num, ?_, ?_⟩
  · simp [cards_deck]; norm_num
  · apply cards_expectation
    intro i
    rw [cards_probability]
    exact cards_indicator_mean
theorem cards_solution :
    (favorable.card : ℚ) / deck.card = 1/6 ∧
    (∀ (Ω : Type) (s : Finset Ω) (w : Ω → ℚ) (v : Fin 36 → Ω → ℚ),
      (∀ i, mean s w (v i) = (favorable.card : ℚ) / deck.card) →
      mean s w (fun x => ∑ i : Fin 36, v i x) = 6) ∧
    ((∀ c ∈ deck, (0 : ℚ) ≤ 1/36) ∧ (∑ c ∈ deck, (1/36 : ℚ)) = 1 ∧
      mean deck (fun _ => (1/36 : ℚ))
        (fun c => ∑ _i : Fin 36, if c ∈ favorable then (1 : ℚ) else 0) = 6) :=
  ⟨cards_probability, fun _ s w v => cards_expectation s w v, cards_witness⟩

end LemmaWeave.Tests.GSM8KDaily0907

#print axioms LemmaWeave.Tests.GSM8KDaily0907.ships_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907.shoes_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907.trees_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907.cheese_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907.cards_solution
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907.ships_solution to "work/gsm8k-daily-ships-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907.shoes_solution to "work/gsm8k-daily-shoes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907.trees_solution to "work/gsm8k-daily-trees-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907.cheese_solution to "work/gsm8k-daily-cheese-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907.cards_solution to "work/gsm8k-daily-cards-graph.json"
