import LemmaWeave.Problems.GSM8K.Daily0912EModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0912E
open LemmaWeave.Problems.GSM8K.Daily0912E

theorem water_bean_rate (a b c d e f : ℚ) (x : IrrigationWater a b c d e f) : a = 40 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num at ha
  exact ha
theorem water_bob (a b c d e f : ℚ) (x : IrrigationWater a b c d e f) : b = 1260 := by
  have ha0 := water_bean_rate a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha0] at hb
  exact hb
theorem water_brenda (a b c d e f : ℚ) (x : IrrigationWater a b c d e f) : c = 1240 := by
  have ha0 := water_bean_rate a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha0] at hc
  exact hc
theorem water_bernie (a b c d e f : ℚ) (x : IrrigationWater a b c d e f) : d = 1000 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num at hd
  exact hd
theorem water_total (a b c d e f : ℚ) (x : IrrigationWater a b c d e f) : e = 3500 := by
  have hb0 := water_bob a b c d e f x
  have hc0 := water_brenda a b c d e f x
  have hd0 := water_bernie a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hb0, hc0, hd0] at he
  exact he
theorem water_percentage (a b c d e f : ℚ) (x : IrrigationWater a b c d e f) : f = 36 := by
  have hb0 := water_bob a b c d e f x
  have he0 := water_total a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hb0, he0] at hf
  exact hf
theorem water_solution : IrrigationWater 40 1260 1240 1000 3500 36 ∧
    (∀ a b c d e f, IrrigationWater a b c d e f → a = 40) ∧
    (∀ a b c d e f, IrrigationWater a b c d e f → b = 1260) ∧
    (∀ a b c d e f, IrrigationWater a b c d e f → c = 1240) ∧
    (∀ a b c d e f, IrrigationWater a b c d e f → d = 1000) ∧
    (∀ a b c d e f, IrrigationWater a b c d e f → e = 3500) ∧
    (∀ a b c d e f, IrrigationWater a b c d e f → f = 36) :=
  ⟨by norm_num [IrrigationWater], water_bean_rate, water_bob, water_brenda,
    water_bernie, water_total, water_percentage⟩

theorem books_cost (a b c d e : ℕ) (x : BookSavings a b c d e) : c = 40 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc
theorem books_needed (a b c d e : ℕ) (x : BookSavings a b c d e) : e = 27 := by
  have hc0 := books_cost a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem books_solution : BookSavings 8 5 40 13 27 ∧
    (∀ a b c d e, BookSavings a b c d e → c = 40) ∧
    (∀ a b c d e, BookSavings a b c d e → e = 27) :=
  ⟨by norm_num [BookSavings], books_cost, books_needed⟩

theorem heights_daisy (a b c d e : ℕ) (x : AverageHeight a b c d e) : b = 68 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem heights_parker (a b c d e : ℕ) (x : AverageHeight a b c d e) : c = 64 := by
  have hb0 := heights_daisy a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem heights_total (a b c d e : ℕ) (x : AverageHeight a b c d e) : d = 192 := by
  have hb0 := heights_daisy a b c d e x
  have hc0 := heights_parker a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem heights_average (a b c d e : ℕ) (x : AverageHeight a b c d e) : e = 64 := by
  have hd0 := heights_total a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem heights_solution : AverageHeight 60 68 64 192 64 ∧
    (∀ a b c d e, AverageHeight a b c d e → b = 68) ∧
    (∀ a b c d e, AverageHeight a b c d e → c = 64) ∧
    (∀ a b c d e, AverageHeight a b c d e → d = 192) ∧
    (∀ a b c d e, AverageHeight a b c d e → e = 64) :=
  ⟨by norm_num [AverageHeight], heights_daisy, heights_parker,
    heights_total, heights_average⟩

theorem cheese_remaining (a b c d e : ℕ) (x : CheeseCalories a b c d e) : c = 11 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem cheese_calories (a b c d e : ℕ) (x : CheeseCalories a b c d e) : e = 1210 := by
  have hc0 := cheese_remaining a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hc0, hd] at he
  exact he
