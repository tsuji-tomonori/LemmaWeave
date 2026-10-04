import LemmaWeave.Problems.GSM8K.Sprint0920A14Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0920A14
open LemmaWeave.Problems.GSM8K.Sprint0920A14

theorem frogs_reduction : (9 : Nat) * 100 = 45 * 20 := by norm_num
theorem frogs_crystal : (45 : Nat) = 36 + 9 := by norm_num
theorem frogs_total : (81 : Nat) = 45 + 36 := by norm_num
theorem frogs_solution : LakeFrogs 45 20 9 36 81 := by
  unfold LakeFrogs
  exact ⟨frogs_reduction, frogs_crystal, frogs_total⟩

theorem mail_friends : (82 : Nat) = 2 * 41 := by norm_num
theorem mail_johann : (180 : Nat) = 82 + 98 := by norm_num
theorem mail_solution : CertifiedMail 180 2 41 82 98 := by
  unfold CertifiedMail
  exact ⟨mail_friends, mail_johann⟩

theorem allowance_junk : (30 : Nat) = 10 * 3 := by norm_num
theorem allowance_after_junk : (30 : Nat) = 10 + 20 := by norm_num
theorem allowance_saved : (20 : Nat) = 8 + 12 := by norm_num
theorem allowance_solution : Allowance 30 3 10 8 20 12 := by
  unfold Allowance
  exact ⟨allowance_junk, allowance_after_junk, allowance_saved⟩

theorem elevator_down : (9 : Nat) = 2 + 7 := by norm_num
theorem elevator_first_up : (5 : Nat) = 2 + 3 := by norm_num
theorem elevator_top : (13 : Nat) = 5 + 8 := by norm_num
theorem elevator_solution : ElevatorTrip 9 7 2 3 5 8 13 := by
  unfold ElevatorTrip
  exact ⟨elevator_down, elevator_first_up, elevator_top⟩

theorem sales_credit : (32 : Nat) * 5 = 80 * 2 := by norm_num
theorem sales_cash : (80 : Nat) = 32 + 48 := by norm_num
theorem sales_solution : ShopSales 80 2 5 32 48 := by
  unfold ShopSales
  exact ⟨sales_credit, sales_cash⟩

theorem muffins_people : (5 : Nat) = 4 + 1 := by norm_num
theorem muffins_each : (20 : Nat) = 5 * 4 := by norm_num
theorem muffins_solution : MuffinShare 4 1 5 20 4 := by
  unfold MuffinShare
  exact ⟨muffins_people, muffins_each⟩

theorem throws_played : (16 : Nat) * 100 = 20 * 80 := by norm_num
theorem throws_fouls : (80 : Nat) = 16 * 5 := by norm_num
theorem throws_attempts : (160 : Nat) = 80 * 2 := by norm_num
theorem throws_made : (112 : Nat) * 100 = 160 * 70 := by norm_num
theorem throws_solution : FreeThrows 20 80 16 5 80 2 160 70 112 := by
  unfold FreeThrows
  exact ⟨throws_played, throws_fouls, throws_attempts, throws_made⟩

theorem salary_full : (40 : Nat) = 4 * 10 := by norm_num
theorem salary_half : (10 : Nat) = 5 * 2 := by norm_num
theorem salary_weekend : (15 : Nat) = 3 * 5 := by norm_num
theorem salary_total : (55 : Nat) = 40 + 15 := by norm_num
theorem salary_solution : WeeklySalary 4 10 2 5 3 40 15 55 := by
  unfold WeeklySalary
  exact ⟨salary_full, salary_half, salary_weekend, salary_total⟩

theorem wheels_vehicles : (25 : Nat) = 12 + 13 := by norm_num
theorem wheels_total : (100 : Nat) = 25 * 4 := by norm_num
theorem wheels_solution : VehicleWheels 12 13 25 4 100 := by
  unfold VehicleWheels
  exact ⟨wheels_vehicles, wheels_total⟩

theorem ants_workers : (110 : Nat) = 55 * 2 := by norm_num
theorem ants_male : (11 : Nat) * 100 = 55 * 20 := by norm_num
theorem ants_female : (55 : Nat) = 11 + 44 := by norm_num
theorem ants_solution : WorkerAnts 110 2 55 20 11 44 := by
  unfold WorkerAnts
  exact ⟨ants_workers, ants_male, ants_female⟩

