import LemmaWeave.Problems.GSM8K.Sprint0919A30Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A30
open LemmaWeave.Problems.GSM8K.Sprint0919A30

theorem jog_with_dog : (6 : ℚ) * 30 / 60 = 3 := by norm_num
theorem jog_solo : (4 : ℚ) * 30 / 60 = 2 := by norm_num
theorem jog_total : (3 : ℚ) + 2 = 5 := by norm_num
theorem jog_solution : JogDistance 6 4 30 3 2 5 := by norm_num [JogDistance]

theorem books_monthly : (3 : Nat) * 20 = 60 := by norm_num
theorem books_yearly : (60 : Nat) * 12 = 720 := by norm_num
theorem books_loss : (720 : Nat) = 500 + 220 := by norm_num
theorem books_solution : BookLoss 3 20 60 12 720 500 220 := by norm_num [BookLoss]

theorem clothing_shirts : (20 : Nat) * 10 = 200 := by norm_num
theorem clothing_jean_price : (2 : Nat) * 10 = 20 := by norm_num
theorem clothing_jeans : (10 : Nat) * 20 = 200 := by norm_num
theorem clothing_total : (200 : Nat) + 200 = 400 := by norm_num
theorem clothing_solution : ClothingRevenue 20 10 200 10 2 20 200 400 := by norm_num [ClothingRevenue]

theorem spider_sacs : (4 : Nat) + 1 = 5 := by norm_num
theorem spider_babies : (4 : Nat) * 1000 = 4000 := by norm_num
theorem spider_legs : (4000 : Nat) * 8 = 32000 := by norm_num
theorem spider_solution : TarantulaLegs 5 4 4 1000 4000 8 32000 := by norm_num [TarantulaLegs]

theorem shells_subtotal : (11 : Nat) + 24 = 35 := by norm_num
theorem shells_leo : (35 : Nat) + 24 = 59 := by norm_num
theorem shells_given : (6 : Nat) * 4 = 24 := by norm_num
theorem shells_remaining : (59 : Nat) = 6 + 53 := by norm_num
theorem shells_literal_underdetermined :
    ((11 : Nat) + 24 + 24 = 59 ∧ 24 = 4 * 6 ∧ 59 - 6 = 53) ∧
    (11 + 12 + 36 = 59 ∧ 36 = 4 * 9 ∧ 59 - 9 = 50) := by norm_num
theorem shells_solution : SeashellCorrected 11 24 35 59 24 4 6 53 := by norm_num [SeashellCorrected]

theorem apples_sour_pct : (100 : Nat) - 75 = 25 := by norm_num
theorem apples_average : (40 : Nat) * 100 = 75 * 50 + 25 * 10 := by norm_num
theorem apples_count : (100 : Nat) * 40 = 4000 := by norm_num
theorem apples_solution : AppleRevenue 75 25 50 10 40 4000 100 := by norm_num [AppleRevenue]

theorem boat_minutes_per_mile : (5 : Nat) * 2 = 10 := by norm_num
theorem boat_speed : (30 : Nat) * 10 = 5 * 60 := by norm_num
theorem boat_solution : BoatSpeed 5 10 60 30 := by norm_num [BoatSpeed]

theorem meal_samosas : (3 : Nat) * 2 = 6 := by norm_num
theorem meal_pakoras : (4 : Nat) * 3 = 12 := by norm_num
theorem meal_food : (6 : Nat) + 12 + 2 = 20 := by norm_num
theorem meal_tip_total : (5 : Nat) * 100 = 20 * 25 ∧ 20 + 5 = 25 := by norm_num
theorem meal_tax_underdetermined : (25 : ℚ) + 20 * 0 / 100 = 25 ∧ 25 + 20 * 10 / 100 = 27 := by norm_num
theorem meal_solution : DelhiMeal 3 2 6 4 3 12 2 20 25 5 25 := by norm_num [DelhiMeal]

theorem crayons_packs : (4 : Nat) + 2 = 6 := by norm_num
theorem crayons_value : (6 : Nat) * 250 = 1500 := by norm_num
theorem crayons_solution : Crayons 4 2 6 250 1500 := by norm_num [Crayons]

theorem fence_after_ben : (100 : Nat) = 10 + 90 := by norm_num
theorem fence_billy : (18 : Nat) * 5 = 90 := by norm_num
theorem fence_after_billy : (90 : Nat) = 18 + 72 := by norm_num
theorem fence_johnny : (24 : Nat) * 3 = 72 := by norm_num
theorem fence_remaining : (72 : Nat) = 24 + 48 := by norm_num
theorem fence_solution : Fence 100 10 90 5 18 72 3 24 48 := by norm_num [Fence]

theorem vampire_daily_gallons : (7 : Nat) = 7 * 1 := by norm_num
theorem vampire_daily_pints : (1 : Nat) * 8 = 8 := by norm_num
theorem vampire_people : (4 : Nat) * 2 = 8 := by norm_num
theorem vampire_solution : Vampire 7 7 1 8 2 4 := by norm_num [Vampire]

theorem pretzels_shelly : (6 : Nat) * 2 = 12 := by norm_num
theorem pretzels_angie : (3 : Nat) * 6 = 18 := by norm_num
theorem pretzels_solution : Pretzels 12 2 6 3 18 := by norm_num [Pretzels]

theorem age_angelina : (35 : Nat) + 5 = 40 := by norm_num
theorem age_justin : (31 : Nat) + 4 = 35 := by norm_num
theorem age_solution : CurrentAge 5 40 35 4 31 := by norm_num [CurrentAge]

theorem grass_daily : (12 : Nat) * 100 = 8 * (100 + 50) := by norm_num
theorem grass_week : (12 : Nat) * 7 = 84 := by norm_num
theorem grass_solution : Grass 8 50 12 7 84 := by norm_num [Grass]

theorem jet_people : (30 : Nat) + 5 = 35 := by norm_num
theorem jet_bags : (35 : Nat) * 2 = 70 := by norm_num
theorem jet_people_fuel : (35 : Nat) * 3 = 105 := by norm_num
theorem jet_bags_fuel : (70 : Nat) * 2 = 140 := by norm_num
theorem jet_per_mile : (20 : Nat) + 105 + 140 = 265 := by norm_num
theorem jet_total : (265 : Nat) * 400 = 106000 := by norm_num
theorem jet_solution : JetFuel 20 30 5 35 2 70 3 2 105 140 265 400 106000 := by norm_num [JetFuel]

end LemmaWeave.Tests.GSM8KSprint0919A30
