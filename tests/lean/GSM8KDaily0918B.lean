import LemmaWeave.Problems.GSM8K.Daily0918BModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0918B
open LemmaWeave.Problems.GSM8K.Daily0918B

theorem yard_hourly (a b c d e f g h i j k : Nat) (x : YardWork a b c d e f g h i j k) : c = 20 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [ha, hb] at hc
  omega

theorem yard_fall (a b c d e f g h i j k : Nat) (x : YardWork a b c d e f g h i j k) : e = 160 := by
  have hc := yard_hourly a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [hc, hd] at he
  exact he

theorem yard_gross (a b c d e f g h i j k : Nat) (x : YardWork a b c d e f g h i j k) : f = 620 := by
  have he := yard_fall a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg, hh, hi, hj, hk⟩
  norm_num [ha, he] at hf
  exact hf

theorem yard_remaining (a b c d e f g h i j k : Nat) (x : YardWork a b c d e f g h i j k) : h = 280 := by
  have hf := yard_gross a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hx, hg, hh, hi, hj, hk⟩
  omega

theorem yard_shortfall (a b c d e f g h i j k : Nat) (x : YardWork a b c d e f g h i j k) : j = 320 := by
  have hh := yard_remaining a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hx, hi, hj, hk⟩
  omega

theorem yard_additional (a b c d e f g h i j k : Nat) (x : YardWork a b c d e f g h i j k) : k = 16 := by
  have hc := yard_hourly a b c d e f g h i j k x
  have hj := yard_shortfall a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg, hh, hi, hy, hk⟩
  norm_num [hc, hj] at hk
  omega

theorem yard_solution : YardWork 460 23 20 8 160 620 340 280 600 320 16 ∧
    20 = 20 ∧ 160 = 160 ∧ 620 = 620 ∧ 280 = 280 ∧ 320 = 320 ∧ 16 = 16 := by
  have h : YardWork 460 23 20 8 160 620 340 280 600 320 16 := by norm_num [YardWork]
  exact ⟨h, yard_hourly _ _ _ _ _ _ _ _ _ _ _ h, yard_fall _ _ _ _ _ _ _ _ _ _ _ h,
    yard_gross _ _ _ _ _ _ _ _ _ _ _ h, yard_remaining _ _ _ _ _ _ _ _ _ _ _ h,
    yard_shortfall _ _ _ _ _ _ _ _ _ _ _ h, yard_additional _ _ _ _ _ _ _ _ _ _ _ h⟩

theorem sheep_total (a b c : Nat) (h : SheepCount a b c) : b = 90 := by
  rcases h with ⟨ha, hb, hc⟩
  norm_num [ha] at hc
  omega

theorem sheep_wild (a b c : Nat) (h : SheepCount a b c) : c = 9 := by
  have hb := sheep_total a b c h
  rcases h with ⟨ha, hx, hc⟩
  omega

theorem sheep_solution : SheepCount 81 90 9 ∧ 90 = 90 ∧ 9 = 9 := by
  have h : SheepCount 81 90 9 := by norm_num [SheepCount]
  exact ⟨h, sheep_total _ _ _ h, sheep_wild _ _ _ h⟩

theorem running_total (a b c d e f g h : Nat) (x : RunningAverage a b c d e f g h) : e = 160 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb, hc, hd] at he
  exact he

theorem running_average_tenths (a b c d e f g h : Nat) (x : RunningAverage a b c d e f g h) : g = 40 := by
  have he := running_total a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg, hh⟩
  norm_num [hf, he] at hg
  omega

theorem running_average_miles (a b c d e f g h : Nat) (x : RunningAverage a b c d e f g h) : h = 4 := by
  have hg := running_average_tenths a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hx, hh⟩
  norm_num [hg] at hh
  omega

theorem running_solution : RunningAverage 42 38 36 44 160 4 40 4 ∧
    160 = 160 ∧ 40 = 40 ∧ 4 = 4 := by
  have h : RunningAverage 42 38 36 44 160 4 40 4 := by norm_num [RunningAverage]
  exact ⟨h, running_total _ _ _ _ _ _ _ _ h, running_average_tenths _ _ _ _ _ _ _ _ h,
    running_average_miles _ _ _ _ _ _ _ _ h⟩

