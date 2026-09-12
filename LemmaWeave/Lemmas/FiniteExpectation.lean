import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma

namespace LemmaWeave.Lemmas.FiniteExpectation
open scoped BigOperators

/-- 有限標本上の重み付き平均。確率として読む際は重み非負・総和1が必要。 -/
def mean {Ω : Type*} (s : Finset Ω) (weight value : Ω → ℚ) : ℚ :=
  ∑ x ∈ s, weight x * value x

/-- 有限個の変数の和の期待値は期待値の和。独立性は不要。 -/
theorem mean_sum {Ω I : Type*} (s : Finset Ω) (t : Finset I)
    (weight : Ω → ℚ) (value : I → Ω → ℚ) :
    mean s weight (fun x => ∑ i ∈ t, value i x) =
      ∑ i ∈ t, mean s weight (value i) := by
  simp only [mean, Finset.mul_sum]
  exact Finset.sum_comm

/-- 各試行の成功指示変数の期待値がpなら、n回の成功回数の期待値はnp。 -/
theorem expected_count {Ω : Type*} (s : Finset Ω) (weight : Ω → ℚ)
    (n : ℕ) (value : Fin n → Ω → ℚ) (p : ℚ)
    (h : ∀ i, mean s weight (value i) = p) :
    mean s weight (fun x => ∑ i : Fin n, value i x) = n * p := by
  rw [mean_sum]
  simp [h]

end LemmaWeave.Lemmas.FiniteExpectation
