import LemmaWeave.Problems.DNC2026M1.Goals
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

namespace LemmaWeave.Problems.DNC2026M1

theorem inequalities_solution : InequalitiesGoal := by
  intro x
  unfold Inequalities
  constructor
  · intro ⟨h₁, h₂⟩
    constructor <;> nlinarith
  · intro ⟨h₁, h₂⟩
    constructor <;> nlinarith

end LemmaWeave.Problems.DNC2026M1
