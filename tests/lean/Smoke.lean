import Mathlib.Data.Nat.Basic

namespace LemmaWeave.Tests

-- Synthetic infrastructure test. Never counted as an entrance-exam problem.
def IdentityGoal : Prop := ∀ n : ℕ, n + 0 = n

theorem identityGoal : IdentityGoal := by
  intro n
  exact Nat.add_zero n

#print axioms identityGoal

end LemmaWeave.Tests
