import LemmaWeave.Problems.GSM8K.Sprint0920A18Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract
namespace LemmaWeave.Tests.GSM8KSprint0920A18
open LemmaWeave.Problems.GSM8K.Sprint0920A18

theorem cows_brownie : (6 : Nat) = 3 * 2 := by norm_num
theorem cows_daisy : (3 : Nat) = 2 + 1 := by norm_num
theorem cows_daily : (11 : Nat) = 2 + 6 + 3 := by norm_num
theorem cows_weekly : (77 : Nat) = 11 * 7 := by norm_num
theorem cows_solution : WeeklyMilk 2 3 6 1 3 11 7 77 := by unfold WeeklyMilk; exact ⟨cows_brownie, cows_daisy, cows_daily, cows_weekly⟩

theorem water_initial : (384 : Nat) = 3 * 128 := by norm_num
theorem water_cups : (50 : Nat) = 5 * 10 := by norm_num
theorem water_used : (300 : Nat) = 50 * 6 := by norm_num
theorem water_left : (384 : Nat) = 300 + 84 := by norm_num
theorem water_solution : CoolerWater 3 128 384 5 10 50 6 300 84 := by unfold CoolerWater; exact ⟨water_initial, water_cups, water_used, water_left⟩

theorem stadium_boys : (600 : Nat) = 240 + 360 := by norm_num
theorem stadium_boys_left : (360 : Nat) = 90 * 4 := by norm_num
theorem stadium_girls_left : (240 : Nat) = 30 * 8 := by norm_num
theorem stadium_left : (120 : Nat) = 90 + 30 := by norm_num
theorem stadium_remaining : (600 : Nat) = 120 + 480 := by norm_num
theorem stadium_solution : Stadium 600 240 360 4 90 8 30 120 480 := by unfold Stadium; exact ⟨stadium_boys, stadium_boys_left, stadium_girls_left, stadium_left, stadium_remaining⟩

theorem chickens_red : (22 : Nat) = 2 * 11 := by norm_num
theorem chickens_gold : (6 : Nat) = 2 * 3 := by norm_num
theorem chickens_brit : (25 : Nat) = 22 + 3 := by norm_num
theorem chickens_susie : (17 : Nat) = 11 + 6 := by norm_num
theorem chickens_difference : (25 : Nat) = 17 + 8 := by norm_num
theorem chickens_solution : ChickenFlocks 11 6 22 3 25 17 8 := by unfold ChickenFlocks; exact ⟨chickens_red, chickens_gold, chickens_brit, chickens_susie, chickens_difference⟩

theorem dance_rate : (600 : Nat) = 2 * 300 := by norm_num
theorem dance_time : (2 : Nat) = 2 * 1 := by norm_num
theorem dance_daily : (600 : Nat) * 2 = 600 * 2 := by norm_num
theorem dance_weekly : (2400 : Nat) = 600 * 4 := by norm_num
theorem dance_solution : DanceCalories 300 600 2 1 2 4 600 2400 := by unfold DanceCalories; exact ⟨dance_rate, dance_time, dance_daily, dance_weekly⟩

theorem cake_cream : (8 : Nat) = 2 * 4 := by norm_num
theorem cake_vanilla : (8 : Nat) = 4 * 2 := by norm_num
theorem cake_eggs : (8 : Nat) = 4 * 2 := by norm_num
theorem cake_solution : Cheesecake 2 4 8 2 4 2 8 := by unfold Cheesecake; exact ⟨cake_cream, cake_vanilla, cake_eggs⟩

theorem planting_girls : (1000 : Nat) = 600 + 400 := by norm_num
theorem planting_total : (1600 : Nat) = 600 + 1000 := by norm_num
theorem planting_percent : (960 : Nat) * 100 = 1600 * 60 := by norm_num
theorem planting_solution : TreePlanting 600 400 1000 1600 60 960 := by unfold TreePlanting; exact ⟨planting_girls, planting_total, planting_percent⟩

theorem markers_austin : (60 : Nat) = 20 * 3 := by norm_num
theorem markers_alia : (40 : Nat) = 2 * 20 := by norm_num
theorem markers_solution : Markers 60 3 20 2 40 := by unfold Markers; exact ⟨markers_austin, markers_alia⟩

theorem pc_extra : (500 : Nat) = 300 + 200 := by norm_num
theorem pc_total : (1400 : Nat) = 1200 + 200 := by norm_num
theorem pc_solution : GamingPC 1200 300 500 200 1400 := by unfold GamingPC; exact ⟨pc_extra, pc_total⟩

