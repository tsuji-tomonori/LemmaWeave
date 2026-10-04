import LemmaWeave.Problems.GSM8K.Sprint0920A07Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0920A07
open LemmaWeave.Problems.GSM8K.Sprint0920A07

theorem coffee_weekday_daily : (50 : Nat) = 10 * 5 := by norm_num
theorem coffee_weekday_total : (250 : Nat) = 50 * 5 := by norm_num
theorem coffee_total : (370 : Nat) = 250 + 120 := by norm_num
theorem coffee_solution : CoffeeWeek 10 5 50 5 250 120 370 := by
  unfold CoffeeWeek
  exact ⟨coffee_weekday_daily, coffee_weekday_total, coffee_total⟩

theorem chocolate_thrice : (60 : Nat) = 3 * 20 := by norm_num
theorem chocolate_jenny : (65 : Nat) = 60 + 5 := by norm_num
theorem chocolate_solution : ChocolateSquares 20 3 60 5 65 := by
  unfold ChocolateSquares
  exact ⟨chocolate_thrice, chocolate_jenny⟩

theorem notes_red : (30 : Nat) = 5 * 6 := by norm_num
theorem notes_blue_under : (60 : Nat) = 2 * 30 := by norm_num
theorem notes_blue : (70 : Nat) = 60 + 10 := by norm_num
theorem notes_total : (100 : Nat) = 30 + 70 := by norm_num
theorem notes_solution : BoardNotes 5 6 30 2 60 10 70 100 := by
  unfold BoardNotes
  exact ⟨notes_red, notes_blue_under, notes_blue, notes_total⟩

theorem runners_bob : (2 : Nat) * 60 = 6 * 20 := by norm_num
theorem runners_jim : (3 : Nat) * 60 = 9 * 20 := by norm_num
theorem runners_catch : (3 : Nat) = 1 + 2 := by norm_num
theorem runners_solution : RunnerCatch 6 9 60 20 2 3 1 := by
  unfold RunnerCatch
  exact ⟨runners_bob, runners_jim, runners_catch⟩

theorem flagpole_parts : (12 : Nat) = 7 + 5 := by norm_num
theorem flagpole_tip : (7 : Nat) = 5 + 2 := by norm_num
theorem flagpole_solution : BrokenFlagpole 12 2 7 5 := by
  unfold BrokenFlagpole
  exact ⟨flagpole_parts, flagpole_tip⟩

theorem stickers_space : (100 : Nat) = 3 * 33 + 1 := by norm_num
theorem stickers_cats : (50 : Nat) = 3 * 16 + 2 := by norm_num
theorem stickers_left : (3 : Nat) = 1 + 2 := by norm_num
theorem stickers_solution : StickerRemainders 100 3 33 1 50 16 2 3 := by
  unfold StickerRemainders
  exact ⟨stickers_space, stickers_cats, stickers_left⟩

theorem cakes_failed_bake : (6 : Nat) = 2 * 3 := by norm_num
theorem cakes_total_half : (10 : Nat) = 2 + 6 + 2 := by norm_num
theorem cakes_hours : (10 : Nat) = 5 * 2 := by norm_num
theorem cakes_solution : CoffeeCake 2 3 2 6 2 10 5 := by
  unfold CoffeeCake
  exact ⟨cakes_failed_bake, cakes_total_half, cakes_hours⟩

theorem birth_peter : (40 : Nat) = 37 + 3 := by norm_num
theorem birth_julia : (42 : Nat) = 40 + 2 := by norm_num
theorem birth_after_birthday : (2021 : Nat) = 1979 + 42 := by norm_num
theorem birth_before_birthday : (2021 : Nat) = 1978 + 42 + 1 := by norm_num
theorem birth_candidates_differ : (1979 : Nat) ≠ 1978 := by norm_num
theorem birth_solution : BirthYearAmbiguous 2021 37 3 40 2 42 1979 1978 := by
  unfold BirthYearAmbiguous
  exact ⟨birth_peter, birth_julia, birth_after_birthday, birth_before_birthday,
    birth_candidates_differ⟩

theorem pins_subtotal : (200 : Nat) = 10 * 20 := by norm_num
theorem pins_discount : (30 : Nat) * 100 = 200 * 15 := by norm_num
theorem pins_paid : (200 : Nat) = 30 + 170 := by norm_num
theorem pins_solution : SalePins 10 20 200 15 30 170 := by
  unfold SalePins
  exact ⟨pins_subtotal, pins_discount, pins_paid⟩

