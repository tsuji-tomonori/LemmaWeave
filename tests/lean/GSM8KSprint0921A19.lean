import LemmaWeave.Problems.GSM8K.Sprint0921A19Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0921A19
open LemmaWeave.Problems.GSM8K.Sprint0921A19

theorem election_remaining : (1150 : Nat) = 150 + 1000 := by norm_num
theorem election_james : (1000 : Nat) * 70 = 700 * 100 := by norm_num
theorem election_third : (1000 : Nat) = 700 + 300 := by norm_num
theorem election_difference : (300 : Nat) = 150 + 150 := by norm_num
theorem election_solution : ElectionVotes 1150 150 1000 70 700 300 150 := by
  unfold ElectionVotes
  exact ⟨election_remaining, election_james, election_third, election_difference⟩

theorem sara_joe : (39 : Nat) = 36 + 3 := by norm_num
theorem sara_height : (45 : Nat) = 39 + 6 := by norm_num
theorem sara_solution : HeightSteps 36 3 39 6 45 := by
  unfold HeightSteps
  exact ⟨sara_joe, sara_height⟩

theorem exercise_weekly : (5 : Nat) = 1 * 5 := by norm_num
theorem exercise_total : (40 : Nat) = 5 * 8 := by norm_num
theorem exercise_solution : ExerciseHours 1 5 5 8 40 := by
  unfold ExerciseHours
  exact ⟨exercise_weekly, exercise_total⟩

theorem age_jordyn : (12 : Nat) = 6 * 2 := by norm_num
theorem age_mehki : (22 : Nat) = 12 + 10 := by norm_num
theorem age_solution : AgeSteps 6 2 12 10 22 := by
  unfold AgeSteps
  exact ⟨age_jordyn, age_mehki⟩

theorem cakes_initial : (60 : Nat) = 30 * 2 := by norm_num
theorem cakes_today : (30 : Nat) = 15 * 2 := by norm_num
theorem cakes_after_today : (15 : Nat) + 30 + 15 = 60 := by norm_num
theorem cakes_next : (15 : Nat) = 5 * 3 := by norm_num
theorem cakes_final : (60 : Nat) = 30 + 15 + 5 + 10 := by norm_num
theorem cakes_solution : CakeRemainder 60 2 30 2 15 15 3 5 10 := by
  unfold CakeRemainder
  exact ⟨cakes_initial, cakes_today, cakes_after_today, cakes_next, cakes_final⟩

theorem envelopes_remaining : (1500 : Nat) = 135 + 141 + 1224 := by norm_num
theorem envelopes_hours : (8 : Nat) = 2 + 6 := by norm_num
theorem envelopes_rate : (1224 : Nat) = 204 * 6 := by norm_num
theorem envelopes_solution : EnvelopeRate 1500 135 141 1224 8 2 6 204 := by
  unfold EnvelopeRate
  exact ⟨envelopes_remaining, envelopes_hours, envelopes_rate⟩

theorem apples_tom : (24 : Nat) = 12 * 2 := by norm_num
theorem apples_total : (36 : Nat) = 12 + 24 := by norm_num
theorem apples_solution : AppleTotal 12 2 24 36 := by
  unfold AppleTotal
  exact ⟨apples_tom, apples_total⟩

theorem lawns_count : (16 : Nat) = 2 * 8 := by norm_num
theorem lawns_minutes : (480 : Nat) = 16 * 30 := by norm_num
theorem lawns_hours : (480 : Nat) = 8 * 60 := by norm_num
theorem lawns_solution : LawnHours 2 8 16 30 480 60 8 := by
  unfold LawnHours
  exact ⟨lawns_count, lawns_minutes, lawns_hours⟩

theorem shoes_becky : (13 : Nat) + 5 = 9 * 2 := by norm_num
theorem shoes_bobby_pairs : (27 : Nat) = 9 * 3 := by norm_num
theorem shoes_bobby_individual : (54 : Nat) = 27 * 2 := by norm_num
theorem shoes_solution : ShoeCount 13 5 2 9 3 27 2 54 := by
  unfold ShoeCount
  exact ⟨shoes_becky, shoes_bobby_pairs, shoes_bobby_individual⟩

theorem bulbs_large_lights : (24 : Nat) = 12 * 2 := by norm_num
theorem bulbs_small_lights : (22 : Nat) = 12 + 10 := by norm_num
theorem bulbs_small : (22 : Nat) = 22 * 1 := by norm_num
theorem bulbs_medium : (24 : Nat) = 12 * 2 := by norm_num
theorem bulbs_large : (72 : Nat) = 24 * 3 := by norm_num
theorem bulbs_total : (118 : Nat) = 22 + 24 + 72 := by norm_num
theorem bulbs_solution : CeilingBulbs 12 2 24 10 22 1 2 3 22 24 72 118 := by
  unfold CeilingBulbs
  exact ⟨bulbs_large_lights, bulbs_small_lights, bulbs_small, bulbs_medium,
    bulbs_large, bulbs_total⟩

