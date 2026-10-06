import LemmaWeave.Problems.GSM8K.Sprint0919A09Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A09
open LemmaWeave.Problems.GSM8K.Sprint0919A09

theorem money_ian (a b c d e : Nat) (x : MoneyComparison a b c d e) : b = 50 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha] at hb
  omega

theorem money_rodney (a b c d e : Nat) (x : MoneyComparison a b c d e) : d = 85 := by
  have hb := money_ian a b c d e x
  rcases x with ⟨ha, hx, hc, hd, he⟩
  norm_num [hb, hc] at hd
  exact hd

theorem money_difference (a b c d e : Nat) (x : MoneyComparison a b c d e) : e = 15 := by
  have hd := money_rodney a b c d e x
  rcases x with ⟨ha, hb, hc, hx, he⟩
  norm_num [ha, hd] at he
  omega

theorem money_solution : MoneyComparison 100 50 35 85 15 ∧ 50 = 50 ∧ 85 = 85 ∧ 15 = 15 := by
  have x : MoneyComparison 100 50 35 85 15 := by norm_num [MoneyComparison]
  exact ⟨x, money_ian _ _ _ _ _ x, money_rodney _ _ _ _ _ x,
    money_difference _ _ _ _ _ x⟩

theorem trip_kati (a b c d e f : Nat) (x : RoadTrip a b c d e f) : b = 98 := by
  rcases x with ⟨ha, hc, hd, he, hf, hg⟩
  norm_num [ha, hc, he] at hd hf hg
  omega

theorem trip_michelle (a b c d e f : Nat) (x : RoadTrip a b c d e f) : d = 294 := by
  have hb := trip_kati a b c d e f x
  rcases x with ⟨ha, hc, hd, he, hf, hg⟩
  norm_num [hb, hc] at hd
  exact hd

theorem trip_solution : RoadTrip 1000 98 3 294 20 608 ∧ 98 = 98 ∧ 294 = 294 := by
  have x : RoadTrip 1000 98 3 294 20 608 := by norm_num [RoadTrip]
  exact ⟨x, trip_kati _ _ _ _ _ _ x, trip_michelle _ _ _ _ _ _ x⟩

theorem speed_green (a b c d e : Nat) (x : CarSpeeds a b c d e) : c = 640 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc

theorem speed_red (a b c d e : Nat) (x : CarSpeeds a b c d e) : e = 1280 := by
  have hc := speed_green a b c d e x
  rcases x with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  exact he

theorem speed_solution : CarSpeeds 80 8 640 2 1280 ∧ 640 = 640 ∧ 1280 = 1280 := by
  have x : CarSpeeds 80 8 640 2 1280 := by norm_num [CarSpeeds]
  exact ⟨x, speed_green _ _ _ _ _ x, speed_red _ _ _ _ _ x⟩

theorem bottles_count (a b c d e f g h i : Nat)
    (x : BottleShortfall a b c d e f g h i) : c = 60 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [ha, hb] at hc
  exact hc

theorem bottles_shortfall_cents (a b c d e f g h i : Nat)
    (x : BottleShortfall a b c d e f g h i) : h = 900 := by
  have hc := bottles_count a b c d e f g h i x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg, hh, hi⟩
  norm_num [hc, hd] at hf
  norm_num [hc, he] at hg
  norm_num [hf, hg] at hh
  omega

theorem bottles_shortfall_dollars (a b c d e f g h i : Nat)
    (x : BottleShortfall a b c d e f g h i) : i = 9 := by
  have hh := bottles_shortfall_cents a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hx, hi⟩
  norm_num [hh] at hi
  omega

theorem bottles_solution :
    BottleShortfall 5 12 60 200 185 12000 11100 900 9 ∧
    60 = 60 ∧ 900 = 900 ∧ 9 = 9 := by
  have x : BottleShortfall 5 12 60 200 185 12000 11100 900 9 := by
    norm_num [BottleShortfall]
  exact ⟨x, bottles_count _ _ _ _ _ _ _ _ _ x,
    bottles_shortfall_cents _ _ _ _ _ _ _ _ _ x,
    bottles_shortfall_dollars _ _ _ _ _ _ _ _ _ x⟩

theorem child_first (a b c d e f g h i : Nat) (x : ChildCosts a b c d e f g h i) : c = 80000 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [ha, hb] at hc
  exact hc

theorem child_next (a b c d e f g h i : Nat) (x : ChildCosts a b c d e f g h i) : f = 200000 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [ha] at hd
  norm_num [hb] at he
  norm_num [hd, he] at hf
  omega

theorem child_total (a b c d e f g h i : Nat) (x : ChildCosts a b c d e f g h i) : h = 530000 := by
  have hc := child_first a b c d e f g h i x
  have hf := child_next a b c d e f g h i x
  rcases x with ⟨ha, hb, hx, hd, he, hy, hg, hh, hi⟩
  norm_num [hc, hf, hg] at hh
  exact hh

theorem child_john (a b c d e f g h i : Nat) (x : ChildCosts a b c d e f g h i) : i = 265000 := by
  have hh := child_total a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hx, hi⟩
  norm_num [hh] at hi
  omega

theorem child_solution :
    ChildCosts 8 10000 80000 10 20000 200000 250000 530000 265000 ∧
    80000 = 80000 ∧ 200000 = 200000 ∧ 530000 = 530000 ∧ 265000 = 265000 := by
  have x : ChildCosts 8 10000 80000 10 20000 200000 250000 530000 265000 := by
    norm_num [ChildCosts]
  exact ⟨x, child_first _ _ _ _ _ _ _ _ _ x, child_next _ _ _ _ _ _ _ _ _ x,
    child_total _ _ _ _ _ _ _ _ _ x, child_john _ _ _ _ _ _ _ _ _ x⟩

#print axioms money_solution
#print axioms trip_solution
#print axioms speed_solution
#print axioms bottles_solution
#print axioms child_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A09.money_solution to "work/gsm8k-sprint09-money-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A09.trip_solution to "work/gsm8k-sprint09-trip-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A09.speed_solution to "work/gsm8k-sprint09-speed-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A09.bottles_solution to "work/gsm8k-sprint09-bottles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A09.child_solution to "work/gsm8k-sprint09-child-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A09
