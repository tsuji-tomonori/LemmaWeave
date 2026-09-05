import LemmaWeave.Problems.DNC2026M1.Goals
import LemmaWeave.Lemmas.CommonDivisor
import Mathlib.Tactic

namespace LemmaWeave.Problems.DNC2026M1

/-- Computational representation; equivalence is proved below. -/
def FiniteA (a k : ℕ) : Prop :=
  k ∈ Finset.Icc 2 20 ∧ ∃ d ∈ Finset.Icc 2 a, d ∣ k ∧ d ∣ a

instance (a k : ℕ) : Decidable (FiniteA a k) := inferInstanceAs
  (Decidable (k ∈ Finset.Icc 2 20 ∧ ∃ d ∈ Finset.Icc 2 a, d ∣ k ∧ d ∣ a))

theorem inA_iff_finite (a k : ℕ) (ha : 0 < a) : InA a k ↔ FiniteA a k := by
  unfold InA InUniverse SharesDivisor FiniteA
  rw [LemmaWeave.Lemmas.commonDivisor_iff_bounded k a ha, Finset.mem_Icc]

def FiniteComplement (a k : ℕ) : Prop := k ∈ Finset.Icc 2 20 ∧ ¬ FiniteA a k
instance (a k : ℕ) : Decidable (FiniteComplement a k) := inferInstanceAs
  (Decidable (k ∈ Finset.Icc 2 20 ∧ ¬ FiniteA a k))

theorem complement_iff_finite (a k : ℕ) (ha : 0 < a) :
    InComplement a k ↔ FiniteComplement a k := by
  unfold InComplement InUniverse FiniteComplement
  rw [inA_iff_finite a k ha, Finset.mem_Icc]

/-- Extending a finite table is legitimate because both predicates vanish outside U. -/
theorem lift_finite_table (P Q : ℕ → Prop)
    (hp : ∀ k, P k → InUniverse k) (hq : ∀ k, Q k → InUniverse k)
    (h : ∀ k : Fin 21, P k ↔ Q k) : ∀ k : ℕ, P k ↔ Q k := by
  intro k
  by_cases hk : k < 21
  · exact h ⟨k, hk⟩
  · constructor
    · intro hP; have := hp k hP; unfold InUniverse at this; omega
    · intro hQ; have := hq k hQ; unfold InUniverse at this; omega

theorem sets_solution : SetsGoal := by
  unfold SetsGoal
  refine ⟨?_, ?_, ?_, ?_⟩
  all_goals
    apply lift_finite_table
    · intro k hk
      first | exact hk.1 | exact hk.1.1
    · intro k hk
      simp only [Finset.mem_insert, Finset.mem_singleton] at hk
      unfold InUniverse
      omega
    · intro k
      simp only [inA_iff_finite 3 k (by decide), inA_iff_finite 4 k (by decide),
        complement_iff_finite 4 k (by decide)]
      revert k
      decide

/-- All naturals in the original universal quantifier are covered by a Fin 21 table. -/
theorem parameter_condition_iff_finite (a : ℕ) (ha : 0 < a) :
    ComplementHasNoTwoOrThree a ↔
      (∀ k : Fin 21, FiniteComplement a k → ¬ 2 ∣ (k : ℕ) ∧ ¬ 3 ∣ (k : ℕ)) := by
  constructor
  · intro h k hk
    exact h k ((complement_iff_finite a k ha).mpr hk)
  · intro h k hk
    have hbound := hk.1
    have hlt : k < 21 := by unfold InUniverse at hbound; omega
    exact h ⟨k, hlt⟩ ((complement_iff_finite a k ha).mp hk)

theorem parameter_solution : ParameterGoal := by
  intro a ha
  have ha0 : 0 < a := by unfold AllowedParameter at ha; omega
  have halt : a < 10 := by unfold AllowedParameter at ha; omega
  rw [parameter_condition_iff_finite a ha0]
  have table : ∀ a : Fin 10, 2 ≤ (a : ℕ) →
      ((∀ k : Fin 21, FiniteComplement a k → ¬ 2 ∣ (k : ℕ) ∧ ¬ 3 ∣ (k : ℕ)) ↔
        (a : ℕ) = 6) := by decide
  exact table ⟨a, halt⟩ ha.1

theorem pair_condition_iff_finite (a b : ℕ) (ha : 0 < a) (hb : 0 < b) :
    DifferenceIsFive a b ↔
      (∀ k : Fin 21, (FiniteA a k ∧ FiniteComplement b k) ↔ (k : ℕ) = 5) := by
  constructor
  · intro h k
    simpa only [← inA_iff_finite a k ha, ← complement_iff_finite b k hb] using h k
  · intro h
    apply lift_finite_table
    · intro k hk; exact hk.1.1
    · intro k hk; subst k; decide
    · intro k
      simpa only [inA_iff_finite a k ha, complement_iff_finite b k hb] using h k

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem pair_solution : PairGoal := by
  intro a b ha hb
  have ha0 : 0 < a := by unfold AllowedParameter at ha; omega
  have hb0 : 0 < b := by unfold AllowedParameter at hb; omega
  have halt : a < 10 := by unfold AllowedParameter at ha; omega
  have hblt : b < 10 := by unfold AllowedParameter at hb; omega
  rw [pair_condition_iff_finite a b ha0 hb0]
  have table : ∀ a b : Fin 10, 2 ≤ (a : ℕ) → 2 ≤ (b : ℕ) →
      ((∀ k : Fin 21, (FiniteA a k ∧ FiniteComplement b k) ↔ (k : ℕ) = 5) ↔
        (a : ℕ) = 5 ∧ (b : ℕ) = 6) := by decide
  exact table ⟨a, halt⟩ ⟨b, hblt⟩ ha.1 hb.1

end LemmaWeave.Problems.DNC2026M1
