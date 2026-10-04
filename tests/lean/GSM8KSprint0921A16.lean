import LemmaWeave.Problems.GSM8K.Sprint0921A16Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0921A16
open LemmaWeave.Problems.GSM8K.Sprint0921A16

theorem shower_days : (28 : Nat) = 4 * 7 := by norm_num
theorem shower_count : (28 : Nat) = 14 * 2 := by norm_num
theorem shower_minutes : (140 : Nat) = 14 * 10 := by norm_num
theorem shower_water : (280 : Nat) = 140 * 2 := by norm_num
theorem shower_solution : ShowerWater 4 28 2 14 10 140 2 280 := by
  unfold ShowerWater
  exact ⟨shower_days, shower_count, shower_minutes, shower_water⟩

theorem surfers_malibu : (40 : Nat) = 2 * 20 := by norm_num
theorem surfers_total : (60 : Nat) = 20 + 40 := by norm_num
theorem surfers_solution : BeachSurfers 20 2 40 60 := by
  unfold BeachSurfers
  exact ⟨surfers_malibu, surfers_total⟩

theorem aquarium_blue : (12 : Nat) = 6 * 2 := by norm_num
theorem aquarium_green : (24 : Nat) = 12 * 2 := by norm_num
theorem aquarium_known : (42 : Nat) = 12 + 6 + 24 := by norm_num
theorem aquarium_first : (44 : Nat) = 42 + 1 + 1 := by norm_num
theorem aquarium_first_counts : (1 : Nat) = 1 ∧ (1 : Nat) = 1 := by norm_num
theorem aquarium_second : (46 : Nat) = 42 + 2 + 2 := by norm_num
theorem aquarium_second_counts : (2 : Nat) = 2 ∧ (2 : Nat) = 2 := by norm_num
theorem aquarium_nonunique : (44 : Nat) ≠ 46 := by norm_num
theorem aquarium_solution : AquariumAmbiguity 12 6 24 42 1 1 44 2 2 46 := by
  unfold AquariumAmbiguity
  exact ⟨aquarium_blue, aquarium_green, aquarium_known, aquarium_first,
    aquarium_first_counts.1, aquarium_first_counts.2, aquarium_second,
    aquarium_second_counts.1, aquarium_second_counts.2, aquarium_nonunique⟩

theorem speeds_tracy : (8 : Nat) = 2 * 4 := by norm_num
theorem speeds_susan : (8 : Nat) = 4 * 2 := by norm_num
theorem speeds_backward : (12 : Nat) = 4 * 3 := by norm_num
theorem speeds_solution : WalkingSpeeds 2 4 8 2 4 3 12 := by
  unfold WalkingSpeeds
  exact ⟨speeds_tracy, speeds_susan, speeds_backward⟩

theorem chores_other : (9 : Nat) = 3 * 3 := by norm_num
theorem chores_total : (12 : Nat) = 3 + 9 := by norm_num
theorem chores_solution : ChoreHours 3 3 9 12 := by
  unfold ChoreHours
  exact ⟨chores_other, chores_total⟩

theorem gold_gary : (450 : Nat) = 30 * 15 := by norm_num
theorem gold_anna : (1000 : Nat) = 50 * 20 := by norm_num
theorem gold_total : (1450 : Nat) = 450 + 1000 := by norm_num
theorem gold_solution : GoldCost 30 15 450 50 20 1000 1450 := by
  unfold GoldCost
  exact ⟨gold_gary, gold_anna, gold_total⟩

theorem paint_blue : (3 : Nat) * 2 = 6 * 1 := by norm_num
theorem paint_white : (15 : Nat) * 2 = 6 * 5 := by norm_num
theorem paint_total : (24 : Nat) = 3 + 6 + 15 := by norm_num
theorem paint_solution : PaintRatio 1 2 5 6 3 15 24 := by
  unfold PaintRatio
  exact ⟨paint_blue, paint_white, paint_total⟩

theorem grades_total : (42 : Nat) = 14 + 24 + 4 := by norm_num
theorem grades_solution : ClassGrades 14 24 42 4 := by
  unfold ClassGrades
  exact grades_total

theorem fireworks_year : (24 : Nat) = 4 * 6 := by norm_num
theorem fireworks_letters : (60 : Nat) = 12 * 5 := by norm_num
theorem fireworks_boxes : (400 : Nat) = 50 * 8 := by norm_num
theorem fireworks_total : (484 : Nat) = 24 + 60 + 400 := by norm_num
theorem fireworks_solution : Fireworks 4 6 24 12 5 60 50 8 400 484 := by
  unfold Fireworks
  exact ⟨fireworks_year, fireworks_letters, fireworks_boxes, fireworks_total⟩

