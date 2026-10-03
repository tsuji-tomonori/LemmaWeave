import LemmaWeave.Problems.GSM8K.Daily0907Models
import LemmaWeave.Lemmas.ArithmeticMethods
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KFirstSteps
open LemmaWeave.Problems.GSM8K LemmaWeave.Problems.GSM8K.Daily0907
open LemmaWeave.Lemmas.ArithmeticMethods

theorem clips_half (a m t : ℕ) (h : ClipsGeneral a m t) : 24 ≤ m ∧ a = 2*m := by
  rcases h with ⟨ha,hm,ht⟩; omega
theorem clips_total (a m t : ℕ) (h : ClipsGeneral a m t) : t = 3*m ∧ 72 ≤ t := by
  have := clips_half a m t h
  have := h.2.2
  omega
theorem clips_range (t : ℕ) : (∃ a m, ClipsGeneral a m t) ↔ ∃ k, 24 ≤ k ∧ t = 3*k := by
  constructor
  · rintro ⟨a,m,h⟩
    exact ⟨m,(clips_half a m t h).1,(clips_total a m t h).1⟩
  · rintro ⟨k,hk,ht⟩
    refine ⟨2*k,k,?_,?_,?_⟩ <;> omega
theorem clips_counterexamples : ClipsGeneral 48 24 72 ∧ ClipsGeneral 96 48 144 ∧ (72 : ℕ) ≠ 144 := by
  norm_num [ClipsGeneral]
theorem clips_conditional (m t : ℕ) (h : ClipsGeneral 48 m t) : m = 24 ∧ t = 72 := by
  have := clips_half 48 m t h
  have := clips_total 48 m t h
  omega
theorem clips_solution :
    (∀ t, (∃ a m, ClipsGeneral a m t) ↔ ∃ k, 24 ≤ k ∧ t = 3*k) ∧
    (ClipsGeneral 48 24 72 ∧ ClipsGeneral 96 48 144 ∧ (72 : ℕ) ≠ 144) ∧
    (∀ m t, ClipsGeneral 48 m t → m = 24 ∧ t = 72) :=
  ⟨clips_range,clips_counterexamples,clips_conditional⟩

theorem earnings_minute : (12 : ℚ)/60 = 1/5 := by norm_num
theorem earnings_pay (pay : ℚ) (h : Earnings pay) : pay = 10 := by
  change pay = (12 / 60 : ℚ) * 50 at h
  rw [earnings_minute] at h
  norm_num at h; exact h
theorem earnings_units : (12/60 : ℚ)*50 = 12*(50/60) := rate_conversion 12 50 60
theorem earnings_exists : Earnings 10 := by norm_num [Earnings]
theorem earnings_solution :
    (∀ pay, Earnings pay → pay = 10) ∧ (12/60 : ℚ)*50 = 12*(50/60) ∧ Earnings 10 :=
  ⟨earnings_pay,earnings_units,earnings_exists⟩

theorem wallet_saved (s g m : ℚ) (h : Wallet s g m) : s = 50 := by
  have := (fraction_from_balance s 100 2 (by norm_num)).mp h.1
  norm_num at this; exact this
theorem wallet_grandparents (s g m : ℚ) (h : Wallet s g m) : g = 30 := by
  have := h.2.1; norm_num at this; exact this
theorem wallet_available (s g m : ℚ) (h : Wallet s g m) : s+15+g = 95 := by
  rw [wallet_saved s g m h, wallet_grandparents s g m h]; norm_num
theorem wallet_missing (s g m : ℚ) (h : Wallet s g m) : m = 5 := by
  have hb := h.2.2.1
  rw [wallet_available s g m h] at hb
  have := (remaining_iff 100 95 m).mp hb
  norm_num at this; exact this
theorem wallet_exists : Wallet 50 30 5 := by norm_num [Wallet]
theorem wallet_solution : (∃ s g m, Wallet s g m) ∧ ∀ s g m, Wallet s g m → m = 5 :=
  ⟨⟨50,30,5,wallet_exists⟩,wallet_missing⟩

theorem reading_today (t r n : ℚ) (h : Reading t r n) : t = 24 := by
  have := h.1; norm_num at this; exact this
theorem reading_read (t r n : ℚ) (h : Reading t r n) : 12+t = 36 := by
  rw [reading_today t r n h]; norm_num
theorem reading_remaining (t r n : ℚ) (h : Reading t r n) : r = 84 := by
  have hb := h.2.1
  rw [reading_read t r n h] at hb
  have := (remaining_iff 120 36 r).mp hb
  norm_num at this; exact this
theorem reading_tomorrow (t r n : ℚ) (h : Reading t r n) : n = 42 := by
  have hn := (fraction_from_balance n r 2 (by norm_num)).mp h.2.2
  rw [reading_remaining t r n h] at hn
  norm_num at hn; exact hn
theorem reading_exists : Reading 24 84 42 := by norm_num [Reading]
theorem reading_solution : (∃ t r n, Reading t r n) ∧ ∀ t r n, Reading t r n → n = 42 :=
  ⟨⟨24,84,42,reading_exists⟩,reading_tomorrow⟩

theorem letters_each_week : (3 : ℚ)*2 = 6 := by norm_num
theorem letters_week : ((3 : ℚ)*2)*2 = 12 := by rw [letters_each_week]; norm_num
theorem letters_period (w t : ℚ) (h : Letters w t) : t = 12*w := by
  change t = ((3 : ℚ)*2*2)*w at h
  rw [letters_week] at h
  exact h
theorem letters_52 (t : ℚ) (h : Letters 52 t) : t = 624 := by
  have := letters_period 52 t h; norm_num at this; exact this
theorem letters_boundary : LetterOccurrences 52 0 624 ∧ LetterOccurrences 52 1 630 ∧ (624 : ℕ) ≠ 630 := by
  norm_num [LetterOccurrences]
theorem letters_exists : Letters 52 624 := by norm_num [Letters]
theorem letters_solution :
    (∀ w t, Letters w t → t = 12*w) ∧ (∀ t, Letters 52 t → t = 624) ∧
    (LetterOccurrences 52 0 624 ∧ LetterOccurrences 52 1 630 ∧ (624 : ℕ) ≠ 630) ∧ Letters 52 624 :=
  ⟨letters_period,letters_52,letters_boundary,letters_exists⟩

end LemmaWeave.Tests.GSM8KFirstSteps

#print axioms LemmaWeave.Tests.GSM8KFirstSteps.clips_solution
#print axioms LemmaWeave.Tests.GSM8KFirstSteps.earnings_solution
#print axioms LemmaWeave.Tests.GSM8KFirstSteps.wallet_solution
#print axioms LemmaWeave.Tests.GSM8KFirstSteps.reading_solution
#print axioms LemmaWeave.Tests.GSM8KFirstSteps.letters_solution
#lw_dependencies LemmaWeave.Tests.GSM8KFirstSteps.clips_solution to "work/gsm8k-first-clips-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KFirstSteps.earnings_solution to "work/gsm8k-first-earnings-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KFirstSteps.wallet_solution to "work/gsm8k-first-wallet-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KFirstSteps.reading_solution to "work/gsm8k-first-reading-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KFirstSteps.letters_solution to "work/gsm8k-first-letters-graph.json"
