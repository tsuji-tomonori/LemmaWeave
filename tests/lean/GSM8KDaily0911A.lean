import LemmaWeave.Problems.GSM8K.Daily0911AModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0911A
open LemmaWeave.Problems.GSM8K.Daily0911A

theorem anniversary_current (a b c d e f g h : ℕ) (x : AnniversaryGap a b c d e f g h) : e = 42 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at hc
  omega
theorem anniversary_second (a b c d e f g h : ℕ) (x : AnniversaryGap a b c d e f g h) : g = 24 := by
  have he := anniversary_current a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he', hf, hg, hh⟩
  norm_num [hb, hf] at hg
  omega
theorem anniversary_ago (a b c d e f g h : ℕ) (x : AnniversaryGap a b c d e f g h) : h = 18 := by
  have he := anniversary_current a b c d e f g h x
  have hg := anniversary_second a b c d e f g h x
  simp [AnniversaryGap] at x
  omega
theorem anniversary_exists : AnniversaryGap 4 12 48 6 42 2 24 18 := by norm_num [AnniversaryGap]
theorem anniversary_solution : AnniversaryGap 4 12 48 6 42 2 24 18 ∧
    (∀ a b c d e f g h, AnniversaryGap a b c d e f g h → e = 42) ∧
    (∀ a b c d e f g h, AnniversaryGap a b c d e f g h → g = 24) ∧
    (∀ a b c d e f g h, AnniversaryGap a b c d e f g h → h = 18) :=
  ⟨anniversary_exists, anniversary_current, anniversary_second, anniversary_ago⟩

theorem church_adults (a b c d e f : ℕ) (x : ChurchMembers a b c d e f) : d = 48 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb, hc] at hd
  omega
theorem church_children (a b c d e f : ℕ) (x : ChurchMembers a b c d e f) : e = 72 := by
  have hd := church_adults a b c d e f x
  simp [ChurchMembers] at x
  omega
theorem church_more (a b c d e f : ℕ) (x : ChurchMembers a b c d e f) : f = 24 := by
  have hd := church_adults a b c d e f x
  have he := church_children a b c d e f x
  simp [ChurchMembers] at x
  omega
theorem church_exists : ChurchMembers 120 40 100 48 72 24 := by norm_num [ChurchMembers]
theorem church_solution : ChurchMembers 120 40 100 48 72 24 ∧
    (∀ a b c d e f, ChurchMembers a b c d e f → d = 48) ∧
    (∀ a b c d e f, ChurchMembers a b c d e f → e = 72) ∧
    (∀ a b c d e f, ChurchMembers a b c d e f → f = 24) :=
  ⟨church_exists, church_adults, church_children, church_more⟩

theorem piggy_pattern (a b c d e : ℕ) (x : PiggyBank a b c d e) :
    b = 2 * a ∧ c = 4 * a ∧ d = 8 * a := by
  simp [PiggyBank] at x
  omega
theorem piggy_weighted_total (a b c d e : ℕ) (x : PiggyBank a b c d e) : 15 * a = 450 := by
  have hp := piggy_pattern a b c d e x
  simp [PiggyBank] at x
  omega
theorem piggy_first (a b c d e : ℕ) (x : PiggyBank a b c d e) : a = 30 := by
  have ht := piggy_weighted_total a b c d e x
  omega
theorem piggy_exists : PiggyBank 30 60 120 240 450 := by norm_num [PiggyBank]
theorem piggy_solution : PiggyBank 30 60 120 240 450 ∧
    (∀ a b c d e, PiggyBank a b c d e → b = 2 * a ∧ c = 4 * a ∧ d = 8 * a) ∧
    (∀ a b c d e, PiggyBank a b c d e → 15 * a = 450) ∧
    (∀ a b c d e, PiggyBank a b c d e → a = 30) :=
  ⟨piggy_exists, piggy_pattern, piggy_weighted_total, piggy_first⟩

theorem ages_emile (a b c : ℕ) (x : FutureAges a b c) : b = 48 := by
  simp [FutureAges] at x
  omega
theorem ages_anne (a b c : ℕ) (x : FutureAges a b c) : c = 96 := by
  have hb := ages_emile a b c x
  simp [FutureAges] at x
  omega
theorem ages_exists : FutureAges 8 48 96 := by norm_num [FutureAges]
theorem ages_solution : FutureAges 8 48 96 ∧
    (∀ a b c, FutureAges a b c → b = 48) ∧
    (∀ a b c, FutureAges a b c → c = 96) :=
  ⟨ages_exists, ages_emile, ages_anne⟩

theorem coins_quarters (a b c d e f g h i j : ℕ) (x : CoinValue a b c d e f g h i j) : b = 8 := by
  simp [CoinValue] at x
  omega
