import LemmaWeave.Problems.GSM8K.Daily0915DModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0915D
open LemmaWeave.Problems.GSM8K.Daily0915D

theorem rice_literal_remaining (a b c d e f g h : ℚ) (x : RiceLiteral a b c d e f g h) :
    c = 91 / 10 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at hc ⊢
  exact hc

theorem rice_literal_evening (a b c d e f g h : ℚ) (x : RiceLiteral a b c d e f g h) :
    e = 91 / 40 ∧ f = 273 / 40 := by
  have hc := rice_literal_remaining a b c d e f g h x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg, hh⟩
  constructor
  · norm_num [hc, hd] at he ⊢
    exact he
  · norm_num [hc, hd] at he
    norm_num [hc, he] at hf ⊢
    exact hf

theorem rice_literal_grams (a b c d e f g h : ℚ) (x : RiceLiteral a b c d e f g h) :
    h = 6825 := by
  have hef := rice_literal_evening a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  rcases hef with ⟨he', hf'⟩
  norm_num [hf', hg] at hh
  exact hh

theorem rice_fraction_grams (a b c d e f g : ℚ) (x : RiceWholeFraction a b c d e f g) :
    g = 750 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  norm_num [hc, hd] at he
  norm_num [he, hf] at hg
  exact hg

theorem rice_solution :
    (RiceLiteral 10 (9 / 10) (91 / 10) (1 / 4) (91 / 40) (273 / 40) 1000 6825 ∧
      (6825 : ℚ) = 6825) ∧
    (RiceWholeFraction 10 (9 / 10) 1 (1 / 4) (3 / 4) 1000 750 ∧
      (750 : ℚ) = 750) := by
  have hl : RiceLiteral 10 (9 / 10) (91 / 10) (1 / 4) (91 / 40) (273 / 40) 1000 6825 := by
    norm_num [RiceLiteral]
  have hf : RiceWholeFraction 10 (9 / 10) 1 (1 / 4) (3 / 4) 1000 750 := by
    norm_num [RiceWholeFraction]
  exact ⟨⟨hl, rice_literal_grams _ _ _ _ _ _ _ _ hl⟩,
    ⟨hf, rice_fraction_grams _ _ _ _ _ _ _ hf⟩⟩

theorem pool_paislee (a b c d e : Nat) (h : PoolTie a b c d e) : d = 375 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  omega

theorem pool_needed (a b c d e : Nat) (h : PoolTie a b c d e) : e = 125 := by
  have hd := pool_paislee a b c d e h
  rcases h with ⟨ha, hb, hc, hx, he⟩
  omega

theorem pool_solution : PoolTie 500 3 4 375 125 ∧ 375 = 375 ∧ 125 = 125 := by
  have h : PoolTie 500 3 4 375 125 := by norm_num [PoolTie]
  exact ⟨h, pool_paislee _ _ _ _ _ h, pool_needed _ _ _ _ _ h⟩

theorem school_elementary (a b c d e : Nat) (h : SchoolStudents a b c d e) : d = 197 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  omega

theorem school_total (a b c d e : Nat) (h : SchoolStudents a b c d e) : e = 247 := by
  have hd := school_elementary a b c d e h
  rcases h with ⟨ha, hb, hc, hx, he⟩
  omega

theorem school_solution : SchoolStudents 50 4 3 197 247 ∧ 197 = 197 ∧ 247 = 247 := by
  have h : SchoolStudents 50 4 3 197 247 := by norm_num [SchoolStudents]
  exact ⟨h, school_elementary _ _ _ _ _ h, school_total _ _ _ _ _ h⟩

theorem bank_current (a b c d e f g h i : Nat) (x : PiggyBank a b c d e f g h i) : c = 10000 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  omega

theorem bank_future (a b c d e f g h i : Nat) (x : PiggyBank a b c d e f g h i) :
    f = 48 ∧ h = 13248 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [hd, he] at hf
  norm_num [hf, hg] at hh
  exact ⟨hf, hh⟩

theorem bank_total (a b c d e f g h i : Nat) (x : PiggyBank a b c d e f g h i) : i = 23248 := by
  have hc := bank_current a b c d e f g h i x
  have hfh := bank_future a b c d e f g h i x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg, hh, hi⟩
  omega

theorem bank_solution : PiggyBank 3000 7000 10000 4 12 48 276 13248 23248 ∧
    10000 = 10000 ∧ (48 = 48 ∧ 13248 = 13248) ∧ 23248 = 23248 := by
  have h : PiggyBank 3000 7000 10000 4 12 48 276 13248 23248 := by norm_num [PiggyBank]
  exact ⟨h, bank_current _ _ _ _ _ _ _ _ _ h, bank_future _ _ _ _ _ _ _ _ _ h,
    bank_total _ _ _ _ _ _ _ _ _ h⟩

theorem frog_early (a b c d e f g : Nat) (h : FrogEggs a b c d e f g) :
    b = 100 ∧ d = 120 ∧ e = 270 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega

theorem frog_last (a b c d e f g : Nat) (h : FrogEggs a b c d e f g) : f = 540 := by
  have hearly := frog_early a b c d e f g h
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega

theorem frog_total (a b c d e f g : Nat) (h : FrogEggs a b c d e f g) : g = 810 := by
  have hearly := frog_early a b c d e f g h
  have hf := frog_last a b c d e f g h
  rcases h with ⟨ha, hb, hc, hd, he, hx, hg⟩
  omega

theorem frog_solution : FrogEggs 50 100 20 120 270 540 810 ∧
    (100 = 100 ∧ 120 = 120 ∧ 270 = 270) ∧ 540 = 540 ∧ 810 = 810 := by
  have h : FrogEggs 50 100 20 120 270 540 810 := by norm_num [FrogEggs]
  exact ⟨h, frog_early _ _ _ _ _ _ _ h, frog_last _ _ _ _ _ _ _ h,
    frog_total _ _ _ _ _ _ _ h⟩

theorem library_english (a b c d e f g : Nat) (h : LibraryBooks a b c d e f g) : d = 1840 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega

theorem library_domestic (a b c d e f g : Nat) (h : LibraryBooks a b c d e f g) : f = 1104 := by
  have hd := library_english a b c d e f g h
  rcases h with ⟨ha, hb, hc, hx, he, hf, hg⟩
  omega

theorem library_outside (a b c d e f g : Nat) (h : LibraryBooks a b c d e f g) : g = 736 := by
  have hd := library_english a b c d e f g h
  have hf := library_domestic a b c d e f g h
  rcases h with ⟨ha, hb, hc, hx, he, hy, hg⟩
  omega

theorem library_solution : LibraryBooks 2300 80 100 1840 60 1104 736 ∧
    1840 = 1840 ∧ 1104 = 1104 ∧ 736 = 736 := by
  have h : LibraryBooks 2300 80 100 1840 60 1104 736 := by norm_num [LibraryBooks]
  exact ⟨h, library_english _ _ _ _ _ _ _ h, library_domestic _ _ _ _ _ _ _ h,
    library_outside _ _ _ _ _ _ _ h⟩

theorem fruit_total (a b c d e f g : Nat) (h : FruitBag a b c d e f g) : e = 12 ∧ f = 18 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega

theorem fruit_plums (a b c d e f g : Nat) (h : FruitBag a b c d e f g) : d = 6 := by
  have hef := fruit_total a b c d e f g h
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega

theorem fruit_solution : FruitBag 6 4 2 6 12 18 9 ∧
    (12 = 12 ∧ 18 = 18) ∧ 6 = 6 := by
  have h : FruitBag 6 4 2 6 12 18 9 := by norm_num [FruitBag]
  exact ⟨h, fruit_total _ _ _ _ _ _ _ h, fruit_plums _ _ _ _ _ _ _ h⟩

theorem legs_humans (a b c d e f g h i j : Nat) (x : HouseholdLegs a b c d e f g h i j) :
    d = 5 ∧ e = 10 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  omega

theorem legs_pets (a b c d e f g h i j : Nat) (x : HouseholdLegs a b c d e f g h i j) :
    h = 3 ∧ i = 12 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  omega

theorem legs_total (a b c d e f g h i j : Nat) (x : HouseholdLegs a b c d e f g h i j) : j = 22 := by
  have hde := legs_humans a b c d e f g h i j x
  have hhi := legs_pets a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  omega

theorem legs_solution : HouseholdLegs 1 1 3 5 10 2 1 3 12 22 ∧
    (5 = 5 ∧ 10 = 10) ∧ (3 = 3 ∧ 12 = 12) ∧ 22 = 22 := by
  have h : HouseholdLegs 1 1 3 5 10 2 1 3 12 22 := by norm_num [HouseholdLegs]
  exact ⟨h, legs_humans _ _ _ _ _ _ _ _ _ _ h, legs_pets _ _ _ _ _ _ _ _ _ _ h,
    legs_total _ _ _ _ _ _ _ _ _ _ h⟩

theorem profit_per_book (a b c d e f g : Nat) (h : BookProfit a b c d e f g) : c = 15 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega

theorem profit_books (a b c d e f g : Nat) (h : BookProfit a b c d e f g) : e = 8 := by
  have hc := profit_per_book a b c d e f g h
  rcases h with ⟨ha, hb, hx, hd, he, hf, hg⟩
  omega

theorem profit_customers (a b c d e f g : Nat) (h : BookProfit a b c d e f g) : g = 4 := by
  have he := profit_books a b c d e f g h
  rcases h with ⟨ha, hb, hc, hd, hx, hf, hg⟩
  omega

theorem profit_solution : BookProfit 20 5 15 120 8 2 4 ∧
    15 = 15 ∧ 8 = 8 ∧ 4 = 4 := by
  have h : BookProfit 20 5 15 120 8 2 4 := by norm_num [BookProfit]
  exact ⟨h, profit_per_book _ _ _ _ _ _ _ h, profit_books _ _ _ _ _ _ _ h,
    profit_customers _ _ _ _ _ _ _ h⟩

theorem painting_parts (a b c d e f g : Nat) (h : PaintingRevenue a b c d e f g) :
    e = 500 ∧ f = 640 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb, hc, hd] at he hf
  exact ⟨he, hf⟩

