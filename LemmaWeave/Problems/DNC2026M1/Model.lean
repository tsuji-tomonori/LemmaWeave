import Mathlib.Data.Real.Sqrt
import Mathlib.Data.Finset.Interval

/- Independently written mathematical models. No original prose, diagrams or answer tables.
   Source: DNC 2026 main Mathematics I, PDF SHA256 recorded in corpus/papers.
   This formalization and its answers are not supplied or endorsed by DNC. -/
namespace LemmaWeave.Problems.DNC2026M1

def Inequalities (a x : ℝ) : Prop :=
  x - Real.sqrt 6 * a + 1 ≥ 0 ∧ (a - 1) * x - 2 * a ^ 2 - a + 3 ≤ 0

def InUniverse (k : ℕ) : Prop := 2 ≤ k ∧ k ≤ 20

def AllowedParameter (a : ℕ) : Prop := 2 ≤ a ∧ a ≤ 9

/-- Original mathematical relation, with an unbounded positive common divisor. -/
def SharesDivisor (k a : ℕ) : Prop := ∃ d : ℕ, 1 < d ∧ d ∣ k ∧ d ∣ a

def InA (a k : ℕ) : Prop := InUniverse k ∧ SharesDivisor k a

def InComplement (a k : ℕ) : Prop := InUniverse k ∧ ¬ InA a k

def ComplementHasNoTwoOrThree (a : ℕ) : Prop :=
  ∀ k : ℕ, InComplement a k → ¬ 2 ∣ k ∧ ¬ 3 ∣ k

def DifferenceIsFive (a b : ℕ) : Prop :=
  ∀ k : ℕ, (InA a k ∧ InComplement b k) ↔ k = 5

def Quadratic (x : ℝ) : ℝ := 2 * x ^ 2 - 8 * x + 5

def InInterval (x : ℝ) : Prop := 0 ≤ x ∧ x ≤ 3

end LemmaWeave.Problems.DNC2026M1
