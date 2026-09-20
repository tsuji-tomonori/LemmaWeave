import LemmaWeave.Problems.GSM8K.Sprint0920A10Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0920A10
open LemmaWeave.Problems.GSM8K.Sprint0920A10

theorem animals_dogs : (80 : Nat) * 2 = 160 := by norm_num
theorem animals_cats : (64 : Nat) * 100 = 80 * (100 - 20) := by norm_num
theorem animals_total : (304 : Nat) = 64 + 80 + 160 := by norm_num
theorem animals_solution : AnimalCompound 160 2 80 20 64 304 := by
  unfold AnimalCompound
  exact ⟨animals_dogs, animals_cats, animals_total⟩

theorem cold_brew_jug : (64 : Nat) * 2 = 128 := by norm_num
theorem cold_brew_daily : (64 : Nat) = 4 * 16 := by norm_num
theorem cold_brew_cups : (16 : Nat) = 8 * 2 := by norm_num
theorem cold_brew_solution : ColdBrew 128 2 64 4 16 8 2 := by
  unfold ColdBrew
  exact ⟨cold_brew_jug, cold_brew_daily, cold_brew_cups⟩

theorem alligators_return : (6 : Nat) = 4 + 2 := by norm_num
theorem alligators_group : (7 : Nat) = 6 + 1 := by norm_num
theorem alligators_return_hours : (42 : Nat) = 7 * 6 := by norm_num
theorem alligators_combined : (46 : Nat) = 4 + 42 := by norm_num
theorem alligators_solution : AlligatorHours 4 2 6 6 7 42 46 := by
  unfold AlligatorHours
  exact ⟨alligators_return, alligators_group, alligators_return_hours, alligators_combined⟩

theorem jam_matthew : (36 : Nat) = 16 + 20 := by norm_num
theorem jam_natalie : (36 : Nat) = 2 * 18 := by norm_num
theorem jam_total : (70 : Nat) = 16 + 36 + 18 := by norm_num
theorem jam_jars : (70 : Nat) = 10 * 7 := by norm_num
theorem jam_revenue : (40 : Nat) = 10 * 4 := by norm_num
theorem strawberry_jam_solution : StrawberryJam 16 20 36 18 70 7 10 4 40 := by
  unfold StrawberryJam
  exact ⟨jam_matthew, jam_natalie, jam_total, jam_jars, jam_revenue⟩

theorem shipment_half : (480 : Nat) * 2 = 960 := by norm_num
theorem shipment_available : (790 : Nat) = 480 + 310 := by norm_num
theorem shipment_surplus : (790 : Nat) = 610 + 180 := by norm_num
theorem shipment_solution : ShipmentFund 960 2 480 310 790 610 180 := by
  unfold ShipmentFund
  exact ⟨shipment_half, shipment_available, shipment_surplus⟩

theorem birds_white : (46 : Nat) = 40 + 6 := by norm_num
theorem birds_grey_remaining : (20 : Nat) * 2 = 40 := by norm_num
theorem birds_total : (66 : Nat) = 46 + 20 := by norm_num
theorem birds_solution : RemainingBirds 40 6 46 2 20 66 := by
  unfold RemainingBirds
  exact ⟨birds_white, birds_grey_remaining, birds_total⟩

theorem bulbs_daily : (2400 : Nat) = 40 * 60 := by norm_num
theorem bulbs_month : (72000 : Nat) = 30 * 2400 := by norm_num
theorem bulbs_cents : (1440000 : Nat) = 72000 * 20 := by norm_num
theorem bulbs_dollars : (1440000 : Nat) = 14400 * 100 := by norm_num
theorem bulbs_solution : BulbBill 60 40 2400 30 72000 20 1440000 14400 := by
  unfold BulbBill
  exact ⟨bulbs_daily, bulbs_month, bulbs_cents, bulbs_dollars⟩

theorem pencils_alexander_age : (140 : Nat) = 50 + 90 := by norm_num
theorem pencils_age_difference : (90 : Nat) = 50 + 40 := by norm_num
theorem pencils_asaf : (80 : Nat) = 2 * 40 := by norm_num
theorem pencils_alexander : (140 : Nat) = 80 + 60 := by norm_num
theorem pencils_total : (220 : Nat) = 80 + 140 := by norm_num
theorem pencils_solution : PencilAges 140 50 90 40 80 60 140 220 := by
  unfold PencilAges
  exact ⟨pencils_alexander_age, pencils_age_difference, pencils_asaf, pencils_alexander, pencils_total⟩

theorem climbing_matt : (42 : Nat) = 6 * 7 := by norm_num
theorem climbing_jason : (84 : Nat) = 12 * 7 := by norm_num
theorem climbing_difference : (84 : Nat) = 42 + 42 := by norm_num
theorem climbing_solution : ClimbingDifference 6 12 7 42 84 42 := by
  unfold ClimbingDifference
  exact ⟨climbing_matt, climbing_jason, climbing_difference⟩

theorem roof_house : (205 : Nat) * 10 = 205 * 10 := by norm_num
theorem roof_porch : (27 : Nat) * 10 = 6 * 45 := by norm_num
theorem roof_total : (232 : Nat) = 205 + 27 := by norm_num
theorem roof_solution : RoofArea 205 10 205 6 45 27 232 := by
  unfold RoofArea
  exact ⟨roof_house, roof_porch, roof_total⟩

#print axioms animals_solution
#print axioms cold_brew_solution
#print axioms alligators_solution
#print axioms strawberry_jam_solution
#print axioms shipment_solution
#print axioms birds_solution
#print axioms bulbs_solution
#print axioms pencils_solution
#print axioms climbing_solution
#print axioms roof_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A10.animals_solution to "work/gsm8k-sprint42-animals-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A10.cold_brew_solution to "work/gsm8k-sprint42-cold_brew-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A10.alligators_solution to "work/gsm8k-sprint42-alligators-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A10.strawberry_jam_solution to "work/gsm8k-sprint42-strawberry_jam-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A10.shipment_solution to "work/gsm8k-sprint42-shipment-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A10.birds_solution to "work/gsm8k-sprint42-birds-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A10.bulbs_solution to "work/gsm8k-sprint42-bulbs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A10.pencils_solution to "work/gsm8k-sprint42-pencils-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A10.climbing_solution to "work/gsm8k-sprint42-climbing-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A10.roof_solution to "work/gsm8k-sprint42-roof-graph.json"

end LemmaWeave.Tests.GSM8KSprint0920A10
