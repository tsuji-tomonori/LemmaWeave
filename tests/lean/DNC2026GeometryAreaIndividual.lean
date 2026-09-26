import LemmaWeave.Problems.DNC2026M1.GeometryAreaModel
import LemmaWeave.Audit.Extract
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

namespace LemmaWeave.Tests.DNC2026GeometryAreaIndividual

open LemmaWeave.Problems.DNC2026M1.GeometryArea

/-- 四角形の内角和と対角の和の等しさから、`A + C = π` を得る。 -/
theorem supplementary_opposite_sum
    (AB AD BC CD A B C D S₁ S₂ S : ℝ)
    (h : QuadrilateralAreaData AB AD BC CD A B C D S₁ S₂ S) :
    A + C = Real.pi := by
  linarith [h.quadrilateral_angle_sum, h.opposite_angle_sums_equal]

/-- 第1の三角形の面積公式を取り出す。 -/
theorem first_triangle_area
    (AB AD BC CD A B C D S₁ S₂ S : ℝ)
    (h : QuadrilateralAreaData AB AD BC CD A B C D S₁ S₂ S) :
    S₁ = (1 / 2 : ℝ) * AB * AD * Real.sin A :=
  h.first_triangle_area

/-- 第2の三角形の面積公式を取り出す。 -/
theorem second_triangle_area
    (AB AD BC CD A B C D S₁ S₂ S : ℝ)
    (h : QuadrilateralAreaData AB AD BC CD A B C D S₁ S₂ S) :
    S₂ = (1 / 2 : ℝ) * BC * CD * Real.sin C :=
  h.second_triangle_area

/-- 補角の正弦が等しいことを、前行の角度関係から示す。 -/
theorem supplementary_sines
    (AB AD BC CD A B C D S₁ S₂ S : ℝ)
    (h : QuadrilateralAreaData AB AD BC CD A B C D S₁ S₂ S) :
    Real.sin C = Real.sin A := by
  have hsum := supplementary_opposite_sum AB AD BC CD A B C D S₁ S₂ S h
  have hC : C = Real.pi - A := by linarith
  rw [hC, Real.sin_pi_sub]

/-- 二つの三角形の面積を加え、共通因子をくくる。 -/
theorem area_sum
    (AB AD BC CD A B C D S₁ S₂ S : ℝ)
    (h : QuadrilateralAreaData AB AD BC CD A B C D S₁ S₂ S) :
    S = (1 / 2 : ℝ) * (AB * AD + BC * CD) * Real.sin A := by
  rw [h.total_area,
    first_triangle_area AB AD BC CD A B C D S₁ S₂ S h,
    second_triangle_area AB AD BC CD A B C D S₁ S₂ S h,
    supplementary_sines AB AD BC CD A B C D S₁ S₂ S h]
  ring

/-- 原題の全条件から、求める面積関係を再構成する。 -/
theorem individual_solution : AreaGoal := by
  intro AB AD BC CD A B C D S₁ S₂ S h
  exact area_sum AB AD BC CD A B C D S₁ S₂ S h

#print axioms individual_solution
#lw_dependencies LemmaWeave.Tests.DNC2026GeometryAreaIndividual.individual_solution to
  "work/dnc2026-geometry-area-individual-graph.json"

end LemmaWeave.Tests.DNC2026GeometryAreaIndividual
