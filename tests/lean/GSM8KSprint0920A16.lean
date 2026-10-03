import LemmaWeave.Problems.GSM8K.Sprint0920A16Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0920A16
open LemmaWeave.Problems.GSM8K.Sprint0920A16

theorem fund_students : (100 : Nat) = 20 * 5 := by norm_num
theorem fund_total : (150 : Nat) = 50 + 100 := by norm_num
theorem fund_trip : (140 : Nat) = 20 * 7 := by norm_num
theorem fund_left : (150 : Nat) = 140 + 10 := by norm_num
theorem fund_solution : ClassFund 50 20 5 100 150 7 140 10 := by
  unfold ClassFund; exact ⟨fund_students, fund_total, fund_trip, fund_left⟩

theorem pad_uses : (6 : Nat) = 3 * 2 := by norm_num
theorem pad_each : (30 : Nat) = 5 * 6 := by norm_num
theorem pad_solution : HeatingPad 30 3 2 6 5 := by
  unfold HeatingPad; exact ⟨pad_uses, pad_each⟩

theorem plants_orchids : (1000 : Nat) = 20 * 50 := by norm_num
theorem plants_money : (375 : Nat) = 15 * 25 := by norm_num
theorem plants_earnings : (1375 : Nat) = 1000 + 375 := by norm_num
theorem plants_workers : (80 : Nat) = 2 * 40 := by norm_num
theorem plants_expenses : (230 : Nat) = 80 + 150 := by norm_num
theorem plants_left : (1375 : Nat) = 230 + 1145 := by norm_num
theorem plants_solution : PlantSales 20 50 1000 15 25 375 1375 2 40 80 150 230 1145 := by
  unfold PlantSales
  exact ⟨plants_orchids, plants_money, plants_earnings, plants_workers, plants_expenses, plants_left⟩

theorem money_jethro : (60 : Nat) = 3 * 20 := by norm_num
theorem money_carmen : (2 : Nat) * 20 = 33 + 7 := by norm_num
theorem money_total : (113 : Nat) = 60 + 20 + 33 := by norm_num
theorem money_solution : ThreePeopleMoney 60 3 20 2 7 33 113 := by
  unfold ThreePeopleMoney; exact ⟨money_jethro, money_carmen, money_total⟩

theorem golf_phone : (1200 : Nat) = 800 + 400 := by norm_num
theorem golf_extra : (240 : Nat) * 100 = 1200 * 20 := by norm_num
theorem golf_entry : (1440 : Nat) = 1200 + 240 := by norm_num
theorem golf_solution : GolfEntry 800 400 1200 20 240 1440 := by
  unfold GolfEntry; exact ⟨golf_phone, golf_extra, golf_entry⟩

theorem renovation_equal_rate : RenovationCost 2 6 7 15 15 630 630 1260 := by
  unfold RenovationCost; norm_num
theorem renovation_other_rate : RenovationCost 2 6 7 15 20 630 840 1470 := by
  unfold RenovationCost; norm_num
theorem renovation_nonunique : (1260 : Nat) ≠ 1470 := by norm_num
theorem renovation_solution : RenovationCost 2 6 7 15 15 630 630 1260 ∧
    RenovationCost 2 6 7 15 20 630 840 1470 ∧ (1260 : Nat) ≠ 1470 := by
  exact ⟨renovation_equal_rate, renovation_other_rate, renovation_nonunique⟩

theorem shirts_sale : (10 : Nat) * 100 = 20 * 50 := by norm_num
theorem shirts_total : (40 : Nat) = 4 * 10 := by norm_num
theorem shirts_solution : DiscountShirts 4 20 50 10 40 := by
  unfold DiscountShirts; exact ⟨shirts_sale, shirts_total⟩

theorem parent_dad : (40 : Nat) = 4 * 10 := by norm_num
theorem parent_mom : (40 : Nat) = 38 + 2 := by norm_num
theorem parent_birth : (38 : Nat) = 28 + 10 := by norm_num
theorem parent_solution : ParentAge 10 4 40 2 38 28 := by
  unfold ParentAge; exact ⟨parent_dad, parent_mom, parent_birth⟩

theorem walking_relations : WalkingDistance 7 18 4 10 25 := by
  unfold WalkingDistance; norm_num
theorem walking_unique (hiro rajesh : Nat) (h : WalkingDistance hiro rajesh 4 10 25) : rajesh = 18 := by
  unfold WalkingDistance at h
  omega
