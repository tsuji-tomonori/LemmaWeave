import LemmaWeave.Problems.DNC2026M1.TangentTriangleRatioModel
import LemmaWeave.Audit.Extract
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith

namespace LemmaWeave.Tests.DNC2026TangentTriangleRatioIndividual

open LemmaWeave.Problems.DNC2026M1.TangentTriangleRatio

/-- 接線と半径で分けた二つの直角三角形から、左側四角形の面積は72。 -/
theorem areaP_value
    (PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR : ℝ)
    (h : TangentRatioData PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR) :
    areaP = 72 := by
  rw [h.areaP_triangle_sum, h.PM_value, h.PK_value, h.radius_value]
  norm_num

/-- 四角形の面積公式と前行から `sin P = 4/5` を得る。 -/
theorem sinP_value
    (PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR : ℝ)
    (h : TangentRatioData PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR) :
    sinP = 4 / 5 := by
  have harea := h.areaP_quadrilateral
  rw [h.PM_value, h.PK_value, h.radius_value, areaP_value PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR h] at harea
  norm_num at harea ⊢
  linarith

/-- 右側四角形の同じ面積計算から `sin Q = 60/61` を得る。 -/
theorem sinQ_value
    (PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR : ℝ)
    (h : TangentRatioData PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR) :
    sinQ = 60 / 61 := by
  have htri := h.areaQ_triangle_sum
  have hquad := h.areaQ_quadrilateral
  rw [h.QM_value, h.QL_value, h.radius_value] at htri hquad
  norm_num at htri hquad ⊢
  nlinarith

/-- 角が鋭角であることと三平方関係から二つの余弦を定める。 -/
theorem cosine_values
    (PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR : ℝ)
    (h : TangentRatioData PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR) :
    cosP = 3 / 5 ∧ cosQ = 11 / 61 := by
  have hp := h.p_pythagorean
  have hq := h.q_pythagorean
  rw [sinP_value PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR h] at hp
  rw [sinQ_value PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR h] at hq
  constructor <;> norm_num at hp hq ⊢ <;> nlinarith [h.p_cos_positive, h.q_cos_positive]

/-- `∠PRQ = Q-P` に対する正弦の差の公式を正確に計算する。 -/
theorem sinR_value
    (PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR : ℝ)
    (h : TangentRatioData PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR) :
    sinR = 136 / 305 := by
  rcases cosine_values PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR h with ⟨hcp, hcq⟩
  rw [h.difference_sine,
    sinP_value PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR h,
    sinQ_value PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR h,
    hcp, hcq]
  norm_num

/-- 接点 M が線分 PQ 上にあるので `PQ = 12 + 5 = 17`。 -/
theorem pq_value
    (PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR : ℝ)
    (h : TangentRatioData PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR) :
    PQ = 17 := by
  rw [h.pq_sum, h.PM_value, h.QM_value]
  norm_num

/-- 正弦定理から残る二辺を求める。 -/
theorem remaining_side_values
    (PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR : ℝ)
    (h : TangentRatioData PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR) :
    PR = 75 / 2 ∧ QR = 61 / 2 := by
  have hpr := h.sine_law_pr
  have hqr := h.sine_law_qr
  rw [sinR_value PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR h,
    pq_value PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR h,
    sinQ_value PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR h] at hpr
  rw [sinR_value PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR h,
    pq_value PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR h,
    sinP_value PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR h] at hqr
  constructor <;> norm_num at hpr hqr ⊢ <;> linarith

/-- 三辺の整数比 `75 : 61 : 34` と `PR > 2 PQ` を得る。 -/
theorem side_ratio_and_comparison
    (PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR : ℝ)
    (h : TangentRatioData PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR) :
    PR = 75 / 2 ∧ QR = 61 / 2 ∧ PQ = 17 ∧
      2 * PR = 75 ∧ 2 * QR = 61 ∧ 2 * PQ = 34 ∧ PR > 2 * PQ := by
  rcases remaining_side_values PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR h with ⟨hpr, hqr⟩
  have hpq := pq_value PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR h
  constructor
  · exact hpr
  constructor
  · exact hqr
  constructor
  · exact hpq
  all_goals rw [hpr, hqr, hpq] <;> norm_num

/-- モデルの前提が矛盾していないことを、原題の数値に対応する具体例で確認する。 -/
theorem model_witness :
    TangentRatioData
      12 12 5 5 6 72 30 (4 / 5) (3 / 5) (60 / 61) (11 / 61) (136 / 305)
      17 (75 / 2) (61 / 2) := by
  constructor <;> norm_num

/-- 原題の全要求を、各説明行の定理を経由して再構成する。 -/
theorem individual_solution : SideRatioGoal := by
  intro PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR h
  exact side_ratio_and_comparison PM PK QM QL radius areaP areaQ sinP cosP sinQ cosQ sinR PQ PR QR h

#print axioms individual_solution
#print axioms model_witness
#lw_dependencies LemmaWeave.Tests.DNC2026TangentTriangleRatioIndividual.individual_solution to
  "work/dnc2026-tangent-triangle-ratio-individual-graph.json"

end LemmaWeave.Tests.DNC2026TangentTriangleRatioIndividual
