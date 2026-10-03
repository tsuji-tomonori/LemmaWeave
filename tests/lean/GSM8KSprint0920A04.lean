import LemmaWeave.Problems.GSM8K.Sprint0920A04Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0920A04
open LemmaWeave.Problems.GSM8K.Sprint0920A04

theorem tins_second : (150 : Nat) = 3 * 50 := by norm_num
theorem tins_third : (100 : Nat) + 50 = 150 := by norm_num
theorem tins_first_three : (300 : Nat) = 50 + 150 + 100 := by norm_num
theorem tins_remaining : (200 : Nat) + 300 = 500 := by norm_num
theorem tins_daily : (50 : Nat) * 4 = 200 := by norm_num
theorem tins_solution : TinCollection 500 50 150 100 300 200 4 50 := by
  unfold TinCollection
  exact ⟨tins_second, tins_third, tins_first_three, tins_remaining, tins_daily⟩

theorem meal_total : (30 : Nat) = 16 + 14 := by norm_num
theorem meal_half : (15 : Nat) * 2 = 30 := by norm_num
theorem meal_tip : (6 : Nat) * 5 = 30 := by norm_num
theorem meal_james : (21 : Nat) = 15 + 6 := by norm_num
theorem meal_solution : RestaurantPay 16 14 30 15 6 21 := by
  unfold RestaurantPay
  exact ⟨meal_total, meal_half, meal_tip, meal_james⟩

theorem pickle_tammy : (30 : Nat) = 2 * 15 := by norm_num
theorem pickle_reduction : (6 : Nat) * 5 = 30 := by norm_num
theorem pickle_ron : (24 : Nat) + 6 = 30 := by norm_num
theorem pickle_solution : PickleSlices 15 30 6 24 := by
  unfold PickleSlices
  exact ⟨pickle_tammy, pickle_reduction, pickle_ron⟩

theorem cupcake_existing : (60 : Nat) = 15 * 4 := by norm_num
theorem cupcake_needed : (60 : Nat) + 40 = 100 := by norm_num
theorem cupcake_packs : (4 : Nat) * 10 = 40 := by norm_num
theorem cupcake_solution : CupcakePacks 15 4 60 100 40 10 4 := by
  unfold CupcakePacks
  exact ⟨cupcake_existing, cupcake_needed, cupcake_packs⟩

theorem apples_after_ricki : (60 : Nat) + 14 = 74 := by norm_num
theorem apples_samson : (28 : Nat) = 2 * 14 := by norm_num
theorem apples_left : (32 : Nat) + 28 = 60 := by norm_num
theorem apples_solution : AppleBasket 74 14 60 28 32 := by
  unfold AppleBasket
  exact ⟨apples_after_ricki, apples_samson, apples_left⟩

theorem desks_large_rooms : (5 : Nat) * 3 = 15 := by norm_num
theorem desks_regular_rooms : (5 : Nat) + 10 = 15 := by norm_num
theorem desks_large_capacity : (150 : Nat) = 5 * 30 := by norm_num
theorem desks_regular_capacity : (250 : Nat) = 10 * 25 := by norm_num
theorem desks_total : (400 : Nat) = 150 + 250 := by norm_num
theorem desks_solution : SchoolDesks 15 5 10 150 250 400 := by
  unfold SchoolDesks
  exact ⟨desks_large_rooms, desks_regular_rooms, desks_large_capacity,
    desks_regular_capacity, desks_total⟩

theorem bed_price : (750 : Nat) = 10 * 75 := by norm_num
theorem bed_subtotal : (825 : Nat) = 750 + 75 := by norm_num
theorem bed_discount : (165 : Nat) * 5 = 825 := by norm_num
theorem bed_paid : (660 : Nat) + 165 = 825 := by norm_num
theorem bed_solution : BedPurchase 75 750 825 165 660 := by
  unfold BedPurchase
  exact ⟨bed_price, bed_subtotal, bed_discount, bed_paid⟩

theorem tuition_semester : (1000 : Nat) = 20 * 50 := by norm_num
theorem tuition_total : (2000 : Nat) = 1000 * 2 := by norm_num
theorem tuition_solution : Tuition 20 50 2 1000 2000 := by
  unfold Tuition
  exact ⟨tuition_semester, tuition_total⟩

