import LemmaWeave.Problems.GSM8K.Sprint0921A05Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract
namespace LemmaWeave.Tests.GSM8KSprint0921A05
open LemmaWeave.Problems.GSM8K.Sprint0921A05

theorem phone_day2 : (10 : Nat) = 5 * 2 := by norm_num
theorem phone_day3 : (20 : Nat) = 10 * 2 := by
  calc (20 : Nat) = (5 * 2) * 2 := by norm_num
       _ = 10 * 2 := by rw [← phone_day2]
theorem phone_day4 : (40 : Nat) = 20 * 2 := by
  calc (40 : Nat) = (10 * 2) * 2 := by norm_num
       _ = 20 * 2 := by rw [← phone_day3]
theorem phone_day5 : (80 : Nat) = 40 * 2 := by
  calc (80 : Nat) = (20 * 2) * 2 := by norm_num
       _ = 40 * 2 := by rw [← phone_day4]
theorem phone_total : (155 : Nat) = 5 + 10 + 20 + 40 + 80 := by
  calc (155 : Nat) = 5 + 10 + 20 + 40 + (40 * 2) := by norm_num
       _ = 5 + 10 + 20 + 40 + 80 := by rw [← phone_day5]
theorem phone_solution : PhoneWeek 5 10 20 40 80 155 := by
  unfold PhoneWeek; exact ⟨phone_day2, phone_day3, phone_day4, phone_day5, phone_total⟩

theorem brochures_double_spreads : (40 : Nat) = 20 * 2 := by norm_num
theorem brochures_double_pages : (80 : Nat) = 40 * 2 := by
  calc (80 : Nat) = (20 * 2) * 2 := by norm_num
       _ = 40 * 2 := by rw [← brochures_double_spreads]
theorem brochures_spread_pages : (100 : Nat) = 20 + 80 := by
  calc (100 : Nat) = 20 + 40 * 2 := by norm_num
       _ = 20 + 80 := by rw [← brochures_double_pages]
theorem brochures_ad_blocks : (100 : Nat) = 25 * 4 := by
  calc (100 : Nat) = 20 + 80 := brochures_spread_pages
       _ = 25 * 4 := by norm_num
theorem brochures_ads : (100 : Nat) = 25 * 4 := brochures_ad_blocks
theorem brochures_ad_pages : (100 : Nat) = 25 * 4 := brochures_ads
theorem brochures_total_pages : (125 : Nat) = 100 + 25 := by
  calc (125 : Nat) = 100 + (100 / 4) := by norm_num
       _ = 100 + 25 := by rw [brochures_ad_pages]; norm_num
theorem brochures_count : (125 : Nat) = 5 * 25 := by
  calc (125 : Nat) = 100 + 25 := brochures_total_pages
       _ = 5 * 25 := by norm_num
theorem brochures_solution : Brochures 20 40 80 100 25 100 25 125 5 25 := by
  unfold Brochures
  exact ⟨brochures_double_spreads, brochures_double_pages, brochures_spread_pages,
    brochures_ad_blocks, brochures_ads, brochures_ad_pages, brochures_total_pages,
    brochures_count⟩

theorem pens_clara : (24 : Nat) * 5 = 60 * 2 := by norm_num
theorem pens_difference : (60 : Nat) = 24 + 36 := by
  calc (60 : Nat) = (60 * 2 / 5) + 36 := by norm_num
       _ = 24 + 36 := by rw [← pens_clara]; norm_num
theorem pens_clara_age : (56 : Nat) = 20 + 36 := by
  calc (56 : Nat) = 20 + (60 - 24) := by norm_num
       _ = 20 + 36 := by rw [pens_difference]; norm_num
theorem pens_future : (61 : Nat) = 56 + 5 := by
  calc (61 : Nat) = (20 + 36) + 5 := by norm_num
       _ = 56 + 5 := by rw [← pens_clara_age]
