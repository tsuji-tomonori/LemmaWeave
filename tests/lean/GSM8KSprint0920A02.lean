import LemmaWeave.Problems.GSM8K.Sprint0920A02Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0920A02
open LemmaWeave.Problems.GSM8K.Sprint0920A02

theorem injury_min_heal {healed lifting : Nat} (h : InjuryRecovery healed lifting) :
    15 ≤ healed := h.1
theorem injury_heavy_wait : (21 : Nat) = 3 * 7 := by norm_num
theorem injury_lower_bound {healed lifting : Nat} (h : InjuryRecovery healed lifting) :
    39 ≤ lifting := by
  have hheal := injury_min_heal h
  have hheavy := injury_heavy_wait
  unfold InjuryRecovery at h
  rw [h.2]
  omega
theorem injury_solution {healed lifting : Nat} (h : InjuryRecovery healed lifting) :
    39 ≤ lifting := injury_lower_bound h

theorem triangle_one : (400 : Nat) = 40 * 20 / 2 := by norm_num
theorem triangle_total : (1200 : Nat) = 3 * 400 := by norm_num
theorem triangle_solution : TriangleHouses 400 3 1200 := by
  unfold TriangleHouses
  exact ⟨triangle_one, rfl, triangle_total⟩

theorem bus_dutch : (54 : Nat) * 5 = 90 * 3 := by norm_num
theorem bus_american : (27 : Nat) * 2 = 54 := by norm_num
theorem bus_windows : (9 : Nat) * 3 = 27 := by norm_num
theorem bus_solution : BusWindows 90 54 27 9 := by
  unfold BusWindows
  exact ⟨bus_dutch, bus_american, bus_windows⟩

theorem floors_leeward {l c : Nat} (h : BuildingFloors l c) : l = 12 := by
  unfold BuildingFloors at h
  omega
theorem floors_chrysler {l c : Nat} (h : BuildingFloors l c) : c = 23 := by
  have hl := floors_leeward h
  unfold BuildingFloors at h
  omega
theorem floors_solution {l c : Nat} (h : BuildingFloors l c) : c = 23 :=
  floors_chrysler h

theorem rectangle_height {h a : Nat} (hm : RectangleArea 4 h 30 a) :
    h = 11 := by
  unfold RectangleArea at hm
  omega
theorem rectangle_multiply : (44 : Nat) = 4 * 11 := by norm_num
theorem rectangle_area {h a : Nat} (hm : RectangleArea 4 h 30 a) : a = 44 := by
  have hh := rectangle_height hm
  have hmultiply := rectangle_multiply
  unfold RectangleArea at hm
  omega
theorem rectangle_solution {h a : Nat} (hm : RectangleArea 4 h 30 a) : a = 44 :=
  rectangle_area hm

theorem candy_yellow : (100 : Nat) + 20 = 3 * 40 := by norm_num
theorem candy_blue : (50 : Nat) * 2 = 100 := by norm_num
theorem candy_removed : (100 : Nat) = 100 := rfl
theorem candy_remaining : (90 : Nat) = 40 + 50 := by norm_num
theorem candy_solution : PinataCandies 40 100 50 90 := by
  unfold PinataCandies
  exact ⟨rfl, candy_yellow, candy_blue, candy_remaining⟩

theorem sandwich_dinner : (6 : Nat) = 2 * 3 := by norm_num
theorem sandwich_monday : (9 : Nat) = 3 + 6 := by norm_num
theorem sandwich_difference : (8 : Nat) + 1 = 9 := by norm_num
theorem sandwich_solution : SandwichKnownIntake 3 6 9 1 8 := by
  unfold SandwichKnownIntake
  exact ⟨rfl, sandwich_dinner, sandwich_monday, rfl, sandwich_difference⟩

theorem cooking_steaks : (18 : Nat) = 3 * 6 := by norm_num
theorem cooking_sequential : (28 : Nat) = 18 + 10 := by norm_num
theorem cooking_parallel : (18 : Nat) = 18 := rfl
theorem cooking_solution : CookingSchedules 3 6 10 18 28 18 := by
  unfold CookingSchedules
  exact ⟨rfl, rfl, rfl, cooking_steaks, cooking_sequential, cooking_parallel⟩

theorem dogs_second : (6 : Nat) = 2 * 3 := by norm_num
theorem dogs_third : (11 : Nat) = 6 + 5 := by norm_num
theorem dogs_total : (20 : Nat) = 3 + 6 + 11 := by norm_num
theorem dogs_solution : DogFoodHalfCups 3 6 11 20 := by
  unfold DogFoodHalfCups
  exact ⟨rfl, dogs_second, dogs_third, dogs_total⟩

theorem appetizers_needed : (180 : Nat) = 30 * 6 := by norm_num
theorem appetizers_dozen : (7 : Nat) = 3 + 2 + 2 := by norm_num
theorem appetizers_made : (84 : Nat) = 7 * 12 := by norm_num
theorem appetizers_missing : (96 : Nat) + 84 = 180 := by norm_num
theorem appetizers_answer : (96 : Nat) = 8 * 12 := by norm_num
theorem appetizers_solution : AppetizerDozens 30 6 180 7 84 96 8 := by
  unfold AppetizerDozens
  exact ⟨rfl, rfl, appetizers_needed, appetizers_dozen,
    appetizers_made, appetizers_missing, appetizers_answer⟩

