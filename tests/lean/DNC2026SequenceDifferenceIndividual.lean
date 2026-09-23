import LemmaWeave.Problems.DNC2026M2BC.SequenceDifferenceModel

namespace LemmaWeave.Tests.DNC2026SequenceDifferenceIndividual

open LemmaWeave.Problems.DNC2026M2BC.SequenceDifference

theorem first_difference_value
    (a₁ a₂ a₃ b₁ b₂ : ℤ) (h : FirstTermsData a₁ a₂ a₃ b₁ b₂) :
    b₁ = 3 := by
  omega

theorem second_term_value
    (a₁ a₂ a₃ b₁ b₂ : ℤ) (h : FirstTermsData a₁ a₂ a₃ b₁ b₂) :
    a₂ = 4 := by
  have hb₁ := first_difference_value a₁ a₂ a₃ b₁ b₂ h
  omega

theorem second_difference_value
    (a₁ a₂ a₃ b₁ b₂ : ℤ) (h : FirstTermsData a₁ a₂ a₃ b₁ b₂) :
    b₂ = 7 := by
  omega

theorem third_term_value
    (a₁ a₂ a₃ b₁ b₂ : ℤ) (h : FirstTermsData a₁ a₂ a₃ b₁ b₂) :
    a₃ = 11 := by
  have ha₂ := second_term_value a₁ a₂ a₃ b₁ b₂ h
  have hb₂ := second_difference_value a₁ a₂ a₃ b₁ b₂ h
  omega

theorem individual_solution : FirstTermsGoal := by
  intro a₁ a₂ a₃ b₁ b₂ h
  exact ⟨first_difference_value a₁ a₂ a₃ b₁ b₂ h,
    second_term_value a₁ a₂ a₃ b₁ b₂ h,
    second_difference_value a₁ a₂ a₃ b₁ b₂ h,
    third_term_value a₁ a₂ a₃ b₁ b₂ h⟩

end LemmaWeave.Tests.DNC2026SequenceDifferenceIndividual
