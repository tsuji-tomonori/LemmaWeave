import LemmaWeave.Problems.GSM8K.Daily0911EModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0911E
open LemmaWeave.Problems.GSM8K.Daily0911E

theorem parking_g_cars (a b c d e f g h i : ℕ) (x : ParkingSearch a b c d e f g h i) : c = 150 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [ha, hb] at hc
  exact hc
theorem parking_h_cars (a b c d e f g h i : ℕ) (x : ParkingSearch a b c d e f g h i) : f = 180 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [hd, he] at hf
  exact hf
theorem parking_total (a b c d e f g h i : ℕ) (x : ParkingSearch a b c d e f g h i) : g = 330 := by
  have hc0 := parking_g_cars a b c d e f g h i x
  have hf0 := parking_h_cars a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [hc0, hf0] at hg
  exact hg
theorem parking_minutes (a b c d e f g h i : ℕ) (x : ParkingSearch a b c d e f g h i) : i = 30 := by
  have hg0 := parking_total a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [hg0, hh] at hi
  omega
theorem parking_exists : ParkingSearch 15 10 150 20 9 180 330 11 30 := by norm_num [ParkingSearch]
theorem parking_solution : ParkingSearch 15 10 150 20 9 180 330 11 30 ∧
    (∀ a b c d e f g h i, ParkingSearch a b c d e f g h i → c = 150) ∧
    (∀ a b c d e f g h i, ParkingSearch a b c d e f g h i → f = 180) ∧
    (∀ a b c d e f g h i, ParkingSearch a b c d e f g h i → g = 330) ∧
    (∀ a b c d e f g h i, ParkingSearch a b c d e f g h i → i = 30) :=
  ⟨parking_exists, parking_g_cars, parking_h_cars, parking_total, parking_minutes⟩

theorem age_current (a b c d e : ℕ) (x : MattAge a b c d e) : c = 15 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc
theorem age_future (a b c d e : ℕ) (x : MattAge a b c d e) : e = 25 := by
  have hc0 := age_current a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hc0, hd] at he
  exact he
theorem age_exists : MattAge 12 3 15 10 25 := by norm_num [MattAge]
theorem age_solution : MattAge 12 3 15 10 25 ∧
    (∀ a b c d e, MattAge a b c d e → c = 15) ∧
    (∀ a b c d e, MattAge a b c d e → e = 25) :=
  ⟨age_exists, age_current, age_future⟩

theorem map_eighths (a b c d e f : ℕ) (x : MapDistance a b c d e f) : e = 27 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hc, hd] at he
  exact he
theorem map_actual (a b c d e f : ℕ) (x : MapDistance a b c d e f) : f = 108 := by
  have he0 := map_eighths a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb, he0] at hf
  omega
theorem map_exists : MapDistance 2 8 3 3 27 108 := by norm_num [MapDistance]
theorem map_solution : MapDistance 2 8 3 3 27 108 ∧
    (∀ a b c d e f, MapDistance a b c d e f → e = 27) ∧
    (∀ a b c d e f, MapDistance a b c d e f → f = 108) :=
  ⟨map_exists, map_eighths, map_actual⟩

theorem sales_cookie_revenue (a b c d e f g h i j k l : ℕ)
    (x : SalesRemaining a b c d e f g h i j k l) : c = 3200 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  norm_num [ha, hb] at hc
  exact hc
theorem sales_cupcake_revenue (a b c d e f g h i j k l : ℕ)
    (x : SalesRemaining a b c d e f g h i j k l) : f = 6000 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  norm_num [hd, he] at hf
  exact hf
theorem sales_total (a b c d e f g h i j k l : ℕ)
    (x : SalesRemaining a b c d e f g h i j k l) : g = 9200 := by
  have hc0 := sales_cookie_revenue a b c d e f g h i j k l x
  have hf0 := sales_cupcake_revenue a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  norm_num [hc0, hf0] at hg
  exact hg
theorem sales_spoon_cost (a b c d e f g h i j k l : ℕ)
    (x : SalesRemaining a b c d e f g h i j k l) : j = 1300 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  norm_num [hh, hi] at hj
  exact hj
theorem sales_remaining (a b c d e f g h i j k l : ℕ)
    (x : SalesRemaining a b c d e f g h i j k l) : k = 7900 := by
  have hg0 := sales_total a b c d e f g h i j k l x
  have hj0 := sales_spoon_cost a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  norm_num [hg0, hj0] at hk
  omega
theorem sales_dollars (a b c d e f g h i j k l : ℕ)
    (x : SalesRemaining a b c d e f g h i j k l) : l = 79 := by
  have hk0 := sales_remaining a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  norm_num [hk0] at hl
  omega
