import Mathlib.Data.Real.Basic

namespace LemmaWeave.Problems.DNC2026M1.TangentTriangleRatio

/--
円への二本の接線でできる三角形について、原題の幾何から得る長さ、面積、
三角比、正弦定理の関係をまとめた代数モデル。

`sinP` などは角の正弦・余弦を表す実数であり、`difference_sine` は
`sin (Q - P)` の加法定理、二つの `sine_law_*` は三角形 PQR の正弦定理を
交差積の形で記録する。
-/
structure TangentRatioData
    (PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR : ℝ) : Prop where
  length_pos :
    0 < PM ∧ 0 < PK ∧ 0 < QM ∧ 0 < QL ∧ 0 < radius ∧ 0 < PQ ∧ 0 < PR ∧ 0 < QR
  PM_value : PM = 12
  PK_value : PK = 12
  QM_value : QM = 5
  QL_value : QL = 5
  radius_value : radius = 6
  areaP_triangle_sum :
    areaP = (1 / 2 : ℝ) * PM * radius + (1 / 2 : ℝ) * PK * radius
  areaP_quadrilateral :
    areaP = (1 / 2 : ℝ) * (PM * PK + radius * radius) * sinP
  areaQ_triangle_sum :
    areaQ = (1 / 2 : ℝ) * QM * radius + (1 / 2 : ℝ) * QL * radius
  areaQ_quadrilateral :
    areaQ = (1 / 2 : ℝ) * (QM * QL + radius * radius) * sinQ
  p_cos_positive : 0 < cosP
  q_cos_positive : 0 < cosQ
  p_pythagorean : sinP ^ 2 + cosP ^ 2 = 1
  q_pythagorean : sinQ ^ 2 + cosQ ^ 2 = 1
  difference_sine : sinR = sinQ * cosP - cosQ * sinP
  pq_sum : PQ = PM + QM
  sine_law_pr : PR * sinR = PQ * sinQ
  sine_law_qr : QR * sinR = PQ * sinP

/-- 原題の小問が求める三辺の比と長辺の比較。 -/
def SideRatioGoal : Prop :=
  ∀ PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR : ℝ,
    TangentRatioData PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR →
      PR = 75 / 2 ∧ QR = 61 / 2 ∧ PQ = 17 ∧
      2 * PR = 75 ∧ 2 * QR = 61 ∧ 2 * PQ = 34 ∧ PR > 2 * PQ

end LemmaWeave.Problems.DNC2026M1.TangentTriangleRatio