theorem coins_dimes (a b c d e f g h i j : ℕ) (x : CoinValue a b c d e f g h i j) : c = 12 := by
  have hb := coins_quarters a b c d e f g h i j x
  simp [CoinValue] at x
  omega
theorem coins_nickel_value (a b c d e f g h i j : ℕ) (x : CoinValue a b c d e f g h i j) : g = 30 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [ha, hd] at hg
  exact hg
theorem coins_quarter_value (a b c d e f g h i j : ℕ) (x : CoinValue a b c d e f g h i j) : h = 200 := by
  have hb := coins_quarters a b c d e f g h i j x
  rcases x with ⟨ha, hb', hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hb, he] at hh
  exact hh
theorem coins_dime_value (a b c d e f g h i j : ℕ) (x : CoinValue a b c d e f g h i j) : i = 120 := by
  have hc := coins_dimes a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc', hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hc, hf] at hi
  exact hi
theorem coins_total (a b c d e f g h i j : ℕ) (x : CoinValue a b c d e f g h i j) : j = 350 := by
  have hg := coins_nickel_value a b c d e f g h i j x
  have hh := coins_quarter_value a b c d e f g h i j x
  have hi := coins_dime_value a b c d e f g h i j x
  simp [CoinValue] at x
  omega
theorem coins_dollars_cents (a b c d e f g h i j : ℕ) (x : CoinValue a b c d e f g h i j) :
    j / 100 = 3 ∧ j % 100 = 50 := by
  have hj := coins_total a b c d e f g h i j x
  norm_num [hj]
theorem coins_exists : CoinValue 6 8 12 5 25 10 30 200 120 350 := by norm_num [CoinValue]
theorem coins_solution : CoinValue 6 8 12 5 25 10 30 200 120 350 ∧
    (∀ a b c d e f g h i j, CoinValue a b c d e f g h i j → b = 8) ∧
    (∀ a b c d e f g h i j, CoinValue a b c d e f g h i j → c = 12) ∧
    (∀ a b c d e f g h i j, CoinValue a b c d e f g h i j → g = 30) ∧
    (∀ a b c d e f g h i j, CoinValue a b c d e f g h i j → h = 200) ∧
    (∀ a b c d e f g h i j, CoinValue a b c d e f g h i j → i = 120) ∧
    (∀ a b c d e f g h i j, CoinValue a b c d e f g h i j → j = 350) ∧
    (∀ a b c d e f g h i j, CoinValue a b c d e f g h i j → j / 100 = 3 ∧ j % 100 = 50) :=
  ⟨coins_exists, coins_quarters, coins_dimes, coins_nickel_value, coins_quarter_value,
    coins_dime_value, coins_total, coins_dollars_cents⟩

theorem hotdogs_remaining (a b c d e f g : ℕ) (x : HotdogPace a b c d e f g) : c = 5 := by
  simp [HotdogPace] at x
  omega
theorem hotdogs_needed (a b c d e f g : ℕ) (x : HotdogPace a b c d e f g) : f = 55 := by
  simp [HotdogPace] at x
  omega
theorem hotdogs_rate (a b c d e f g : ℕ) (x : HotdogPace a b c d e f g) : g = 11 := by
  have hc := hotdogs_remaining a b c d e f g x
  have hf := hotdogs_needed a b c d e f g x
  rcases x with ⟨ha, hb, hc', hd, he, hf', hg⟩
  norm_num [hc, hf] at hg
  omega
theorem hotdogs_minimum (a b c d e f g r : ℕ) (x : HotdogPace a b c d e f g)
    (h : f ≤ r * c) : g ≤ r := by
  have hc := hotdogs_remaining a b c d e f g x
  have hf := hotdogs_needed a b c d e f g x
  have hg := hotdogs_rate a b c d e f g x
  norm_num [hc, hf] at h
  omega
theorem hotdogs_exists : HotdogPace 10 5 5 75 20 55 11 := by norm_num [HotdogPace]
theorem hotdogs_solution : HotdogPace 10 5 5 75 20 55 11 ∧
    (∀ a b c d e f g, HotdogPace a b c d e f g → c = 5) ∧
    (∀ a b c d e f g, HotdogPace a b c d e f g → f = 55) ∧
    (∀ a b c d e f g, HotdogPace a b c d e f g → g = 11) ∧
    (∀ a b c d e f g r, HotdogPace a b c d e f g → f ≤ r * c → g ≤ r) :=
  ⟨hotdogs_exists, hotdogs_remaining, hotdogs_needed, hotdogs_rate, hotdogs_minimum⟩

theorem gas_total_miles (a b c d e f g : ℕ) (x : RoundTripGas a b c d e f g) : d = 1200 := by
  simp [RoundTripGas] at x
  omega
