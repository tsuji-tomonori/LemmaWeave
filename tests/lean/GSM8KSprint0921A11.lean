import LemmaWeave.Problems.GSM8K.Sprint0921A11Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0921A11
open LemmaWeave.Problems.GSM8K.Sprint0921A11

theorem gold_tax : (6 : Nat) * 100 = 60 * 10 := by norm_num
theorem gold_after_tax : (60 : Nat) = 6 + 54 := by norm_num
theorem gold_remaining : (54 : Nat) = 27 * 2 := by norm_num
theorem gold_solution : GoldBars 60 10 6 54 2 27 := by
  unfold GoldBars
  exact ⟨gold_tax, gold_after_tax, gold_remaining⟩

theorem turtles_each : (8 : Nat) * 100 = 20 * 40 := by norm_num
theorem turtles_total : (48 : Nat) = 8 * 6 := by norm_num
theorem turtles_solution : TurtleHatchlings 20 40 8 6 48 := by
  unfold TurtleHatchlings
  exact ⟨turtles_each, turtles_total⟩

theorem concert_tickets : (40 : Nat) = 20 + 10 * 2 := by norm_num
theorem concert_saved : (10 : Nat) = 5 + 5 := by norm_num
theorem concert_needed : (40 : Nat) = 10 + 30 := by norm_num
theorem concert_weeks : (30 : Nat) = 3 * 10 := by norm_num
theorem concert_solution : ConcertSavings 20 10 2 40 5 5 10 30 3 10 := by
  unfold ConcertSavings
  exact ⟨concert_tickets, concert_saved, concert_needed, concert_weeks⟩

theorem crackers_darren : (96 : Nat) = 4 * 24 := by norm_num
theorem crackers_doubled : (8 : Nat) = 4 * 2 := by norm_num
theorem crackers_calvin_boxes : (8 : Nat) = 7 + 1 := by norm_num
theorem crackers_calvin : (168 : Nat) = 7 * 24 := by norm_num
theorem crackers_total : (264 : Nat) = 96 + 168 := by norm_num
theorem crackers_solution : CrackerBoxes 4 24 96 8 7 168 264 := by
  unfold CrackerBoxes
  exact ⟨crackers_darren, crackers_doubled, crackers_calvin_boxes,
    crackers_calvin, crackers_total⟩

theorem exam_lyssa_mistakes : (15 : Nat) * 100 = 75 * 20 := by norm_num
theorem exam_lyssa_correct : (75 : Nat) = 15 + 60 := by norm_num
theorem exam_precious_correct : (75 : Nat) = 12 + 63 := by norm_num
theorem exam_difference : (63 : Nat) = 60 + 3 := by norm_num
theorem exam_direction : (60 : Nat) < 63 := by norm_num
theorem exam_solution : ExamComparison 75 20 15 12 60 63 3 := by
  unfold ExamComparison
  exact ⟨exam_lyssa_mistakes, exam_lyssa_correct, exam_precious_correct,
    exam_difference, exam_direction⟩

theorem legs_dogs : (8 : Nat) = 2 * 4 := by norm_num
theorem legs_chicken : (2 : Nat) = 1 * 2 := by norm_num
theorem legs_total : (10 : Nat) = 8 + 2 := by norm_num
theorem legs_solution : AnimalLegs 2 4 8 1 2 2 10 := by
  unfold AnimalLegs
  exact ⟨legs_dogs, legs_chicken, legs_total⟩

theorem milk_people : (8 : Nat) = 1 + 1 + 2 + 2 + 2 := by norm_num
theorem milk_servings : (16 : Nat) = 8 * 2 := by norm_num
theorem milk_cups : (8 : Nat) * 2 = 16 * 1 := by norm_num
theorem milk_total_ml : (2000 : Nat) = 8 * 250 := by norm_num
theorem milk_cartons : (2000 : Nat) = 2 * 1000 := by norm_num
theorem milk_solution : MilkCartons 1 1 2 2 2 8 2 16 1 2 8 250 2000 1000 2 := by
  unfold MilkCartons
  exact ⟨milk_people, milk_servings, milk_cups, milk_total_ml, milk_cartons⟩

theorem desserts_total : (26 : Nat) = 14 + 12 := by norm_num
theorem desserts_each : (26 : Nat) = 13 * 2 := by norm_num
theorem desserts_solution : EqualDesserts 14 12 26 13 2 := by
  unfold EqualDesserts
  exact ⟨desserts_total, desserts_each⟩

theorem doglegs_rico : (24 : Nat) = 14 + 10 := by norm_num
theorem doglegs_camden : (18 : Nat) * 4 = 24 * 3 := by norm_num
theorem doglegs_total : (72 : Nat) = 18 * 4 := by norm_num
theorem doglegs_solution : CamdenDogLegs 14 10 24 3 4 18 4 72 := by
  unfold CamdenDogLegs
  exact ⟨doglegs_rico, doglegs_camden, doglegs_total⟩

