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

theorem koolaid_remaining : (16 : Nat) = 4 + 12 := by norm_num
theorem koolaid_refilled : (48 : Nat) = 12 * 4 := by
  calc (48 : Nat) = (16 - 4) * 4 := by norm_num
       _ = 12 * 4 := by rw [koolaid_remaining]; norm_num
theorem koolaid_total : (50 : Nat) = 48 + 2 := by
  calc (50 : Nat) = (12 * 4) + 2 := by norm_num
       _ = 48 + 2 := by rw [← koolaid_refilled]
theorem koolaid_percent : (2 : Nat) * 100 = 50 * 4 := by
  calc (2 : Nat) * 100 = (48 + 2) * 4 := by norm_num
       _ = 50 * 4 := by rw [← koolaid_total]
theorem koolaid_solution : Koolaid 2 16 4 12 4 48 50 4 := by unfold Koolaid; exact ⟨koolaid_remaining, koolaid_refilled, koolaid_total, koolaid_percent⟩

theorem cycles_ignatius : (8 : Nat) = 4 * 2 := by norm_num
theorem cycles_friend : (24 : Nat) = 8 * 3 := by
  calc (24 : Nat) = (4 * 2) * 3 := by norm_num
       _ = 8 * 3 := by rw [← cycles_ignatius]
theorem cycles_bicycle_tires : (24 : Nat) = 1 + 3 + 20 := by
  calc (24 : Nat) = 8 * 3 := cycles_friend
       _ = 1 + 3 + 20 := by norm_num
theorem cycles_bicycles : (20 : Nat) = 10 * 2 := by
  calc (20 : Nat) = 24 - 1 - 3 := by norm_num
       _ = 10 * 2 := by rw [cycles_bicycle_tires]; norm_num
theorem cycles_solution : Cycles 4 8 3 24 1 3 20 10 := by unfold Cycles; exact ⟨cycles_ignatius, cycles_friend, cycles_bicycle_tires, cycles_bicycles⟩

theorem jelly_rory : (45 : Nat) = 15 + 30 := by norm_num
theorem jelly_both : (60 : Nat) = 45 + 15 := by
  calc (60 : Nat) = (15 + 30) + 15 := by norm_num
       _ = 45 + 15 := by rw [← jelly_rory]
theorem jelly_eaten : (180 : Nat) = 3 * 60 := by
  calc (180 : Nat) = 3 * (45 + 15) := by norm_num
       _ = 3 * 60 := by rw [← jelly_both]
theorem jelly_solution : Jellybeans 15 30 45 60 3 180 := by unfold Jellybeans; exact ⟨jelly_rory, jelly_both, jelly_eaten⟩

theorem cookies_wife : (60 : Nat) * 100 = 200 * 30 := by norm_num
theorem cookies_after_wife : (200 : Nat) = 60 + 140 := by
  calc (200 : Nat) = (200 * 30 / 100) + 140 := by norm_num
       _ = 60 + 140 := by rw [← cookies_wife]; norm_num
theorem cookies_after_daughter : (140 : Nat) = 40 + 100 := by
  calc (140 : Nat) = (200 - 60) := by norm_num
       _ = 40 + 100 := by rw [cookies_after_wife]; norm_num
theorem cookies_javier : (100 : Nat) = 50 * 2 := by
  calc (100 : Nat) = 140 - 40 := by norm_num
       _ = 50 * 2 := by rw [cookies_after_daughter]; norm_num
theorem cookies_uneaten : (100 : Nat) = 50 + 50 := by
  calc (100 : Nat) = 50 * 2 := cookies_javier
       _ = 50 + 50 := by norm_num
theorem cookies_solution : Cookies 200 30 60 140 40 100 50 50 := by unfold Cookies; exact ⟨cookies_wife, cookies_after_wife, cookies_after_daughter, cookies_javier, cookies_uneaten⟩

theorem watermelons_weekly : (5 : Nat) = 3 + 2 := by norm_num
theorem watermelons_weeks : (30 : Nat) = 6 * 5 := by
  calc (30 : Nat) = 6 * (3 + 2) := by norm_num
       _ = 6 * 5 := by rw [← watermelons_weekly]
theorem watermelons_solution : Watermelons 30 3 2 5 6 := by unfold Watermelons; exact ⟨watermelons_weekly, watermelons_weeks⟩


#print axioms sprinkles_solution
#print axioms students_solution
#print axioms water_solution
#print axioms blankets_solution
#print axioms tacks_solution
#print axioms koolaid_solution
#print axioms cycles_solution
#print axioms jelly_solution
#print axioms cookies_solution
#print axioms watermelons_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A03.sprinkles_solution to "work/gsm8k-sprint54-sprinkles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A03.students_solution to "work/gsm8k-sprint54-students-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A03.water_solution to "work/gsm8k-sprint54-water-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A03.blankets_solution to "work/gsm8k-sprint54-blankets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A03.tacks_solution to "work/gsm8k-sprint54-tacks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A03.koolaid_solution to "work/gsm8k-sprint54-koolaid-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A03.cycles_solution to "work/gsm8k-sprint54-cycles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A03.jelly_solution to "work/gsm8k-sprint54-jelly-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A03.cookies_solution to "work/gsm8k-sprint54-cookies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A03.watermelons_solution to "work/gsm8k-sprint54-watermelons-graph.json"
end LemmaWeave.Tests.GSM8KSprint0921A03