theorem furniture_four_pieces : (7 : Nat) = 4 + 1 + 2 := by norm_num
theorem furniture_four_legs : (28 : Nat) = 7 * 4 := by norm_num
theorem furniture_three_legs : (9 : Nat) = 3 * 3 := by norm_num
theorem furniture_total : (40 : Nat) = 28 + 9 + 1 + 2 := by norm_num
theorem furniture_solution : FurnitureLegs 7 28 9 1 2 40 := by
  unfold FurnitureLegs
  exact ⟨furniture_four_pieces, furniture_four_legs, furniture_three_legs,
    rfl, rfl, furniture_total⟩

theorem drinks_cappuccino : (600 : Nat) = 3 * 200 := by norm_num
theorem drinks_tea : (600 : Nat) = 2 * 300 := by norm_num
theorem drinks_latte : (300 : Nat) = 2 * 150 := by norm_num
theorem drinks_espresso : (200 : Nat) = 2 * 100 := by norm_num
theorem drinks_change : (300 : Nat) + (600 + 600 + 300 + 200) = 2000 := by norm_num
theorem drinks_solution : DrinkChange 600 600 300 200 1700 2000 300 := by
  unfold DrinkChange
  exact ⟨drinks_cappuccino, drinks_tea, drinks_latte, drinks_espresso,
    rfl, rfl, drinks_change⟩

theorem income_tax : (50 : Nat) * 10 = 500 := by norm_num
theorem income_tithe : (50 : Nat) * 10 = 500 := by norm_num
theorem income_expenses : (155 : Nat) = 50 + 55 + 50 := by norm_num
theorem income_left : (345 : Nat) + 155 = 500 := by norm_num
theorem income_solution : WeeklyIncome 500 50 55 50 155 345 := by
  unfold WeeklyIncome
  exact ⟨rfl, income_tax, rfl, income_tithe, income_expenses, income_left⟩

theorem feeder_available : (3 : Nat) + 1 = 4 := by norm_num
theorem feeder_rate : (21 : Nat) * 2 = 3 * 14 := by norm_num
theorem feeder_answer : (21 : Nat) = 21 := rfl
theorem feeder_solution : BirdFeederHalfCups 4 1 3 14 21 := by
  unfold BirdFeederHalfCups
  exact ⟨rfl, rfl, feeder_available, rfl, feeder_rate⟩

theorem goodie_vampire_plan : (2 : Nat) * 5 + 1 = 11 := by norm_num
theorem goodie_vampire_cost : (2 : Nat) * 3 + 1 = 7 := by norm_num
theorem goodie_pumpkin_plan : (14 : Nat) ≤ 3 * 5 := by norm_num
theorem goodie_pumpkin_cost : (3 : Nat) * 3 = 9 := by norm_num
theorem goodie_vampire_lower (packs singles : Nat)
    (h : 11 ≤ 5 * packs + singles) : 7 ≤ 3 * packs + singles := by omega
theorem goodie_pumpkin_lower (packs singles : Nat)
    (h : 14 ≤ 5 * packs + singles) : 9 ≤ 3 * packs + singles := by omega
theorem goodie_total : (7 : Nat) + 9 = 16 := by norm_num
theorem goodie_solution : GoodieBagMinimum := by
  unfold GoodieBagMinimum
  exact ⟨goodie_vampire_plan, goodie_vampire_cost,
    goodie_pumpkin_plan, goodie_pumpkin_cost,
    goodie_vampire_lower, goodie_pumpkin_lower, goodie_total⟩

#print axioms injury_solution
#print axioms triangle_solution
#print axioms bus_solution
#print axioms floors_solution
#print axioms rectangle_solution
#print axioms candy_solution
#print axioms sandwich_solution
#print axioms cooking_solution
#print axioms dogs_solution
#print axioms appetizers_solution
#print axioms furniture_solution
#print axioms drinks_solution
#print axioms income_solution
#print axioms feeder_solution
#print axioms goodie_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A02.injury_solution to "work/gsm8k-sprint34-injury-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A02.triangle_solution to "work/gsm8k-sprint34-triangle-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A02.bus_solution to "work/gsm8k-sprint34-bus-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A02.floors_solution to "work/gsm8k-sprint34-floors-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A02.rectangle_solution to "work/gsm8k-sprint34-rectangle-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A02.candy_solution to "work/gsm8k-sprint34-candy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A02.sandwich_solution to "work/gsm8k-sprint34-sandwich-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A02.cooking_solution to "work/gsm8k-sprint34-cooking-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A02.dogs_solution to "work/gsm8k-sprint34-dogs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A02.appetizers_solution to "work/gsm8k-sprint34-appetizers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A02.furniture_solution to "work/gsm8k-sprint34-furniture-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A02.drinks_solution to "work/gsm8k-sprint34-drinks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A02.income_solution to "work/gsm8k-sprint34-income-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A02.feeder_solution to "work/gsm8k-sprint34-feeder-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A02.goodie_solution to "work/gsm8k-sprint34-goodie-graph.json"

end LemmaWeave.Tests.GSM8KSprint0920A02
