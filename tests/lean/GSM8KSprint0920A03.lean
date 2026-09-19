import LemmaWeave.Problems.GSM8K.Sprint0920A03Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0920A03
open LemmaWeave.Problems.GSM8K.Sprint0920A03

theorem panda_couples : (8 : Nat) * 2 = 16 := by norm_num
theorem panda_pregnant : (2 : Nat) * 4 = 8 := by norm_num
theorem panda_babies : (2 : Nat) = 2 := rfl
theorem panda_solution : PandaBabies 16 8 2 2 := by
  unfold PandaBabies
  exact ⟨panda_couples, panda_pregnant, panda_babies⟩

theorem movies_per_screen : (4 : Nat) * 2 = 8 := by norm_num
theorem movies_total : (24 : Nat) = 6 * 4 := by norm_num
theorem movies_solution : MovieShows 6 8 2 4 24 := by
  unfold MovieShows
  exact ⟨movies_per_screen, movies_total⟩

theorem vase_discount : (50 : Nat) * 4 = 200 := by norm_num
theorem vase_sale : (150 : Nat) + 50 = 200 := by norm_num
theorem vase_tax : (15 : Nat) * 10 = 150 := by norm_num
theorem vase_total : (165 : Nat) = 150 + 15 := by norm_num
theorem vase_solution : VasePurchase 200 50 150 15 165 := by
  unfold VasePurchase
  exact ⟨vase_discount, vase_sale, vase_tax, vase_total⟩

theorem age_equations : BrotherAges 7 14 := by
  unfold BrotherAges
  norm_num
theorem age_unique (d y : Nat) (h : BrotherAges d y) : d = 7 := by
  unfold BrotherAges at h
  omega
theorem age_solution : BrotherAges 7 14 ∧ ∀ d y, BrotherAges d y → d = 7 :=
  ⟨age_equations, age_unique⟩

theorem attendance_absent : (5 : Nat) + 1 = 3 * 2 := by norm_num
theorem attendance_present : (16 : Nat) * 3 = 4 * 6 * 2 := by norm_num
theorem attendance_total : (23 : Nat) = 16 + 2 + 5 := by norm_num
theorem attendance_solution : ClassAttendance 2 5 4 6 16 23 := by
  unfold ClassAttendance
  exact ⟨attendance_absent, attendance_present, attendance_total⟩

theorem walk_daily : (6 : Nat) = 3 + 3 := by norm_num
theorem walk_month_half : (180 : Nat) = 30 * 6 := by norm_num
theorem walk_miles : (90 : Nat) * 2 = 180 := by norm_num
theorem walk_solution :
    DailyWalkHalfMiles 3 3 30 180 90 ∧
      (6 : Nat) = 3 + 3 ∧ (180 : Nat) = 30 * 6 := by
  refine ⟨?_, walk_daily, walk_month_half⟩
  unfold DailyWalkHalfMiles
  exact ⟨rfl, rfl, by norm_num, walk_miles⟩

theorem cds_given : (7 : Nat) * 3 = 21 := by norm_num
theorem cds_remaining : (14 : Nat) + 7 = 21 := by norm_num
theorem cds_total : (22 : Nat) = 14 + 8 := by norm_num
theorem cds_solution : CDCollection 21 7 14 8 22 := by
  unfold CDCollection
  exact ⟨cds_given, cds_remaining, cds_total⟩

theorem fish_after_sale : (150 : Nat) + 50 = 200 := by norm_num
theorem fish_spoiled : (50 : Nat) * 3 = 150 := by norm_num
theorem fish_usable : (100 : Nat) + 50 = 150 := by norm_num
theorem fish_total : (300 : Nat) = 100 + 200 := by norm_num
theorem fish_solution : FishStock 200 50 150 50 100 200 300 := by
  unfold FishStock
  exact ⟨fish_after_sale, fish_spoiled, fish_usable, fish_total⟩

theorem parade_julie : (11 : Nat) * 2 = 22 := by norm_num
theorem parade_carlos : (26 : Nat) = 2 * 13 := by norm_num
theorem parade_total : (72 : Nat) = 22 + 13 + 11 + 26 := by norm_num
theorem parade_solution : ParadeCandy 22 13 11 26 72 := by
  unfold ParadeCandy
  exact ⟨parade_julie, parade_carlos, parade_total⟩

