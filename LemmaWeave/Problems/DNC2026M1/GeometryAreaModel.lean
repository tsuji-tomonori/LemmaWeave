import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

namespace LemmaWeave.Problems.DNC2026M1.GeometryArea

/--
対角線で二つの三角形に分けた凸四角形について、この小問で使う量と条件を
まとめたデータ。角はラジアンで表す。
-/
structure QuadrilateralAreaData
    (AB AD BC CD A B C D S₁ S₂ S : ℝ) : Prop where
  side_pos : 0 < AB ∧ 0 < AD ∧ 0 < BC ∧ 0 < CD
  angle_pos : 0 < A ∧ 0 < B ∧ 0 < C ∧ 0 < D
  angle_lt_pi : A < Real.pi ∧ B < Real.pi ∧ C < Real.pi ∧ D < Real.pi
  quadrilateral_angle_sum : A + B + C + D = 2 * Real.pi
  opposite_angle_sums_equal : A + C = B + D
  first_triangle_area : S₁ = (1 / 2 : ℝ) * AB * AD * Real.sin A
  second_triangle_area : S₂ = (1 / 2 : ℝ) * BC * CD * Real.sin C
  total_area : S = S₁ + S₂

/-- 原題の小問が求める面積関係。 -/
def AreaGoal : Prop :=
  ∀ AB AD BC CD A B C D S₁ S₂ S : ℝ,
    QuadrilateralAreaData AB AD BC CD A B C D S₁ S₂ S →
      S = (1 / 2 : ℝ) * (AB * AD + BC * CD) * Real.sin A

end LemmaWeave.Problems.DNC2026M1.GeometryArea