theorem football_grant_extra : (4 : Nat) * 100 = 16 * 25 := by norm_num
theorem football_grant : (20 : Nat) = 16 + 4 := by norm_num
theorem football_kyle_intended : (40 : Nat) = 2 * 20 := by norm_num
theorem football_difference_intended : (40 : Nat) = 16 + 24 := by norm_num
theorem football_intended_solution : FootballThrows 16 25 4 20 2 40 24 := by
  unfold FootballThrows
  exact ⟨football_grant_extra, football_grant, football_kyle_intended, football_difference_intended⟩
theorem football_literal_counterexample : (60 : Nat) = 20 + 2 * 20 ∧ 60 = 16 + 44 := by norm_num
theorem football_solution : FootballThrows 16 25 4 20 2 40 24 ∧
    ((60 : Nat) = 20 + 2 * 20 ∧ 60 = 16 + 44) := by
  exact ⟨football_intended_solution, football_literal_counterexample⟩

theorem corn_rows : (29 : Nat) = 13 + 16 := by norm_num
theorem corn_total : (116 : Nat) = 29 * 4 := by norm_num
theorem corn_solution : CornCobs 13 16 29 4 116 := by
  unfold CornCobs
  exact ⟨corn_rows, corn_total⟩

theorem stripes_rick : (3 : Nat) = 2 + 1 := by norm_num
theorem stripes_hortense : (6 : Nat) = 2 * 3 := by norm_num
theorem stripes_total : (22 : Nat) = 2 * (3 + 2 + 6) := by norm_num
theorem stripes_solution : ShoeStripes 3 1 2 2 6 2 22 := by
  unfold ShoeStripes
  exact ⟨stripes_rick, stripes_hortense, stripes_total⟩

theorem cookies_per_day : (24 : Nat) = 2 * 12 := by norm_num
theorem cookies_baked : (144 : Nat) = 24 * 6 := by norm_num
theorem cookies_frank : (6 : Nat) = 1 * 6 := by norm_num
theorem cookies_left : (144 : Nat) = 6 + 4 + 134 := by norm_num
theorem cookies_solution : CookieBaking 2 12 24 6 144 1 6 4 134 := by
  unfold CookieBaking
  exact ⟨cookies_per_day, cookies_baked, cookies_frank, cookies_left⟩

theorem height_carter : (48 : Nat) = 2 * 24 := by norm_num
theorem height_betty_inches : (48 : Nat) = 36 + 12 := by norm_num
theorem height_betty_feet : (36 : Nat) = 3 * 12 := by norm_num
theorem height_solution : HeightFeet 24 2 48 12 36 12 3 := by
  unfold HeightFeet
  exact ⟨height_carter, height_betty_inches, height_betty_feet⟩

#print axioms frogs_solution
#print axioms mail_solution
#print axioms allowance_solution
#print axioms elevator_solution
#print axioms sales_solution
#print axioms muffins_solution
#print axioms throws_solution
#print axioms salary_solution
#print axioms wheels_solution
#print axioms ants_solution
#print axioms football_solution
#print axioms corn_solution
#print axioms stripes_solution
#print axioms cookies_solution
#print axioms height_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A14.frogs_solution to "work/gsm8k-sprint46-frogs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A14.mail_solution to "work/gsm8k-sprint46-mail-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A14.allowance_solution to "work/gsm8k-sprint46-allowance-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A14.elevator_solution to "work/gsm8k-sprint46-elevator-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A14.sales_solution to "work/gsm8k-sprint46-sales-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A14.muffins_solution to "work/gsm8k-sprint46-muffins-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A14.throws_solution to "work/gsm8k-sprint46-throws-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A14.salary_solution to "work/gsm8k-sprint46-salary-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A14.wheels_solution to "work/gsm8k-sprint46-wheels-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A14.ants_solution to "work/gsm8k-sprint46-ants-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A14.football_solution to "work/gsm8k-sprint46-football-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A14.corn_solution to "work/gsm8k-sprint46-corn-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A14.stripes_solution to "work/gsm8k-sprint46-stripes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A14.cookies_solution to "work/gsm8k-sprint46-cookies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A14.height_solution to "work/gsm8k-sprint46-height-graph.json"

end LemmaWeave.Tests.GSM8KSprint0920A14
