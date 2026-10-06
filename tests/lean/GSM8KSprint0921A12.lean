import LemmaWeave.Problems.GSM8K.Sprint0921A12Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0921A12
open LemmaWeave.Problems.GSM8K.Sprint0921A12

theorem investment_first_gain : (12 : Nat) * 100 = 80 * 15 := by norm_num
theorem investment_after_first : (92 : Nat) = 80 + 12 := by norm_num
theorem investment_before_second : (120 : Nat) = 92 + 28 := by norm_num
theorem investment_second_gain : (12 : Nat) * 100 = 120 * 10 := by norm_num
theorem investment_final : (132 : Nat) = 120 + 12 := by norm_num
theorem investment_solution : InvestmentPortfolio 80 15 12 92 28 120 10 12 132 := by
  unfold InvestmentPortfolio
  exact ⟨investment_first_gain, investment_after_first, investment_before_second,
    investment_second_gain, investment_final⟩

theorem basketball_so_far : (390 : Nat) = 26 * 15 := by norm_num
theorem basketball_target : (600 : Nat) = 30 * 20 := by norm_num
theorem basketball_remaining_games : (20 : Nat) = 15 + 5 := by norm_num
theorem basketball_remaining_points : (600 : Nat) = 390 + 210 := by norm_num
theorem basketball_needed_average : (210 : Nat) = 42 * 5 := by norm_num
theorem basketball_solution : BasketballAverage 26 15 390 30 20 600 5 210 42 := by
  unfold BasketballAverage
  exact ⟨basketball_so_far, basketball_target, basketball_remaining_games,
    basketball_remaining_points, basketball_needed_average⟩

theorem jewelry_necklaces : (125 : Nat) = 5 * 25 := by norm_num
theorem jewelry_bracelets : (150 : Nat) = 10 * 15 := by norm_num
theorem jewelry_ensembles : (90 : Nat) = 2 * 45 := by norm_num
theorem jewelry_pair_earrings : (200 : Nat) = 20 * 10 := by norm_num
theorem jewelry_pair_total : (565 : Nat) = 125 + 150 + 200 + 90 := by norm_num
theorem jewelry_item_pairs : (20 : Nat) = 10 * 2 := by norm_num
theorem jewelry_item_earrings : (100 : Nat) = 10 * 10 := by norm_num
theorem jewelry_item_total : (465 : Nat) = 125 + 150 + 100 + 90 := by norm_num
theorem jewelry_nonunique : (565 : Nat) ≠ 465 := by norm_num
theorem jewelry_solution : JewelrySales 5 25 10 15 20 10 2 45 125 150 90 200 565 10 100 465 := by
  unfold JewelrySales
  exact ⟨jewelry_necklaces, jewelry_bracelets, jewelry_ensembles,
    jewelry_pair_earrings, jewelry_pair_total, jewelry_item_pairs,
    jewelry_item_earrings, jewelry_item_total, jewelry_nonunique⟩

theorem crayons_boxed : (85 : Nat) = 80 + 5 := by norm_num
theorem crayons_per_box : (80 : Nat) = 5 * 16 := by norm_num
theorem crayons_loose : (32 : Nat) = 5 + 27 := by norm_num
theorem crayons_needed : (32 : Nat) = 2 * 16 := by norm_num
theorem crayons_solution : CrayonBoxes 85 5 5 80 16 27 32 2 := by
  unfold CrayonBoxes
  exact ⟨crayons_boxed, crayons_per_box, crayons_loose, crayons_needed⟩

theorem paint_daily : (18 : Nat) = 3 * 6 := by norm_num
theorem paint_days : (360 : Nat) = 60 * 6 := by norm_num
theorem paint_solution : PaintDrums 3 18 6 360 60 := by
  unfold PaintDrums
  exact ⟨paint_daily, paint_days⟩

theorem heights_brixton : (64 : Nat) = 64 := by norm_num
theorem heights_zora : (64 : Nat) = 56 + 8 := by norm_num
theorem heights_itzayana : (60 : Nat) = 56 + 4 := by norm_num
theorem heights_total : (244 : Nat) = 64 + 64 + 56 + 60 := by norm_num
theorem heights_average : (244 : Nat) = 4 * 61 := by norm_num
theorem heights_solution : AverageHeights 64 64 8 56 4 60 244 4 61 := by
  unfold AverageHeights
  exact ⟨heights_brixton, heights_zora, heights_itzayana, heights_total, heights_average⟩

theorem nails_per_coat : (40 : Nat) = 20 + 20 := by norm_num
theorem nails_total : (120 : Nat) = 3 * 40 := by norm_num
theorem nails_solution : NailDecorating 3 20 20 40 120 := by
  unfold NailDecorating
  exact ⟨nails_per_coat, nails_total⟩