theorem shoes_subtotal : (270 : Nat) = 150 + 120 := by norm_num
theorem shoes_tax : (27 : Nat) * 100 = 270 * 10 := by norm_num
theorem shoes_total : (297 : Nat) = 270 + 27 := by norm_num
theorem shoes_solution : ShoePurchase 150 120 270 10 27 297 := by
  unfold ShoePurchase
  exact ⟨shoes_subtotal, shoes_tax, shoes_total⟩

theorem chicken_dinner : (16 : Nat) = 2 * 8 := by norm_num
theorem chicken_pasta : (12 : Nat) = 6 * 2 := by norm_num
theorem chicken_barbecue : (9 : Nat) = 3 * 3 := by norm_num
theorem chicken_total : (37 : Nat) = 16 + 12 + 9 := by norm_num
theorem chicken_solution : ChickenOrders 2 8 16 6 2 12 3 3 9 37 := by
  unfold ChickenOrders
  exact ⟨chicken_dinner, chicken_pasta, chicken_barbecue, chicken_total⟩

theorem buildings_second : (1200 : Nat) = 600 * 2 := by norm_num
theorem buildings_first_two : (1800 : Nat) = 600 + 1200 := by norm_num
theorem buildings_third : (5400 : Nat) = 1800 * 3 := by norm_num
theorem buildings_total : (7200 : Nat) = 1800 + 5400 := by norm_num
theorem buildings_solution : BuildingHeights 600 2 1200 1800 3 5400 7200 := by
  unfold BuildingHeights
  exact ⟨buildings_second, buildings_first_two, buildings_third, buildings_total⟩

theorem ducks_young1 : (10 : Nat) = 2 * 5 := by norm_num
theorem ducks_young2 : (18 : Nat) = 6 * 3 := by norm_num
theorem ducks_young3 : (54 : Nat) = 9 * 6 := by norm_num
theorem ducks_adults : (17 : Nat) = 2 + 6 + 9 := by norm_num
theorem ducks_young_total : (82 : Nat) = 10 + 18 + 54 := by norm_num
theorem ducks_total : (99 : Nat) = 17 + 82 := by norm_num
theorem ducks_solution : DuckFlock 2 5 10 6 3 18 9 6 54 17 82 99 := by
  unfold DuckFlock
  exact ⟨ducks_young1, ducks_young2, ducks_young3, ducks_adults,
    ducks_young_total, ducks_total⟩

theorem fruit_apples : (90 : Nat) = 40 + 50 := by norm_num
theorem fruit_oranges : (70 : Nat) = 30 + 40 := by norm_num
theorem fruit_apple_sales : (13500 : Nat) = 90 * 150 := by norm_num
theorem fruit_orange_sales : (7000 : Nat) = 70 * 100 := by norm_num
theorem fruit_total : (20500 : Nat) = 13500 + 7000 := by norm_num
theorem fruit_solution : FruitSales 150 100 40 30 50 40 90 70 13500 7000 20500 := by
  unfold FruitSales
  exact ⟨fruit_apples, fruit_oranges, fruit_apple_sales, fruit_orange_sales, fruit_total⟩

theorem falls_stephanie : (16 : Nat) = 3 + 13 := by norm_num
theorem falls_half : (16 : Nat) = 8 * 2 := by norm_num
theorem falls_sonya : (8 : Nat) = 6 + 2 := by norm_num
theorem falls_solution : SkatingFalls 3 13 16 8 2 6 := by
  unfold SkatingFalls
  exact ⟨falls_stephanie, falls_half, falls_sonya⟩

#print axioms gold_solution
#print axioms turtles_solution
#print axioms concert_solution
#print axioms crackers_solution
#print axioms exam_solution
#print axioms legs_solution
#print axioms milk_solution
#print axioms desserts_solution
#print axioms doglegs_solution
#print axioms shoes_solution
#print axioms chicken_solution
#print axioms buildings_solution
#print axioms ducks_solution
#print axioms fruit_solution
#print axioms falls_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A11.gold_solution to "work/gsm8k-sprint62-gold-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A11.turtles_solution to "work/gsm8k-sprint62-turtles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A11.concert_solution to "work/gsm8k-sprint62-concert-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A11.crackers_solution to "work/gsm8k-sprint62-crackers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A11.exam_solution to "work/gsm8k-sprint62-exam-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A11.legs_solution to "work/gsm8k-sprint62-legs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A11.milk_solution to "work/gsm8k-sprint62-milk-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A11.desserts_solution to "work/gsm8k-sprint62-desserts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A11.doglegs_solution to "work/gsm8k-sprint62-doglegs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A11.shoes_solution to "work/gsm8k-sprint62-shoes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A11.chicken_solution to "work/gsm8k-sprint62-chicken-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A11.buildings_solution to "work/gsm8k-sprint62-buildings-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A11.ducks_solution to "work/gsm8k-sprint62-ducks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A11.fruit_solution to "work/gsm8k-sprint62-fruit-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A11.falls_solution to "work/gsm8k-sprint62-falls-graph.json"

end LemmaWeave.Tests.GSM8KSprint0921A11