theorem painting_total (a b c d e f g : Nat) (h : PaintingRevenue a b c d e f g) : g = 1140 := by
  have hef := painting_parts a b c d e f g h
  rcases h with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega

theorem painting_solution : PaintingRevenue 100 80 5 8 500 640 1140 ∧
    (500 = 500 ∧ 640 = 640) ∧ 1140 = 1140 := by
  have h : PaintingRevenue 100 80 5 8 500 640 1140 := by norm_num [PaintingRevenue]
  exact ⟨h, painting_parts _ _ _ _ _ _ _ h, painting_total _ _ _ _ _ _ _ h⟩

#print axioms rice_solution
#print axioms pool_solution
#print axioms school_solution
#print axioms bank_solution
#print axioms frog_solution
#print axioms library_solution
#print axioms fruit_solution
#print axioms legs_solution
#print axioms profit_solution
#print axioms painting_solution
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915D.rice_solution to "work/gsm8k-daily43-rice-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915D.pool_solution to "work/gsm8k-daily43-pool-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915D.school_solution to "work/gsm8k-daily43-school-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915D.bank_solution to "work/gsm8k-daily43-bank-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915D.frog_solution to "work/gsm8k-daily43-frog-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915D.library_solution to "work/gsm8k-daily43-library-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915D.fruit_solution to "work/gsm8k-daily43-fruit-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915D.legs_solution to "work/gsm8k-daily43-legs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915D.profit_solution to "work/gsm8k-daily43-profit-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915D.painting_solution to "work/gsm8k-daily43-painting-graph.json"

end LemmaWeave.Tests.GSM8KDaily0915D
