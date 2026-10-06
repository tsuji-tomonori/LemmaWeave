import LemmaWeave.Problems.GSM8K.Sprint0920A08Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0920A08
open LemmaWeave.Problems.GSM8K.Sprint0920A08

theorem bitcoin_after_first : (60 : Nat) + 20 = 80 := by norm_num
theorem bitcoin_retained : (30 : Nat) * 2 = 60 := by norm_num
theorem bitcoin_tripled : (90 : Nat) = 3 * 30 := by norm_num
theorem bitcoin_remaining : (80 : Nat) + 10 = 90 := by norm_num
theorem bitcoin_solution : BitcoinSequence 80 20 60 2 30 90 10 80 := by
  unfold BitcoinSequence
  exact ⟨bitcoin_after_first, bitcoin_retained, bitcoin_tripled, bitcoin_remaining⟩

theorem jogging_daily : (90 : Nat) = 1 * 60 + 30 := by norm_num
theorem jogging_minutes : (1260 : Nat) = 90 * 14 := by norm_num
theorem jogging_hours : (1260 : Nat) = 21 * 60 := by norm_num
theorem jogging_solution : JoggingTime 1 30 60 90 14 1260 21 := by
  unfold JoggingTime
  exact ⟨jogging_daily, jogging_minutes, jogging_hours⟩

theorem theater_visit_cost : (15 : Nat) = 3 * 5 := by norm_num
theorem theater_minimum_value : (90 : Nat) = 6 * 15 := by norm_num
theorem theater_minimum (visits : Nat) (h : 6 ≤ visits) : 90 ≤ visits * 15 := by omega
theorem theater_six_visits : (6 : Nat) ≤ 6 ∧ (90 : Nat) = 6 * 15 := by norm_num
theorem theater_seven_visits : (6 : Nat) ≤ 7 ∧ (105 : Nat) = 7 * 15 := by norm_num
theorem theater_amounts_differ : (90 : Nat) ≠ 105 := by norm_num
theorem theater_solution : TheaterAtLeast 6 3 5 15 90 6 90 7 105 := by
  unfold TheaterAtLeast
  exact ⟨theater_visit_cost, theater_minimum_value, theater_minimum,
    theater_six_visits.1, theater_six_visits.2, theater_seven_visits.1,
    theater_seven_visits.2, theater_amounts_differ⟩

theorem spokes_back : (40 : Nat) = 2 * 20 := by norm_num
theorem spokes_total : (60 : Nat) = 20 + 40 := by norm_num
theorem spokes_solution : BicycleSpokes 20 2 40 60 := by
  unfold BicycleSpokes
  exact ⟨spokes_back, spokes_total⟩

theorem hardware_bolts_bought : (77 : Nat) = 7 * 11 := by norm_num
theorem hardware_bolts_used : (77 : Nat) = 74 + 3 := by norm_num
theorem hardware_nuts_bought : (45 : Nat) = 3 * 15 := by norm_num
theorem hardware_nuts_used : (45 : Nat) = 39 + 6 := by norm_num
theorem hardware_total : (113 : Nat) = 74 + 39 := by norm_num
theorem hardware_solution : ProjectHardware 7 11 77 3 74 3 15 45 6 39 113 := by
  unfold ProjectHardware
  exact ⟨hardware_bolts_bought, hardware_bolts_used, hardware_nuts_bought,
    hardware_nuts_used, hardware_total⟩

theorem vampires_new_first : (10 : Nat) = 5 * 2 := by norm_num
theorem vampires_after_first : (12 : Nat) = 2 + 10 := by norm_num
theorem vampires_new_second : (60 : Nat) = 5 * 12 := by norm_num
theorem vampires_after_second : (72 : Nat) = 12 + 60 := by norm_num
theorem vampires_solution : VampireGrowth 2 5 10 12 60 72 := by
  unfold VampireGrowth
  exact ⟨vampires_new_first, vampires_after_first, vampires_new_second,
    vampires_after_second⟩

theorem shoes_labor : (600 : Nat) = 75 * 8 := by norm_num
theorem shoes_discounted : (480 : Nat) * 100 = 600 * 80 := by norm_num
theorem shoes_total : (730 : Nat) = 250 + 480 := by norm_num
theorem shoes_solution : HandmadeShoes 250 75 8 600 80 480 730 := by
  unfold HandmadeShoes
  exact ⟨shoes_labor, shoes_discounted, shoes_total⟩

theorem market_added_bottles : (8 : Nat) = 2 * 4 := by norm_num
theorem market_total_bottles : (12 : Nat) = 4 + 8 := by norm_num
theorem market_water : (24 : Nat) = 12 * 2 := by norm_num
theorem market_cheese : (5 : Nat) * 2 = 10 := by norm_num
theorem market_spent : (29 : Nat) = 24 + 5 := by norm_num
theorem market_remaining : (100 : Nat) = 29 + 71 := by norm_num
theorem market_solution : Supermarket 100 4 2 8 12 2 24 10 5 29 71 := by
  unfold Supermarket
  exact ⟨market_added_bottles, market_total_bottles, market_water, market_cheese,
    market_spent, market_remaining⟩

theorem ages_ratio_frederick : (40 : Nat) = 2 * 20 := by norm_num
theorem ages_ratio_julian : (20 : Nat) + 20 = 40 := by norm_num
theorem ages_ratio_kyle : (25 : Nat) = 20 + 5 := by norm_num
theorem ages_additive_frederick : (60 : Nat) = 20 + 2 * 20 := by norm_num
theorem ages_additive_julian : (40 : Nat) + 20 = 60 := by norm_num
theorem ages_additive_kyle : (45 : Nat) = 40 + 5 := by norm_num
theorem ages_answers_differ : (25 : Nat) ≠ 45 := by norm_num
theorem ages_solution : AgePhraseAmbiguous 20 2 20 5 40 20 25 60 40 45 := by
  unfold AgePhraseAmbiguous
  exact ⟨ages_ratio_frederick, ages_ratio_julian, ages_ratio_kyle,
    ages_additive_frederick, ages_additive_julian, ages_additive_kyle,
    ages_answers_differ⟩

