import Mathlib.Data.Real.Basic

namespace LemmaWeave.Problems.DNC2026M1.ScatterRelation

/-- 公式散布図から読み取る人数と、点 A の前半・後半・平均タイム。 -/
structure ScatterReading
    (afterCount meanCount : ℕ)
    (aFront aAfter aMean : ℝ) : Prop where
  after_count : afterCount = 7
  mean_count : meanCount = 3
  a_mean_def : aMean = (aFront + aAfter) / 2
  a_front_lt_after : aFront < aAfter

/-- 真偽表 0=(真,真), 1=(真,偽), 2=(偽,真), 3=(偽,偽) による解答番号。 -/
noncomputable def answerCode
    (afterCount meanCount : ℕ)
    (aFront aAfter aMean : ℝ) : ℕ :=
  if afterCount = meanCount then
    if aFront < aMean ∧ aAfter > aMean then 0 else 1
  else
    if aFront < aMean ∧ aAfter > aMean then 2 else 3

/-- 原題が要求する、二記述の真偽の組合せの解答番号。 -/
def ScatterGoal : Prop :=
  ∀ (afterCount meanCount : ℕ) (aFront aAfter aMean : ℝ),
    ScatterReading afterCount meanCount aFront aAfter aMean →
      answerCode afterCount meanCount aFront aAfter aMean = 2

end LemmaWeave.Problems.DNC2026M1.ScatterRelation