theorem spacecraft_first : (896 : Nat) * 30 = 448 * 60 := by norm_num
theorem spacecraft_second : (448 : Nat) * 60 = 448 * 60 := by norm_num
theorem spacecraft_difference : (896 : Nat) = 448 + 448 := by norm_num
theorem spacecraft_solution : SpacecraftSpeeds 448 30 60 896 448 448 := by
  unfold SpacecraftSpeeds
  exact ⟨spacecraft_first, spacecraft_second, spacecraft_difference⟩

theorem wages_daily : (6000 : Nat) = 8 * 750 := by norm_num
theorem wages_monthly : (120000 : Nat) = 20 * 6000 := by norm_num
theorem wages_total : (240000 : Nat) = 2 * 120000 := by norm_num
theorem wages_solution : TwoMonthWages 8 750 6000 20 120000 2 240000 := by
  unfold TwoMonthWages
  exact ⟨wages_daily, wages_monthly, wages_total⟩

theorem run_first : (10 : Nat) = 5 * 2 := by norm_num
theorem run_second : (20 : Nat) = 10 * 2 := by norm_num
theorem run_third : (8 : Nat) = 2 * 4 := by norm_num
theorem run_total : (17 : Nat) = 5 + 10 + 2 := by norm_num
theorem run_solution : RunningDistance 10 5 20 10 8 2 17 := by
  unfold RunningDistance
  exact ⟨run_first, run_second, run_third, run_total⟩

theorem pistachios_shelled : (76 : Nat) * 100 = 80 * 95 := by norm_num
theorem pistachios_opened : (57 : Nat) * 100 = 76 * 75 := by norm_num
theorem pistachios_solution : OpenPistachios 80 95 76 75 57 := by
  unfold OpenPistachios
  exact ⟨pistachios_shelled, pistachios_opened⟩

theorem penny_socks : (8 : Nat) = 4 * 2 := by norm_num
theorem penny_spent : (15 : Nat) = 8 + 7 := by norm_num
theorem penny_remaining : (20 : Nat) = 15 + 5 := by norm_num
theorem penny_solution : PennyMoney 20 4 2 8 7 15 5 := by
  unfold PennyMoney
  exact ⟨penny_socks, penny_spent, penny_remaining⟩

theorem cats_black : (4 : Nat) * 100 = 16 * 25 := by norm_num
theorem cats_grey : (16 : Nat) = 2 + 4 + 10 := by norm_num
theorem cats_solution : GreyCats 16 2 25 4 10 := by
  unfold GreyCats
  exact ⟨cats_black, cats_grey⟩

theorem carwash_suv : (35 : Nat) = 5 * 7 := by norm_num
theorem carwash_truck : (30 : Nat) = 5 * 6 := by norm_num
theorem carwash_revenue : (100 : Nat) = 35 + 30 + 35 := by norm_num
theorem carwash_cars : (35 : Nat) = 7 * 5 := by norm_num
theorem carwash_solution : CarWash 100 5 7 35 5 6 30 5 35 7 := by
  unfold CarWash
  exact ⟨carwash_suv, carwash_truck, carwash_revenue, carwash_cars⟩

theorem cereal_second : (14 : Nat) = 7 * 2 := by norm_num
theorem cereal_third : (12 : Nat) = 7 + 5 := by norm_num
theorem cereal_total : (33 : Nat) = 14 + 7 + 12 := by norm_num
theorem cereal_solution : CerealBoxes 14 7 12 5 33 := by
  unfold CerealBoxes
  exact ⟨cereal_second, cereal_third, cereal_total⟩

#print axioms investment_solution
#print axioms basketball_solution
#print axioms jewelry_solution
#print axioms crayons_solution
#print axioms paint_solution
#print axioms heights_solution
#print axioms nails_solution
#print axioms spacecraft_solution
#print axioms wages_solution
#print axioms run_solution
#print axioms pistachios_solution
#print axioms penny_solution
#print axioms cats_solution
#print axioms carwash_solution
#print axioms cereal_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A12.investment_solution to "work/gsm8k-sprint63-investment-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A12.basketball_solution to "work/gsm8k-sprint63-basketball-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A12.jewelry_solution to "work/gsm8k-sprint63-jewelry-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A12.crayons_solution to "work/gsm8k-sprint63-crayons-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A12.paint_solution to "work/gsm8k-sprint63-paint-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A12.heights_solution to "work/gsm8k-sprint63-heights-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A12.nails_solution to "work/gsm8k-sprint63-nails-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A12.spacecraft_solution to "work/gsm8k-sprint63-spacecraft-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A12.wages_solution to "work/gsm8k-sprint63-wages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A12.run_solution to "work/gsm8k-sprint63-run-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A12.pistachios_solution to "work/gsm8k-sprint63-pistachios-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A12.penny_solution to "work/gsm8k-sprint63-penny-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A12.cats_solution to "work/gsm8k-sprint63-cats-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A12.carwash_solution to "work/gsm8k-sprint63-carwash-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A12.cereal_solution to "work/gsm8k-sprint63-cereal-graph.json"

end LemmaWeave.Tests.GSM8KSprint0921A12