theorem pets_teddy : (15 : Nat) = 7 + 8 := by norm_num
theorem pets_ben_dogs : (16 : Nat) = 7 + 9 := by norm_num
theorem pets_dave_cats : (21 : Nat) = 8 + 13 := by norm_num
theorem pets_dave_dogs : (2 : Nat) + 5 = 7 := by norm_num
theorem pets_dave : (23 : Nat) = 21 + 2 := by norm_num
theorem pets_named : (54 : Nat) = 15 + 16 + 23 := by norm_num
theorem pets_closed_world : (54 : Nat) = 54 + 0 := by norm_num
theorem pets_extra_example : (55 : Nat) = 54 + 1 := by norm_num
theorem pets_totals_differ : (54 : Nat) ≠ 55 := by norm_num
theorem pets_solution : PetCountAmbiguous 7 8 15 9 16 13 21 5 2 23 54 0 54 1 55 := by
  unfold PetCountAmbiguous
  exact ⟨pets_teddy, pets_ben_dogs, pets_dave_cats, pets_dave_dogs, pets_dave,
    pets_named, pets_closed_world, pets_extra_example, pets_totals_differ⟩

theorem iphone_net : (800 : Nat) = 240 + 560 := by norm_num
theorem iphone_seven_weeks : (560 : Nat) = 80 * 7 := by norm_num
theorem iphone_six_insufficient : (6 : Nat) * 80 < 560 := by norm_num
theorem iphone_consecutive : (6 : Nat) + 1 = 7 := by norm_num
theorem iphone_solution : IPhoneWork 800 240 560 80 7 6 := by
  unfold IPhoneWork
  exact ⟨iphone_net, iphone_seven_weeks, iphone_six_insufficient, iphone_consecutive⟩

theorem javelin_second : (300 : Nat) = 2 * 150 := by norm_num
theorem javelin_third : (600 : Nat) = 2 * 300 := by norm_num
theorem javelin_total : (1050 : Nat) = 300 + 150 + 600 := by norm_num
theorem javelin_solution : JavelinThrows 300 150 600 1050 := by
  unfold JavelinThrows
  exact ⟨javelin_second, javelin_third, javelin_total⟩

theorem family_daughter : (2 : Nat) + 10 = 12 := by norm_num
theorem family_son : (24 : Nat) = 2 * 12 := by norm_num
theorem family_gap : (24 : Nat) = 2 + 22 := by norm_num
theorem family_solution : SiblingAgeGap 12 10 2 2 24 22 := by
  unfold SiblingAgeGap
  exact ⟨family_daughter, family_son, family_gap⟩

theorem parts_original : (560 : Nat) = 7 * 80 := by norm_num
theorem parts_discount : (560 : Nat) = 439 + 121 := by norm_num
theorem parts_solution : PartsDiscount 7 80 560 439 121 := by
  unfold PartsDiscount
  exact ⟨parts_original, parts_discount⟩

theorem jewelry_necklaces : (12 : Nat) = 10 + 2 := by norm_num
theorem jewelry_necklace_beads : (240 : Nat) = 12 * 20 := by norm_num
theorem jewelry_bracelet_beads : (50 : Nat) = 5 * 10 := by norm_num
theorem jewelry_earring_beads : (35 : Nat) = 7 * 5 := by norm_num
theorem jewelry_total : (325 : Nat) = 240 + 50 + 35 := by norm_num
theorem jewelry_solution : JewelryBeads 10 2 12 20 240 5 10 50 7 5 35 325 := by
  unfold JewelryBeads
  exact ⟨jewelry_necklaces, jewelry_necklace_beads, jewelry_bracelet_beads,
    jewelry_earring_beads, jewelry_total⟩

#print axioms bitcoin_solution
#print axioms jogging_solution
#print axioms theater_solution
#print axioms spokes_solution
#print axioms hardware_solution
#print axioms vampires_solution
#print axioms shoes_solution
#print axioms market_solution
#print axioms ages_solution
#print axioms pets_solution
#print axioms iphone_solution
#print axioms javelin_solution
#print axioms family_solution
#print axioms parts_solution
#print axioms jewelry_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A08.bitcoin_solution to "work/gsm8k-sprint40-bitcoin-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A08.jogging_solution to "work/gsm8k-sprint40-jogging-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A08.theater_solution to "work/gsm8k-sprint40-theater-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A08.spokes_solution to "work/gsm8k-sprint40-spokes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A08.hardware_solution to "work/gsm8k-sprint40-hardware-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A08.vampires_solution to "work/gsm8k-sprint40-vampires-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A08.shoes_solution to "work/gsm8k-sprint40-shoes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A08.market_solution to "work/gsm8k-sprint40-market-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A08.ages_solution to "work/gsm8k-sprint40-ages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A08.pets_solution to "work/gsm8k-sprint40-pets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A08.iphone_solution to "work/gsm8k-sprint40-iphone-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A08.javelin_solution to "work/gsm8k-sprint40-javelin-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A08.family_solution to "work/gsm8k-sprint40-family-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A08.parts_solution to "work/gsm8k-sprint40-parts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A08.jewelry_solution to "work/gsm8k-sprint40-jewelry-graph.json"

end LemmaWeave.Tests.GSM8KSprint0920A08
