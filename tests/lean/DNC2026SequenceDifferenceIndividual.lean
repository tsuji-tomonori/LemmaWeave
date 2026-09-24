import LemmaWeave.Problems.DNC2026M2BC.SequenceDifferenceModel
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.DNC2026SequenceDifferenceIndividual

open LemmaWeave.Problems.DNC2026M2BC.SequenceDifference

theorem first_difference_value
    (a₁ a₂ a₃ b₁ b₂ : ℤ) (h : FirstTermsData a₁ a₂ a₃ b₁ b₂) :
    b₁ = 3 := by
  rcases h with ⟨_, hb₁_formula, _, _, _⟩
  norm_num at hb₁_formula
  exact hb₁_formula

theorem second_term_value
    (a₁ a₂ a₃ b₁ b₂ : ℤ) (h : FirstTermsData a₁ a₂ a₃ b₁ b₂) :
    a₂ = 4 := by
  have hb₁ := first_difference_value a₁ a₂ a₃ b₁ b₂ h
  rcases h with ⟨ha₁, _, hb₁_definition, _, _⟩
  omega

theorem second_difference_value
    (a₁ a₂ a₃ b₁ b₂ : ℤ) (h : FirstTermsData a₁ a₂ a₃ b₁ b₂) :
    b₂ = 7 := by
  rcases h with ⟨_, _, _, hb₂_formula, _⟩
  norm_num at hb₂_formula
  exact hb₂_formula

theorem third_term_value
    (a₁ a₂ a₃ b₁ b₂ : ℤ) (h : FirstTermsData a₁ a₂ a₃ b₁ b₂) :
    a₃ = 11 := by
  have ha₂ := second_term_value a₁ a₂ a₃ b₁ b₂ h
  have hb₂ := second_difference_value a₁ a₂ a₃ b₁ b₂ h
  rcases h with ⟨_, _, _, _, hb₂_definition⟩
  omega

theorem individual_solution : FirstTermsGoal := by
  intro a₁ a₂ a₃ b₁ b₂ h
  exact ⟨first_difference_value a₁ a₂ a₃ b₁ b₂ h,
    second_term_value a₁ a₂ a₃ b₁ b₂ h,
    second_difference_value a₁ a₂ a₃ b₁ b₂ h,
    third_term_value a₁ a₂ a₃ b₁ b₂ h⟩

end LemmaWeave.Tests.DNC2026SequenceDifferenceIndividual

#lw_dependencies LemmaWeave.Tests.DNC2026SequenceDifferenceIndividual.individual_solution to "work/dnc2026-sequence-difference-individual-graph.json"
