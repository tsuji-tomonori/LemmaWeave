import LemmaWeave.Problems.GSM8K.Sprint0921A18Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0921A18
open LemmaWeave.Problems.GSM8K.Sprint0921A18

theorem train_rate : (270 : Nat) = 90 * 3 := by norm_num
theorem train_additional : (180 : Nat) = 90 * 2 := by norm_num
theorem train_solution : TrainTravel 270 3 90 180 2 := by
  unfold TrainTravel
  exact ⟨train_rate, train_additional⟩

theorem pies_baked : (35 : Nat) = 5 * 7 := by norm_num
theorem pies_remaining : (35 : Nat) = 8 + 27 := by norm_num
theorem pies_solution : PieBatches 5 7 35 8 27 := by
  unfold PieBatches
  exact ⟨pies_baked, pies_remaining⟩

theorem pizza_total : (12 : Nat) = 2 * 6 := by norm_num
theorem pizza_fraction : (12 : Nat) * 2 = 8 * 3 := by norm_num
theorem pizza_solution : PizzaSlices 2 6 12 2 3 8 := by
  unfold PizzaSlices
  exact ⟨pizza_total, pizza_fraction⟩

theorem race_carlos : (180 : Nat) = 3 * 60 := by norm_num
theorem race_diego : (300 : Nat) = 150 * 2 := by norm_num
theorem race_total : (480 : Nat) = 180 + 300 := by norm_num
theorem race_average : (480 : Nat) = 240 * 2 := by norm_num
theorem race_solution : RaceAverage 3 60 180 150 300 480 2 240 := by
  unfold RaceAverage
  exact ⟨race_carlos, race_diego, race_total, race_average⟩

theorem height_charlene : (124 : Nat) = 62 * 2 := by norm_num
theorem height_pablo : (194 : Nat) = 124 + 70 := by norm_num
theorem height_ruby : (194 : Nat) = 192 + 2 := by norm_num
theorem height_solution : HeightChain 62 2 124 70 194 2 192 := by
  unfold HeightChain
  exact ⟨height_charlene, height_pablo, height_ruby⟩

theorem party_oysters : (4500 : Nat) = 3 * 1500 := by norm_num
theorem party_shrimp : (2800 : Nat) = 2 * 1400 := by norm_num
theorem party_clams : (2700 : Nat) = 2 * 1350 := by norm_num
theorem party_total : (10000 : Nat) = 4500 + 2800 + 2700 := by norm_num
theorem party_share : (10000 : Nat) = 2500 * 4 := by norm_num
theorem party_solution : PartyBill 4 3 1500 4500 2 1400 2800 2 1350 2700 10000 2500 := by
  unfold PartyBill
  exact ⟨party_oysters, party_shrimp, party_clams, party_total, party_share⟩

theorem hair_haircuts : (96 : Nat) = 8 * 12 := by norm_num
theorem hair_styles : (125 : Nat) = 5 * 25 := by norm_num
theorem hair_total : (221 : Nat) = 96 + 125 := by norm_num
theorem hair_solution : HairIncome 8 12 96 5 25 125 221 := by
  unfold HairIncome
  exact ⟨hair_haircuts, hair_styles, hair_total⟩

theorem tax_amount : (150 : Nat) * 8 = 12 * 100 := by norm_num
theorem tax_total : (162 : Nat) = 150 + 12 := by norm_num
theorem tax_solution : SalesTax 150 8 12 162 := by
  unfold SalesTax
  exact ⟨tax_amount, tax_total⟩

theorem theater_area : (6000 : Nat) = 500 * 12 := by norm_num
theorem theater_land : (30000 : Nat) = 6000 * 5 := by norm_num
theorem theater_construction : (60000 : Nat) = 30000 * 2 := by norm_num
theorem theater_total : (90000 : Nat) = 30000 + 60000 := by norm_num
theorem theater_partner : (90000 : Nat) * 40 = 36000 * 100 := by norm_num
theorem theater_tom : (90000 : Nat) = 36000 + 54000 := by norm_num
theorem theater_solution : TheaterCost 500 12 6000 5 30000 2 60000 90000 40 36000 54000 := by
  unfold TheaterCost
  exact ⟨theater_area, theater_land, theater_construction, theater_total,
    theater_partner, theater_tom⟩