theorem steak_paid (a b c d e : Nat) (h : SteakPromotion a b c d e) : c = 10 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  omega

theorem steak_cost (a b c d e : Nat) (h : SteakPromotion a b c d e) : e = 150 := by
  have hc := steak_paid a b c d e h
  rcases h with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  exact he

theorem steak_solution : SteakPromotion 20 2 10 15 150 ∧ 10 = 10 ∧ 150 = 150 := by
  have h : SteakPromotion 20 2 10 15 150 := by norm_num [SteakPromotion]
  exact ⟨h, steak_paid _ _ _ _ _ h, steak_cost _ _ _ _ _ h⟩

theorem drive_first (a b c d e f g : Nat) (h : DrivingDistance a b c d e f g) : c = 15 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  omega

theorem drive_second_data (a b c d e f g : Nat) (h : DrivingDistance a b c d e f g) :
    d = 60 ∧ e = 2 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha] at hd
  norm_num [hb] at he
  exact ⟨hd, he⟩

theorem drive_second (a b c d e f g : Nat) (h : DrivingDistance a b c d e f g) : f = 60 := by
  have hde := drive_second_data a b c d e f g h
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega

theorem drive_total (a b c d e f g : Nat) (h : DrivingDistance a b c d e f g) : g = 75 := by
  have hc := drive_first a b c d e f g h
  have hf := drive_second a b c d e f g h
  rcases h with ⟨ha, hb, hx, hd, he, hy, hg⟩
  norm_num [hc, hf] at hg
  exact hg

theorem drive_solution : DrivingDistance 30 1 15 60 2 60 75 ∧
    15 = 15 ∧ (60 = 60 ∧ 2 = 2) ∧ 60 = 60 ∧ 75 = 75 := by
  have h : DrivingDistance 30 1 15 60 2 60 75 := by norm_num [DrivingDistance]
  exact ⟨h, drive_first _ _ _ _ _ _ _ h, drive_second_data _ _ _ _ _ _ _ h,
    drive_second _ _ _ _ _ _ _ h, drive_total _ _ _ _ _ _ _ h⟩

theorem oven_energy (a b c d e f : Nat) (h : OvenElectricity a b c d e f) : c = 600 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb] at hc
  exact hc

theorem oven_cost_cents (a b c d e f : Nat) (h : OvenElectricity a b c d e f) : e = 600 := by
  have hc := oven_energy a b c d e f h
  rcases h with ⟨ha, hb, hx, hd, he, hf⟩
  norm_num [hc, hd] at he
  omega

theorem oven_cost_dollars (a b c d e f : Nat) (h : OvenElectricity a b c d e f) : f = 6 := by
  have he := oven_cost_cents a b c d e f h
  rcases h with ⟨ha, hb, hc, hd, hx, hf⟩
  norm_num [he] at hf
  omega

theorem oven_solution : OvenElectricity 25 24 600 10 600 6 ∧
    600 = 600 ∧ 600 = 600 ∧ 6 = 6 := by
  have h : OvenElectricity 25 24 600 10 600 6 := by norm_num [OvenElectricity]
  exact ⟨h, oven_energy _ _ _ _ _ _ h, oven_cost_cents _ _ _ _ _ _ h,
    oven_cost_dollars _ _ _ _ _ _ h⟩

theorem pie_slices (a b c d e : Nat) (h : PieRevenue a b c d e) : c = 60 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc

theorem pie_revenue (a b c d e : Nat) (h : PieRevenue a b c d e) : e = 180 := by
  have hc := pie_slices a b c d e h
  rcases h with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  exact he

theorem pie_solution : PieRevenue 6 10 60 3 180 ∧ 60 = 60 ∧ 180 = 180 := by
  have h : PieRevenue 6 10 60 3 180 := by norm_num [PieRevenue]
  exact ⟨h, pie_slices _ _ _ _ _ h, pie_revenue _ _ _ _ _ h⟩

