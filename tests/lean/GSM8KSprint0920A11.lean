import LemmaWeave.Problems.GSM8K.Sprint0920A11Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0920A11
open LemmaWeave.Problems.GSM8K.Sprint0920A11

theorem laundry_per_load : (105 : Nat) = 45 + 60 := by norm_num
theorem laundry_serial_minutes : (840 : Nat) = 8 * 105 := by norm_num
theorem laundry_serial_hours : (840 : Nat) = 14 * 60 := by norm_num
theorem laundry_parallel : (105 : Nat) = 105 := by norm_num
theorem laundry_nonunique : (840 : Nat) ≠ 105 := by norm_num
theorem laundry_solution : LaundryTiming 8 45 60 105 840 60 14 105 := by
  unfold LaundryTiming
  exact ⟨laundry_per_load, laundry_serial_minutes, laundry_serial_hours, laundry_parallel, laundry_nonunique⟩

theorem pharmacy_person_hours : (22 : Nat) = 2 * 8 + 6 := by norm_num
theorem pharmacy_total : (154 : Nat) = 7 * 22 := by norm_num
theorem pharmacy_solution : PharmacyCustomers 2 8 6 22 7 154 := by
  unfold PharmacyCustomers
  exact ⟨pharmacy_person_hours, pharmacy_total⟩

theorem towels_guest : (80 : Nat) = 2 * 40 := by norm_num
theorem towels_master : (200 : Nat) = 4 * 50 := by norm_num
theorem towels_subtotal : (280 : Nat) = 80 + 200 := by norm_num
theorem towels_discount : (56 : Nat) * 100 = 280 * 20 := by norm_num
theorem towels_payment : (280 : Nat) = 224 + 56 := by norm_num
theorem towels_solution : TowelPurchase 2 40 80 4 50 200 280 20 56 224 := by
  unfold TowelPurchase
  exact ⟨towels_guest, towels_master, towels_subtotal, towels_discount, towels_payment⟩

theorem birthday_bringers : (10 : Nat) * 2 = 20 := by norm_num
theorem birthday_companions : (10 : Nat) = 10 := by norm_num
theorem birthday_guests : (30 : Nat) = 20 + 10 := by norm_num
theorem birthday_total : (31 : Nat) = 30 + 1 := by norm_num
theorem birthday_solution : BirthdayParty 20 2 10 10 30 1 31 := by
  unfold BirthdayParty
  exact ⟨birthday_bringers, birthday_companions, birthday_guests, birthday_total⟩

theorem glee_female : (12 : Nat) = 2 * 6 := by norm_num
theorem glee_total : (18 : Nat) = 12 + 6 := by norm_num
theorem glee_solution : GleeClub 2 6 12 18 := by
  unfold GleeClub
  exact ⟨glee_female, glee_total⟩

theorem bricks_half : (500 : Nat) * 2 = 1000 := by norm_num
theorem bricks_discount_price : (25 : Nat) * 100 = 50 * (100 - 50) := by norm_num
theorem bricks_discounted_cost : (12500 : Nat) = 500 * 25 := by norm_num
theorem bricks_full_cost : (25000 : Nat) = 500 * 50 := by norm_num
theorem bricks_total_cents : (37500 : Nat) = 12500 + 25000 := by norm_num
theorem bricks_dollars : (37500 : Nat) = 375 * 100 := by norm_num
theorem bricks_solution : BrickCost 1000 2 500 50 50 25 12500 25000 37500 100 375 := by
  unfold BrickCost
  exact ⟨bricks_half, bricks_discount_price, bricks_discounted_cost, bricks_full_cost, bricks_total_cents, bricks_dollars⟩

theorem apples_men : (60 : Nat) = 2 * 30 := by norm_num
theorem apples_woman_each : (50 : Nat) = 30 + 20 := by norm_num
theorem apples_women : (150 : Nat) = 3 * 50 := by norm_num
theorem apples_total : (210 : Nat) = 60 + 150 := by norm_num
theorem apples_solution : ApplePurchase 2 30 60 20 50 3 150 210 := by
  unfold ApplePurchase
  exact ⟨apples_men, apples_woman_each, apples_women, apples_total⟩

theorem cards_malcom : (28 : Nat) = 20 + 8 := by norm_num
theorem cards_given : (14 : Nat) * 2 = 28 := by norm_num
theorem cards_remaining : (28 : Nat) = 14 + 14 := by norm_num
theorem cards_solution : BaseballCards 20 8 28 2 14 14 := by
  unfold BaseballCards
  exact ⟨cards_malcom, cards_given, cards_remaining⟩

