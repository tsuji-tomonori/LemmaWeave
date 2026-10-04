import LemmaWeave.Problems.DNC2026M2BC.CubicExtremaModel
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.DNC2026CubicExtremaIndividual

open LemmaWeave.Problems.DNC2026M2BC.CubicDerivative
open LemmaWeave.Problems.DNC2026M2BC.CubicExtrema

/-- `f'(x) = (x - 1)(x - 3)` なので停留点は `1, 3` に限る。 -/
theorem stationary_points (x : ℝ) :
    cubicDerivative x = 0 ↔ x = 1 ∨ x = 3 := by
  constructor
  · intro h
    have hfactor : (x - 1) * (x - 3) = 0 := by
      nlinarith [h]
    rcases mul_eq_zero.mp hfactor with h1 | h3
    · left
      linarith
    · right
      linarith
  · rintro (rfl | rfl) <;> norm_num [cubicDerivative]

/-- `x = 1` での関数値は `k + 4/3`。 -/
theorem maximum_value (k : ℝ) : cubic k 1 = k + 4 / 3 := by
  norm_num [cubic] <;> ring

/-- `[0,2]` では `f(x) - f(1) = (x-1)^2(x-4)/3 ≤ 0`。 -/
theorem maximum_on_neighborhood (k x : ℝ)
    (hx : x ∈ Set.Icc (0 : ℝ) 2) : cubic k x ≤ cubic k 1 := by
  rcases hx with ⟨_, hx2⟩
  have h4 : x - 4 ≤ 0 := by linarith
  have hs : 0 ≤ (x - 1) ^ 2 := sq_nonneg (x - 1)
  have hp : (x - 1) ^ 2 * (x - 4) ≤ 0 :=
    mul_nonpos_of_nonneg_of_nonpos hs h4
  simp only [cubic]
  nlinarith

/-- `x = 3` での関数値は `k`。 -/
theorem minimum_value (k : ℝ) : cubic k 3 = k := by
  norm_num [cubic] <;> ring

/-- `[2,4]` では `f(x) - f(3) = x(x-3)^2/3 ≥ 0`。 -/
theorem minimum_on_neighborhood (k x : ℝ)
    (hx : x ∈ Set.Icc (2 : ℝ) 4) : cubic k 3 ≤ cubic k x := by
  rcases hx with ⟨hx2, _⟩
  have hx0 : 0 ≤ x := by linarith
  have hs : 0 ≤ (x - 3) ^ 2 := sq_nonneg (x - 3)
  have hp : 0 ≤ x * (x - 3) ^ 2 := mul_nonneg hx0 hs
  simp only [cubic]
  nlinarith

theorem individual_solution : LocalExtremaGoal := by
  intro k
  refine ⟨stationary_points, maximum_value k, ?_, minimum_value k, ?_⟩
  · intro x hx
    exact maximum_on_neighborhood k x hx
  · intro x hx
    exact minimum_on_neighborhood k x hx

end LemmaWeave.Tests.DNC2026CubicExtremaIndividual

#print axioms LemmaWeave.Tests.DNC2026CubicExtremaIndividual.stationary_points
#print axioms LemmaWeave.Tests.DNC2026CubicExtremaIndividual.maximum_value
#print axioms LemmaWeave.Tests.DNC2026CubicExtremaIndividual.maximum_on_neighborhood
#print axioms LemmaWeave.Tests.DNC2026CubicExtremaIndividual.minimum_value
#print axioms LemmaWeave.Tests.DNC2026CubicExtremaIndividual.minimum_on_neighborhood
#print axioms LemmaWeave.Tests.DNC2026CubicExtremaIndividual.individual_solution

#lw_dependencies LemmaWeave.Tests.DNC2026CubicExtremaIndividual.individual_solution to "work/dnc2026-cubic-extrema-individual-graph.json"
