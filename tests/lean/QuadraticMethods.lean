import LemmaWeave.Lemmas.QuadraticMethods
import LemmaWeave.Problems.DNC2026M1.Goals
import Mathlib.Tactic.NormNum
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.QuadraticMethods

open LemmaWeave.Lemmas.QuadraticMethods
open LemmaWeave.Problems.DNC2026M1

/-- A coefficient-normalization bridge from the unchanged original model. -/
theorem quadratic_vertex_form (x : ℝ) :
    Quadratic x = 2 * (x - 2) ^ 2 + (-3) := by
  unfold Quadratic
  calc
    2 * x ^ 2 - 8 * x + 5 = 2 * x ^ 2 - 2 * 2 * 2 * x + 5 := by ring
    _ = 2 * (x - 2) ^ 2 + (5 - 2 * 2 ^ 2) := completing_square 2 2 5 x
    _ = 2 * (x - 2) ^ 2 + (-3) := by norm_num

/-- The complete original goal follows by composing reusable methods:
    complete the square, use square nonnegativity, select the larger endpoint,
    and exhibit the two attaining arguments. This is a second proof of the same
    problem, not an additional collected problem. -/
theorem extrema_by_methods : ExtremaGoal := by
  refine ⟨?_, ?_, ?_⟩
  · intro x hx
    rcases hx with ⟨hl, hu⟩
    rw [quadratic_vertex_form]
    constructor
    · exact vertex_lower_bound 2 2 (-3) x (by norm_num)
    · have bound := upper_bound_at_left_endpoint 2 2 (-3) 0 3 x
        (by norm_num) (by norm_num) hl hu
      norm_num at bound ⊢
      exact bound
  · constructor
    · norm_num [InInterval]
    · rw [quadratic_vertex_form]
      norm_num
  · constructor
    · norm_num [InInterval]
    · rw [quadratic_vertex_form]
      exact vertex_value 2 2 (-3)

#print axioms extrema_by_methods

end LemmaWeave.Tests.QuadraticMethods

#lw_dependencies LemmaWeave.Tests.QuadraticMethods.extrema_by_methods to "work/quadratic-methods-graph.json"
