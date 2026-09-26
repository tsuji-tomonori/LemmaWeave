import LemmaWeave.Problems.GSM8K.Sprint0920A19Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract
namespace LemmaWeave.Tests.GSM8KSprint0920A19
open LemmaWeave.Problems.GSM8K.Sprint0920A19

theorem ads_minutes : (15 : Nat) = 5 * 3 := by norm_num
theorem ads_cost : (60000 : Nat) = 15 * 4000 := by norm_num
theorem ads_solution : AdvertisementCost 5 3 15 4000 60000 := by unfold AdvertisementCost; exact ⟨ads_minutes, ads_cost⟩

theorem socks_white : (24 : Nat) = 4 * 6 := by norm_num
theorem socks_lost : (24 : Nat) = 12 * 2 := by norm_num
theorem socks_remaining : (24 : Nat) = 12 + 12 := by norm_num
theorem socks_difference : (12 : Nat) = 6 + 6 := by norm_num
theorem socks_solution : Socks 6 4 24 12 12 6 := by unfold Socks; exact ⟨socks_white, socks_lost, socks_remaining, socks_difference⟩

theorem roses_total : (36 : Nat) = 3 * 12 := by norm_num
theorem roses_given : (36 : Nat) = 18 * 2 := by norm_num
theorem roses_vase : (36 : Nat) = 18 + 18 := by norm_num
theorem roses_wilted : (18 : Nat) = 6 * 3 := by norm_num
theorem roses_remaining : (18 : Nat) = 6 + 12 := by norm_num
theorem roses_solution : Roses 3 12 36 18 18 6 12 := by unfold Roses; exact ⟨roses_total, roses_given, roses_vase, roses_wilted, roses_remaining⟩

theorem ages_becky : (92 : Nat) = 23 * 4 := by norm_num
theorem ages_irene : (46 : Nat) = 2 * 23 := by norm_num
theorem ages_solution : FamilyAges 92 4 23 2 46 := by unfold FamilyAges; exact ⟨ages_becky, ages_irene⟩

theorem tower_second : (300 : Nat) = 150 * 2 := by norm_num
theorem tower_third : (400 : Nat) = 300 + 100 := by norm_num
theorem tower_used : (850 : Nat) = 150 + 300 + 400 := by norm_num
theorem tower_fourth : (1200 : Nat) = 850 + 350 := by norm_num
theorem tower_solution : WaterTower 1200 150 2 300 100 400 850 350 := by unfold WaterTower; exact ⟨tower_second, tower_third, tower_used, tower_fourth⟩

theorem test_least : (98 : Nat) = 23 + 75 := by norm_num
theorem test_mark : (46 : Nat) = 2 * 23 := by norm_num
theorem test_solution : TestRange 98 75 23 2 46 := by unfold TestRange; exact ⟨test_least, test_mark⟩

theorem photos_tim : (152 : Nat) = 52 + 100 := by norm_num
theorem photos_paul : (62 : Nat) = 52 + 10 := by norm_num
theorem photos_combined : (114 : Nat) = 52 + 62 := by norm_num
theorem photos_tom : (152 : Nat) = 114 + 38 := by norm_num
theorem photos_solution : CarPhotos 152 100 52 10 62 114 38 := by unfold CarPhotos; exact ⟨photos_tim, photos_paul, photos_combined, photos_tom⟩

theorem reptiles_equation : (16 : Nat) + 5 = 3 * 7 := by norm_num
theorem reptiles_unique (n : Nat) (h : 16 + 5 = 3 * n) : n = 7 := by omega
theorem reptiles_solution : ReptileAnimals 16 5 3 7 := by unfold ReptileAnimals; exact reptiles_equation

theorem relative_gap : (35 : Nat) = 23 + 12 := by norm_num
theorem relative_john : (79 : Nat) + 5 = 2 * 42 := by norm_num
theorem relative_james : (42 : Nat) = 30 + 12 := by norm_num
theorem relative_solution : RelativeAges 23 35 12 79 5 42 30 := by unfold RelativeAges; exact ⟨relative_gap, relative_john, relative_james⟩