theorem sales_exists : SalesRemaining 40 80 3200 30 200 6000 9200 2 650 1300 7900 79 := by
  norm_num [SalesRemaining]
theorem sales_solution : SalesRemaining 40 80 3200 30 200 6000 9200 2 650 1300 7900 79 ∧
    (∀ a b c d e f g h i j k l, SalesRemaining a b c d e f g h i j k l → c = 3200) ∧
    (∀ a b c d e f g h i j k l, SalesRemaining a b c d e f g h i j k l → f = 6000) ∧
    (∀ a b c d e f g h i j k l, SalesRemaining a b c d e f g h i j k l → g = 9200) ∧
    (∀ a b c d e f g h i j k l, SalesRemaining a b c d e f g h i j k l → j = 1300) ∧
    (∀ a b c d e f g h i j k l, SalesRemaining a b c d e f g h i j k l → k = 7900) ∧
    (∀ a b c d e f g h i j k l, SalesRemaining a b c d e f g h i j k l → l = 79) :=
  ⟨sales_exists, sales_cookie_revenue, sales_cupcake_revenue, sales_total,
    sales_spoon_cost, sales_remaining, sales_dollars⟩

theorem height_sister (a b c d e : ℕ) (x : HeightDifference a b c d e) : b = 40 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha] at hb
  omega
theorem height_bella (a b c d e : ℕ) (x : HeightDifference a b c d e) : d = 240 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hc] at hd
  exact hd
theorem height_difference (a b c d e : ℕ) (x : HeightDifference a b c d e) : e = 200 := by
  have hb0 := height_sister a b c d e x
  have hd0 := height_bella a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hb0, hd0] at he
  omega
theorem height_exists : HeightDifference 80 40 3 240 200 := by norm_num [HeightDifference]
theorem height_solution : HeightDifference 80 40 3 240 200 ∧
    (∀ a b c d e, HeightDifference a b c d e → b = 40) ∧
    (∀ a b c d e, HeightDifference a b c d e → d = 240) ∧
    (∀ a b c d e, HeightDifference a b c d e → e = 200) :=
  ⟨height_exists, height_sister, height_bella, height_difference⟩

theorem class_a (a b c d e f : ℕ) (x : ClassC a b c d e f) : c = 32 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb] at hc
  omega
theorem class_b (a b c d e f : ℕ) (x : ClassC a b c d e f) : e = 11 := by
  have hc0 := class_a a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hc0, hd] at he
  omega
theorem class_c (a b c d e f : ℕ) (x : ClassC a b c d e f) : f = 37 := by
  have hc0 := class_a a b c d e f x
  have he0 := class_b a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hc0, he0] at hf
  omega
theorem class_exists : ClassC 80 40 32 21 11 37 := by norm_num [ClassC]
theorem class_solution : ClassC 80 40 32 21 11 37 ∧
    (∀ a b c d e f, ClassC a b c d e f → c = 32) ∧
    (∀ a b c d e f, ClassC a b c d e f → e = 11) ∧
    (∀ a b c d e f, ClassC a b c d e f → f = 37) :=
  ⟨class_exists, class_a, class_b, class_c⟩

theorem shadow_feet (a b c d e : ℕ) (x : ShadowLength a b c d e) : c = 30 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc
theorem shadow_inches (a b c d e : ℕ) (x : ShadowLength a b c d e) : e = 360 := by
  have hc0 := shadow_feet a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hc0, hd] at he
  exact he
theorem shadow_exists : ShadowLength 6 5 30 12 360 := by norm_num [ShadowLength]
theorem shadow_solution : ShadowLength 6 5 30 12 360 ∧
    (∀ a b c d e, ShadowLength a b c d e → c = 30) ∧
    (∀ a b c d e, ShadowLength a b c d e → e = 360) :=
  ⟨shadow_exists, shadow_feet, shadow_inches⟩

theorem apple_each_kind (a b c d e f g h i j : ℕ) (x : ApplePrice a b c d e f g h i j) : c = 12 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [ha, hb] at hc
  omega
theorem apple_orange_cost (a b c d e f g h i j : ℕ)
    (x : ApplePrice a b c d e f g h i j) : e = 600 := by
  have hc0 := apple_each_kind a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hc0, hd] at he
  exact he
theorem apple_other_cost (a b c d e f g h i j : ℕ)
    (x : ApplePrice a b c d e f g h i j) : g = 6000 := by
  have he0 := apple_orange_cost a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hf, he0] at hg
  omega
theorem apple_price_cents (a b c d e f g h i j : ℕ)
    (x : ApplePrice a b c d e f g h i j) : h = 100 := by
  have hc0 := apple_each_kind a b c d e f g h i j x
  have hg0 := apple_other_cost a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hc0, hg0] at hi
  omega