theorem cheese_solution : CheeseCalories 16 5 11 110 1210 ∧
    (∀ a b c d e, CheeseCalories a b c d e → c = 11) ∧
    (∀ a b c d e, CheeseCalories a b c d e → e = 1210) :=
  ⟨by norm_num [CheeseCalories], cheese_remaining, cheese_calories⟩

theorem paint_batches (a b c d e : ℕ) (x : PaintMix a b c d e) : d = 30 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hb, hc] at hd
  omega
theorem paint_charcoal (a b c d e : ℕ) (x : PaintMix a b c d e) : e = 60 := by
  have hd0 := paint_batches a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hd0] at he
  exact he
theorem paint_solution : PaintMix 2 30 900 30 60 ∧
    (∀ a b c d e, PaintMix a b c d e → d = 30) ∧
    (∀ a b c d e, PaintMix a b c d e → e = 60) :=
  ⟨by norm_num [PaintMix], paint_batches, paint_charcoal⟩

theorem typing_hour (a b c d e f g : ℕ) (x : TypingOutput a b c d e f g) : e = 3000 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  exact hc
theorem typing_day (a b c d e f g : ℕ) (x : TypingOutput a b c d e f g) : f = 12000 := by
  have hf0 := typing_hour a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hf0, hd] at he
  exact he
theorem typing_total (a b c d e f g : ℕ) (x : TypingOutput a b c d e f g) : g = 84000 := by
  have hg0 := typing_day a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hg0, hf] at hg
  exact hg
theorem typing_solution : TypingOutput 50 60 4 7 3000 12000 84000 ∧
    (∀ a b c d e f g, TypingOutput a b c d e f g → e = 3000) ∧
    (∀ a b c d e f g, TypingOutput a b c d e f g → f = 12000) ∧
    (∀ a b c d e f g, TypingOutput a b c d e f g → g = 84000) :=
  ⟨by norm_num [TypingOutput], typing_hour, typing_day, typing_total⟩

theorem payroll_hours (a b c d e f g h i j k l m : ℕ)
    (x : Payroll a b c d e f g h i j k l m) : c = 200 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  norm_num [ha, hb] at hc
  exact hc
theorem payroll_warehouse (a b c d e f g h i j k l m : ℕ)
    (x : Payroll a b c d e f g h i j k l m) : f = 12000 := by
  have hc0 := payroll_hours a b c d e f g h i j k l m x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  norm_num [hc0, hd, he] at hf
  exact hf
theorem payroll_managers (a b c d e f g h i j k l m : ℕ)
    (x : Payroll a b c d e f g h i j k l m) : i = 8000 := by
  have hc0 := payroll_hours a b c d e f g h i j k l m x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  norm_num [hc0, hg, hh] at hi
  exact hi
theorem payroll_wages (a b c d e f g h i j k l m : ℕ)
    (x : Payroll a b c d e f g h i j k l m) : j = 20000 := by
  have hf0 := payroll_warehouse a b c d e f g h i j k l m x
  have hi0 := payroll_managers a b c d e f g h i j k l m x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  norm_num [hf0, hi0] at hj
  exact hj
theorem payroll_tax (a b c d e f g h i j k l m : ℕ)
    (x : Payroll a b c d e f g h i j k l m) : l = 2000 := by
  have hj0 := payroll_wages a b c d e f g h i j k l m x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  norm_num [hj0, hk] at hl
  omega
theorem payroll_total (a b c d e f g h i j k l m : ℕ)
    (x : Payroll a b c d e f g h i j k l m) : m = 22000 := by
  have hj0 := payroll_wages a b c d e f g h i j k l m x
  have hl0 := payroll_tax a b c d e f g h i j k l m x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  norm_num [hj0, hl0] at hm
  exact hm
theorem payroll_solution : Payroll 25 8 200 4 15 12000 2 20 8000 20000 10 2000 22000 ∧
    (∀ a b c d e f g h i j k l m, Payroll a b c d e f g h i j k l m → c = 200) ∧
    (∀ a b c d e f g h i j k l m, Payroll a b c d e f g h i j k l m → f = 12000) ∧
    (∀ a b c d e f g h i j k l m, Payroll a b c d e f g h i j k l m → i = 8000) ∧
    (∀ a b c d e f g h i j k l m, Payroll a b c d e f g h i j k l m → j = 20000) ∧
    (∀ a b c d e f g h i j k l m, Payroll a b c d e f g h i j k l m → l = 2000) ∧
    (∀ a b c d e f g h i j k l m, Payroll a b c d e f g h i j k l m → m = 22000) :=
  ⟨by norm_num [Payroll], payroll_hours, payroll_warehouse, payroll_managers,
    payroll_wages, payroll_tax, payroll_total⟩