theorem orchard_apples : (4500 : Nat) = 30 * 150 := by norm_num
theorem orchard_peaches : (2925 : Nat) = 45 * 65 := by norm_num
theorem orchard_total : (7425 : Nat) = 4500 + 2925 := by norm_num
theorem orchard_solution : OrchardFruit 30 150 4500 45 65 2925 7425 := by
  unfold OrchardFruit
  exact ⟨orchard_apples, orchard_peaches, orchard_total⟩

theorem quarters_initial : (350 : Nat) = 14 * 25 := by norm_num
theorem quarters_remaining : (350 : Nat) = 50 + 300 := by norm_num
theorem quarters_solution : QuarterMoney 14 25 350 50 300 := by
  unfold QuarterMoney
  exact ⟨quarters_initial, quarters_remaining⟩

theorem cartridges_color : (96 : Nat) = 3 * 32 := by norm_num
theorem cartridges_total : (123 : Nat) = 96 + 27 := by norm_num
theorem cartridges_solution : PrinterCartridges 3 32 96 27 123 := by
  unfold PrinterCartridges
  exact ⟨cartridges_color, cartridges_total⟩

theorem choir_first : (15 : Nat) * 2 = 30 := by norm_num
theorem choir_remaining : (15 : Nat) + 15 = 30 := by norm_num
theorem choir_second : (5 : Nat) * 3 = 15 := by norm_num
theorem choir_final : (15 : Nat) + 5 + 10 = 30 := by norm_num
theorem choir_solution : ChoirVerses 30 15 15 3 5 10 := by
  unfold ChoirVerses
  exact ⟨choir_first, choir_remaining, choir_second, choir_final⟩

theorem strawberries_brother : (45 : Nat) = 3 * 15 := by norm_num
theorem strawberries_kim : (360 : Nat) = 8 * 45 := by norm_num
theorem strawberries_parents : (360 : Nat) = 267 + 93 := by norm_num
theorem strawberries_total : (672 : Nat) = 45 + 360 + 267 := by norm_num
theorem strawberries_each : (672 : Nat) = 4 * 168 := by norm_num
theorem strawberries_solution : StrawberryShare 3 15 45 8 360 93 267 672 4 168 := by
  unfold StrawberryShare
  exact ⟨strawberries_brother, strawberries_kim, strawberries_parents,
    strawberries_total, strawberries_each⟩

theorem fruit_papayas : (20 : Nat) = 2 * 10 := by norm_num
theorem fruit_mangos : (60 : Nat) = 3 * 20 := by norm_num
theorem fruit_total : (80 : Nat) = 20 + 60 := by norm_num
theorem fruit_solution : TreeFruit 2 10 20 3 20 60 80 := by
  unfold TreeFruit
  exact ⟨fruit_papayas, fruit_mangos, fruit_total⟩

#print axioms coffee_solution
#print axioms chocolate_solution
#print axioms notes_solution
#print axioms runners_solution
#print axioms flagpole_solution
#print axioms stickers_solution
#print axioms cakes_solution
#print axioms birth_solution
#print axioms pins_solution
#print axioms orchard_solution
#print axioms quarters_solution
#print axioms cartridges_solution
#print axioms choir_solution
#print axioms strawberries_solution
#print axioms fruit_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A07.coffee_solution to "work/gsm8k-sprint39-coffee-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A07.chocolate_solution to "work/gsm8k-sprint39-chocolate-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A07.notes_solution to "work/gsm8k-sprint39-notes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A07.runners_solution to "work/gsm8k-sprint39-runners-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A07.flagpole_solution to "work/gsm8k-sprint39-flagpole-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A07.stickers_solution to "work/gsm8k-sprint39-stickers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A07.cakes_solution to "work/gsm8k-sprint39-cakes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A07.birth_solution to "work/gsm8k-sprint39-birth-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A07.pins_solution to "work/gsm8k-sprint39-pins-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A07.orchard_solution to "work/gsm8k-sprint39-orchard-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A07.quarters_solution to "work/gsm8k-sprint39-quarters-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A07.cartridges_solution to "work/gsm8k-sprint39-cartridges-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A07.choir_solution to "work/gsm8k-sprint39-choir-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A07.strawberries_solution to "work/gsm8k-sprint39-strawberries-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A07.fruit_solution to "work/gsm8k-sprint39-fruit-graph.json"

end LemmaWeave.Tests.GSM8KSprint0920A07
