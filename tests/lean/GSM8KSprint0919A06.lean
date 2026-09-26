import LemmaWeave.Problems.GSM8K.Sprint0919A06Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A06
open LemmaWeave.Problems.GSM8K.Sprint0919A06

theorem furniture_damaged (a b c d e f g h i : Nat)
    (x : FurnitureLegs a b c d e f g h i) : c = 32 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [ha] at hc
  omega

theorem furniture_remaining_chairs (a b c d e f g h i : Nat)
    (x : FurnitureLegs a b c d e f g h i) : d = 48 := by
  have hc := furniture_damaged a b c d e f g h i x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg, hh, hi⟩
  norm_num [ha, hc] at hd
  omega

theorem furniture_total (a b c d e f g h i : Nat)
    (x : FurnitureLegs a b c d e f g h i) : i = 300 := by
  have hd := furniture_remaining_chairs a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hx, he, hf, hg, hh, hi⟩
  norm_num [hd, hb] at he
  norm_num [hf, hg] at hh
  norm_num [he, hh] at hi
  exact hi

theorem furniture_solution :
    FurnitureLegs 80 5 32 48 240 20 3 60 300 ∧ 32 = 32 ∧ 48 = 48 ∧ 300 = 300 := by
  have x : FurnitureLegs 80 5 32 48 240 20 3 60 300 := by norm_num [FurnitureLegs]
  exact ⟨x, furniture_damaged _ _ _ _ _ _ _ _ _ x,
    furniture_remaining_chairs _ _ _ _ _ _ _ _ _ x,
    furniture_total _ _ _ _ _ _ _ _ _ x⟩

theorem randy_received (a b c d e : Nat) (x : RandyMoney a b c d e) : c = 3200 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc

theorem randy_rest (a b c d e : Nat) (x : RandyMoney a b c d e) : e = 2000 := by
  have hc := randy_received a b c d e x
  rcases x with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  omega

theorem randy_solution : RandyMoney 3000 200 3200 1200 2000 ∧ 3200 = 3200 ∧ 2000 = 2000 := by
  have x : RandyMoney 3000 200 3200 1200 2000 := by norm_num [RandyMoney]
  exact ⟨x, randy_received _ _ _ _ _ x, randy_rest _ _ _ _ _ x⟩

theorem hiking_pace (a b c : Nat) (x : HikingPace a b c) : c = 4 := by
  rcases x with ⟨ha, hb, hc⟩
  norm_num [ha, hb] at hc
  omega

theorem hiking_solution : HikingPace 24 6 4 ∧ 4 = 4 := by
  have x : HikingPace 24 6 4 := by norm_num [HikingPace]
  exact ⟨x, hiking_pace _ _ _ x⟩

theorem parking_area (a b c d e f g : Nat) (x : ParkingCapacity a b c d e f g) : c = 200000 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  exact hc

theorem parking_usable (a b c d e f g : Nat) (x : ParkingCapacity a b c d e f g) : e = 160000 := by
  have hc := parking_area a b c d e f g x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg⟩
  norm_num [hc, hd] at he
  omega

theorem parking_cars (a b c d e f g : Nat) (x : ParkingCapacity a b c d e f g) : g = 16000 := by
  have he := parking_usable a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg⟩
  norm_num [he, hf] at hg
  omega

theorem parking_solution :
    ParkingCapacity 400 500 200000 80 160000 10 16000 ∧
    200000 = 200000 ∧ 160000 = 160000 ∧ 16000 = 16000 := by
  have x : ParkingCapacity 400 500 200000 80 160000 10 16000 := by
    norm_num [ParkingCapacity]
  exact ⟨x, parking_area _ _ _ _ _ _ _ x, parking_usable _ _ _ _ _ _ _ x,
    parking_cars _ _ _ _ _ _ _ x⟩

theorem milk_weekly (a b c d e : Nat) (x : MilkContainers a b c d e) : c = 10 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc

theorem milk_total (a b c d e : Nat) (x : MilkContainers a b c d e) : e = 30 := by
  have hc := milk_weekly a b c d e x
  rcases x with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  exact he

theorem milk_solution : MilkContainers 5 2 10 3 30 ∧ 10 = 10 ∧ 30 = 30 := by
  have x : MilkContainers 5 2 10 3 30 := by norm_num [MilkContainers]
  exact ⟨x, milk_weekly _ _ _ _ _ x, milk_total _ _ _ _ _ x⟩

#print axioms furniture_solution
#print axioms randy_solution
#print axioms hiking_solution
#print axioms parking_solution
#print axioms milk_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A06.furniture_solution to "work/gsm8k-sprint06-furniture-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A06.randy_solution to "work/gsm8k-sprint06-randy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A06.hiking_solution to "work/gsm8k-sprint06-hiking-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A06.parking_solution to "work/gsm8k-sprint06-parking-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A06.milk_solution to "work/gsm8k-sprint06-milk-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A06
