import LemmaWeave.Problems.DNC2026M1.Goals
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

namespace LemmaWeave.Problems.DNC2026M1

theorem extrema_solution : ExtremaGoal := by
  refine ⟨?_, ?_, ?_⟩
  · intro x ⟨h₀, h₃⟩
    unfold Quadratic
    constructor
    · nlinarith [sq_nonneg (x - 2)]
    · nlinarith [mul_nonneg h₀ (show 0 ≤ 4 - x by linarith)]
  · norm_num [InInterval, Quadratic]
  · norm_num [InInterval, Quadratic]

end LemmaWeave.Problems.DNC2026M1
