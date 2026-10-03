import LemmaWeave.Problems.DNC2026M1.Model

namespace LemmaWeave.Problems.DNC2026M1

/-- All real solutions; both directions are required. -/
def InequalitiesGoal : Prop :=
  ∀ x : ℝ, Inequalities 2 x ↔ 2 * Real.sqrt 6 - 1 ≤ x ∧ x ≤ 7

/-- Four sets, each identified extensionally over all natural numbers. -/
def SetsGoal : Prop :=
  (∀ k : ℕ, InA 3 k ↔ k ∈ ({3, 6, 9, 12, 15, 18} : Finset ℕ)) ∧
  (∀ k : ℕ, InA 4 k ↔ k ∈ ({2, 4, 6, 8, 10, 12, 14, 16, 18, 20} : Finset ℕ)) ∧
  (∀ k : ℕ, (InA 3 k ∧ InA 4 k) ↔ k ∈ ({6, 12, 18} : Finset ℕ)) ∧
  (∀ k : ℕ, (InA 3 k ∧ InComplement 4 k) ↔ k ∈ ({3, 9, 15} : Finset ℕ))

/-- Every admissible a, not only substitution of one answer. -/
def ParameterGoal : Prop :=
  ∀ a : ℕ, AllowedParameter a → (ComplementHasNoTwoOrThree a ↔ a = 6)

/-- Every admissible pair; complement is relative to the stated universe. -/
def PairGoal : Prop :=
  ∀ a b : ℕ, AllowedParameter a → AllowedParameter b →
    (DifferenceIsFive a b ↔ a = 5 ∧ b = 6)

/-- Upper/lower bounds on the entire interval, and both attaining arguments. -/
def ExtremaGoal : Prop :=
  (∀ x : ℝ, InInterval x → (-3 ≤ Quadratic x ∧ Quadratic x ≤ 5)) ∧
  (InInterval 0 ∧ Quadratic 0 = 5) ∧ (InInterval 2 ∧ Quadratic 2 = -3)

end LemmaWeave.Problems.DNC2026M1
