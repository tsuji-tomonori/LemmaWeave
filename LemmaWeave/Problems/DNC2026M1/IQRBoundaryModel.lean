import Mathlib.Data.Real.Basic

namespace LemmaWeave.Problems.DNC2026M1.IQRBoundary

/--
四分位範囲 `iqr = q3 - q1` と、1.5 倍規則による下側・上側境界を
まとめたデータ。時刻の単位は秒である。
-/
structure OutlierBoundaryData
    (q1 q3 iqr lower upper : ℝ) : Prop where
  iqr_def : iqr = q3 - q1
  lower_def : lower = q1 - (3 / 2 : ℝ) * iqr
  upper_def : upper = q3 + (3 / 2 : ℝ) * iqr
  lower_value : lower = 29315 / 1000
  upper_value : upper = 29835 / 1000

/-- 二つの外れ値境界から四分位範囲を求める原題の目標。 -/
def IQRGoal : Prop :=
  ∀ q1 q3 iqr lower upper : ℝ,
    OutlierBoundaryData q1 q3 iqr lower upper →
      iqr = 13 / 100

end LemmaWeave.Problems.DNC2026M1.IQRBoundary
