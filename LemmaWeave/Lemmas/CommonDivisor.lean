import Mathlib.Data.Nat.Basic
import Mathlib.Data.Finset.Interval
import Mathlib.Tactic.Omega

namespace LemmaWeave.Lemmas

/-- A divisor of a positive natural number is bounded by that number.
    This is the bridge from an unbounded mathematical existential to finite search. -/
theorem commonDivisor_iff_bounded (k a : ℕ) (ha : 0 < a) :
    (∃ d : ℕ, 1 < d ∧ d ∣ k ∧ d ∣ a) ↔
      ∃ d ∈ Finset.Icc 2 a, d ∣ k ∧ d ∣ a := by
  constructor
  · rintro ⟨d, hd, hdk, hda⟩
    exact ⟨d, Finset.mem_Icc.mpr ⟨by omega, Nat.le_of_dvd ha hda⟩, hdk, hda⟩
  · rintro ⟨d, hd, hdk, hda⟩
    exact ⟨d, by have := (Finset.mem_Icc.mp hd).1; omega, hdk, hda⟩

end LemmaWeave.Lemmas