theorem discount_shorts : (45 : Nat) = 3 * 15 := by norm_num
theorem discount_shirts : (85 : Nat) = 5 * 17 := by norm_num
theorem discount_subtotal : (130 : Nat) = 45 + 85 := by norm_num
theorem discount_amount : (130 : Nat) * 10 = 13 * 100 := by norm_num
theorem discount_price : (117 : Nat) = 130 - 13 := by norm_num
theorem discount_full : (130 : Nat) = 130 := by norm_num
theorem discount_nonunique : (117 : Nat) ≠ 130 := by norm_num
theorem discount_solution : SeniorDiscountAmbiguity 3 15 45 5 17 85 130 10 13 117 130 := by
  unfold SeniorDiscountAmbiguity
  exact ⟨discount_shorts, discount_shirts, discount_subtotal, discount_amount,
    discount_price, discount_full, discount_nonunique⟩

theorem virgo_plane_max : (8 : Nat) = 4 * 2 := by norm_num
theorem virgo_total_max : (10 : Nat) = 2 + 8 := by norm_num
theorem virgo_alt_bound : (1 : Nat) ≤ 2 := by norm_num
theorem virgo_alt_plane : (4 : Nat) = 4 * 1 := by norm_num
theorem virgo_alt_total : (5 : Nat) = 1 + 4 := by norm_num
theorem virgo_nonunique : (5 : Nat) ≠ 10 := by norm_num
theorem virgo_solution : VirgoTripAmbiguity 4 2 8 10 1 4 5 := by
  unfold VirgoTripAmbiguity
  exact ⟨virgo_plane_max, virgo_total_max, virgo_alt_bound, virgo_alt_plane,
    virgo_alt_total, virgo_nonunique⟩

theorem peaches_friend : (2000 : Nat) = 10 * 200 := by norm_num
theorem peaches_relative : (500 : Nat) = 4 * 125 := by norm_num
theorem peaches_sold : (14 : Nat) = 10 + 4 := by norm_num
theorem peaches_total : (2500 : Nat) = 2000 + 500 := by norm_num
theorem peaches_solution : PeachEarnings 10 200 2000 4 125 500 14 2500 := by
  unfold PeachEarnings
  exact ⟨peaches_friend, peaches_relative, peaches_sold, peaches_total⟩

theorem carpets_fourth : (20 : Nat) = 2 * 10 := by norm_num
theorem carpets_total : (62 : Nat) = 12 + 20 + 10 + 20 := by norm_num
theorem carpets_solution : CarpetTotal 12 20 10 2 20 62 := by
  unfold CarpetTotal
  exact ⟨carpets_fourth, carpets_total⟩

theorem pets_puppies : (40 : Nat) * 80 = 32 * 100 := by norm_num
theorem pets_both : (32 : Nat) * 25 = 8 * 100 := by norm_num
theorem pets_solution : PuppyParrotStudents 40 80 32 25 8 := by
  unfold PuppyParrotStudents
  exact ⟨pets_puppies, pets_both⟩

theorem hover_day1 : (9 : Nat) = 3 + 4 + 2 := by norm_num
theorem hover_zones : (3 : Nat) = 3 := by norm_num
theorem hover_extra : (6 : Nat) = 2 * 3 := by norm_num
theorem hover_day2 : (15 : Nat) = 9 + 6 := by norm_num
theorem hover_total : (24 : Nat) = 9 + 15 := by norm_num
theorem hover_solution : HoverTime 3 4 2 9 2 3 6 15 24 := by
  unfold HoverTime
  exact ⟨hover_day1, hover_zones, hover_extra, hover_day2, hover_total⟩

#print axioms shower_solution
#print axioms surfers_solution
#print axioms aquarium_solution
#print axioms speeds_solution
#print axioms chores_solution
#print axioms gold_solution
#print axioms paint_solution
#print axioms grades_solution
#print axioms fireworks_solution
#print axioms discount_solution
#print axioms virgo_solution
#print axioms peaches_solution
#print axioms carpets_solution
#print axioms pets_solution
#print axioms hover_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A16.shower_solution to "work/gsm8k-sprint67-shower-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A16.surfers_solution to "work/gsm8k-sprint67-surfers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A16.aquarium_solution to "work/gsm8k-sprint67-aquarium-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A16.speeds_solution to "work/gsm8k-sprint67-speeds-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A16.chores_solution to "work/gsm8k-sprint67-chores-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A16.gold_solution to "work/gsm8k-sprint67-gold-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A16.paint_solution to "work/gsm8k-sprint67-paint-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A16.grades_solution to "work/gsm8k-sprint67-grades-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A16.fireworks_solution to "work/gsm8k-sprint67-fireworks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A16.discount_solution to "work/gsm8k-sprint67-discount-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A16.virgo_solution to "work/gsm8k-sprint67-virgo-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A16.peaches_solution to "work/gsm8k-sprint67-peaches-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A16.carpets_solution to "work/gsm8k-sprint67-carpets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A16.pets_solution to "work/gsm8k-sprint67-pets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A16.hover_solution to "work/gsm8k-sprint67-hover-graph.json"

end LemmaWeave.Tests.GSM8KSprint0921A16
