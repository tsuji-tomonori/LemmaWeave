import LemmaWeave.Problems.GSM8K.Sprint0919A01Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A01
open LemmaWeave.Problems.GSM8K.Sprint0919A01

theorem library_after_monday (a b c d e : Nat) (h : LibraryBooks a b c d e) : c = 212 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  omega

theorem library_current (a b c d e : Nat) (h : LibraryBooks a b c d e) : e = 234 := by
  have hc := library_after_monday a b c d e h
  rcases h with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  exact he

theorem library_solution : LibraryBooks 336 124 212 22 234 ∧ 212 = 212 ∧ 234 = 234 := by
  have h : LibraryBooks 336 124 212 22 234 := by norm_num [LibraryBooks]
  exact ⟨h, library_after_monday _ _ _ _ _ h, library_current _ _ _ _ _ h⟩

theorem errand_home_leg (a b c d e f g h i j : Nat) (x : ErrandFuel a b c d e f g h i j) : e = 24 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hc, hd] at he
  exact he

theorem errand_total_miles (a b c d e f g h i j : Nat) (x : ErrandFuel a b c d e f g h i j) : f = 50 := by
  have he := errand_home_leg a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg, hh, hi, hj⟩
  norm_num [ha, hb, hc, he] at hf
  exact hf

theorem errand_gallons (a b c d e f g h i j : Nat) (x : ErrandFuel a b c d e f g h i j) : h = 2 := by
  have hf := errand_total_miles a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hx, hg, hh, hi, hj⟩
  norm_num [hf, hg] at hh
  omega

theorem errand_cost (a b c d e f g h i j : Nat) (x : ErrandFuel a b c d e f g h i j) : j = 500 := by
  have hh := errand_gallons a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hx, hi, hj⟩
  norm_num [hh, hi] at hj
  exact hj

theorem errand_solution : ErrandFuel 8 6 12 2 24 50 25 2 250 500 ∧
    24 = 24 ∧ 50 = 50 ∧ 2 = 2 ∧ 500 = 500 := by
  have h : ErrandFuel 8 6 12 2 24 50 25 2 250 500 := by norm_num [ErrandFuel]
  exact ⟨h, errand_home_leg _ _ _ _ _ _ _ _ _ _ h,
    errand_total_miles _ _ _ _ _ _ _ _ _ _ h, errand_gallons _ _ _ _ _ _ _ _ _ _ h,
    errand_cost _ _ _ _ _ _ _ _ _ _ h⟩

theorem journal_monday_pages (a b c d e f g h : Nat) (x : JournalPages a b c d e f g h) : c = 2 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at hc
  omega

theorem journal_tuesday_pages (a b c d e f g h : Nat) (x : JournalPages a b c d e f g h) : f = 3 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hd, he] at hf
  omega

theorem journal_total (a b c d e f g h : Nat) (x : JournalPages a b c d e f g h) : h = 10 := by
  have hc := journal_monday_pages a b c d e f g h x
  have hf := journal_tuesday_pages a b c d e f g h x
  rcases x with ⟨ha, hb, hx, hd, he, hy, hg, hh⟩
  norm_num [hc, hf, hg] at hh
  exact hh

theorem journal_solution : JournalPages 60 30 2 45 15 3 5 10 ∧
    2 = 2 ∧ 3 = 3 ∧ 10 = 10 := by
  have h : JournalPages 60 30 2 45 15 3 5 10 := by norm_num [JournalPages]
  exact ⟨h, journal_monday_pages _ _ _ _ _ _ _ _ h,
    journal_tuesday_pages _ _ _ _ _ _ _ _ h, journal_total _ _ _ _ _ _ _ _ h⟩

theorem salad_croutons (a b c d e f : Nat) (h : SaladCalories a b c d e f) : e = 240 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hc, hd] at he
  exact he

theorem salad_total (a b c d e f : Nat) (h : SaladCalories a b c d e f) : f = 350 := by
  have he := salad_croutons a b c d e f h
  rcases h with ⟨ha, hb, hc, hd, hx, hf⟩
  norm_num [ha, hb, he] at hf
  exact hf

theorem salad_solution : SaladCalories 30 80 12 20 240 350 ∧ 240 = 240 ∧ 350 = 350 := by
  have h : SaladCalories 30 80 12 20 240 350 := by norm_num [SaladCalories]
  exact ⟨h, salad_croutons _ _ _ _ _ _ h, salad_total _ _ _ _ _ _ h⟩

theorem vehicles_dirt_cost (a b c d e f g h i j : Nat) (x : VehiclePurchase a b c d e f g h i j) : c = 450 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [ha, hb] at hc
  exact hc

theorem vehicles_offroad_cost (a b c d e f g h i j : Nat) (x : VehiclePurchase a b c d e f g h i j) : f = 1200 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hd, he] at hf
  exact hf

theorem vehicles_registration (a b c d e f g h i j : Nat) (x : VehiclePurchase a b c d e f g h i j) : i = 175 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [ha, hd] at hg
  norm_num [hg, hh] at hi
  exact hi

theorem vehicles_total (a b c d e f g h i j : Nat) (x : VehiclePurchase a b c d e f g h i j) : j = 1825 := by
  have hc := vehicles_dirt_cost a b c d e f g h i j x
  have hf := vehicles_offroad_cost a b c d e f g h i j x
  have hi := vehicles_registration a b c d e f g h i j x
  rcases x with ⟨ha, hb, hx, hd, he, hy, hg, hh, hz, hj⟩
  norm_num [hc, hf, hi] at hj
  exact hj

theorem vehicles_solution : VehiclePurchase 3 150 450 4 300 1200 7 25 175 1825 ∧
    450 = 450 ∧ 1200 = 1200 ∧ 175 = 175 ∧ 1825 = 1825 := by
  have h : VehiclePurchase 3 150 450 4 300 1200 7 25 175 1825 := by
    norm_num [VehiclePurchase]
  exact ⟨h, vehicles_dirt_cost _ _ _ _ _ _ _ _ _ _ h,
    vehicles_offroad_cost _ _ _ _ _ _ _ _ _ _ h,
    vehicles_registration _ _ _ _ _ _ _ _ _ _ h,
    vehicles_total _ _ _ _ _ _ _ _ _ _ h⟩

end LemmaWeave.Tests.GSM8KSprint0919A01
