import Mathlib.Tactic

namespace LemmaWeave.Problems.DNC2026M2BC.SequenceDifference

/--
令和8年度共通テスト数学II・B・C第4問(1)(i)の数値を、整数上で保持する。
階差は原題どおり `bₙ = aₙ₊₁ - aₙ` とし、初項と `bₙ = 4n - 1` の
最初の二項だけをこの小問に必要な範囲で固定する。
-/
structure FirstTermsData (a₁ a₂ a₃ b₁ b₂ : ℤ) : Prop where
  first_term : a₁ = 1
  first_difference_formula : b₁ = 4 * 1 - 1
  first_difference_definition : b₁ = a₂ - a₁
  second_difference_formula : b₂ = 4 * 2 - 1
  second_difference_definition : b₂ = a₃ - a₂

/-- 解答欄ア・イ・ウ・エオに対応する四つの結論。 -/
def FirstTermsGoal : Prop :=
  ∀ a₁ a₂ a₃ b₁ b₂ : ℤ,
    FirstTermsData a₁ a₂ a₃ b₁ b₂ →
      b₁ = 3 ∧ a₂ = 4 ∧ b₂ = 7 ∧ a₃ = 11

end LemmaWeave.Problems.DNC2026M2BC.SequenceDifference