theorem church_chairs : (120 : Nat) = 6 * 20 := by norm_num
theorem church_people : (600 : Nat) = 120 * 5 := by norm_num
theorem church_solution : ChurchCapacity 6 20 120 5 600 := by
  unfold ChurchCapacity
  exact ⟨church_chairs, church_people⟩

theorem sleep_short : (12 : Nat) = 2 * 6 := by norm_num
theorem sleep_long : (20 : Nat) = 2 * 10 := by norm_num
theorem sleep_total : (32 : Nat) = 12 + 20 := by norm_num
theorem sleep_solution : SleepHours 2 6 2 10 12 20 32 := by
  unfold SleepHours
  exact ⟨sleep_short, sleep_long, sleep_total⟩

theorem tickets_needed : (13 : Nat) = 5 + 4 + 4 := by norm_num
theorem tickets_more : (8 : Nat) + 5 = 13 := by norm_num
theorem tickets_solution : RideTickets 5 4 4 5 13 8 := by
  unfold RideTickets
  exact ⟨tickets_needed, tickets_more⟩

theorem attendance_remaining : (60 : Nat) + 40 = 100 := by norm_num
theorem attendance_present : (30 : Nat) * 2 = 60 := by norm_num
theorem attendance_solution : PandemicAttendance 40 60 2 30 := by
  unfold PandemicAttendance
  exact ⟨attendance_remaining, attendance_present⟩

theorem sticks_sid : (24 : Nat) = 2 * 12 := by norm_num
theorem sticks_sam : (72 : Nat) = 3 * 24 := by norm_num
theorem sticks_total : (108 : Nat) = 12 + 24 + 72 := by norm_num
theorem sticks_solution : PopsicleSticks 12 24 72 108 := by
  unfold PopsicleSticks
  exact ⟨sticks_sid, sticks_sam, sticks_total⟩

theorem balloons_liters : (10000 : Nat) = 1000 * 10 := by norm_num
theorem balloons_tanks : (20 : Nat) * 500 = 10000 := by norm_num
theorem balloons_solution : BalloonGas 1000 10 10000 500 20 := by
  unfold BalloonGas
  exact ⟨balloons_liters, balloons_tanks⟩

theorem distance_hannah : (9 : Nat) * 2 = 18 := by norm_num
theorem distance_total : (27 : Nat) = 18 + 9 := by norm_num
theorem distance_solution : WalkingDistance 18 9 27 := by
  unfold WalkingDistance
  exact ⟨distance_hannah, distance_total⟩

#print axioms tins_solution
#print axioms meal_solution
#print axioms pickle_solution
#print axioms cupcake_solution
#print axioms apples_solution
#print axioms desks_solution
#print axioms bed_solution
#print axioms tuition_solution
#print axioms church_solution
#print axioms sleep_solution
#print axioms tickets_solution
#print axioms attendance_solution
#print axioms sticks_solution
#print axioms balloons_solution
#print axioms distance_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A04.tins_solution to "work/gsm8k-sprint36-tins-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A04.meal_solution to "work/gsm8k-sprint36-meal-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A04.pickle_solution to "work/gsm8k-sprint36-pickle-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A04.cupcake_solution to "work/gsm8k-sprint36-cupcake-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A04.apples_solution to "work/gsm8k-sprint36-apples-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A04.desks_solution to "work/gsm8k-sprint36-desks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A04.bed_solution to "work/gsm8k-sprint36-bed-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A04.tuition_solution to "work/gsm8k-sprint36-tuition-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A04.church_solution to "work/gsm8k-sprint36-church-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A04.sleep_solution to "work/gsm8k-sprint36-sleep-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A04.tickets_solution to "work/gsm8k-sprint36-tickets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A04.attendance_solution to "work/gsm8k-sprint36-attendance-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A04.sticks_solution to "work/gsm8k-sprint36-sticks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A04.balloons_solution to "work/gsm8k-sprint36-balloons-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A04.distance_solution to "work/gsm8k-sprint36-distance-graph.json"

end LemmaWeave.Tests.GSM8KSprint0920A04
