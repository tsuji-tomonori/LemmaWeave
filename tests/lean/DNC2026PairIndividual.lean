import LemmaWeave.Problems.DNC2026M1.ProofSets
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.DNC2026PairIndividual

open LemmaWeave.Problems.DNC2026M1

/-- A ∩ (U \ B) = {5} forces the left parameter to be 5. -/
theorem left_parameter_forced (a b : ℕ)
    (ha : AllowedParameter a) (hb : AllowedParameter b)
    (h : DifferenceIsFive a b) : a = 5 := by
  exact ((pair_solution a b ha hb).mp h).1

/-- A ∩ (U \ B) = {5} forces the right parameter to be 6. -/
theorem right_parameter_forced (a b : ℕ)
    (ha : AllowedParameter a) (hb : AllowedParameter b)
    (h : DifferenceIsFive a b) : b = 6 := by
  exact ((pair_solution a b ha hb).mp h).2

/-- The two necessary parameter equalities are retained together. -/
theorem necessary_pair (a b : ℕ)
    (ha : AllowedParameter a) (hb : AllowedParameter b)
    (h : DifferenceIsFive a b) : a = 5 ∧ b = 6 := by
  exact ⟨left_parameter_forced a b ha hb h,
    right_parameter_forced a b ha hb h⟩

/-- The candidate pair (5, 6) satisfies the original extensional set equality. -/
theorem five_six_satisfy : DifferenceIsFive 5 6 := by
  have h5 : AllowedParameter 5 := by norm_num [AllowedParameter]
  have h6 : AllowedParameter 6 := by norm_num [AllowedParameter]
  exact (pair_solution 5 6 h5 h6).mpr ⟨rfl, rfl⟩

/-- All admissible parameter pairs are covered in both directions. -/
theorem individual_solution : PairGoal := by
  intro a b ha hb
  constructor
  · exact necessary_pair a b ha hb
  · rintro ⟨rfl, rfl⟩
    exact five_six_satisfy

end LemmaWeave.Tests.DNC2026PairIndividual

#lw_dependencies LemmaWeave.Tests.DNC2026PairIndividual.individual_solution to "work/dnc2026-pair-individual-graph.json"
