import LemmaWeave.Problems.DNC2026M1.ScatterRelationModel
import LemmaWeave.Audit.Extract
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

namespace LemmaWeave.Tests.DNC2026ScatterRelationIndividual

open LemmaWeave.Problems.DNC2026M1.ScatterRelation

/-- 図1と図2で指定条件を満たす点は、それぞれ7点と3点である。 -/
theorem filtered_counts
    (afterCount meanCount : ℕ) (aFront aAfter aMean : ℝ)
    (h : ScatterReading afterCount meanCount aFront aAfter aMean) :
    afterCount = 7 ∧ meanCount = 3 :=
  ⟨h.after_count, h.mean_count⟩

/-- 7人と3人は等しくないため、人数が等しいという記述は偽である。 -/
theorem count_statement_false
    (afterCount meanCount : ℕ) (aFront aAfter aMean : ℝ)
    (h : ScatterReading afterCount meanCount aFront aAfter aMean) :
    ¬ afterCount = meanCount := by
  rw [h.after_count, h.mean_count]
  norm_num

/-- 前半より後半が長いとき、その算術平均は二つの値の間にある。 -/
theorem a_mean_between
    (afterCount meanCount : ℕ) (aFront aAfter aMean : ℝ)
    (h : ScatterReading afterCount meanCount aFront aAfter aMean) :
    aFront < aMean ∧ aAfter > aMean := by
  constructor
  · rw [h.a_mean_def]
    linarith [h.a_front_lt_after]
  · rw [h.a_mean_def]
    linarith [h.a_front_lt_after]

/-- 第1記述は偽、第2記述は真なので、真偽表の解答番号は2である。 -/
theorem answer_choice_two
    (afterCount meanCount : ℕ) (aFront aAfter aMean : ℝ)
    (h : ScatterReading afterCount meanCount aFront aAfter aMean) :
    answerCode afterCount meanCount aFront aAfter aMean = 2 := by
  have hc := count_statement_false afterCount meanCount aFront aAfter aMean h
  have hp := a_mean_between afterCount meanCount aFront aAfter aMean h
  simp [answerCode, hc, hp]

/-- 原題の全要求をまとめた個別解答。 -/
theorem individual_solution : ScatterGoal := by
  intro afterCount meanCount aFront aAfter aMean h
  exact answer_choice_two afterCount meanCount aFront aAfter aMean h

#print axioms individual_solution
#lw_dependencies LemmaWeave.Tests.DNC2026ScatterRelationIndividual.individual_solution to
  "work/dnc2026-scatter-relation-individual-graph.json"

end LemmaWeave.Tests.DNC2026ScatterRelationIndividual