theorem walking_solution : WalkingDistance 7 18 4 10 25 ∧
    ∀ hiro rajesh : Nat, WalkingDistance hiro rajesh 4 10 25 → rajesh = 18 := by
  exact ⟨walking_relations, walking_unique⟩

theorem muffins_sold : (16 : Nat) = 12 + 4 := by norm_num
theorem muffins_left : (20 : Nat) = 16 + 4 := by norm_num
theorem muffins_solution : MuffinGoal 20 12 4 16 4 := by
  unfold MuffinGoal; exact ⟨muffins_sold, muffins_left⟩

theorem alligators_adult : (15 : Nat) * 100 = 25 * 60 := by norm_num
theorem alligators_total : (50 : Nat) = 25 + 25 := by norm_num
theorem alligators_equal : (25 : Nat) = 25 := by norm_num
theorem alligators_solution : Alligators 60 15 25 25 50 := by
  unfold Alligators; exact ⟨alligators_adult, alligators_total, alligators_equal⟩

theorem soup_rate : (50 : Nat) = 10 * 5 := by norm_num
theorem soup_ounces : (768 : Nat) = 6 * 128 := by norm_num
theorem soup_lower : (768 : Nat) = 15 * 50 + 18 := by norm_num
theorem soup_upper : ((15 : Nat) + 1) * 50 = 768 + 32 := by norm_num
theorem soup_nearest : (18 : Nat) < 32 := by norm_num
theorem soup_solution : SoupService 10 5 50 6 128 768 15 18 32 := by
  unfold SoupService; exact ⟨soup_rate, soup_ounces, soup_lower, soup_upper, soup_nearest⟩

theorem wood_initial : (40 : Nat) = 8 * 5 := by norm_num
theorem wood_missing : (80 : Nat) = 40 + 40 := by norm_num
theorem wood_logs : (40 : Nat) = 8 * 5 := by norm_num
theorem wood_solution : Woodblocks 80 8 5 40 40 8 := by
  unfold Woodblocks; exact ⟨wood_initial, wood_missing, wood_logs⟩

theorem commission_sales : (781000 : Nat) = 157000 + 499000 + 125000 := by norm_num
theorem commission_amount : (15620 : Nat) * 100 = 781000 * 2 := by norm_num
theorem commission_solution : Commission 157000 499000 125000 781000 2 15620 := by
  unfold Commission; exact ⟨commission_sales, commission_amount⟩

theorem jerseys_long : (60 : Nat) = 4 * 15 := by norm_num
theorem jerseys_striped_cost : (80 : Nat) = 60 + 20 := by norm_num
theorem jerseys_count : (20 : Nat) = 2 * 10 := by norm_num
theorem jerseys_solution : Jerseys 4 15 60 80 10 20 2 := by
  unfold Jerseys; exact ⟨jerseys_long, jerseys_striped_cost, jerseys_count⟩

#print axioms fund_solution
#print axioms pad_solution
#print axioms plants_solution
#print axioms money_solution
#print axioms golf_solution
#print axioms renovation_solution
#print axioms shirts_solution
#print axioms parent_solution
#print axioms walking_solution
#print axioms muffins_solution
#print axioms alligators_solution
#print axioms soup_solution
#print axioms wood_solution
#print axioms commission_solution
#print axioms jerseys_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A16.fund_solution to "work/gsm8k-sprint48-fund-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A16.pad_solution to "work/gsm8k-sprint48-pad-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A16.plants_solution to "work/gsm8k-sprint48-plants-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A16.money_solution to "work/gsm8k-sprint48-money-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A16.golf_solution to "work/gsm8k-sprint48-golf-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A16.renovation_solution to "work/gsm8k-sprint48-renovation-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A16.shirts_solution to "work/gsm8k-sprint48-shirts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A16.parent_solution to "work/gsm8k-sprint48-parent-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A16.walking_solution to "work/gsm8k-sprint48-walking-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A16.muffins_solution to "work/gsm8k-sprint48-muffins-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A16.alligators_solution to "work/gsm8k-sprint48-alligators-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A16.soup_solution to "work/gsm8k-sprint48-soup-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A16.wood_solution to "work/gsm8k-sprint48-wood-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A16.commission_solution to "work/gsm8k-sprint48-commission-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A16.jerseys_solution to "work/gsm8k-sprint48-jerseys-graph.json"

end LemmaWeave.Tests.GSM8KSprint0920A16