theorem apple_dollars (a b c d e f g h i j : ℕ)
    (x : ApplePrice a b c d e f g h i j) : j = 1 := by
  have hh0 := apple_price_cents a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hh0] at hj
  omega
theorem apple_exists : ApplePrice 36 3 12 50 600 6600 6000 100 400 1 := by norm_num [ApplePrice]
theorem apple_solution : ApplePrice 36 3 12 50 600 6600 6000 100 400 1 ∧
    (∀ a b c d e f g h i j, ApplePrice a b c d e f g h i j → c = 12) ∧
    (∀ a b c d e f g h i j, ApplePrice a b c d e f g h i j → e = 600) ∧
    (∀ a b c d e f g h i j, ApplePrice a b c d e f g h i j → g = 6000) ∧
    (∀ a b c d e f g h i j, ApplePrice a b c d e f g h i j → h = 100) ∧
    (∀ a b c d e f g h i j, ApplePrice a b c d e f g h i j → j = 1) :=
  ⟨apple_exists, apple_each_kind, apple_orange_cost, apple_other_cost,
    apple_price_cents, apple_dollars⟩

theorem basket_current (a b c d e f : ℕ) (x : BasketCapacity a b c d e f) : c = 8 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb] at hc
  omega
theorem basket_jill (a b c d e f : ℕ) (x : BasketCapacity a b c d e f) : e = 24 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hd] at he
  exact he
theorem basket_times (a b c d e f : ℕ) (x : BasketCapacity a b c d e f) : f = 3 := by
  have hc0 := basket_current a b c d e f x
  have he0 := basket_jill a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hc0, he0] at hf
  omega
theorem basket_exists : BasketCapacity 12 4 8 2 24 3 := by norm_num [BasketCapacity]
theorem basket_solution : BasketCapacity 12 4 8 2 24 3 ∧
    (∀ a b c d e f, BasketCapacity a b c d e f → c = 8) ∧
    (∀ a b c d e f, BasketCapacity a b c d e f → e = 24) ∧
    (∀ a b c d e f, BasketCapacity a b c d e f → f = 3) :=
  ⟨basket_exists, basket_current, basket_jill, basket_times⟩

theorem orchard_trees (a b c d e f g h : ℕ) (x : OrchardRevenue a b c d e f g h) : c = 12 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at hc
  exact hc
theorem orchard_apples (a b c d e f g h : ℕ) (x : OrchardRevenue a b c d e f g h) : e = 60 := by
  have hc0 := orchard_trees a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hc0, hd] at he
  exact he
theorem orchard_revenue (a b c d e f g h : ℕ) (x : OrchardRevenue a b c d e f g h) : g = 3000 := by
  have he0 := orchard_apples a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [he0, hf] at hg
  exact hg
theorem orchard_dollars (a b c d e f g h : ℕ) (x : OrchardRevenue a b c d e f g h) : h = 30 := by
  have hg0 := orchard_revenue a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hg0] at hh
  omega
theorem orchard_exists : OrchardRevenue 3 4 12 5 60 50 3000 30 := by norm_num [OrchardRevenue]
theorem orchard_solution : OrchardRevenue 3 4 12 5 60 50 3000 30 ∧
    (∀ a b c d e f g h, OrchardRevenue a b c d e f g h → c = 12) ∧
    (∀ a b c d e f g h, OrchardRevenue a b c d e f g h → e = 60) ∧
    (∀ a b c d e f g h, OrchardRevenue a b c d e f g h → g = 3000) ∧
    (∀ a b c d e f g h, OrchardRevenue a b c d e f g h → h = 30) :=
  ⟨orchard_exists, orchard_trees, orchard_apples, orchard_revenue, orchard_dollars⟩

end LemmaWeave.Tests.GSM8KDaily0911E

#print axioms LemmaWeave.Tests.GSM8KDaily0911E.parking_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911E.age_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911E.map_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911E.sales_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911E.height_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911E.class_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911E.shadow_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911E.apple_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911E.basket_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911E.orchard_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911E.parking_solution to "work/gsm8k-daily26-parking-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911E.age_solution to "work/gsm8k-daily26-age-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911E.map_solution to "work/gsm8k-daily26-map-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911E.sales_solution to "work/gsm8k-daily26-sales-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911E.height_solution to "work/gsm8k-daily26-height-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911E.class_solution to "work/gsm8k-daily26-class-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911E.shadow_solution to "work/gsm8k-daily26-shadow-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911E.apple_solution to "work/gsm8k-daily26-apple-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911E.basket_solution to "work/gsm8k-daily26-basket-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911E.orchard_solution to "work/gsm8k-daily26-orchard-graph.json"
