import LemmaWeave.Problems.GSM8K.Daily0908EModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0908E
open LemmaWeave.Problems.GSM8K.Daily0908E

theorem pages_total (p d : ℕ) (x : BookWriting p d) : p = 1200 := by
  norm_num [BookWriting] at x
  exact x.1
theorem pages_days (p d : ℕ) (x : BookWriting p d) : d = 60 := by
  have hp := pages_total p d x
  have hd := x.2
  omega
theorem pages_exists : BookWriting 1200 60 := by norm_num [BookWriting]
theorem pages_solution : BookWriting 1200 60 ∧
    (∀ p d, BookWriting p d → p = 1200) ∧
    (∀ p d, BookWriting p d → d = 60) :=
  ⟨pages_exists, pages_total, pages_days⟩

theorem nickels_count (n i r iv rv t : ℕ) (x : NickelExchange n i r iv rv t) : n = 100 := by
  norm_num [NickelExchange] at x
  exact x.1
theorem nickels_iron (n i r iv rv t : ℕ) (x : NickelExchange n i r iv rv t) : i = 20 := by
  have hn := nickels_count n i r iv rv t x
  have hi := x.2.1
  simp [hn] at hi
  exact hi
theorem nickels_regular (n i r iv rv t : ℕ) (x : NickelExchange n i r iv rv t) : r = 80 := by
  have hn := nickels_count n i r iv rv t x
  have hi := nickels_iron n i r iv rv t x
  have hr := x.2.2.1
  omega
theorem nickels_iron_value (n i r iv rv t : ℕ) (x : NickelExchange n i r iv rv t) : iv = 6000 := by
  have hi := nickels_iron n i r iv rv t x
  have hiv := x.2.2.2.1
  omega
theorem nickels_regular_value (n i r iv rv t : ℕ) (x : NickelExchange n i r iv rv t) : rv = 400 := by
  have hr := nickels_regular n i r iv rv t x
  have hrv := x.2.2.2.2.1
  omega
theorem nickels_total (n i r iv rv t : ℕ) (x : NickelExchange n i r iv rv t) : t = 6400 := by
  have hiv := nickels_iron_value n i r iv rv t x
  have hrv := nickels_regular_value n i r iv rv t x
  have ht := x.2.2.2.2.2
  omega
theorem nickels_exists : NickelExchange 100 20 80 6000 400 6400 := by
  norm_num [NickelExchange]
theorem nickels_solution : NickelExchange 100 20 80 6000 400 6400 ∧
    (∀ n i r iv rv t, NickelExchange n i r iv rv t → n = 100) ∧
    (∀ n i r iv rv t, NickelExchange n i r iv rv t → i = 20) ∧
    (∀ n i r iv rv t, NickelExchange n i r iv rv t → r = 80) ∧
    (∀ n i r iv rv t, NickelExchange n i r iv rv t → iv = 6000) ∧
    (∀ n i r iv rv t, NickelExchange n i r iv rv t → rv = 400) ∧
    (∀ n i r iv rv t, NickelExchange n i r iv rv t → t = 6400) :=
  ⟨nickels_exists, nickels_count, nickels_iron, nickels_regular,
    nickels_iron_value, nickels_regular_value, nickels_total⟩

theorem rain_inches (i g r : ℕ) (x : RainSale i g r) : i = 7 := by
  norm_num [RainSale] at x
  exact x.1
theorem rain_gallons (i g r : ℕ) (x : RainSale i g r) : g = 105 := by
  have hi := rain_inches i g r x
  have hg := x.2.1
  omega
theorem rain_revenue (i g r : ℕ) (x : RainSale i g r) : r = 12600 := by
  have hg := rain_gallons i g r x
  have hr := x.2.2
  omega
theorem rain_exists : RainSale 7 105 12600 := by norm_num [RainSale]
theorem rain_solution : RainSale 7 105 12600 ∧
    (∀ i g r, RainSale i g r → i = 7) ∧
    (∀ i g r, RainSale i g r → g = 105) ∧
    (∀ i g r, RainSale i g r → r = 12600) :=
  ⟨rain_exists, rain_inches, rain_gallons, rain_revenue⟩

