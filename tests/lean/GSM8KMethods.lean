import LemmaWeave.Lemmas.ArithmeticMethods
import LemmaWeave.Problems.GSM8K.Goals
import Mathlib.Tactic.NormNum
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KMethods
open LemmaWeave.Lemmas.ArithmeticMethods LemmaWeave.Problems.GSM8K

theorem clips_by_methods : ClipsGoal := by
  constructor
  · exact ⟨24, 72, by norm_num [Clips]⟩
  · intro may total h
    rcases h with ⟨hm, ht⟩
    have hm' := (fraction_from_balance may 48 2 (by norm_num)).mp hm
    have he : may = (1 / 2 : ℚ) * 48 := by rw [hm']; norm_num
    have result := scaled_total 48 (1 / 2) may total he ht
    norm_num at result
    exact result

theorem earnings_by_methods : EarningsGoal := by
  constructor
  · exact ⟨10, by norm_num [Earnings]⟩
  · intro pay h
    change pay = (12 / 60 : ℚ) * 50 at h
    rw [rate_conversion] at h
    norm_num at h
    exact h

theorem wallet_by_methods : WalletGoal := by
  constructor
  · exact ⟨50, 30, 5, by norm_num [Wallet]⟩
  · intro saved grandparents missing h
    rcases h with ⟨hs, hg, hb, _⟩
    have hs' := (fraction_from_balance saved 100 2 (by norm_num)).mp hs
    rw [hg] at hb
    have result := (missing_after_gifts 100 saved 15 2 missing).mp hb
    rw [hs'] at result
    norm_num at result
    exact result

theorem reading_by_methods : ReadingGoal := by
  constructor
  · exact ⟨24, 84, 42, by norm_num [Reading]⟩
  · intro today remaining tomorrow h
    rcases h with ⟨ht, hb, hn⟩
    have hn' := (fraction_from_balance tomorrow remaining 2 (by norm_num)).mp hn
    have hn'' : tomorrow = (1 / 2 : ℚ) * remaining := by rw [hn']; ring
    have result := fraction_of_remaining 120 (12 + today) remaining (1 / 2) tomorrow hb hn''
    rw [ht] at result
    norm_num at result
    have hr := remaining_nonnegative 120 (12 + today) remaining hb (by rw [ht]; norm_num)
    exact ⟨hr, result⟩

/-- 一年52週という追加規約を原文の条件に見せかけず、パラメータと条件付き結果を分ける。 -/
theorem letters_by_methods : LettersGoal := by
  refine ⟨?_, ?_, ?_⟩
  · intro weeks
    exact ⟨(3 * 2 * 2) * weeks, rfl⟩
  · intro weeks total h
    change total = (3 * 2 * 2 : ℚ) * weeks at h
    rw [repeated_groups] at h
    calc
      total = 3 * (2 * (2 * weeks)) := h
      _ = 12 * weeks := by ring
  · intro total h
    change total = (3 * 2 * 2 : ℚ) * 52 at h
    rw [repeated_groups] at h
    norm_num at h
    exact h

end LemmaWeave.Tests.GSM8KMethods

#print axioms LemmaWeave.Tests.GSM8KMethods.clips_by_methods
#print axioms LemmaWeave.Tests.GSM8KMethods.earnings_by_methods
#print axioms LemmaWeave.Tests.GSM8KMethods.wallet_by_methods
#print axioms LemmaWeave.Tests.GSM8KMethods.reading_by_methods
#print axioms LemmaWeave.Tests.GSM8KMethods.letters_by_methods

#lw_dependencies LemmaWeave.Tests.GSM8KMethods.clips_by_methods to "work/gsm8k-train-00001-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KMethods.earnings_by_methods to "work/gsm8k-train-00002-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KMethods.wallet_by_methods to "work/gsm8k-train-00003-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KMethods.reading_by_methods to "work/gsm8k-train-00004-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KMethods.letters_by_methods to "work/gsm8k-train-00005-graph.json"