theorem bus_capacity (a b c d e f g h i j k : ℕ) (x : BusSeats a b c d e f g h i j k) : c = 92 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [ha, hb] at hc
  exact hc
theorem bus_first (a b c d e f g h i j k : ℕ) (x : BusSeats a b c d e f g h i j k) : g = 28 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  omega
theorem bus_second (a b c d e f g h i j k : ℕ) (x : BusSeats a b c d e f g h i j k) : j = 35 := by
  have hg0 := bus_first a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  omega
theorem bus_empty (a b c d e f g h i j k : ℕ) (x : BusSeats a b c d e f g h i j k) : k = 57 := by
  have hc0 := bus_capacity a b c d e f g h i j k x
  have hj0 := bus_second a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  omega
theorem bus_solution : BusSeats 23 4 92 16 15 3 28 17 10 35 57 ∧
    (∀ a b c d e f g h i j k, BusSeats a b c d e f g h i j k → c = 92) ∧
    (∀ a b c d e f g h i j k, BusSeats a b c d e f g h i j k → g = 28) ∧
    (∀ a b c d e f g h i j k, BusSeats a b c d e f g h i j k → j = 35) ∧
    (∀ a b c d e f g h i j k, BusSeats a b c d e f g h i j k → k = 57) :=
  ⟨by norm_num [BusSeats], bus_capacity, bus_first, bus_second, bus_empty⟩

theorem emus_units (a b c d e : ℕ) (x : EmuFlock a b c d e) : c = 3 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc
theorem emus_count (a b c d e : ℕ) (x : EmuFlock a b c d e) : d = 20 := by
  have hc0 := emus_units a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hc0, hd] at he
  omega
theorem emus_solution : EmuFlock 1 2 3 20 60 ∧
    (∀ a b c d e, EmuFlock a b c d e → c = 3) ∧
    (∀ a b c d e, EmuFlock a b c d e → d = 20) :=
  ⟨by norm_num [EmuFlock], emus_units, emus_count⟩

theorem toys_half (a b c d e : ℕ) (x : ToyCounts a b c d e) : b = 30 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem toys_hash (a b c d e : ℕ) (x : ToyCounts a b c d e) : d = 39 := by
  have hb0 := toys_half a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem toys_total (a b c d e : ℕ) (x : ToyCounts a b c d e) : e = 99 := by
  have hd0 := toys_hash a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem toys_solution : ToyCounts 60 30 9 39 99 ∧
    (∀ a b c d e, ToyCounts a b c d e → b = 30) ∧
    (∀ a b c d e, ToyCounts a b c d e → d = 39) ∧
    (∀ a b c d e, ToyCounts a b c d e → e = 99) :=
  ⟨by norm_num [ToyCounts], toys_half, toys_hash, toys_total⟩

end LemmaWeave.Tests.GSM8KDaily0912E

#print axioms LemmaWeave.Tests.GSM8KDaily0912E.water_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912E.books_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912E.heights_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912E.cheese_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912E.paint_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912E.typing_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912E.payroll_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912E.bus_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912E.emus_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912E.toys_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912E.water_solution to "work/gsm8k-daily31-water-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912E.books_solution to "work/gsm8k-daily31-books-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912E.heights_solution to "work/gsm8k-daily31-heights-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912E.cheese_solution to "work/gsm8k-daily31-cheese-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912E.paint_solution to "work/gsm8k-daily31-paint-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912E.typing_solution to "work/gsm8k-daily31-typing-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912E.payroll_solution to "work/gsm8k-daily31-payroll-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912E.bus_solution to "work/gsm8k-daily31-bus-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912E.emus_solution to "work/gsm8k-daily31-emus-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912E.toys_solution to "work/gsm8k-daily31-toys-graph.json"