theorem cart_top (a b m t : ℕ) (x : BookCart a b m t) : a = 24 := by
  norm_num [BookCart] at x
  exact x.1
theorem cart_nonmystery (a b m t : ℕ) (x : BookCart a b m t) : b = 11 := by
  norm_num [BookCart] at x
  exact x.2.1
theorem cart_mystery (a b m t : ℕ) (x : BookCart a b m t) : m = 11 := by
  have hb := cart_nonmystery a b m t x
  have hm := x.2.2.1
  omega
theorem cart_total (a b m t : ℕ) (x : BookCart a b m t) : t = 46 := by
  have ha := cart_top a b m t x
  have hb := cart_nonmystery a b m t x
  have hm := cart_mystery a b m t x
  have ht := x.2.2.2
  omega
theorem cart_exists : BookCart 24 11 11 46 := by norm_num [BookCart]
theorem cart_solution : BookCart 24 11 11 46 ∧
    (∀ a b m t, BookCart a b m t → a = 24) ∧
    (∀ a b m t, BookCart a b m t → b = 11) ∧
    (∀ a b m t, BookCart a b m t → m = 11) ∧
    (∀ a b m t, BookCart a b m t → t = 46) :=
  ⟨cart_exists, cart_top, cart_nonmystery, cart_mystery, cart_total⟩

theorem gumballs_alisha (a b g t : ℕ) (x : GumballPurchase a b g t) : a = 8 := by
  norm_num [GumballPurchase] at x
  exact x.1
theorem gumballs_bobby (a b g t : ℕ) (x : GumballPurchase a b g t) : b = 27 := by
  have ha := gumballs_alisha a b g t x
  have hb := x.2.1
  omega
theorem gumballs_given (a b g t : ℕ) (x : GumballPurchase a b g t) : g = 39 := by
  have ha := gumballs_alisha a b g t x
  have hb := gumballs_bobby a b g t x
  have hg := x.2.2.1
  omega
theorem gumballs_total (a b g t : ℕ) (x : GumballPurchase a b g t) : t = 45 := by
  have hg := gumballs_given a b g t x
  have ht := x.2.2.2
  omega
theorem gumballs_exists : GumballPurchase 8 27 39 45 := by norm_num [GumballPurchase]
theorem gumballs_solution : GumballPurchase 8 27 39 45 ∧
    (∀ a b g t, GumballPurchase a b g t → a = 8) ∧
    (∀ a b g t, GumballPurchase a b g t → b = 27) ∧
    (∀ a b g t, GumballPurchase a b g t → g = 39) ∧
    (∀ a b g t, GumballPurchase a b g t → t = 45) :=
  ⟨gumballs_exists, gumballs_alisha, gumballs_bobby, gumballs_given, gumballs_total⟩

theorem fish_capacity_second : 48 / 2 = 24 := by norm_num
theorem fish_intended : FishScenario 24 12 16 15 3 := by norm_num [FishScenario]
theorem fish_alternative : FishScenario 20 10 16 15 5 := by norm_num [FishScenario]
theorem fish_second_intended (w s f a d : ℕ) (x : FishScenario w s f a d)
    (hw : w = 24) : s = 12 := by
  have hs := x.1
  simp [hw] at hs
  exact hs
theorem fish_first (w s f a d : ℕ) (x : FishScenario w s f a d) : f = 16 := by
  have hf := x.2.1
  norm_num at hf
  exact hf
theorem fish_after_eating (w s f a d : ℕ) (x : FishScenario w s f a d) : a = 15 := by
  have hf := fish_first w s f a d x
  have ha := x.2.2.1
  omega
theorem fish_ambiguity : FishScenario 24 12 16 15 3 ∧
    FishScenario 20 10 16 15 5 ∧ (3 : ℕ) ≠ 5 :=
  ⟨fish_intended, fish_alternative, by omega⟩
theorem fish_solution : (48 / 2 = 24) ∧ FishScenario 24 12 16 15 3 ∧
    FishScenario 20 10 16 15 5 ∧ (3 : ℕ) ≠ 5 :=
  ⟨fish_capacity_second, fish_intended, fish_alternative, fish_ambiguity.2.2⟩

