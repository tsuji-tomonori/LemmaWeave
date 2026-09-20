import LemmaWeave.Problems.GSM8K.Sprint0921A03Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract
namespace LemmaWeave.Tests.GSM8KSprint0921A03
open LemmaWeave.Problems.GSM8K.Sprint0921A03

theorem sprinkles_half : (12 : Nat) = 6 * 2 := by norm_num
theorem sprinkles_remaining : (6 : Nat) = 3 + 3 := by
  calc (6 : Nat) = 12 / 2 := by norm_num
       _ = 3 + 3 := by rw [sprinkles_half]; norm_num
theorem sprinkles_solution : Sprinkles 12 6 3 3 := by unfold Sprinkles; exact ⟨sprinkles_half, sprinkles_remaining⟩

theorem students_joined : (180 : Nat) = 150 + 30 := by norm_num
theorem students_final : (180 : Nat) = 15 + 165 := by
  calc (180 : Nat) = 150 + 30 := students_joined
       _ = 15 + 165 := by norm_num
theorem students_solution : ClassStudents 150 30 180 15 165 := by unfold ClassStudents; exact ⟨students_joined, students_final⟩

theorem water_case_days : (24 : Nat) * 2 = 48 * 1 := by norm_num
theorem water_cases : (240 : Nat) = 5 * 48 := by
  calc (240 : Nat) = 5 * (24 * 2) := by norm_num
       _ = 5 * 48 := by rw [water_case_days]
theorem water_spent : (60 : Nat) = 5 * 12 := by
  calc (60 : Nat) = (240 / 48) * 12 := by norm_num
       _ = 5 * 12 := by rw [water_cases]; norm_num
theorem water_solution : MineralWater 1 24 48 240 5 12 60 := by unfold MineralWater; exact ⟨water_case_days, water_cases, water_spent⟩

theorem blankets_before : (24 : Nat) = 8 * 3 := by norm_num
theorem blankets_after : (10 : Nat) = 8 + 2 := by
  calc (10 : Nat) = (24 / 3) + 2 := by norm_num
       _ = 8 + 2 := by rw [blankets_before]; norm_num
theorem blankets_solution : PolkaBlankets 24 8 2 10 := by unfold PolkaBlankets; exact ⟨blankets_before, blankets_after⟩

theorem tacks_each_board : (3 : Nat) = 3 := rfl
theorem tacks_used : (360 : Nat) = 120 * 3 := by
  calc (360 : Nat) = 120 * 3 := by norm_num
       _ = 120 * 3 := by rw [tacks_each_board]
theorem tacks_remaining : (90 : Nat) = 3 * 30 := by norm_num
theorem tacks_total : (450 : Nat) = 360 + 90 := by
  calc (450 : Nat) = 120 * 3 + 3 * 30 := by norm_num
       _ = 360 + 90 := by rw [← tacks_used, ← tacks_remaining]
theorem tacks_solution : Thumbtacks 3 120 3 360 30 90 450 := by unfold Thumbtacks; exact ⟨tacks_each_board, tacks_used, tacks_remaining, tacks_total⟩


#print axioms sprinkles_solution
#print axioms students_solution
#print axioms water_solution
#print axioms blankets_solution
#print axioms tacks_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A03.sprinkles_solution to "work/gsm8k-sprint54-sprinkles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A03.students_solution to "work/gsm8k-sprint54-students-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A03.water_solution to "work/gsm8k-sprint54-water-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A03.blankets_solution to "work/gsm8k-sprint54-blankets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A03.tacks_solution to "work/gsm8k-sprint54-tacks-graph.json"
end LemmaWeave.Tests.GSM8KSprint0921A03
