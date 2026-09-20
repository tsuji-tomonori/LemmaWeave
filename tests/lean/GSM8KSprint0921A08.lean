import LemmaWeave.Problems.GSM8K.Sprint0921A08Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract
namespace LemmaWeave.Tests.GSM8KSprint0921A08
open LemmaWeave.Problems.GSM8K.Sprint0921A08

theorem tank_lost : (8 : Nat) = 4 * 2 := by norm_num
theorem tank_added : (4 : Nat) = 1 + 3 := by norm_num
theorem tank_left : (40 : Nat) + 4 = 8 + 36 := by
  calc (40 : Nat) + 4 = (4 * 2) + 36 := by norm_num
       _ = 8 + 36 := by rw [← tank_lost]
theorem tank_solution : LeakingTank 40 4 2 8 1 3 4 36 := by
  unfold LeakingTank
  exact ⟨tank_lost, tank_added, tank_left⟩

theorem roofs_side : (800 : Nat) = 20 * 40 := by norm_num
theorem roofs_one : (1600 : Nat) = 800 * 2 := by
  calc (1600 : Nat) = (20 * 40) * 2 := by norm_num
       _ = 800 * 2 := by rw [← roofs_side]
theorem roofs_all : (4800 : Nat) = 1600 * 3 := by
  calc (4800 : Nat) = (800 * 2) * 3 := by norm_num
       _ = 1600 * 3 := by rw [← roofs_one]
theorem roofs_shingles : (38400 : Nat) = 4800 * 8 := by
  calc (38400 : Nat) = (1600 * 3) * 8 := by norm_num
       _ = 4800 * 8 := by rw [← roofs_all]
theorem roofs_solution : RoofShingles 20 40 800 2 1600 3 4800 8 38400 := by
  unfold RoofShingles
  exact ⟨roofs_side, roofs_one, roofs_all, roofs_shingles⟩

theorem gecko_first : (21 : Nat) * 100 = 70 * 30 := by norm_num
theorem gecko_second : (21 : Nat) = 15 + 6 := by norm_num
theorem gecko_third : (70 : Nat) = 21 + 15 + 34 := by
  calc (70 : Nat) = 21 + (21 - 6) + 34 := by norm_num
       _ = 21 + 15 + 34 := by rw [show (21 - 6 : Nat) = 15 by norm_num]
theorem gecko_solution : GeckoCrickets 70 30 21 6 15 34 := by
  unfold GeckoCrickets
  exact ⟨gecko_first, gecko_second, gecko_third⟩

theorem potatoes_unit : (6 : Nat) = 2 * 3 := by norm_num
theorem potatoes_total : (15 : Nat) = 5 * 3 := by
  calc (15 : Nat) = 5 * (6 / 2) := by norm_num
       _ = 5 * 3 := by norm_num
theorem potatoes_solution : PotatoCost 2 6 3 5 15 := by
  unfold PotatoCost
  exact ⟨potatoes_unit, potatoes_total⟩

theorem tulips_elrond : (40 : Nat) = 20 * 2 := by norm_num
theorem tulips_total : (60 : Nat) = 20 + 40 := by
  calc (60 : Nat) = 20 + (20 * 2) := by norm_num
       _ = 20 + 40 := by rw [← tulips_elrond]
theorem tulips_solution : Tulips 20 2 40 60 := by
  unfold Tulips
  exact ⟨tulips_elrond, tulips_total⟩

theorem cards_basketball : (40 : Nat) = 4 * 10 := by norm_num
theorem cards_baseball : (40 : Nat) = 5 * 8 := by norm_num
theorem cards_total : (80 : Nat) = 40 + 40 := by
  calc (80 : Nat) = (4 * 10) + (5 * 8) := by norm_num
       _ = 40 + 40 := by rw [← cards_basketball, ← cards_baseball]
theorem cards_left : (80 : Nat) = 58 + 22 := by norm_num
theorem cards_solution : CardCollection 4 10 40 5 8 40 80 58 22 := by
  unfold CardCollection
  exact ⟨cards_basketball, cards_baseball, cards_total, cards_left⟩

theorem late_available : (45 : Nat) = 60 - 15 := by norm_num
theorem late_lights : (12 : Nat) = 4 * 3 := by norm_num
theorem late_travel : (52 : Nat) = 30 + 12 + 10 := by
  calc (52 : Nat) = 30 + (4 * 3) + 10 := by norm_num
       _ = 30 + 12 + 10 := by rw [← late_lights]
theorem late_minutes : (52 : Nat) = 45 + 7 := by
  calc (52 : Nat) = (60 - 15) + 7 := by norm_num
       _ = 45 + 7 := by rw [late_available]
theorem late_solution : SchoolArrival 60 15 45 30 4 3 12 10 52 7 := by
  unfold SchoolArrival
  exact ⟨late_available, late_lights, late_travel, late_minutes⟩

