import LemmaWeave.Problems.GSM8K.Sprint0929A07P1Models
import LemmaWeave.Audit.Extract

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0929A07P1.books_solution to "work/gsm8k-sprint185-library-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0929A07P1.books_purchased
#print axioms LemmaWeave.Problems.GSM8K.Sprint0929A07P1.books_gifted
#print axioms LemmaWeave.Problems.GSM8K.Sprint0929A07P1.books_removed
#print axioms LemmaWeave.Problems.GSM8K.Sprint0929A07P1.books_solution

namespace LemmaWeave.Tests.BooksSourceCorrection
open LemmaWeave.Problems.GSM8K.Sprint0929A07P1

theorem corrected_model_has_witness : ∃ m : BooksModel, m.finalBooks = 81 := by
  refine ⟨⟨19, 5, 15, 81, by norm_num, by norm_num, by norm_num, by norm_num⟩, rfl⟩

theorem wrong_direction_answer_rejected (m : BooksModel) : m.finalBooks ≠ 71 := by
  rw [books_solution m]
  decide

#print axioms corrected_model_has_witness
#print axioms wrong_direction_answer_rejected
end LemmaWeave.Tests.BooksSourceCorrection