theorem pipes_plastic : (15 : Nat) = 10 + 5 := by norm_num
theorem pipes_total_meters : (25 : Nat) = 10 + 15 := by norm_num
theorem pipes_cost : (100 : Nat) = 25 * 4 := by norm_num
theorem pipes_solution : PipeCost 10 5 15 25 4 100 := by
  unfold PipeCost
  exact ⟨pipes_plastic, pipes_total_meters, pipes_cost⟩

theorem riding_max : (720 : Nat) = 360 * 2 := by norm_num
theorem riding_short : (180 : Nat) = 90 * 2 := by norm_num
theorem riding_half_day : (360 : Nat) = 180 * 2 := by norm_num
theorem riding_half_total : (360 : Nat) = 180 * 2 := by norm_num
theorem riding_total_minutes : (1260 : Nat) = 720 + 180 + 360 := by norm_num
theorem riding_total_hours : (1260 : Nat) = 21 * 60 := by norm_num
theorem riding_solution : RidingTime 360 2 720 90 2 180 180 2 360 1260 60 21 := by
  unfold RidingTime
  exact ⟨riding_max, riding_short, riding_half_day, riding_half_total,
    riding_total_minutes, riding_total_hours⟩

theorem questions_done : (30 : Nat) = 15 * 2 := by norm_num
theorem questions_remaining : (60 : Nat) = 30 + 30 := by norm_num
theorem questions_solution : QuestionRemainder 15 2 30 60 30 := by
  unfold QuestionRemainder
  exact ⟨questions_done, questions_remaining⟩

theorem bank_deposits : (104000 : Nat) = 2000 * 52 := by norm_num
theorem bank_balance : (354000 : Nat) = 250000 + 104000 := by norm_num
theorem bank_extra : (354000 : Nat) * 50 = 177000 * 100 := by norm_num
theorem bank_windfall : (531000 : Nat) = 354000 + 177000 := by norm_num
theorem bank_total : (885000 : Nat) = 354000 + 531000 := by norm_num
theorem bank_solution : BankWindfall 2000 52 104000 250000 354000 50 177000 531000 885000 := by
  unfold BankWindfall
  exact ⟨bank_deposits, bank_balance, bank_extra, bank_windfall, bank_total⟩

theorem warehouse_nonblue : (1250 : Nat) = 540 + 710 := by norm_num
theorem warehouse_split : (710 : Nat) = 355 + 355 := by norm_num
theorem warehouse_equal : (355 : Nat) = 355 := by norm_num
theorem warehouse_solution : ShoeWarehouse 1250 540 710 355 355 := by
  unfold ShoeWarehouse
  exact ⟨warehouse_nonblue, warehouse_split, warehouse_equal⟩

#print axioms election_solution
#print axioms sara_solution
#print axioms exercise_solution
#print axioms age_solution
#print axioms cakes_solution
#print axioms envelopes_solution
#print axioms apples_solution
#print axioms lawns_solution
#print axioms shoes_solution
#print axioms bulbs_solution
#print axioms pipes_solution
#print axioms riding_solution
#print axioms questions_solution
#print axioms bank_solution
#print axioms warehouse_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A19.election_solution to "work/gsm8k-sprint70-election-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A19.sara_solution to "work/gsm8k-sprint70-sara-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A19.exercise_solution to "work/gsm8k-sprint70-exercise-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A19.age_solution to "work/gsm8k-sprint70-age-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A19.cakes_solution to "work/gsm8k-sprint70-cakes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A19.envelopes_solution to "work/gsm8k-sprint70-envelopes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A19.apples_solution to "work/gsm8k-sprint70-apples-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A19.lawns_solution to "work/gsm8k-sprint70-lawns-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A19.shoes_solution to "work/gsm8k-sprint70-shoes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A19.bulbs_solution to "work/gsm8k-sprint70-bulbs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A19.pipes_solution to "work/gsm8k-sprint70-pipes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A19.riding_solution to "work/gsm8k-sprint70-riding-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A19.questions_solution to "work/gsm8k-sprint70-questions-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A19.bank_solution to "work/gsm8k-sprint70-bank-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A19.warehouse_solution to "work/gsm8k-sprint70-warehouse-graph.json"

end LemmaWeave.Tests.GSM8KSprint0921A19
