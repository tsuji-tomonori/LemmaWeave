import LemmaWeave.Problems.GSM8K.Sprint0920A17Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0920A17
open LemmaWeave.Problems.GSM8K.Sprint0920A17

theorem walk_second : (4 : Nat) = 2 * 2 := by norm_num
theorem walk_total : (6 : Nat) = 2 + 4 := by norm_num
theorem walk_solution : TwoHourWalk 2 2 4 6 := by
  unfold TwoHourWalk; exact ⟨walk_second, walk_total⟩

theorem oranges_count : (400 : Nat) = 5 * 80 := by norm_num
theorem oranges_cost : (600 : Nat) = 5 * 120 := by norm_num
theorem oranges_left : (1000 : Nat) = 600 + 400 := by norm_num
theorem oranges_solution : OrangePurchase 80 400 5 120 600 1000 400 := by
  unfold OrangePurchase; exact ⟨oranges_count, oranges_cost, oranges_left⟩

theorem fruit_kiwi : (78 : Nat) = 26 * 3 := by norm_num
theorem fruit_strawberries : (78 : Nat) = 26 + 52 := by norm_num
theorem fruit_solution : FruitCrate 78 3 26 52 := by
  unfold FruitCrate; exact ⟨fruit_kiwi, fruit_strawberries⟩

theorem berries_steve : (20 : Nat) = 10 * 2 := by norm_num
theorem berries_stacy : (32 : Nat) = 3 * 10 + 2 := by norm_num
theorem berries_solution : Berries 20 2 10 3 2 32 := by
  unfold Berries; exact ⟨berries_steve, berries_stacy⟩

theorem club_coupled : (6 : Nat) = 3 * 2 := by norm_num
theorem club_total : (13 : Nat) = 6 + 5 + 2 := by norm_num
theorem club_turns : (52 : Nat) = 4 * 13 := by norm_num
theorem club_solution : BookClub 3 2 6 5 2 13 52 4 := by
  unfold BookClub; exact ⟨club_coupled, club_total, club_turns⟩

theorem cookies_first : (81 : Nat) = 74 + 7 := by norm_num
theorem cookies_more : (41 : Nat) = 5 + 36 := by norm_num
theorem cookies_baked : (122 : Nat) = 81 + 41 := by norm_num
theorem cookies_thrown : (122 : Nat) = 93 + 29 := by norm_num
theorem cookies_solution : CookieFloor 74 7 81 5 36 41 122 93 29 := by
  unfold CookieFloor; exact ⟨cookies_first, cookies_more, cookies_baked, cookies_thrown⟩

theorem writing_rate : (10 : Nat) = 7 + 3 := by norm_num
theorem writing_words : (15 : Nat) = 3 * 5 := by norm_num
theorem writing_solution : WritingDifference 10 7 3 5 15 := by
  unfold WritingDifference; exact ⟨writing_rate, writing_words⟩

theorem homework_available : (180 : Nat) = 3 * 60 := by norm_num
theorem homework_used : (150 : Nat) = 45 + 30 + 50 + 25 := by norm_num
theorem homework_project : (180 : Nat) = 150 + 30 := by norm_num
theorem homework_solution : HomeworkTime 3 60 180 45 30 50 25 150 30 := by
  unfold HomeworkTime; exact ⟨homework_available, homework_used, homework_project⟩

theorem ages_difference : (19 : Nat) = 15 + 4 := by norm_num
theorem ages_sum : (34 : Nat) = 15 + 19 := by norm_num
theorem ages_solution : Ages 34 4 15 19 := by
  unfold Ages; exact ⟨ages_difference, ages_sum⟩

theorem fence_layer : (100 : Nat) = 20 * 5 := by norm_num
theorem fence_wall : (200 : Nat) = 100 * 2 := by norm_num
theorem fence_total : (800 : Nat) = 4 * 200 := by norm_num
theorem fence_solution : BrickFence 4 20 5 2 100 200 800 := by
  unfold BrickFence; exact ⟨fence_layer, fence_wall, fence_total⟩

theorem pay_worked : (18 : Nat) = 10 + 8 := by norm_num
theorem pay_hours : (38 : Nat) = 18 + 20 := by norm_num
theorem pay_total : (760 : Nat) = 38 * 20 := by norm_num
theorem pay_solution : WeeklyPay 10 8 18 20 38 20 760 := by
  unfold WeeklyPay; exact ⟨pay_worked, pay_hours, pay_total⟩

theorem survey_agree : (160 : Nat) * 100 = 800 * 20 := by norm_num
theorem survey_disagree : (800 : Nat) = 160 + 640 := by norm_num
theorem survey_solution : TuitionSurvey 800 20 160 640 := by
  unfold TuitionSurvey; exact ⟨survey_agree, survey_disagree⟩

theorem height_parent : (7 : Nat) = 5 + 2 := by norm_num
theorem height_total : (12 : Nat) = 7 + 5 := by norm_num
theorem height_solution : CombinedHeight 5 2 7 12 := by
  unfold CombinedHeight; exact ⟨height_parent, height_total⟩

theorem drawing_extra : (80 : Nat) * 100 = 160 * 50 := by norm_num
theorem drawing_total : (240 : Nat) = 160 + 80 := by norm_num
theorem drawing_solution : ColorDrawing 160 50 80 240 := by
  unfold ColorDrawing; exact ⟨drawing_extra, drawing_total⟩

theorem metal_steel : (110 : Nat) = 90 + 20 := by norm_num
theorem metal_tin : (110 : Nat) = 2 * 55 := by norm_num
theorem metal_copper_total : (1800 : Nat) = 20 * 90 := by norm_num
theorem metal_steel_total : (2200 : Nat) = 20 * 110 := by norm_num
theorem metal_tin_total : (1100 : Nat) = 20 * 55 := by norm_num
theorem metal_total : (5100 : Nat) = 1800 + 2200 + 1100 := by norm_num
theorem metal_solution : MetalBars 90 20 110 2 55 20 1800 2200 1100 5100 := by
  unfold MetalBars
  exact ⟨metal_steel, metal_tin, metal_copper_total, metal_steel_total, metal_tin_total, metal_total⟩

#print axioms walk_solution
#print axioms oranges_solution
#print axioms fruit_solution
#print axioms berries_solution
#print axioms club_solution
#print axioms cookies_solution
#print axioms writing_solution
#print axioms homework_solution
#print axioms ages_solution
#print axioms fence_solution
#print axioms pay_solution
#print axioms survey_solution
#print axioms height_solution
#print axioms drawing_solution
#print axioms metal_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A17.walk_solution to "work/gsm8k-sprint49-walk-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A17.oranges_solution to "work/gsm8k-sprint49-oranges-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A17.fruit_solution to "work/gsm8k-sprint49-fruit-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A17.berries_solution to "work/gsm8k-sprint49-berries-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A17.club_solution to "work/gsm8k-sprint49-club-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A17.cookies_solution to "work/gsm8k-sprint49-cookies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A17.writing_solution to "work/gsm8k-sprint49-writing-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A17.homework_solution to "work/gsm8k-sprint49-homework-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A17.ages_solution to "work/gsm8k-sprint49-ages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A17.fence_solution to "work/gsm8k-sprint49-fence-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A17.pay_solution to "work/gsm8k-sprint49-pay-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A17.survey_solution to "work/gsm8k-sprint49-survey-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A17.height_solution to "work/gsm8k-sprint49-height-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A17.drawing_solution to "work/gsm8k-sprint49-drawing-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A17.metal_solution to "work/gsm8k-sprint49-metal-graph.json"

end LemmaWeave.Tests.GSM8KSprint0920A17