theorem garden_grown : (23 : Nat) = 5 + 18 := by norm_num
theorem garden_eaten : (18 : Nat) = 6 * 3 := by norm_num
theorem garden_after_eaten : (18 : Nat) = 6 + 12 := by norm_num
theorem garden_strangled : (12 : Nat) = 4 * 3 := by norm_num
theorem garden_after_weeds : (12 : Nat) = 4 + 8 := by norm_num
theorem garden_final : (9 : Nat) = 8 + 1 := by norm_num
theorem garden_solution : GardenPlants 23 5 18 6 12 4 8 1 9 := by unfold GardenPlants; exact ⟨garden_grown, garden_eaten, garden_after_eaten, garden_strangled, garden_after_weeds, garden_final⟩

theorem flats_occupied : (102 : Nat) * 100 = 120 * 85 := by norm_num
theorem flats_two : (72 : Nat) * 100 = 120 * 60 := by norm_num
theorem flats_one : (102 : Nat) = 72 + 30 := by norm_num
theorem flats_solution : Apartments 120 85 102 60 72 30 := by unfold Apartments; exact ⟨flats_occupied, flats_two, flats_one⟩

theorem farm_chickens : (132 : Nat) = 2 * 66 := by norm_num
theorem farm_combined : (198 : Nat) = 66 + 132 := by norm_num
theorem farm_ducks : (198 : Nat) = 2 * 99 := by norm_num
theorem farm_pigs : (99 : Nat) = 3 * 33 := by norm_num
theorem farm_difference : (66 : Nat) = 33 + 33 := by norm_num
theorem farm_solution : FarmAnimals 66 132 198 99 33 33 := by unfold FarmAnimals; exact ⟨farm_chickens, farm_combined, farm_ducks, farm_pigs, farm_difference⟩

theorem vaccine_adults : (520 : Nat) * 100 = 650 * 80 := by norm_num
theorem vaccine_children : (650 : Nat) = 520 + 130 := by norm_num
theorem vaccine_solution : Vaccinated 650 80 520 130 := by unfold Vaccinated; exact ⟨vaccine_adults, vaccine_children⟩

theorem candy_received : (32 : Nat) = 16 * 2 := by norm_num
theorem candy_eaten : (16 : Nat) = 4 * 4 := by norm_num
theorem candy_saved : (32 : Nat) = 4 + 28 := by norm_num
theorem candy_solution : CandySaving 16 2 32 4 4 28 := by unfold CandySaving; exact ⟨candy_received, candy_eaten, candy_saved⟩

theorem furniture_subtotal : (8000 : Nat) = 2500 + 3500 + 2000 := by norm_num
theorem furniture_discount : (800 : Nat) * 100 = 8000 * 10 := by norm_num
theorem furniture_paid : (8000 : Nat) = 800 + 7200 := by norm_num
theorem furniture_solution : FurnitureDiscount 2500 3500 2000 8000 10 800 7200 := by unfold FurnitureDiscount; exact ⟨furniture_subtotal, furniture_discount, furniture_paid⟩

#print axioms cows_solution
#print axioms water_solution
#print axioms stadium_solution
#print axioms chickens_solution
#print axioms dance_solution
#print axioms cake_solution
#print axioms planting_solution
#print axioms markers_solution
#print axioms pc_solution
#print axioms garden_solution
#print axioms flats_solution
#print axioms farm_solution
#print axioms vaccine_solution
#print axioms candy_solution
#print axioms furniture_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A18.cows_solution to "work/gsm8k-sprint50-cows-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A18.water_solution to "work/gsm8k-sprint50-water-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A18.stadium_solution to "work/gsm8k-sprint50-stadium-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A18.chickens_solution to "work/gsm8k-sprint50-chickens-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A18.dance_solution to "work/gsm8k-sprint50-dance-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A18.cake_solution to "work/gsm8k-sprint50-cake-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A18.planting_solution to "work/gsm8k-sprint50-planting-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A18.markers_solution to "work/gsm8k-sprint50-markers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A18.pc_solution to "work/gsm8k-sprint50-pc-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A18.garden_solution to "work/gsm8k-sprint50-garden-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A18.flats_solution to "work/gsm8k-sprint50-flats-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A18.farm_solution to "work/gsm8k-sprint50-farm-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A18.vaccine_solution to "work/gsm8k-sprint50-vaccine-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A18.candy_solution to "work/gsm8k-sprint50-candy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A18.furniture_solution to "work/gsm8k-sprint50-furniture-graph.json"
end LemmaWeave.Tests.GSM8KSprint0920A18
