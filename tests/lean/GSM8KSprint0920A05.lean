import LemmaWeave.Problems.GSM8K.Sprint0920A05Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0920A05
open LemmaWeave.Problems.GSM8K.Sprint0920A05

theorem marbles_known : (18 : Nat) = 12 + 6 := by norm_num
theorem marbles_green : (2 : Nat) + 18 = 20 := by norm_num
theorem marbles_solution : MarbleColors 12 6 18 20 2 := by
  unfold MarbleColors
  exact ⟨marbles_known, marbles_green⟩

theorem parking_literal_extra : (200 : Nat) = 2 * 100 := by norm_num
theorem parking_literal_back : (300 : Nat) = 100 + 200 := by norm_num
theorem parking_literal_initial : (400 : Nat) = 100 + 300 := by norm_num
theorem parking_literal_arrivals : (300 : Nat) + 400 = 700 := by norm_num
theorem parking_multiplier_back : (200 : Nat) = 2 * 100 := by norm_num
theorem parking_multiplier_initial : (300 : Nat) = 100 + 200 := by norm_num
theorem parking_multiplier_arrivals : (400 : Nat) + 300 = 700 := by norm_num
theorem parking_solution : TheaterParking 100 200 300 400 300 200 300 400 700 := by
  unfold TheaterParking
  exact ⟨parking_literal_extra, parking_literal_back, parking_literal_initial,
    parking_literal_arrivals, parking_multiplier_back, parking_multiplier_initial,
    parking_multiplier_arrivals⟩

theorem coin_tails : (146 : Nat) + 65 = 211 := by norm_num
theorem coin_excess : (81 : Nat) + 65 = 146 := by norm_num
theorem coin_solution : CoinFlips 211 65 146 81 := by
  unfold CoinFlips
  exact ⟨coin_tails, coin_excess⟩

theorem dogs_human_legs : (4 : Nat) = 2 * 2 := by norm_num
theorem dogs_other_legs : (12 : Nat) = 3 * 4 := by norm_num
theorem dogs_accounted : (16 : Nat) = 4 + 12 := by norm_num
theorem dogs_remaining : (20 : Nat) + 16 = 36 := by norm_num
theorem dogs_mariel : (5 : Nat) * 4 = 20 := by norm_num
theorem dogs_solution : DogWalkers 2 4 3 12 16 20 4 5 36 := by
  unfold DogWalkers
  exact ⟨dogs_human_legs, dogs_other_legs, dogs_accounted, dogs_remaining, dogs_mariel⟩

theorem shore_sheep : (17 : Nat) + 3 = 20 := by norm_num
theorem shore_cows_drowned : (6 : Nat) = 2 * 3 := by norm_num
theorem shore_cows_safe : (4 : Nat) + 6 = 10 := by norm_num
theorem shore_total : (35 : Nat) = 17 + 4 + 14 := by norm_num
theorem shore_solution : CapsizedAnimals 20 3 17 10 6 4 14 35 := by
  unfold CapsizedAnimals
  exact ⟨shore_sheep, shore_cows_drowned, shore_cows_safe, shore_total⟩

theorem omelet_small : (53 : Nat) = 53 := by norm_num
theorem omelet_older : (70 : Nat) = 2 * 35 := by norm_num
theorem omelet_adults : (300 : Nat) = 4 * 75 := by norm_num
theorem omelet_seniors : (111 : Nat) = 3 * 37 := by norm_num
theorem omelet_buffer : (50 : Nat) = 2 * 25 := by norm_num
theorem omelet_half_total : (584 : Nat) = 53 + 70 + 300 + 111 + 50 := by norm_num
theorem omelet_count : (584 : Nat) = 2 * 292 := by norm_num
theorem omelet_eggs : (584 : Nat) = 2 * 292 := by norm_num
theorem omelet_solution : OmeletBreakfast 53 70 300 111 50 584 292 584 := by
  unfold OmeletBreakfast
  exact ⟨omelet_small, omelet_older, omelet_adults, omelet_seniors,
    omelet_buffer, omelet_half_total, omelet_count, omelet_eggs⟩

theorem camp_dog_daily : (12 : Nat) = 4 * 3 := by norm_num
theorem camp_dog_total : (36 : Nat) = 3 * 12 := by norm_num
theorem camp_puppy_meal : (4 : Nat) = 2 * 2 := by norm_num
theorem camp_puppy_meals : (9 : Nat) = 3 * 3 := by norm_num
theorem camp_puppy_daily : (18 : Nat) = 2 * 9 := by norm_num
theorem camp_puppy_total : (72 : Nat) = 4 * 18 := by norm_num
theorem camp_total : (108 : Nat) = 36 + 72 := by norm_num
theorem camp_solution : CampFood 4 3 12 3 36 2 9 18 4 72 108 := by
  unfold CampFood
  exact ⟨camp_dog_daily, camp_dog_total, camp_puppy_meal, camp_puppy_meals,
    camp_puppy_daily, camp_puppy_total, camp_total⟩

