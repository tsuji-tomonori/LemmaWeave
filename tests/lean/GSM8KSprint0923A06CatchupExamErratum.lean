import LemmaWeave.Problems.GSM8K.Sprint0923A06CatchupModels
import LemmaWeave.Audit.Extract

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0923A06Catchup.exam_erratum_solution to "work/gsm8k-sprint99-exam-erratum-graph.json"

#print axioms LemmaWeave.Problems.GSM8K.Sprint0923A06Catchup.exam_previous_count
#print axioms LemmaWeave.Problems.GSM8K.Sprint0923A06Catchup.exam_previous_sum
#print axioms LemmaWeave.Problems.GSM8K.Sprint0923A06Catchup.exam_target_total
#print axioms LemmaWeave.Problems.GSM8K.Sprint0923A06Catchup.exam_104_enough
#print axioms LemmaWeave.Problems.GSM8K.Sprint0923A06Catchup.exam_lower_bound
#print axioms LemmaWeave.Problems.GSM8K.Sprint0923A06Catchup.exam_solution
#print axioms LemmaWeave.Problems.GSM8K.Sprint0923A06Catchup.exam_capped_scores_not_enough
#print axioms LemmaWeave.Problems.GSM8K.Sprint0923A06Catchup.exam_erratum_solution

namespace LemmaWeave.Tests.ExamScoreCorrection
open LemmaWeave.Problems.GSM8K.Sprint0923A06Catchup

theorem corrected_model_has_witness : ∃ m : ExamScore, m.william = 104 := by
  refine ⟨⟨29, 2146, 2250, 104, by norm_num, by norm_num,
    by norm_num, by norm_num, ?_⟩, rfl⟩
  intro s hs
  omega

theorem original_94_is_insufficient : ¬ (2250 : ℕ) ≤ 2146 + 94 := by decide

theorem cap_100_is_insufficient : ¬ (2250 : ℕ) ≤ 2146 + 100 := by decide

#print axioms corrected_model_has_witness
#print axioms original_94_is_insufficient
#print axioms cap_100_is_insufficient
end LemmaWeave.Tests.ExamScoreCorrection