theorem quilt_area : (144 : Nat) = 6 * 24 := by norm_num
theorem quilt_side : (144 : Nat) = 12 * 12 := by norm_num
theorem quilt_solution : SquareQuilt 6 24 144 12 := by
  unfold SquareQuilt
  exact ⟨quilt_area, quilt_side⟩

theorem lunch_equal : (45 : Nat) = 45 := by norm_num
theorem lunch_adam : (45 : Nat) * 2 = 30 * 3 := by norm_num
theorem lunch_total : (120 : Nat) = 30 + 45 + 45 := by norm_num
theorem lunch_solution : LunchTotal 45 45 2 3 30 120 := by
  unfold LunchTotal
  exact ⟨lunch_equal, lunch_adam, lunch_total⟩

theorem pay_raise : (1000 : Nat) * 10 = 100 * 100 := by norm_num
theorem pay_current : (1100 : Nat) = 1000 + 100 := by norm_num
theorem pay_total : (2100 : Nat) = 1000 + 1100 := by norm_num
theorem pay_solution : TwoMonthPay 1000 10 100 1100 2100 := by
  unfold TwoMonthPay
  exact ⟨pay_raise, pay_current, pay_total⟩

theorem tires_saving : (36 : Nat) = 9 * 4 := by norm_num
theorem tires_original : (84 : Nat) = 75 + 9 := by norm_num
theorem tires_solution : TirePrice 4 75 36 9 84 := by
  unfold TirePrice
  exact ⟨tires_saving, tires_original⟩

theorem golf_second : (180 : Nat) = 90 * 2 := by norm_num
theorem golf_two_shots : (270 : Nat) = 180 + 90 := by norm_num
theorem golf_hole : (270 : Nat) = 250 + 20 := by norm_num
theorem golf_solution : GolfDistance 180 2 90 270 20 250 := by
  unfold GolfDistance
  exact ⟨golf_second, golf_two_shots, golf_hole⟩

theorem fabric_tuesday : (40 : Nat) = 20 * 2 := by norm_num
theorem fabric_wednesday : (40 : Nat) = 10 * 4 := by norm_num
theorem fabric_total : (70 : Nat) = 20 + 40 + 10 := by norm_num
theorem fabric_revenue : (140 : Nat) = 70 * 2 := by norm_num
theorem fabric_solution : FabricRevenue 20 2 40 4 10 70 2 140 := by
  unfold FabricRevenue
  exact ⟨fabric_tuesday, fabric_wednesday, fabric_total, fabric_revenue⟩

#print axioms train_solution
#print axioms pies_solution
#print axioms pizza_solution
#print axioms race_solution
#print axioms height_solution
#print axioms party_solution
#print axioms hair_solution
#print axioms tax_solution
#print axioms theater_solution
#print axioms quilt_solution
#print axioms lunch_solution
#print axioms pay_solution
#print axioms tires_solution
#print axioms golf_solution
#print axioms fabric_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A18.train_solution to "work/gsm8k-sprint69-train-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A18.pies_solution to "work/gsm8k-sprint69-pies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A18.pizza_solution to "work/gsm8k-sprint69-pizza-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A18.race_solution to "work/gsm8k-sprint69-race-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A18.height_solution to "work/gsm8k-sprint69-height-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A18.party_solution to "work/gsm8k-sprint69-party-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A18.hair_solution to "work/gsm8k-sprint69-hair-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A18.tax_solution to "work/gsm8k-sprint69-tax-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A18.theater_solution to "work/gsm8k-sprint69-theater-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A18.quilt_solution to "work/gsm8k-sprint69-quilt-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A18.lunch_solution to "work/gsm8k-sprint69-lunch-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A18.pay_solution to "work/gsm8k-sprint69-pay-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A18.tires_solution to "work/gsm8k-sprint69-tires-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A18.golf_solution to "work/gsm8k-sprint69-golf-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A18.fabric_solution to "work/gsm8k-sprint69-fabric-graph.json"

end LemmaWeave.Tests.GSM8KSprint0921A18