theorem requests_daily : (6 : Nat) = 4 + 2 := by norm_num
theorem requests_total : (10 : Nat) = 5 * 2 := by norm_num
theorem requests_solution : ClientRequests 6 4 2 5 10 := by
  unfold ClientRequests
  exact ⟨requests_daily, requests_total⟩

theorem stairs_second : (40 : Nat) = 2 * 20 := by norm_num
theorem stairs_third : (40 : Nat) = 30 + 10 := by norm_num
theorem stairs_total_steps : (90 : Nat) = 20 + 40 + 30 := by norm_num
theorem stairs_half_feet : (90 : Nat) = 90 * 1 := by norm_num
theorem stairs_feet : (90 : Nat) = 45 * 2 := by norm_num
theorem stairs_solution : StairHeight 20 2 40 10 30 90 1 90 2 45 := by
  unfold StairHeight
  exact ⟨stairs_second, stairs_third, stairs_total_steps, stairs_half_feet, stairs_feet⟩

theorem turtles_marion : (60 : Nat) = 40 + 20 := by norm_num
theorem turtles_total : (100 : Nat) = 40 + 60 := by norm_num
theorem turtles_solution : TurtleRescue 40 20 60 100 := by
  unfold TurtleRescue
  exact ⟨turtles_marion, turtles_total⟩

theorem bread_flour : (400 : Nat) = 200 + 100 + 100 := by norm_num
theorem bread_loaves : (400 : Nat) = 2 * 200 := by norm_num
theorem bread_solution : BreadLoaves 200 100 100 400 200 2 := by
  unfold BreadLoaves
  exact ⟨bread_flour, bread_loaves⟩

theorem crayons_bobbie : (54 : Nat) = 3 * 18 := by norm_num
theorem crayons_lizzie : (27 : Nat) * 2 = 54 := by norm_num
theorem crayons_solution : CrayonCounts 18 3 54 2 27 := by
  unfold CrayonCounts
  exact ⟨crayons_bobbie, crayons_lizzie⟩

theorem dress_discount : (15 : Nat) * 100 = 50 * 30 := by norm_num
theorem dress_final : (50 : Nat) = 35 + 15 := by norm_num
theorem dress_solution : DressDiscount 50 30 15 35 := by
  unfold DressDiscount
  exact ⟨dress_discount, dress_final⟩

theorem soccer_joe_wins : (3 : Nat) = 1 * 3 := by norm_num
theorem soccer_joe_draws : (3 : Nat) = 3 * 1 := by norm_num
theorem soccer_joe_total : (6 : Nat) = 3 + 3 := by norm_num
theorem soccer_first_wins : (6 : Nat) = 2 * 3 := by norm_num
theorem soccer_first_draws : (2 : Nat) = 2 * 1 := by norm_num
theorem soccer_first_total : (8 : Nat) = 6 + 2 := by norm_num
theorem soccer_difference : (8 : Nat) = 6 + 2 := by norm_num
theorem soccer_solution : SoccerPoints 3 1 1 3 3 3 6 2 2 6 2 8 2 := by
  unfold SoccerPoints
  exact ⟨soccer_joe_wins, soccer_joe_draws, soccer_joe_total, soccer_first_wins, soccer_first_draws, soccer_first_total, soccer_difference⟩

#print axioms laundry_solution
#print axioms pharmacy_solution
#print axioms towels_solution
#print axioms birthday_solution
#print axioms glee_solution
#print axioms bricks_solution
#print axioms apples_solution
#print axioms cards_solution
#print axioms requests_solution
#print axioms stairs_solution
#print axioms turtles_solution
#print axioms bread_solution
#print axioms crayons_solution
#print axioms dress_solution
#print axioms soccer_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A11.laundry_solution to "work/gsm8k-sprint43-laundry-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A11.pharmacy_solution to "work/gsm8k-sprint43-pharmacy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A11.towels_solution to "work/gsm8k-sprint43-towels-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A11.birthday_solution to "work/gsm8k-sprint43-birthday-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A11.glee_solution to "work/gsm8k-sprint43-glee-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A11.bricks_solution to "work/gsm8k-sprint43-bricks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A11.apples_solution to "work/gsm8k-sprint43-apples-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A11.cards_solution to "work/gsm8k-sprint43-cards-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A11.requests_solution to "work/gsm8k-sprint43-requests-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A11.stairs_solution to "work/gsm8k-sprint43-stairs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A11.turtles_solution to "work/gsm8k-sprint43-turtles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A11.bread_solution to "work/gsm8k-sprint43-bread-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A11.crayons_solution to "work/gsm8k-sprint43-crayons-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A11.dress_solution to "work/gsm8k-sprint43-dress-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A11.soccer_solution to "work/gsm8k-sprint43-soccer-graph.json"

end LemmaWeave.Tests.GSM8KSprint0920A11