theorem section_fabric (f j s : ℕ) (x : SectionSales f j s) : f = 12 := by
  norm_num [SectionSales] at x
  exact x.1
theorem section_jewelry (f j s : ℕ) (x : SectionSales f j s) : j = 9 := by
  norm_num [SectionSales] at x
  exact x.2.1
theorem section_stationery (f j s : ℕ) (x : SectionSales f j s) : s = 15 := by
  have hf := section_fabric f j s x
  have hj := section_jewelry f j s x
  have hs := x.2.2
  omega
theorem section_exists : SectionSales 12 9 15 := by norm_num [SectionSales]
theorem section_solution : SectionSales 12 9 15 ∧
    (∀ f j s, SectionSales f j s → f = 12) ∧
    (∀ f j s, SectionSales f j s → j = 9) ∧
    (∀ f j s, SectionSales f j s → s = 15) :=
  ⟨section_exists, section_fabric, section_jewelry, section_stationery⟩

theorem makeup_tubes (t p : ℕ) (x : MakeupPeople t p) : t = 12 := by
  norm_num [MakeupPeople] at x
  exact x.1
theorem makeup_people (t p : ℕ) (x : MakeupPeople t p) : p = 36 := by
  have ht := makeup_tubes t p x
  have hp := x.2
  omega
theorem makeup_exists : MakeupPeople 12 36 := by norm_num [MakeupPeople]
theorem makeup_solution : MakeupPeople 12 36 ∧
    (∀ t p, MakeupPeople t p → t = 12) ∧
    (∀ t p, MakeupPeople t p → p = 36) :=
  ⟨makeup_exists, makeup_tubes, makeup_people⟩

theorem oil_wheels (w t : ℕ) (x : BikeOil w t) : w = 20 := by
  norm_num [BikeOil] at x
  exact x.1
theorem oil_total (w t : ℕ) (x : BikeOil w t) : t = 25 := by
  have hw := oil_wheels w t x
  have ht := x.2
  omega
theorem oil_exists : BikeOil 20 25 := by norm_num [BikeOil]
theorem oil_solution : BikeOil 20 25 ∧
    (∀ w t, BikeOil w t → w = 20) ∧
    (∀ w t, BikeOil w t → t = 25) :=
  ⟨oil_exists, oil_wheels, oil_total⟩

theorem typing_gross (g n s : ℕ) (x : TypingStart g n s) : g = 318 := by
  norm_num [TypingStart] at x
  exact x.1
theorem typing_net (g n s : ℕ) (x : TypingStart g n s) : n = 278 := by
  have hg := typing_gross g n s x
  have hn := x.2.1
  omega
theorem typing_start (g n s : ℕ) (x : TypingStart g n s) : s = 258 := by
  have hn := typing_net g n s x
  have hs := x.2.2
  omega
theorem typing_exists : TypingStart 318 278 258 := by norm_num [TypingStart]
theorem typing_solution : TypingStart 318 278 258 ∧
    (∀ g n s, TypingStart g n s → g = 318) ∧
    (∀ g n s, TypingStart g n s → n = 278) ∧
    (∀ g n s, TypingStart g n s → s = 258) :=
  ⟨typing_exists, typing_gross, typing_net, typing_start⟩

end LemmaWeave.Tests.GSM8KDaily0908E

#print axioms LemmaWeave.Tests.GSM8KDaily0908E.pages_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908E.nickels_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908E.rain_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908E.cart_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908E.gumballs_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908E.fish_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908E.section_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908E.makeup_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908E.oil_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908E.typing_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908E.pages_solution to "work/gsm8k-daily10-pages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908E.nickels_solution to "work/gsm8k-daily10-nickels-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908E.rain_solution to "work/gsm8k-daily10-rain-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908E.cart_solution to "work/gsm8k-daily10-cart-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908E.gumballs_solution to "work/gsm8k-daily10-gumballs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908E.fish_solution to "work/gsm8k-daily10-fish-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908E.section_solution to "work/gsm8k-daily10-section-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908E.makeup_solution to "work/gsm8k-daily10-makeup-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908E.oil_solution to "work/gsm8k-daily10-oil-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908E.typing_solution to "work/gsm8k-daily10-typing-graph.json"
