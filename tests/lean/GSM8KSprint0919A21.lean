import LemmaWeave.Problems.GSM8K.Sprint0919A21Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A21
open LemmaWeave.Problems.GSM8K.Sprint0919A21

theorem stationery_lorene (a b c d : Nat) (x : StationeryDifference a b c d) : c = 75 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb] at hc
  exact hc

theorem stationery_fewer (a b c d : Nat) (x : StationeryDifference a b c d) : d = 50 := by
  have hc := stationery_lorene a b c d x
  rcases x with ⟨ha, hb, hx, hd⟩
  omega

theorem stationery_solution :
    StationeryDifference 25 3 75 50 ∧ 75 = 75 ∧ 50 = 50 := by
  have x : StationeryDifference 25 3 75 50 := by norm_num [StationeryDifference]
  exact ⟨x, stationery_lorene _ _ _ _ x, stationery_fewer _ _ _ _ x⟩

theorem trash_stores (a b c d : Nat) (x : TrashCans a b c d) : c = 28 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb] at hc
  exact hc

theorem trash_total (a b c d : Nat) (x : TrashCans a b c d) : d = 42 := by
  have hc := trash_stores a b c d x
  rcases x with ⟨ha, hb, hx, hd⟩
  norm_num [ha, hc] at hd
  exact hd

theorem trash_solution : TrashCans 14 2 28 42 ∧ 28 = 28 ∧ 42 = 42 := by
  have x : TrashCans 14 2 28 42 := by norm_num [TrashCans]
  exact ⟨x, trash_stores _ _ _ _ x, trash_total _ _ _ _ x⟩

theorem exam_total_minutes (a b c d e f : Nat) (x : ExamPace a b c d e f) : d = 60 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb, hc] at hd
  omega

theorem exam_minutes_left (a b c d e f : Nat) (x : ExamPace a b c d e f) : f = 0 := by
  have hd := exam_total_minutes a b c d e f x
  rcases x with ⟨ha, hb, hc, hx, he, hf⟩
  omega

theorem exam_solution : ExamPace 16 80 12 60 60 0 ∧ 60 = 60 ∧ 0 = 0 := by
  have x : ExamPace 16 80 12 60 60 0 := by norm_num [ExamPace]
  exact ⟨x, exam_total_minutes _ _ _ _ _ _ x, exam_minutes_left _ _ _ _ _ _ x⟩

theorem chair_each (a b c d e f : Nat) (x : ChairPurchase a b c d e f) : c = 20 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb] at hc
  omega

theorem chair_four_cost (a b c d e f : Nat) (x : ChairPurchase a b c d e f) : e = 80 := by
  have hc := chair_each a b c d e f x
  rcases x with ⟨ha, hb, hx, hd, he, hf⟩
  norm_num [hc, hd] at he
  exact he

theorem chair_purchase_total (a b c d e f : Nat) (x : ChairPurchase a b c d e f) : f = 220 := by
  have he := chair_four_cost a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, hx, hf⟩
  norm_num [ha, he] at hf
  exact hf

theorem chair_solution :
    ChairPurchase 140 7 20 4 80 220 ∧ 20 = 20 ∧ 80 = 80 ∧ 220 = 220 := by
  have x : ChairPurchase 140 7 20 4 80 220 := by norm_num [ChairPurchase]
  exact ⟨x, chair_each _ _ _ _ _ _ x, chair_four_cost _ _ _ _ _ _ x,
    chair_purchase_total _ _ _ _ _ _ x⟩

theorem babysitting_hours (a b c d : Nat) (x : BabysittingRate a b c d) : d = 5 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb, hc] at hd
  omega

theorem babysitting_solution : BabysittingRate 45 3 75 5 ∧ 5 = 5 := by
  have x : BabysittingRate 45 3 75 5 := by norm_num [BabysittingRate]
  exact ⟨x, babysitting_hours _ _ _ _ x⟩

#print axioms stationery_solution
#print axioms trash_solution
#print axioms exam_solution
#print axioms chair_solution
#print axioms babysitting_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A21.stationery_solution to "work/gsm8k-sprint21-stationery-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A21.trash_solution to "work/gsm8k-sprint21-trash-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A21.exam_solution to "work/gsm8k-sprint21-exam-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A21.chair_solution to "work/gsm8k-sprint21-chair-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A21.babysitting_solution to "work/gsm8k-sprint21-babysitting-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A21