theorem pens_solution : PenAge 60 24 36 20 56 5 61 := by
  unfold PenAge; exact ⟨pens_clara, pens_difference, pens_clara_age, pens_future⟩

theorem running_days : (5 : Nat) = 3 + 2 := by norm_num
theorem running_daily : (2 : Nat) = 1 + 1 := by norm_num
theorem running_weekly : (10 : Nat) = 5 * 2 := by
  calc (10 : Nat) = (3 + 2) * (1 + 1) := by norm_num
       _ = 5 * 2 := by rw [← running_days, ← running_daily]
theorem running_solution : Running 3 2 5 1 1 2 10 := by
  unfold Running; exact ⟨running_days, running_daily, running_weekly⟩

theorem watch_available : (13 : Nat) = 12 + 1 := by norm_num
theorem watch_needed : (20 : Nat) = 13 + 7 := by
  calc (20 : Nat) = (12 + 1) + 7 := by norm_num
       _ = 13 + 7 := by rw [← watch_available]
theorem watch_solution : Watch 12 1 13 20 7 := by
  unfold Watch; exact ⟨watch_available, watch_needed⟩

theorem laundry_blouses : (9 : Nat) * 100 = 12 * 75 := by norm_num
theorem laundry_skirts : (3 : Nat) * 100 = 6 * 50 := by norm_num
theorem laundry_slacks : (2 : Nat) * 100 = 8 * 25 := by norm_num
theorem laundry_total : (14 : Nat) = 9 + 3 + 2 := by
  calc (14 : Nat) = (12 * 75 / 100) + (6 * 50 / 100) + (8 * 25 / 100) := by norm_num
       _ = 9 + 3 + 2 := by rw [← laundry_blouses, ← laundry_skirts, ← laundry_slacks]; norm_num
theorem laundry_solution : Laundry 12 75 9 6 50 3 8 25 2 14 := by
  unfold Laundry; exact ⟨laundry_blouses, laundry_skirts, laundry_slacks, laundry_total⟩

theorem kitchen_angela_plates : (66 : Nat) = 3 * 20 + 6 := by norm_num
theorem kitchen_angela_cutlery : (66 : Nat) = 33 * 2 := by
  calc (66 : Nat) = 3 * 20 + 6 := kitchen_angela_plates
       _ = 33 * 2 := by norm_num
theorem kitchen_sharon_pots : (20 : Nat) = 10 * 2 := by norm_num
theorem kitchen_sharon_plates : (178 : Nat) + 20 = 3 * 66 := by
  calc (178 : Nat) + 20 = 3 * (3 * 20 + 6) := by norm_num
       _ = 3 * 66 := by rw [← kitchen_angela_plates]
theorem kitchen_sharon_cutlery : (66 : Nat) = 2 * 33 := by
  calc (66 : Nat) = 33 * 2 := kitchen_angela_cutlery
       _ = 2 * 33 := by omega
theorem kitchen_total : (254 : Nat) = 10 + 178 + 66 := by
  calc (254 : Nat) = 10 + 178 + 66 := by norm_num
       _ = (20 / 2) + 178 + 66 := by rw [kitchen_sharon_pots]; norm_num
       _ = (20 / 2) + (3 * 66 - 20) + 66 := by rw [← kitchen_sharon_plates]; norm_num
       _ = (20 / 2) + (3 * 66 - 20) + (2 * 33) := by rw [kitchen_sharon_cutlery]
theorem kitchen_solution : Kitchen 20 66 33 10 178 66 254 := by
  unfold Kitchen
  exact ⟨kitchen_angela_plates, kitchen_angela_cutlery, kitchen_sharon_pots,
    kitchen_sharon_plates, kitchen_sharon_cutlery, kitchen_total⟩

theorem bridge_reference_b : (20 : Nat) * 2 = 40 := by norm_num
theorem bridge_reference_other : (150 : Nat) = 40 + 20 + 90 := by
  calc (150 : Nat) = 40 + (40 / 2) + 90 := by norm_num
       _ = 40 + 20 + 90 := by rw [← bridge_reference_b]; norm_num
