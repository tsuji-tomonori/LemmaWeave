import LemmaWeave.Problems.DNC2026M1.ProofSets
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.DNC2026SetsIndividual

open LemmaWeave.Problems.DNC2026M1

/-- `3` と 1 より大きい公約数をもつ `U = {2, ..., 20}` の元。 -/
theorem set_a3_exact :
    ∀ k : ℕ, InA 3 k ↔ k ∈ ({3, 6, 9, 12, 15, 18} : Finset ℕ) :=
  sets_solution.1

/-- `4` と 1 より大きい公約数をもつ `U` の元。 -/
theorem set_a4_exact :
    ∀ k : ℕ, InA 4 k ↔ k ∈ ({2, 4, 6, 8, 10, 12, 14, 16, 18, 20} : Finset ℕ) :=
  sets_solution.2.1

/-- 前二集合の共通部分。 -/
theorem intersection_exact :
    ∀ k : ℕ, (InA 3 k ∧ InA 4 k) ↔ k ∈ ({6, 12, 18} : Finset ℕ) :=
  sets_solution.2.2.1

/-- `3` 側の集合から `4` 側の集合を除いた相対差。 -/
theorem relative_difference_exact :
    ∀ k : ℕ,
      (InA 3 k ∧ InComplement 4 k) ↔ k ∈ ({3, 9, 15} : Finset ℕ) :=
  sets_solution.2.2.2

/-- 原題の四つの集合要求を、説明行と同じ順序で再構成する。 -/
theorem individual_solution : SetsGoal :=
  ⟨set_a3_exact, set_a4_exact, intersection_exact, relative_difference_exact⟩

#print axioms individual_solution
#lw_dependencies LemmaWeave.Tests.DNC2026SetsIndividual.individual_solution to
  "work/dnc2026-sets-individual-graph.json"

end LemmaWeave.Tests.DNC2026SetsIndividual
