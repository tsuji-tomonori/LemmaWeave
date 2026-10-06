import Mathlib.Tactic

namespace LemmaWeave.Problems.DNC2026M2BC.SequenceClosedForm

open scoped BigOperators

/-- 第4問(1)の階差 `bₙ = 4n - 1`。添字は1以上を想定する。 -/
def difference (n : ℕ) : ℤ := 4 * (n : ℤ) - 1

/--
初項 `a₁ = 1` と階差から、公式 `aₙ = a₁ + ∑_{k=1}^{n-1} bₖ` で定めた第n項。
`Finset.range (n - 1)` の添字 `k = 0, ..., n-2` を `k + 1` へずらしている。
-/
def sequenceTerm (n : ℕ) : ℤ :=
  1 + Finset.sum (Finset.range (n - 1)) (fun k => difference (k + 1))

/-- 最初の `m` 個の階差の和は `2m² + m`。 -/
theorem difference_sum_closed_form (m : ℕ) :
    Finset.sum (Finset.range m) (fun k => difference (k + 1)) =
      2 * (m : ℤ) ^ 2 + (m : ℤ) := by
  induction m with
  | zero => simp
  | succ m ih =>
      rw [Finset.sum_range_succ, ih]
      simp only [difference, Nat.cast_add, Nat.cast_one]
      ring

/-- 解答欄カ・キ・ク・ケに対応する一般項。 -/
def ClosedFormGoal : Prop :=
  ∀ n : ℕ, 1 ≤ n →
    sequenceTerm n = 2 * (n : ℤ) ^ 2 - 3 * (n : ℤ) + 2

end LemmaWeave.Problems.DNC2026M2BC.SequenceClosedForm