theorem bridge_reference_solution : ReferenceBridge 40 20 150 90 := by
  unfold ReferenceBridge; exact ⟨rfl, bridge_reference_b, bridge_reference_other⟩
theorem bridge_general_90 : GeneralBridge 40 20 150 90 := by
  unfold GeneralBridge; exact ⟨by norm_num, bridge_reference_b, bridge_reference_other⟩
theorem bridge_general_87 : GeneralBridge 42 21 150 87 := by
  unfold GeneralBridge; norm_num
theorem bridge_not_unique : (90 : Nat) ≠ 87 := by
  have _ := bridge_general_90
  have _ := bridge_general_87
  norm_num
theorem bridge_solution :
    ReferenceBridge 40 20 150 90 ∧ GeneralBridge 40 20 150 90 ∧
    GeneralBridge 42 21 150 87 ∧ (90 : Nat) ≠ 87 := by
  exact ⟨bridge_reference_solution, bridge_general_90, bridge_general_87, bridge_not_unique⟩

theorem attic_total : (8 : Nat) * 100 = 40 * 20 := by norm_num
theorem attic_junk : (28 : Nat) * 100 = 40 * 70 := by
  calc (28 : Nat) * 100 = (8 * 100 / 20) * 70 := by norm_num
       _ = 40 * 70 := by rw [attic_total]; norm_num
theorem attic_solution : Attic 8 40 28 := by
  unfold Attic; exact ⟨attic_total, attic_junk⟩

theorem mushrooms_ratio : (27 : Nat) = 3 * 9 := by norm_num
theorem mushrooms_total : (30 : Nat) = 3 + 27 := by
  calc (30 : Nat) = 3 + 3 * 9 := by norm_num
       _ = 3 + 27 := by rw [← mushrooms_ratio]
theorem mushrooms_solution : Mushrooms 3 27 30 := by
  unfold Mushrooms; exact ⟨mushrooms_ratio, mushrooms_total⟩

theorem bells_second : (100 : Nat) = 50 * 2 := by norm_num
theorem bells_third : (400 : Nat) = 100 * 4 := by
  calc (400 : Nat) = (50 * 2) * 4 := by norm_num
       _ = 100 * 4 := by rw [← bells_second]
theorem bells_total : (550 : Nat) = 50 + 100 + 400 := by
  calc (550 : Nat) = 50 + 100 + (100 * 4) := by norm_num
       _ = 50 + 100 + 400 := by rw [← bells_third]
theorem bells_solution : Bells 50 100 400 550 := by
  unfold Bells; exact ⟨bells_second, bells_third, bells_total⟩

theorem courier_weekly : (245 : Nat) = 35 * 7 := by norm_num
theorem courier_max_days : (70 : Nat) = 35 * 2 := by norm_num
theorem courier_one_seventh : (5 : Nat) * 7 = 35 := by norm_num
theorem courier_last_two : (28 : Nat) * 5 = 35 * 4 := by norm_num
theorem courier_delivered : (153 : Nat) = 70 + 50 + 5 + 28 := by
  calc (153 : Nat) = 70 + 50 + 5 + 28 := by norm_num
       _ = (35 * 2) + 50 + 5 + 28 := by rw [courier_max_days]
       _ = (35 * 2) + 50 + (35 / 7) + 28 := by rw [← courier_one_seventh]; norm_num
       _ = (35 * 2) + 50 + (35 / 7) + (35 * 4 / 5) := by
         rw [← courier_last_two]
         norm_num
theorem courier_difference : (245 : Nat) = 153 + 92 := by
  calc (245 : Nat) = 35 * 7 := courier_weekly
       _ = 153 + 92 := by rw [courier_delivered]; norm_num
theorem courier_solution : Courier 35 245 2 70 50 5 28 153 92 := by
  unfold Courier
  exact ⟨courier_weekly, courier_max_days, courier_one_seventh, courier_last_two,
    courier_delivered, courier_difference⟩

