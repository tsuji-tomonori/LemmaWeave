import LemmaWeave.Problems.GSM8K.Sprint0921A13Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0921A13
open LemmaWeave.Problems.GSM8K.Sprint0921A13

theorem floor_area : (56 : Nat) = 8 * 7 := by norm_num
theorem floor_new_cost : (7000 : Nat) = 56 * 125 := by norm_num
theorem floor_total : (12000 : Nat) = 5000 + 7000 := by norm_num
theorem floor_solution : FloorReplacement 8 7 56 5000 125 7000 12000 := by
  unfold FloorReplacement
  exact ⟨floor_area, floor_new_cost, floor_total⟩

theorem helium_spent : (7400 : Nat) = 4200 + 1800 + 1400 := by norm_num
theorem helium_remaining : (20000 : Nat) = 7400 + 12600 := by norm_num
theorem helium_ounces : (12600 : Nat) = 84 * 150 := by norm_num
theorem helium_height : (9492 : Nat) = 84 * 113 := by norm_num
theorem helium_solution : HeliumBalloon 20000 4200 1800 1400 7400 12600 150 84 113 9492 := by
  unfold HeliumBalloon
  exact ⟨helium_spent, helium_remaining, helium_ounces, helium_height⟩

theorem marble_volume : (32 : Nat) = 2 * 2 * 8 := by norm_num
theorem marble_mass : (86400 : Nat) = 32 * 2700 := by norm_num
theorem marble_solution : MarblePrism 2 8 32 2700 86400 := by
  unfold MarblePrism
  exact ⟨marble_volume, marble_mass⟩

theorem diet_month2 : (40 : Nat) = 20 * 2 := by norm_num
theorem diet_month3 : (20 : Nat) = 10 * 2 := by norm_num
theorem diet_month4 : (10 : Nat) = 5 * 2 := by norm_num
theorem diet_first_four : (75 : Nat) = 40 + 20 + 10 + 5 := by norm_num
theorem diet_total_loss : (600 : Nat) = 501 + 99 := by norm_num
theorem diet_month5 : (99 : Nat) = 75 + 24 := by norm_num
theorem diet_solution : DietLoss 600 501 40 20 10 5 75 99 24 := by
  unfold DietLoss
  exact ⟨diet_month2, diet_month3, diet_month4, diet_first_four,
    diet_total_loss, diet_month5⟩

theorem jet_rate : (580 : Nat) = 2 * 290 := by norm_num
theorem jet_distance : (2900 : Nat) = 10 * 290 := by norm_num
theorem jet_solution : JetDistance 580 2 290 10 2900 := by
  unfold JetDistance
  exact ⟨jet_rate, jet_distance⟩

theorem songs_one : (100 : Nat) = 10 * 10 := by norm_num
theorem songs_total : (300 : Nat) = 3 * 100 := by norm_num
theorem songs_solution : SongWork 3 10 10 100 300 := by
  unfold SongWork
  exact ⟨songs_one, songs_total⟩

theorem melons_total : (120 : Nat) = 10 * 12 := by norm_num
theorem melons_first_sold : (48 : Nat) * 100 = 120 * 40 := by norm_num
theorem melons_after_first : (120 : Nat) = 48 + 72 := by norm_num
theorem melons_second_sold : (72 : Nat) = 18 * 4 := by norm_num
theorem melons_remaining : (72 : Nat) = 18 + 54 := by norm_num
theorem melons_solution : Watermelons 10 12 120 40 48 72 4 18 54 := by
  unfold Watermelons
  exact ⟨melons_total, melons_first_sold, melons_after_first,
    melons_second_sold, melons_remaining⟩

theorem spaceship_first_travel : (20 : Nat) = 10 + 10 := by norm_num
theorem spaceship_first_break : (4 : Nat) = 3 + 1 := by norm_num
theorem spaceship_first_day : (24 : Nat) = 20 + 4 := by norm_num
theorem spaceship_total_hours : (72 : Nat) = 3 * 24 := by norm_num
theorem spaceship_remaining : (72 : Nat) = 24 + 48 := by norm_num
theorem spaceship_cycle : (12 : Nat) = 11 + 1 := by norm_num
theorem spaceship_later_breaks : (48 : Nat) = 4 * 12 := by norm_num
theorem spaceship_total_breaks : (8 : Nat) = 4 + 4 := by norm_num
theorem spaceship_solution : SpaceshipBreaks 10 3 10 1 20 4 24 3 72 48 11 1 12 4 8 := by
  unfold SpaceshipBreaks
  exact ⟨spaceship_first_travel, spaceship_first_break, spaceship_first_day,
    spaceship_total_hours, spaceship_remaining, spaceship_cycle,
    spaceship_later_breaks, spaceship_total_breaks⟩

theorem cards_ratio_total : (20 : Nat) = 11 + 9 := by norm_num
theorem cards_unit : (500 : Nat) = 25 * 20 := by norm_num
theorem cards_ellis : (275 : Nat) = 25 * 11 := by norm_num
theorem cards_orion : (225 : Nat) = 25 * 9 := by norm_num
theorem cards_difference : (275 : Nat) = 225 + 50 := by norm_num
theorem cards_solution : CardRatio 500 11 9 20 25 275 225 50 := by
  unfold CardRatio
  exact ⟨cards_ratio_total, cards_unit, cards_ellis, cards_orion, cards_difference⟩