theorem clinic_visit : (60 : Nat) * 10 = 200 * 3 := by norm_num
theorem clinic_two_visits : (120 : Nat) = 2 * 60 := by norm_num
theorem clinic_saved : (80 : Nat) + 120 = 200 := by norm_num
theorem clinic_solution : ClinicSavings 200 60 2 120 80 := by
  unfold ClinicSavings
  exact ⟨clinic_visit, clinic_two_visits, clinic_saved⟩

theorem bakery_flavored : (900 : Nat) = 2 * 450 := by norm_num
theorem bakery_lattes : (500 : Nat) = 2 * 250 := by norm_num
theorem bakery_total : (2100 : Nat) = 900 + 500 + 300 + 400 := by norm_num
theorem bakery_solution : BakerySpend 900 500 300 400 2100 := by
  unfold BakerySpend
  exact ⟨bakery_flavored, bakery_lattes, bakery_total⟩

theorem bracelet_gift : (4 : Nat) * 4 = 16 := by norm_num
theorem bracelet_before : (9 : Nat) = 5 + 4 := by norm_num
theorem bracelet_given : (3 : Nat) * 3 = 9 := by norm_num
theorem bracelet_remaining : (6 : Nat) + 3 = 9 := by norm_num
theorem bracelet_solution : BraceletFlow 5 16 4 9 3 6 := by
  unfold BraceletFlow
  exact ⟨bracelet_gift, bracelet_before, bracelet_given, bracelet_remaining⟩

theorem plates_days : (3 : Nat) + 4 = 7 := by norm_num
theorem plates_solo : (2 : Nat) = 2 := rfl
theorem plates_family : (8 : Nat) = 4 * 2 := by norm_num
theorem plates_total : (38 : Nat) = 3 * 2 + 4 * 8 := by norm_num
theorem plates_solution : WeeklyPlates 3 4 2 8 38 := by
  unfold WeeklyPlates
  exact ⟨plates_days, plates_solo, plates_family, plates_total⟩

theorem coffee_beans : (42 : Nat) = 2 * 3 * 7 := by norm_num
theorem coffee_bags : (42 : Nat) = 2 * 21 := by norm_num
theorem coffee_bean_cost : (16 : Nat) = 2 * 8 := by norm_num
theorem coffee_milk : (2 : Nat) = 2 := rfl
theorem coffee_total : (18 : Nat) = 16 + 2 := by norm_num
theorem coffee_solution : WeeklyCoffee 2 3 7 42 21 2 16 2 18 := by
  unfold WeeklyCoffee
  exact ⟨coffee_beans, rfl, coffee_bags, coffee_bean_cost, coffee_milk, coffee_total⟩

theorem chores_count : (12 : Nat) = 7 + 1 + 4 := by norm_num
theorem chores_minutes : (120 : Nat) = 12 * 10 := by norm_num
theorem chores_hours : (2 : Nat) * 60 = 120 := by norm_num
theorem chores_solution : ChoreTime 7 1 4 12 120 2 := by
  unfold ChoreTime
  exact ⟨chores_count, chores_minutes, chores_hours⟩

#print axioms panda_solution
#print axioms movies_solution
#print axioms vase_solution
#print axioms age_solution
#print axioms attendance_solution
#print axioms walk_solution
#print axioms cds_solution
#print axioms fish_solution
#print axioms parade_solution
#print axioms clinic_solution
#print axioms bakery_solution
#print axioms bracelet_solution
#print axioms plates_solution
#print axioms coffee_solution
#print axioms chores_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A03.panda_solution to "work/gsm8k-sprint35-panda-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A03.movies_solution to "work/gsm8k-sprint35-movies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A03.vase_solution to "work/gsm8k-sprint35-vase-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A03.age_solution to "work/gsm8k-sprint35-age-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A03.attendance_solution to "work/gsm8k-sprint35-attendance-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A03.walk_solution to "work/gsm8k-sprint35-walk-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A03.cds_solution to "work/gsm8k-sprint35-cds-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A03.fish_solution to "work/gsm8k-sprint35-fish-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A03.parade_solution to "work/gsm8k-sprint35-parade-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A03.clinic_solution to "work/gsm8k-sprint35-clinic-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A03.bakery_solution to "work/gsm8k-sprint35-bakery-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A03.bracelet_solution to "work/gsm8k-sprint35-bracelet-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A03.plates_solution to "work/gsm8k-sprint35-plates-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A03.coffee_solution to "work/gsm8k-sprint35-coffee-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A03.chores_solution to "work/gsm8k-sprint35-chores-graph.json"

end LemmaWeave.Tests.GSM8KSprint0920A03