theorem ratio_parts : (27 : Nat) = 10 + 17 := by norm_num
theorem ratio_dogs : (70 : Nat) * 27 = 189 * 10 := by norm_num
theorem ratio_remaining : (60 : Nat) + 10 = 70 := by norm_num
theorem ratio_solution : PetRatio 10 17 27 189 70 10 60 := by
  unfold PetRatio
  exact ⟨ratio_parts, ratio_dogs, ratio_remaining⟩

theorem meatball_count : (32 : Nat) = 4 * 8 := by norm_num
theorem meatball_share : (4 : Nat) * 8 = 32 := by norm_num
theorem meatball_solution : Meatballs 4 8 32 8 4 := by
  unfold Meatballs
  exact ⟨meatball_count, meatball_share⟩

theorem randy_after_lunch : (20 : Nat) + 10 = 30 := by norm_num
theorem randy_ice_cream : (5 : Nat) * 4 = 20 := by norm_num
theorem randy_remaining : (15 : Nat) + 5 = 20 := by norm_num
theorem randy_solution : RandyMoney 30 10 20 5 15 := by
  unfold RandyMoney
  exact ⟨randy_after_lunch, randy_ice_cream, randy_remaining⟩

theorem age_future : (12 : Nat) = 2 * 6 := by norm_num
theorem age_current : (7 : Nat) + 5 = 12 := by norm_num
theorem age_difference : (1 : Nat) + 6 = 7 := by norm_num
theorem age_solution : Ages 6 12 5 7 1 := by
  unfold Ages
  exact ⟨age_future, age_current, age_difference⟩

theorem actors_turns : (4 : Nat) * 15 = 60 := by norm_num
theorem actors_total : (20 : Nat) = 4 * 5 := by norm_num
theorem actors_solution : ActorShow 60 15 4 5 20 := by
  unfold ActorShow
  exact ⟨actors_turns, actors_total⟩

theorem fridge_old : (2550 : Nat) = 85 * 30 := by norm_num
theorem fridge_new : (1350 : Nat) = 45 * 30 := by norm_num
theorem fridge_saved : (1200 : Nat) + 1350 = 2550 := by norm_num
theorem fridge_solution : RefrigeratorSavings 85 45 30 2550 1350 1200 := by
  unfold RefrigeratorSavings
  exact ⟨fridge_old, fridge_new, fridge_saved⟩

theorem corn_cost : (100 : Nat) = 50 + 35 + 15 := by norm_num
theorem corn_profit : (10 : Nat) * 10 = 100 := by norm_num
theorem corn_revenue : (110 : Nat) = 100 + 10 := by norm_num
theorem corn_price : (11 : Nat) * 10 = 110 := by norm_num
theorem corn_solution : CornProfit 50 35 15 100 10 110 10 11 := by
  unfold CornProfit
  exact ⟨corn_cost, corn_profit, corn_revenue, corn_price⟩

theorem milk_per_cow : (18 : Nat) * 6 = 108 := by norm_num
theorem milk_five_weeks : (2160 : Nat) = 5 * (18 * 24) := by norm_num
theorem milk_solution : MilkProduction 6 108 18 24 5 2160 := by
  unfold MilkProduction
  exact ⟨milk_per_cow, milk_five_weeks⟩

#print axioms marbles_solution
#print axioms parking_solution
#print axioms coin_solution
#print axioms dogs_solution
#print axioms shore_solution
#print axioms omelet_solution
#print axioms camp_solution
#print axioms ratio_solution
#print axioms meatball_solution
#print axioms randy_solution
#print axioms age_solution
#print axioms actors_solution
#print axioms fridge_solution
#print axioms corn_solution
#print axioms milk_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A05.marbles_solution to "work/gsm8k-sprint37-marbles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A05.parking_solution to "work/gsm8k-sprint37-parking-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A05.coin_solution to "work/gsm8k-sprint37-coin-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A05.dogs_solution to "work/gsm8k-sprint37-dogs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A05.shore_solution to "work/gsm8k-sprint37-shore-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A05.omelet_solution to "work/gsm8k-sprint37-omelet-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A05.camp_solution to "work/gsm8k-sprint37-camp-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A05.ratio_solution to "work/gsm8k-sprint37-ratio-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A05.meatball_solution to "work/gsm8k-sprint37-meatball-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A05.randy_solution to "work/gsm8k-sprint37-randy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A05.age_solution to "work/gsm8k-sprint37-age-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A05.actors_solution to "work/gsm8k-sprint37-actors-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A05.fridge_solution to "work/gsm8k-sprint37-fridge-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A05.corn_solution to "work/gsm8k-sprint37-corn-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A05.milk_solution to "work/gsm8k-sprint37-milk-graph.json"

end LemmaWeave.Tests.GSM8KSprint0920A05