theorem tires_per_tire : (15 : Nat) = 14 + 1 := by norm_num
theorem tires_total_half : (60 : Nat) = 4 * 15 := by
  calc (60 : Nat) = 4 * (14 + 1) := by norm_num
       _ = 4 * 15 := by rw [← tires_per_tire]
theorem tires_dollars : (60 : Nat) = 30 * 2 := by
  calc (60 : Nat) = 4 * 15 := tires_total_half
       _ = 30 * 2 := by norm_num
theorem tires_solution : TiresHalfDollars 4 14 1 15 60 30 := by
  unfold TiresHalfDollars; exact ⟨tires_per_tire, tires_total_half, tires_dollars⟩

theorem factory_hired : (213 : Nat) * 100 = 852 * 25 := by norm_num
theorem factory_total : (1065 : Nat) = 852 + 213 := by
  calc (1065 : Nat) = 852 + (852 * 25 / 100) := by norm_num
       _ = 852 + 213 := by rw [← factory_hired]; norm_num
theorem factory_solution : Factory 852 25 213 1065 := by
  unfold Factory; exact ⟨factory_hired, factory_total⟩

theorem balloons_ounces : (300 : Nat) = 100 * 3 := by norm_num
theorem balloons_bottles : (300 : Nat) = 6 * 50 := by
  calc (300 : Nat) = 100 * 3 := balloons_ounces
       _ = 6 * 50 := by norm_num
theorem balloons_cost_half : (30 : Nat) = 6 * 5 := by
  calc (30 : Nat) = (300 / 50) * 5 := by norm_num
       _ = 6 * 5 := by rw [balloons_bottles]; norm_num
theorem balloons_available : (20 : Nat) = 2 * 10 := by norm_num
theorem balloons_change : (20 : Nat) * 2 = 30 + 5 * 2 := by
  calc (20 : Nat) * 2 = (2 * 10) * 2 := by rw [balloons_available]
       _ = 30 + 5 * 2 := by rw [balloons_cost_half]; norm_num
theorem balloons_solution : BalloonsHalfDollars 100 3 300 50 6 5 30 2 10 20 5 := by
  unfold BalloonsHalfDollars
  exact ⟨balloons_ounces, balloons_bottles, balloons_cost_half, balloons_available,
    balloons_change⟩

#print axioms phone_solution
#print axioms brochures_solution
#print axioms pens_solution
#print axioms running_solution
#print axioms watch_solution
#print axioms laundry_solution
#print axioms kitchen_solution
#print axioms bridge_solution
#print axioms attic_solution
#print axioms mushrooms_solution
#print axioms bells_solution
#print axioms courier_solution
#print axioms tires_solution
#print axioms factory_solution
#print axioms balloons_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A05.phone_solution to "work/gsm8k-sprint56-phone-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A05.brochures_solution to "work/gsm8k-sprint56-brochures-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A05.pens_solution to "work/gsm8k-sprint56-pens-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A05.running_solution to "work/gsm8k-sprint56-running-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A05.watch_solution to "work/gsm8k-sprint56-watch-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A05.laundry_solution to "work/gsm8k-sprint56-laundry-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A05.kitchen_solution to "work/gsm8k-sprint56-kitchen-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A05.bridge_solution to "work/gsm8k-sprint56-bridge-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A05.attic_solution to "work/gsm8k-sprint56-attic-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A05.mushrooms_solution to "work/gsm8k-sprint56-mushrooms-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A05.bells_solution to "work/gsm8k-sprint56-bells-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A05.courier_solution to "work/gsm8k-sprint56-courier-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A05.tires_solution to "work/gsm8k-sprint56-tires-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A05.factory_solution to "work/gsm8k-sprint56-factory-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A05.balloons_solution to "work/gsm8k-sprint56-balloons-graph.json"
end LemmaWeave.Tests.GSM8KSprint0921A05