theorem trophies_michael : (130 : Nat) = 30 + 100 := by norm_num
theorem trophies_reference_jack : (300 : Nat) = 30 * 10 := by norm_num
theorem trophies_reference_total : (430 : Nat) = 130 + 300 := by
  calc (430 : Nat) = (30 + 100) + (30 * 10) := by norm_num
       _ = 130 + 300 := by rw [← trophies_michael, ← trophies_reference_jack]
theorem trophies_additive_jack : (330 : Nat) = 30 + 30 * 10 := by norm_num
theorem trophies_additive_total : (460 : Nat) = 130 + 330 ∧ (430 : Nat) ≠ 460 := by norm_num
theorem trophies_solution : TrophyAmbiguity 30 100 130 300 430 330 460 := by
  unfold TrophyAmbiguity
  exact ⟨trophies_michael, trophies_reference_jack, trophies_reference_total,
    trophies_additive_jack, trophies_additive_total.1, trophies_additive_total.2⟩

theorem planks_storage : (50 : Nat) * 4 = 200 := by norm_num
theorem planks_parents : (100 : Nat) * 2 = 200 := by norm_num
theorem planks_owned : (170 : Nat) = 50 + 100 + 20 := by norm_num
theorem planks_buy : (200 : Nat) = 170 + 30 := by
  calc (200 : Nat) = (50 + 100 + 20) + 30 := by norm_num
       _ = 170 + 30 := by rw [← planks_owned]
theorem planks_solution : TreehousePlanks 200 50 100 20 170 30 := by
  unfold TreehousePlanks
  exact ⟨planks_storage, planks_parents, planks_owned, planks_buy⟩

theorem dream_hours : (4 : Nat) * 5 = 10 * 2 := by norm_num
theorem dream_not : (10 : Nat) = 4 + 6 := by norm_num
theorem dream_solution : DreamingTime 10 4 6 := by
  unfold DreamingTime
  exact ⟨dream_hours, dream_not⟩

theorem butterflies_colored : (11 : Nat) = 5 + 6 := by norm_num
theorem butterflies_yellow : (6 : Nat) = 2 + 4 := by norm_num
theorem butterflies_blue : (4 : Nat) = 2 * 2 := by norm_num
theorem butterflies_solution : Butterflies 11 5 6 2 4 := by
  unfold Butterflies
  exact ⟨butterflies_colored, butterflies_yellow, butterflies_blue⟩

theorem jeans_shirt : (15 : Nat) = 5 + 10 := by norm_num
theorem jeans_price : (30 : Nat) = 15 * 2 := by
  calc (30 : Nat) = (5 + 10) * 2 := by norm_num
       _ = 15 * 2 := by rw [← jeans_shirt]
theorem jeans_solution : JeansPrice 5 10 15 30 := by
  unfold JeansPrice
  exact ⟨jeans_shirt, jeans_price⟩

theorem rides_kart : (4 : Nat) = 1 * 4 := by norm_num
theorem rides_bumper : (20 : Nat) = 4 * 5 := by norm_num
theorem rides_total : (24 : Nat) = 4 + 20 := by
  calc (24 : Nat) = (1 * 4) + (4 * 5) := by norm_num
       _ = 4 + 20 := by rw [← rides_kart, ← rides_bumper]
theorem rides_solution : RideTickets 1 4 4 4 5 20 24 := by
  unfold RideTickets
  exact ⟨rides_kart, rides_bumper, rides_total⟩

theorem car_hours : (32 : Nat) = 8 * 4 := by norm_num
theorem car_pay : (640 : Nat) = 32 * 20 := by
  calc (640 : Nat) = (8 * 4) * 20 := by norm_num
       _ = 32 * 20 := by rw [← car_hours]
theorem car_solution : CarRental 20 8 4 32 640 := by
  unfold CarRental
  exact ⟨car_hours, car_pay⟩

theorem delivery_tona : (72 : Nat) * 4 = 96 * 3 := by norm_num
theorem delivery_oula_pay : (9600 : Nat) = 96 * 100 := by norm_num
theorem delivery_tona_pay : (7200 : Nat) = 72 * 100 := by
  calc (7200 : Nat) = ((96 * 3) / 4) * 100 := by norm_num
       _ = 72 * 100 := by norm_num
theorem delivery_difference : (9600 : Nat) = 7200 + 2400 := by
  calc (9600 : Nat) = (96 * 100) := by norm_num
       _ = 7200 + 2400 := by norm_num
theorem delivery_solution : DeliveryPay 96 3 4 72 100 9600 7200 2400 := by
  unfold DeliveryPay
  exact ⟨delivery_tona, delivery_oula_pay, delivery_tona_pay, delivery_difference⟩

end LemmaWeave.Tests.GSM8KSprint0921A08
