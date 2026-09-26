import LemmaWeave.Problems.GSM8K.Sprint0919A14Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A14
open LemmaWeave.Problems.GSM8K.Sprint0919A14

theorem tables_rect_capacity (a b c d e f g : Nat) (x : LibraryTables a b c d e f g) : c = 70 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  exact hc

theorem tables_uncovered (a b c d e f g : Nat) (x : LibraryTables a b c d e f g) : f = 20 := by
  have hc := tables_rect_capacity a b c d e f g x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg⟩
  omega

theorem tables_square_count (a b c d e f g : Nat) (x : LibraryTables a b c d e f g) : g = 5 := by
  have hf := tables_uncovered a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hx, hg⟩
  norm_num [he, hf] at hg
  omega

theorem tables_solution : LibraryTables 7 10 70 90 4 20 5 ∧ 70 = 70 ∧ 20 = 20 ∧ 5 = 5 := by
  have x : LibraryTables 7 10 70 90 4 20 5 := by norm_num [LibraryTables]
  exact ⟨x, tables_rect_capacity _ _ _ _ _ _ _ x, tables_uncovered _ _ _ _ _ _ _ x,
    tables_square_count _ _ _ _ _ _ _ x⟩

theorem chocolate_total (a b c d : Nat) (x : ChocolateShare a b c d) : c = 100 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb] at hc
  exact hc

theorem chocolate_percent (a b c d : Nat) (x : ChocolateShare a b c d) : d = 25 := by
  have hc := chocolate_total a b c d x
  rcases x with ⟨ha, hb, hx, hd⟩
  norm_num [hb, hc] at hd
  omega

theorem chocolate_solution : ChocolateShare 4 25 100 25 ∧ 100 = 100 ∧ 25 = 25 := by
  have x : ChocolateShare 4 25 100 25 := by norm_num [ChocolateShare]
  exact ⟨x, chocolate_total _ _ _ _ x, chocolate_percent _ _ _ _ x⟩

theorem cherries_count (a b c d e f g h i : Nat) (x : CherryPitting a b c d e f g h i) : c = 240 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [ha, hb] at hc
  exact hc

theorem cherries_batches (a b c d e f g h i : Nat) (x : CherryPitting a b c d e f g h i) : e = 12 := by
  have hc := cherries_count a b c d e f g h i x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg, hh, hi⟩
  norm_num [hc, hd] at he
  omega

theorem cherries_minutes (a b c d e f g h i : Nat) (x : CherryPitting a b c d e f g h i) : g = 120 := by
  have he := cherries_batches a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg, hh, hi⟩
  norm_num [he, hf] at hg
  exact hg

theorem cherries_hours (a b c d e f g h i : Nat) (x : CherryPitting a b c d e f g h i) : i = 2 := by
  have hg := cherries_minutes a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hx, hh, hi⟩
  norm_num [hg, hh] at hi
  omega

theorem cherries_solution : CherryPitting 3 80 240 20 12 10 120 60 2 ∧ 240 = 240 ∧ 12 = 12 ∧ 120 = 120 ∧ 2 = 2 := by
  have x : CherryPitting 3 80 240 20 12 10 120 60 2 := by norm_num [CherryPitting]
  exact ⟨x, cherries_count _ _ _ _ _ _ _ _ _ x, cherries_batches _ _ _ _ _ _ _ _ _ x,
    cherries_minutes _ _ _ _ _ _ _ _ _ x, cherries_hours _ _ _ _ _ _ _ _ _ x⟩

theorem fuel_first (a b c d e f : Nat) (x : FuelTrips a b c d e f) : d = 150 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb] at hd
  exact hd

theorem fuel_second (a b c d e f : Nat) (x : FuelTrips a b c d e f) : e = 100 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hc] at he
  exact he

theorem fuel_total (a b c d e f : Nat) (x : FuelTrips a b c d e f) : f = 250 := by
  have hd := fuel_first a b c d e f x
  have he := fuel_second a b c d e f x
  rcases x with ⟨ha, hb, hc, hx, hy, hf⟩
  norm_num [hd, he] at hf
  exact hf

theorem fuel_solution : FuelTrips 5 30 20 150 100 250 ∧ 150 = 150 ∧ 100 = 100 ∧ 250 = 250 := by
  have x : FuelTrips 5 30 20 150 100 250 := by norm_num [FuelTrips]
  exact ⟨x, fuel_first _ _ _ _ _ _ x, fuel_second _ _ _ _ _ _ x, fuel_total _ _ _ _ _ _ x⟩

theorem drift_later_snow (a b c d e f : Nat) (x : Snowdrift a b c d e f) : f = 24 := by
  rcases x with ⟨ha, hc, hd, hf, he, hz⟩
  norm_num [hc, hd] at hf
  exact hf

theorem drift_after_melt (a b c d e f : Nat) (x : Snowdrift a b c d e f) : b = 10 := by
  have hf := drift_later_snow a b c d e f x
  rcases x with ⟨ha, hc, hd, hx, he, hz⟩
  omega

theorem drift_first_day (a b c d e f : Nat) (x : Snowdrift a b c d e f) : a = 20 := by
  have hb := drift_after_melt a b c d e f x
  rcases x with ⟨ha, hc, hd, hf, he, hz⟩
  norm_num [hb] at ha
  exact ha

theorem drift_solution : Snowdrift 20 10 6 18 34 24 ∧ 24 = 24 ∧ 10 = 10 ∧ 20 = 20 := by
  have x : Snowdrift 20 10 6 18 34 24 := by norm_num [Snowdrift]
  exact ⟨x, drift_later_snow _ _ _ _ _ _ x, drift_after_melt _ _ _ _ _ _ x,
    drift_first_day _ _ _ _ _ _ x⟩

#print axioms tables_solution
#print axioms chocolate_solution
#print axioms cherries_solution
#print axioms fuel_solution
#print axioms drift_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A14.tables_solution to "work/gsm8k-sprint14-tables-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A14.chocolate_solution to "work/gsm8k-sprint14-chocolate-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A14.cherries_solution to "work/gsm8k-sprint14-cherries-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A14.fuel_solution to "work/gsm8k-sprint14-fuel-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A14.drift_solution to "work/gsm8k-sprint14-drift-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A14
