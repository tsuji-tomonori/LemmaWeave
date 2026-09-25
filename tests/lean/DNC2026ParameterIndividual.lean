import LemmaWeave.Problems.DNC2026M1.Goals
import Mathlib.Tactic

namespace LemmaWeave.Tests.DNC2026ParameterIndividual

open LemmaWeave.Problems.DNC2026M1

/-- 条件を満たすパラメータは 2 を約数にもつ。 -/
theorem even_divisor_forced (a : ℕ)
    (h : ComplementHasNoTwoOrThree a) : 2 ∣ a := by
  have h2A : InA a 2 := by
    by_contra hnot
    have houtside : InComplement a 2 := by
      exact ⟨by norm_num [InUniverse], hnot⟩
    exact (h 2 houtside).1 (by norm_num)
  rcases h2A.2 with ⟨d, hd1, hd2, hda⟩
  have hdle : d ≤ 2 := Nat.le_of_dvd (by norm_num) hd2
  have hdeq : d = 2 := by omega
  simpa [hdeq] using hda

/-- 条件を満たすパラメータは 3 を約数にもつ。 -/
theorem three_divisor_forced (a : ℕ)
    (h : ComplementHasNoTwoOrThree a) : 3 ∣ a := by
  have h3A : InA a 3 := by
    by_contra hnot
    have houtside : InComplement a 3 := by
      exact ⟨by norm_num [InUniverse], hnot⟩
    exact (h 3 houtside).2 (by norm_num)
  rcases h3A.2 with ⟨d, hd1, hd3, hda⟩
  have hdle : d ≤ 3 := Nat.le_of_dvd (by norm_num) hd3
  have hdeq : d = 3 := by
    interval_cases d <;> norm_num at hd1 hd3 ⊢
  simpa [hdeq] using hda

/-- 2 以上 9 以下で 2 と 3 の双方を約数にもつ自然数は 6 に限る。 -/
theorem only_candidate_is_six (a : ℕ) (ha : AllowedParameter a)
    (h2 : 2 ∣ a) (h3 : 3 ∣ a) : a = 6 := by
  unfold AllowedParameter at ha
  rcases h2 with ⟨u, hu⟩
  rcases h3 with ⟨v, hv⟩
  omega

/-- a = 6 なら、補集合には 2 の倍数も 3 の倍数も残らない。 -/
theorem six_satisfies_condition : ComplementHasNoTwoOrThree 6 := by
  intro k hk
  constructor
  · intro hk2
    exact hk.2 ⟨hk.1, ⟨2, by norm_num, hk2, by norm_num⟩⟩
  · intro hk3
    exact hk.2 ⟨hk.1, ⟨3, by norm_num, hk3, by norm_num⟩⟩

/-- 原題の全パラメータについて必要条件と十分条件を合わせる。 -/
theorem individual_solution : ParameterGoal := by
  intro a ha
  constructor
  · intro h
    exact only_candidate_is_six a ha
      (even_divisor_forced a h) (three_divisor_forced a h)
  · intro h
    subst a
    exact six_satisfies_condition

end LemmaWeave.Tests.DNC2026ParameterIndividual
