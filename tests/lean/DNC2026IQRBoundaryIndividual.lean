import LemmaWeave.Problems.DNC2026M1.IQRBoundaryModel
import LemmaWeave.Audit.Extract
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

namespace LemmaWeave.Tests.DNC2026IQRBoundaryIndividual

open LemmaWeave.Problems.DNC2026M1.IQRBoundary

/-- 上側境界と下側境界の差は、四分位範囲の4倍である。 -/
theorem boundary_gap_four_iqr
    (q1 q3 iqr lower upper : ℝ)
    (h : OutlierBoundaryData q1 q3 iqr lower upper) :
    upper - lower = 4 * iqr := by
  rw [h.upper_def, h.lower_def, h.iqr_def]
  ring

/-- 問題で与えられた二境界の差は正確に0.52秒である。 -/
theorem boundary_gap_value
    (q1 q3 iqr lower upper : ℝ)
    (h : OutlierBoundaryData q1 q3 iqr lower upper) :
    upper - lower = 13 / 25 := by
  rw [h.upper_value, h.lower_value]
  norm_num

/-- 境界差を4で割ると、四分位範囲は0.13秒になる。 -/
theorem iqr_value
    (q1 q3 iqr lower upper : ℝ)
    (h : OutlierBoundaryData q1 q3 iqr lower upper) :
    iqr = 13 / 100 := by
  have hfour := boundary_gap_four_iqr q1 q3 iqr lower upper h
  have hgap := boundary_gap_value q1 q3 iqr lower upper h
  linarith

/-- 原題の数値条件から求める四分位範囲を再構成する。 -/
theorem individual_solution : IQRGoal := by
  intro q1 q3 iqr lower upper h
  exact iqr_value q1 q3 iqr lower upper h

#print axioms individual_solution
#lw_dependencies LemmaWeave.Tests.DNC2026IQRBoundaryIndividual.individual_solution to
  "work/dnc2026-iqr-boundary-individual-graph.json"

end LemmaWeave.Tests.DNC2026IQRBoundaryIndividual