theorem gas_required (a b c d e f g : ℕ) (x : RoundTripGas a b c d e f g) : e = 60 := by
  have hd := gas_total_miles a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd', he, hf, hg⟩
  norm_num [ha, hb, hd] at he
  omega
theorem gas_additional (a b c d e f g : ℕ) (x : RoundTripGas a b c d e f g) : g = 52 := by
  have he := gas_required a b c d e f g x
  simp [RoundTripGas] at x
  omega
theorem gas_exists : RoundTripGas 20 400 600 1200 60 8 52 := by norm_num [RoundTripGas]
theorem gas_solution : RoundTripGas 20 400 600 1200 60 8 52 ∧
    (∀ a b c d e f g, RoundTripGas a b c d e f g → d = 1200) ∧
    (∀ a b c d e f g, RoundTripGas a b c d e f g → e = 60) ∧
    (∀ a b c d e f g, RoundTripGas a b c d e f g → g = 52) :=
  ⟨gas_exists, gas_total_miles, gas_required, gas_additional⟩

theorem jog_daily (a b c d e : ℕ) (x : JogDistance a b c d e) : c = 10 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc
theorem jog_total (a b c d e : ℕ) (x : JogDistance a b c d e) : e = 50 := by
  have hc := jog_daily a b c d e x
  rcases x with ⟨ha, hb, hc', hd, he⟩
  norm_num [hc, hd] at he
  exact he
theorem jog_exists : JogDistance 5 2 10 5 50 := by norm_num [JogDistance]
theorem jog_solution : JogDistance 5 2 10 5 50 ∧
    (∀ a b c d e, JogDistance a b c d e → c = 10) ∧
    (∀ a b c d e, JogDistance a b c d e → e = 50) :=
  ⟨jog_exists, jog_daily, jog_total⟩

theorem reading_remaining (a b c d e : ℕ) (x : ReadingPages a b c d e) : c = 295 := by
  simp [ReadingPages] at x
  omega
theorem reading_daily (a b c d e : ℕ) (x : ReadingPages a b c d e) : e = 59 := by
  have hc := reading_remaining a b c d e x
  rcases x with ⟨ha, hb, hc', hd, he⟩
  norm_num [hc, hd] at he
  omega
theorem reading_exists : ReadingPages 408 113 295 5 59 := by norm_num [ReadingPages]
theorem reading_solution : ReadingPages 408 113 295 5 59 ∧
    (∀ a b c d e, ReadingPages a b c d e → c = 295) ∧
    (∀ a b c d e, ReadingPages a b c d e → e = 59) :=
  ⟨reading_exists, reading_remaining, reading_daily⟩

theorem snacks_andy (a b c d e f g : ℕ) (x : SnackCosts a b c d e f g) : d = 5 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb, hc] at hd
  exact hd
theorem snacks_bob (a b c d e f g : ℕ) (x : SnackCosts a b c d e f g) : g = 5 := by
  have hd := snacks_andy a b c d e f g x
  simp [SnackCosts] at x
  omega
theorem snacks_drink (a b c d e f g : ℕ) (x : SnackCosts a b c d e f g) : f = 2 := by
  have hg := snacks_bob a b c d e f g x
  simp [SnackCosts] at x
  omega
theorem snacks_exists : SnackCosts 1 2 2 5 3 2 5 := by norm_num [SnackCosts]
theorem snacks_solution : SnackCosts 1 2 2 5 3 2 5 ∧
    (∀ a b c d e f g, SnackCosts a b c d e f g → d = 5) ∧
    (∀ a b c d e f g, SnackCosts a b c d e f g → g = 5) ∧
    (∀ a b c d e f g, SnackCosts a b c d e f g → f = 2) :=
  ⟨snacks_exists, snacks_andy, snacks_bob, snacks_drink⟩

end LemmaWeave.Tests.GSM8KDaily0911A

#print axioms LemmaWeave.Tests.GSM8KDaily0911A.anniversary_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911A.church_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911A.piggy_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911A.ages_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911A.coins_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911A.hotdogs_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911A.gas_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911A.jog_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911A.reading_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911A.snacks_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911A.anniversary_solution to "work/gsm8k-daily22-anniversary-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911A.church_solution to "work/gsm8k-daily22-church-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911A.piggy_solution to "work/gsm8k-daily22-piggy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911A.ages_solution to "work/gsm8k-daily22-ages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911A.coins_solution to "work/gsm8k-daily22-coins-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911A.hotdogs_solution to "work/gsm8k-daily22-hotdogs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911A.gas_solution to "work/gsm8k-daily22-gas-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911A.jog_solution to "work/gsm8k-daily22-jog-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911A.reading_solution to "work/gsm8k-daily22-reading-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911A.snacks_solution to "work/gsm8k-daily22-snacks-graph.json"