theorem novel_daily : (15 : Nat) = 5 + 10 := by norm_num
theorem novel_weekly : (105 : Nat) = 15 * 7 := by norm_num
theorem novel_solution : WeeklyReading 5 10 15 7 105 := by unfold WeeklyReading; exact ⟨novel_daily, novel_weekly⟩

theorem concert_tickets : (100 : Nat) = 2 * 50 := by norm_num
theorem concert_fee : (15 : Nat) * 100 = 100 * 15 := by norm_num
theorem concert_with_fee : (115 : Nat) = 100 + 15 := by norm_num
theorem concert_entrance : (10 : Nat) = 2 * 5 := by norm_num
theorem concert_total : (135 : Nat) = 115 + 10 + 10 := by norm_num
theorem concert_solution : ConcertCost 2 50 100 15 15 115 10 5 10 135 := by unfold ConcertCost; exact ⟨concert_tickets, concert_fee, concert_with_fee, concert_entrance, concert_total⟩

theorem population_new_york : (1400000 : Nat) * 3 = 2100000 * 2 := by norm_num
theorem population_combined : (3500000 : Nat) = 2100000 + 1400000 := by norm_num
theorem population_solution : Population 2100000 2 3 1400000 3500000 := by unfold Population; exact ⟨population_new_york, population_combined⟩

theorem veg_carrots : (12 : Nat) = 2 * 6 := by norm_num
theorem veg_onions : (24 : Nat) = 12 * 2 := by norm_num
theorem veg_beans : (24 : Nat) = 8 * 3 := by norm_num
theorem veg_solution : Vegetables 2 6 12 2 24 3 8 := by unfold Vegetables; exact ⟨veg_carrots, veg_onions, veg_beans⟩

theorem tea_total : (160 : Nat) = 20 * 8 := by norm_num
theorem tea_each : (160 : Nat) = 80 * 2 := by norm_num
theorem tea_drank : (7 : Nat) * 2 = 7 * 2 := by norm_num
theorem tea_solution : TeaPints 20 8 160 80 2 7 7 := by unfold TeaPints; exact ⟨tea_total, tea_each, tea_drank⟩

theorem reading_hours : (10 : Nat) = 5 * 2 := by norm_num
theorem reading_daily : (100 : Nat) = 2 * 50 := by norm_num
theorem reading_total : (700 : Nat) = 100 * 7 := by norm_num
theorem reading_solution : ReadingRate 10 5 2 50 100 7 700 := by unfold ReadingRate; exact ⟨reading_hours, reading_daily, reading_total⟩

#print axioms ads_solution
#print axioms socks_solution
#print axioms roses_solution
#print axioms ages_solution
#print axioms tower_solution
#print axioms test_solution
#print axioms photos_solution
#print axioms reptiles_solution
#print axioms relative_solution
#print axioms novel_solution
#print axioms concert_solution
#print axioms population_solution
#print axioms veg_solution
#print axioms tea_solution
#print axioms reading_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A19.ads_solution to "work/gsm8k-sprint51-ads-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A19.socks_solution to "work/gsm8k-sprint51-socks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A19.roses_solution to "work/gsm8k-sprint51-roses-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A19.ages_solution to "work/gsm8k-sprint51-ages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A19.tower_solution to "work/gsm8k-sprint51-tower-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A19.test_solution to "work/gsm8k-sprint51-test-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A19.photos_solution to "work/gsm8k-sprint51-photos-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A19.reptiles_solution to "work/gsm8k-sprint51-reptiles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A19.relative_solution to "work/gsm8k-sprint51-relative-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A19.novel_solution to "work/gsm8k-sprint51-novel-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A19.concert_solution to "work/gsm8k-sprint51-concert-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A19.population_solution to "work/gsm8k-sprint51-population-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A19.veg_solution to "work/gsm8k-sprint51-veg-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A19.tea_solution to "work/gsm8k-sprint51-tea-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A19.reading_solution to "work/gsm8k-sprint51-reading-graph.json"
end LemmaWeave.Tests.GSM8KSprint0920A19