theorem vegetable_total (a b c d e : Nat) (h : VegetableSale a b c d e) : d = 36 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb, hc] at hd
  exact hd

theorem vegetable_sold (a b c d e : Nat) (h : VegetableSale a b c d e) : e = 18 := by
  have hd := vegetable_total a b c d e h
  rcases h with ⟨ha, hb, hc, hx, he⟩
  norm_num [hd] at he
  omega

theorem vegetable_solution : VegetableSale 15 13 8 36 18 ∧ 36 = 36 ∧ 18 = 18 := by
  have h : VegetableSale 15 13 8 36 18 := by norm_num [VegetableSale]
  exact ⟨h, vegetable_total _ _ _ _ _ h, vegetable_sold _ _ _ _ _ h⟩

theorem grocery_capacity (a b c d e : Nat) (h : GroceryTrips a b c d e) : c = 6 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc

theorem grocery_trips (a b c d e : Nat) (h : GroceryTrips a b c d e) : e = 5 := by
  have hc := grocery_capacity a b c d e h
  rcases h with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  omega

theorem grocery_solution : GroceryTrips 2 3 6 30 5 ∧ 6 = 6 ∧ 5 = 5 := by
  have h : GroceryTrips 2 3 6 30 5 := by norm_num [GroceryTrips]
  exact ⟨h, grocery_capacity _ _ _ _ _ h, grocery_trips _ _ _ _ _ h⟩

theorem fruit_apples (a b c d e f g h i : Nat) (x : FruitRemaining a b c d e f g h i) : d = 20 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [ha, hc] at hd
  exact hd

theorem fruit_total (a b c d e f g h i : Nat) (x : FruitRemaining a b c d e f g h i) : e = 50 := by
  have hd := fruit_apples a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hx, he, hf, hg, hh, hi⟩
  norm_num [ha, hb, hd] at he
  exact he

theorem fruit_given (a b c d e f g h i : Nat) (x : FruitRemaining a b c d e f g h i) : h = 6 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [hf, hg] at hh
  exact hh

theorem fruit_remaining (a b c d e f g h i : Nat) (x : FruitRemaining a b c d e f g h i) : i = 44 := by
  have he := fruit_total a b c d e f g h i x
  have hh := fruit_given a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg, hy, hi⟩
  omega

theorem fruit_solution : FruitRemaining 10 20 2 20 50 2 3 6 44 ∧
    20 = 20 ∧ 50 = 50 ∧ 6 = 6 ∧ 44 = 44 := by
  have h : FruitRemaining 10 20 2 20 50 2 3 6 44 := by norm_num [FruitRemaining]
  exact ⟨h, fruit_apples _ _ _ _ _ _ _ _ _ h, fruit_total _ _ _ _ _ _ _ _ _ h,
    fruit_given _ _ _ _ _ _ _ _ _ h, fruit_remaining _ _ _ _ _ _ _ _ _ h⟩

#print axioms yard_solution
#print axioms sheep_solution
#print axioms running_solution
#print axioms steak_solution
#print axioms drive_solution
#print axioms oven_solution
#print axioms pie_solution
#print axioms vegetable_solution
#print axioms grocery_solution
#print axioms fruit_solution
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918B.yard_solution to "work/gsm8k-daily51-yard-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918B.sheep_solution to "work/gsm8k-daily51-sheep-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918B.running_solution to "work/gsm8k-daily51-running-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918B.steak_solution to "work/gsm8k-daily51-steak-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918B.drive_solution to "work/gsm8k-daily51-drive-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918B.oven_solution to "work/gsm8k-daily51-oven-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918B.pie_solution to "work/gsm8k-daily51-pie-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918B.vegetable_solution to "work/gsm8k-daily51-vegetable-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918B.grocery_solution to "work/gsm8k-daily51-grocery-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918B.fruit_solution to "work/gsm8k-daily51-fruit-graph.json"

end LemmaWeave.Tests.GSM8KDaily0918B
