import LemmaWeave.Problems.DNC2026M1.ProofExtrema
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.DNC2026ExtremaIndividual

open LemmaWeave.Problems.DNC2026M1

/-- Completing the square exposes the vertex form used for the lower bound. -/
theorem vertex_form (x : ℝ) :
    Quadratic x = 2 * (x - 2) ^ 2 - 3 := by
  unfold Quadratic
  ring

/-- Every point of the stated interval has value at least -3. -/
theorem lower_bound (x : ℝ) (hx : InInterval x) :
    -3 ≤ Quadratic x := by
  rw [vertex_form]
  nlinarith [sq_nonneg (x - 2)]

/-- Every point of the stated interval has value at most 5. -/
theorem upper_bound (x : ℝ) (hx : InInterval x) :
    Quadratic x ≤ 5 := by
  rcases hx with ⟨h0, h3⟩
  unfold Quadratic
  nlinarith [mul_nonneg h0 (show 0 ≤ 4 - x by linarith)]

/-- The upper bound is attained at the left endpoint. -/
theorem maximum_attained :
    InInterval 0 ∧ Quadratic 0 = 5 := by
  norm_num [InInterval, Quadratic]

/-- The lower bound is attained at the vertex x = 2. -/
theorem minimum_attained :
    InInterval 2 ∧ Quadratic 2 = -3 := by
  norm_num [InInterval, Quadratic]

/-- The bounds and both attaining arguments cover every demand of the subproblem. -/
theorem individual_solution : ExtremaGoal := by
  refine ⟨?_, maximum_attained, minimum_attained⟩
  intro x hx
  exact ⟨lower_bound x hx, upper_bound x hx⟩

end LemmaWeave.Tests.DNC2026ExtremaIndividual

#print axioms LemmaWeave.Tests.DNC2026ExtremaIndividual.individual_solution
#lw_dependencies LemmaWeave.Tests.DNC2026ExtremaIndividual.individual_solution to "work/dnc2026-extrema-individual-graph.json"