theorem class_half : (24 : Nat) = 12 * 2 := by norm_num
theorem class_johnson : (22 : Nat) = 12 + 10 := by norm_num
theorem class_solution : ClassSize 24 12 10 22 := by
  unfold ClassSize
  exact ⟨class_half, class_johnson⟩

theorem phone_proportional_total : (180 : Nat) * 25 = 45 * 100 := by norm_num
theorem phone_proportional_remaining : (180 : Nat) = 45 + 135 := by norm_num
theorem phone_alternative_remaining : (150 : Nat) = 45 + 105 := by norm_num
theorem phone_alternative_after_observation : (45 : Nat) < 150 := by norm_num
theorem phone_nonunique : (180 : Nat) ≠ 150 := by norm_num
theorem phone_solution : PhoneCharge 45 25 100 180 135 150 105 := by
  unfold PhoneCharge
  exact ⟨phone_proportional_total, phone_proportional_remaining,
    phone_alternative_remaining, phone_alternative_after_observation, phone_nonunique⟩

theorem dance_hiphop : (20 : Nat) = 2 * 10 := by norm_num
theorem dance_ballet : (24 : Nat) = 2 * 12 := by norm_num
theorem dance_jazz : (8 : Nat) = 1 * 8 := by norm_num
theorem dance_total : (52 : Nat) = 20 + 24 + 8 := by norm_num
theorem dance_solution : DanceClasses 2 10 20 2 12 24 1 8 8 52 := by
  unfold DanceClasses
  exact ⟨dance_hiphop, dance_ballet, dance_jazz, dance_total⟩

theorem shopping_films : (45 : Nat) = 9 * 5 := by norm_num
theorem shopping_books : (16 : Nat) = 4 * 4 := by norm_num
theorem shopping_cds : (18 : Nat) = 6 * 3 := by norm_num
theorem shopping_total : (79 : Nat) = 45 + 16 + 18 := by norm_num
theorem shopping_solution : Shopping 9 5 45 4 4 16 6 3 18 79 := by
  unfold Shopping
  exact ⟨shopping_films, shopping_books, shopping_cds, shopping_total⟩

theorem beads_small : (250 : Nat) = 5 * 50 := by norm_num
theorem beads_large : (200 : Nat) = 2 * 100 := by norm_num
theorem beads_total : (450 : Nat) = 250 + 200 := by norm_num
theorem beads_bracelets : (450 : Nat) = 9 * 50 := by norm_num
theorem beads_solution : BeadBracelets 5 50 250 2 100 200 450 50 9 := by
  unfold BeadBracelets
  exact ⟨beads_small, beads_large, beads_total, beads_bracelets⟩

theorem halloween_pumpkins : (24 : Nat) = 12 * 2 := by norm_num
theorem halloween_already : (53 : Nat) = 12 + 4 + 12 + 24 + 1 := by norm_num
theorem halloween_additional : (30 : Nat) = 20 + 10 := by norm_num
theorem halloween_total : (83 : Nat) = 53 + 30 := by norm_num
theorem halloween_without_buying : (63 : Nat) = 53 + 10 := by norm_num
theorem halloween_nonunique : (83 : Nat) ≠ 63 := by norm_num
theorem halloween_solution : HalloweenDecorations 12 4 12 2 24 1 53 20 10 30 83 63 := by
  unfold HalloweenDecorations
  exact ⟨halloween_pumpkins, halloween_already, halloween_additional, halloween_total,
    halloween_without_buying, halloween_nonunique⟩

#print axioms floor_solution
#print axioms helium_solution
#print axioms marble_solution
#print axioms diet_solution
#print axioms jet_solution
#print axioms songs_solution
#print axioms melons_solution
#print axioms spaceship_solution
#print axioms cards_solution
#print axioms class_solution
#print axioms phone_solution
#print axioms dance_solution
#print axioms shopping_solution
#print axioms beads_solution
#print axioms halloween_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A13.floor_solution to "work/gsm8k-sprint64-floor-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A13.helium_solution to "work/gsm8k-sprint64-helium-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A13.marble_solution to "work/gsm8k-sprint64-marble-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A13.diet_solution to "work/gsm8k-sprint64-diet-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A13.jet_solution to "work/gsm8k-sprint64-jet-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A13.songs_solution to "work/gsm8k-sprint64-songs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A13.melons_solution to "work/gsm8k-sprint64-melons-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A13.spaceship_solution to "work/gsm8k-sprint64-spaceship-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A13.cards_solution to "work/gsm8k-sprint64-cards-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A13.class_solution to "work/gsm8k-sprint64-class-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A13.phone_solution to "work/gsm8k-sprint64-phone-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A13.dance_solution to "work/gsm8k-sprint64-dance-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A13.shopping_solution to "work/gsm8k-sprint64-shopping-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A13.beads_solution to "work/gsm8k-sprint64-beads-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A13.halloween_solution to "work/gsm8k-sprint64-halloween-graph.json"

end LemmaWeave.Tests.GSM8KSprint0921A13
