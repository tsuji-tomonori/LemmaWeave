import LemmaWeave.Problems.DNC2026M2BC.SequenceClosedFormModel
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.DNC2026SequenceClosedFormIndividual

open scoped BigOperators
open LemmaWeave.Problems.DNC2026M2BC.SequenceClosedForm

/-- 公式の上端は `n - 1` であり、`b₁` から `bₙ₋₁` までを足す。 -/
theorem term_as_difference_sum (n : ℕ) :
    sequenceTerm n =
      1 + Finset.sum (Finset.range (n - 1)) (fun k => difference (k + 1)) := by
  rfl

/-- `bₖ = 4k - 1` を `k = 1, ..., m` まで足した値。 -/
theorem difference_sum_value (m : ℕ) :
    Finset.sum (Finset.range m) (fun k => difference (k + 1)) =
      2 * (m : ℤ) ^ 2 + (m : ℤ) := by
  exact difference_sum_closed_form m

/-- `m = n - 1` を代入して整理すると一般項を得る。 -/
theorem quadratic_closed_form (n : ℕ) (hn : 1 ≤ n) :
    sequenceTerm n = 2 * (n : ℤ) ^ 2 - 3 * (n : ℤ) + 2 := by
  rw [term_as_difference_sum n, difference_sum_value]
  have hcast : ((n - 1 : ℕ) : ℤ) = (n : ℤ) - 1 := by
    omega
  rw [hcast]
  ring

theorem individual_solution : ClosedFormGoal := by
  intro n hn
  exact quadratic_closed_form n hn

end LemmaWeave.Tests.DNC2026SequenceClosedFormIndividual

#print axioms LemmaWeave.Tests.DNC2026SequenceClosedFormIndividual.term_as_difference_sum
#print axioms LemmaWeave.Tests.DNC2026SequenceClosedFormIndividual.difference_sum_value
#print axioms LemmaWeave.Tests.DNC2026SequenceClosedFormIndividual.quadratic_closed_form
#print axioms LemmaWeave.Tests.DNC2026SequenceClosedFormIndividual.individual_solution

#lw_dependencies LemmaWeave.Tests.DNC2026SequenceClosedFormIndividual.individual_solution to "work/dnc2026-sequence-closed-form-individual-graph.json"
