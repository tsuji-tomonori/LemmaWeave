import LemmaWeave.Problems.GSM8K.Sprint0921A07Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract
namespace LemmaWeave.Tests.GSM8KSprint0921A07
open LemmaWeave.Problems.GSM8K.Sprint0921A07

theorem reading_doubled_age : (12 : Nat) = 6 * 2 := by norm_num
theorem reading_fivefold : (40 : Nat) = 8 * 5 := by norm_num
theorem reading_later_age : (20 : Nat) = 12 + 8 := by
  calc (20 : Nat) = (6 * 2) + 8 := by norm_num
       _ = 12 + 8 := by rw [← reading_doubled_age]
theorem reading_triple : (120 : Nat) = 40 * 3 := by
  calc (120 : Nat) = (8 * 5) * 3 := by norm_num
       _ = 40 * 3 := by rw [← reading_fivefold]
theorem reading_current : (480 : Nat) = 120 * 4 := by
  calc (480 : Nat) = (40 * 3) * 4 := by norm_num
       _ = 120 * 4 := by rw [← reading_triple]
theorem reading_solution : ReadingGrowth 6 8 12 40 20 120 480 := by
  unfold ReadingGrowth
  exact ⟨reading_doubled_age, reading_fivefold, reading_later_age,
    reading_triple, reading_current⟩

theorem driving_fast : (90 : Nat) = 3 * 30 := by norm_num
theorem driving_slow : (100 : Nat) = 4 * 25 := by norm_num
theorem driving_daily : (190 : Nat) = 90 + 100 := by
  calc (190 : Nat) = (3 * 30) + (4 * 25) := by norm_num
       _ = 90 + 100 := by rw [← driving_fast, ← driving_slow]
theorem driving_weekly : (1140 : Nat) = 190 * 6 := by
  calc (1140 : Nat) = (90 + 100) * 6 := by norm_num
       _ = 190 * 6 := by rw [← driving_daily]
theorem driving_solution : WeeklyDriving 3 30 90 4 25 100 190 6 1140 := by
  unfold WeeklyDriving; exact ⟨driving_fast, driving_slow, driving_daily, driving_weekly⟩

theorem chicken_first : (10 : Nat) = 5 * 2 := by norm_num
theorem chicken_reference_total : (20 : Nat) = 10 + 10 := by
  calc (20 : Nat) = (5 * 2) + 10 := by norm_num
       _ = 10 + 10 := by rw [← chicken_first]
theorem chicken_alternative_total : (15 : Nat) = 10 + 5 := by
  calc (15 : Nat) = (5 * 2) + 5 := by norm_num
       _ = 10 + 5 := by rw [← chicken_first]
theorem chicken_reference : FriedChicken 5 2 10 10 20 := by
  unfold FriedChicken; exact ⟨chicken_first, chicken_reference_total⟩
theorem chicken_alternative : FriedChicken 5 2 10 5 15 := by
  unfold FriedChicken; exact ⟨chicken_first, chicken_alternative_total⟩
theorem chicken_ambiguous : (20 : Nat) ≠ 15 := by
  calc
    (20 : Nat) = 10 + 10 := chicken_reference_total
    _ ≠ 10 + 5 := by norm_num
    _ = 15 := chicken_alternative_total.symm
theorem chicken_solution :
    FriedChicken 5 2 10 10 20 ∧ FriedChicken 5 2 10 5 15 ∧ (20 : Nat) ≠ 15 := by
  exact ⟨chicken_reference, chicken_alternative, chicken_ambiguous⟩

theorem school_classes : (20 : Nat) = 15 + 5 := by norm_num
theorem school_total : (400 : Nat) = 20 * 20 := by
  calc (400 : Nat) = (15 + 5) * 20 := by norm_num
       _ = 20 * 20 := by rw [← school_classes]
theorem school_solution : SchoolStudents 15 5 20 20 400 := by
  unfold SchoolStudents; exact ⟨school_classes, school_total⟩

theorem pool_30_cleanings : (10 : Nat) * 3 ≤ 30 ∧ 30 < (10 + 1) * 3 := by norm_num
theorem pool_tip : (15 : Nat) * 100 = 150 * 10 := by norm_num
theorem pool_visit : (165 : Nat) = 150 + 15 := by
  calc (165 : Nat) = 150 + (150 * 10 / 100) := by norm_num
       _ = 150 + 15 := by rw [← pool_tip]; norm_num
theorem pool_cleaning_cost_30 : (1650 : Nat) = 165 * 10 := by
  calc (1650 : Nat) = (150 + 15) * 10 := by norm_num
       _ = 165 * 10 := by rw [← pool_visit]
theorem pool_chemicals : (400 : Nat) = 2 * 200 := by norm_num
theorem pool_total_30 : (2050 : Nat) = 1650 + 400 := by
  calc (2050 : Nat) = (165 * 10) + (2 * 200) := by norm_num
       _ = 1650 + 400 := by rw [← pool_cleaning_cost_30, ← pool_chemicals]
theorem pool_reference : PoolCost 30 3 10 150 10 15 165 1650 2 200 400 2050 := by
  unfold PoolCost
  exact ⟨pool_30_cleanings.1, pool_30_cleanings.2, pool_tip, pool_visit,
    pool_cleaning_cost_30, pool_chemicals, pool_total_30⟩
theorem pool_28_cleanings : (9 : Nat) * 3 ≤ 28 ∧ 28 < (9 + 1) * 3 := by norm_num
theorem pool_cleaning_cost_28 : (1485 : Nat) = 165 * 9 := by
  calc (1485 : Nat) = (150 + 15) * 9 := by norm_num
       _ = 165 * 9 := by rw [← pool_visit]
theorem pool_total_28 : (1885 : Nat) = 1485 + 400 := by
  calc (1885 : Nat) = (165 * 9) + (2 * 200) := by norm_num
       _ = 1485 + 400 := by rw [← pool_cleaning_cost_28, ← pool_chemicals]
theorem pool_alternative : PoolCost 28 3 9 150 10 15 165 1485 2 200 400 1885 := by
  unfold PoolCost
  exact ⟨pool_28_cleanings.1, pool_28_cleanings.2, pool_tip, pool_visit,
    pool_cleaning_cost_28, pool_chemicals, pool_total_28⟩
theorem pool_ambiguous : (2050 : Nat) ≠ 1885 := by
  calc
    (2050 : Nat) = 1650 + 400 := pool_total_30
    _ ≠ 1485 + 400 := by norm_num
    _ = 1885 := pool_total_28.symm
theorem pool_solution :
    PoolCost 30 3 10 150 10 15 165 1650 2 200 400 2050 ∧
    PoolCost 28 3 9 150 10 15 165 1485 2 200 400 1885 ∧
    (2050 : Nat) ≠ 1885 := by
  exact ⟨pool_reference, pool_alternative, pool_ambiguous⟩

theorem stockings_people : (9 : Nat) = 5 + 4 := by norm_num
theorem stockings_count : (45 : Nat) = 9 * 5 := by
  calc (45 : Nat) = (5 + 4) * 5 := by norm_num
       _ = 9 * 5 := by rw [← stockings_people]
theorem stockings_discount : (2 : Nat) * 100 = 20 * 10 := by norm_num
theorem stockings_discounted : (20 : Nat) = 18 + 2 := by
  calc (20 : Nat) = 18 + (20 * 10 / 100) := by norm_num
       _ = 18 + 2 := by rw [← stockings_discount]; norm_num
theorem stockings_unit : (23 : Nat) = 18 + 5 := by
  calc (23 : Nat) = (20 - 2) + 5 := by norm_num
       _ = 18 + 5 := by rw [stockings_discounted]; norm_num
theorem stockings_total : (1035 : Nat) = 45 * 23 := by
  calc (1035 : Nat) = (9 * 5) * (18 + 5) := by norm_num
       _ = 45 * 23 := by rw [← stockings_count, ← stockings_unit]
theorem stockings_solution : Stockings 5 4 9 5 45 20 10 2 18 5 23 1035 := by
  unfold Stockings
  exact ⟨stockings_people, stockings_count, stockings_discount,
    stockings_discounted, stockings_unit, stockings_total⟩

theorem turtle_george : (6 : Nat) = 4 + 2 := by norm_num
theorem turtle_gloria : (8 : Nat) = 4 * 2 := by
  calc (8 : Nat) = (6 - 2) * 2 := by norm_num
       _ = 4 * 2 := by rw [turtle_george]; norm_num
theorem turtle_solution : TurtleRace 6 2 4 2 8 := by
  unfold TurtleRace; exact ⟨turtle_george, turtle_gloria⟩

theorem bead_monday : (400 : Nat) * 3 = 1200 := by norm_num
theorem bead_tuesday : (300 : Nat) * 4 = 1200 := by norm_num
theorem bead_wednesday : (1200 : Nat) = 400 + 300 + 500 := by
  have hMonday : (1200 : Nat) / 3 = 400 := by
    rw [← bead_monday]
    norm_num
  have hTuesday : (1200 : Nat) / 4 = 300 := by
    rw [← bead_tuesday]
    norm_num
  calc (1200 : Nat) = (1200 / 3) + (1200 / 4) + 500 := by norm_num
       _ = 400 + 300 + 500 := by rw [hMonday, hTuesday]
theorem bead_solution : BeadshopProfit 1200 400 300 500 := by
  unfold BeadshopProfit; exact ⟨bead_monday, bead_tuesday, bead_wednesday⟩

theorem laundry_current : (34 : Nat) = 10 + 2 * 5 + 8 + 3 * 2 := by norm_num
theorem laundry_additional : (16 : Nat) = 4 * 4 := by norm_num
theorem laundry_fits : (34 : Nat) + 16 ≤ 50 := by
  calc (34 : Nat) + 16 = (10 + 2 * 5 + 8 + 3 * 2) + (4 * 4) := by
         rw [laundry_current, laundry_additional]
       _ ≤ 50 := by norm_num
theorem laundry_maximal : ∀ n : Nat, (34 : Nat) + n * 4 ≤ 50 → n ≤ 4 := by
  intro n h
  omega
theorem laundry_solution : Laundry 10 2 5 8 3 2 34 50 4 4 16 := by
  unfold Laundry
  exact ⟨laundry_current, laundry_additional, laundry_fits, laundry_maximal⟩

theorem grocery_daily : (200 : Nat) = 10 * 20 := by norm_num
theorem grocery_total : (1000 : Nat) = 200 * 5 := by
  calc (1000 : Nat) = (10 * 20) * 5 := by norm_num
       _ = 200 * 5 := by rw [← grocery_daily]
theorem grocery_solution : GroceryDelivery 10 20 200 5 1000 := by
  unfold GroceryDelivery; exact ⟨grocery_daily, grocery_total⟩

theorem shopping_shoe_discount : (60 : Nat) * 100 = 200 * 30 := by norm_num
theorem shopping_shoe_paid : (200 : Nat) = 140 + 60 := by
  calc (200 : Nat) = 140 + (200 * 30 / 100) := by norm_num
       _ = 140 + 60 := by rw [← shopping_shoe_discount]; norm_num
theorem shopping_shirts : (160 : Nat) = 2 * 80 := by norm_num
theorem shopping_subtotal : (300 : Nat) = 140 + 160 := by
  calc (300 : Nat) = (200 - 60) + (2 * 80) := by norm_num
       _ = 140 + 160 := by rw [shopping_shoe_paid, ← shopping_shirts]; norm_num
theorem shopping_checkout_discount : (15 : Nat) * 100 = 300 * 5 := by
  calc (15 : Nat) * 100 = (140 + 160) * 5 := by norm_num
       _ = 300 * 5 := by rw [← shopping_subtotal]
theorem shopping_total : (300 : Nat) = 285 + 15 := by
  calc (300 : Nat) = 285 + (300 * 5 / 100) := by norm_num
       _ = 285 + 15 := by rw [← shopping_checkout_discount]; norm_num
theorem shopping_solution : ShoppingDiscount 200 30 60 140 2 80 160 300 5 15 285 := by
  unfold ShoppingDiscount
  exact ⟨shopping_shoe_discount, shopping_shoe_paid, shopping_shirts,
    shopping_subtotal, shopping_checkout_discount, shopping_total⟩

theorem shoes_old : (50 : Nat) = 5 * 10 := by norm_num
theorem shoes_new : (65 : Nat) = 5 * 13 := by norm_num
theorem shoes_extra : (65 : Nat) = 50 + 15 := by
  calc (65 : Nat) = 5 * 13 := shoes_new
       _ = (5 * 10) + 15 := by norm_num
       _ = 50 + 15 := by rw [← shoes_old]
theorem shoes_solution : RunningShoes 5 10 50 13 65 15 := by
  unfold RunningShoes; exact ⟨shoes_old, shoes_new, shoes_extra⟩

theorem cookies_baked : (60 : Nat) = 5 * 12 := by norm_num
theorem cookies_teacher : (24 : Nat) = 2 * 12 := by norm_num
theorem cookies_katy : (14 : Nat) = 7 * 2 := by norm_num
theorem cookies_sold : (45 : Nat) = 24 + 7 + 14 := by
  calc (45 : Nat) = (2 * 12) + 7 + (7 * 2) := by norm_num
       _ = 24 + 7 + 14 := by rw [← cookies_teacher, ← cookies_katy]
theorem cookies_left : (60 : Nat) = 45 + 15 := by
  calc (60 : Nat) = 5 * 12 := cookies_baked
       _ = (24 + 7 + 14) + 15 := by norm_num
       _ = 45 + 15 := by rw [← cookies_sold]
theorem cookies_solution : CookieSale 5 12 60 2 24 7 14 45 15 := by
  unfold CookieSale
  exact ⟨cookies_baked, cookies_teacher, cookies_katy, cookies_sold, cookies_left⟩

theorem granola_for_children : (200 : Nat) = 80 + 120 := by norm_num
theorem granola_children : (120 : Nat) = 20 * 6 := by
  calc (120 : Nat) = 200 - 80 := by
         rw [granola_for_children]
         norm_num
       _ = 20 * 6 := by norm_num
theorem granola_solution : GranolaChildren 200 80 120 20 6 := by
  unfold GranolaChildren; exact ⟨granola_for_children, granola_children⟩

theorem bouquets_total : (36 : Nat) = 3 * 12 := by norm_num
theorem bouquets_accounted : (23 : Nat) = 9 + 14 := by norm_num
theorem bouquets_third : (36 : Nat) = 23 + 13 := by
  calc (36 : Nat) = 3 * 12 := bouquets_total
       _ = (9 + 14) + 13 := by norm_num
       _ = 23 + 13 := by rw [← bouquets_accounted]
theorem bouquets_solution : CarnationBouquets 3 12 36 9 14 23 13 := by
  unfold CarnationBouquets; exact ⟨bouquets_total, bouquets_accounted, bouquets_third⟩

#print axioms reading_solution
#print axioms driving_solution
#print axioms chicken_solution
#print axioms school_solution
#print axioms pool_solution
#print axioms stockings_solution
#print axioms turtle_solution
#print axioms bead_solution
#print axioms laundry_solution
#print axioms grocery_solution
#print axioms shopping_solution
#print axioms shoes_solution
#print axioms cookies_solution
#print axioms granola_solution
#print axioms bouquets_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A07.reading_solution to "work/gsm8k-sprint58-reading-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A07.driving_solution to "work/gsm8k-sprint58-driving-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A07.chicken_solution to "work/gsm8k-sprint58-chicken-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A07.school_solution to "work/gsm8k-sprint58-school-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A07.pool_solution to "work/gsm8k-sprint58-pool-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A07.stockings_solution to "work/gsm8k-sprint58-stockings-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A07.turtle_solution to "work/gsm8k-sprint58-turtle-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A07.bead_solution to "work/gsm8k-sprint58-bead-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A07.laundry_solution to "work/gsm8k-sprint58-laundry-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A07.grocery_solution to "work/gsm8k-sprint58-grocery-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A07.shopping_solution to "work/gsm8k-sprint58-shopping-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A07.shoes_solution to "work/gsm8k-sprint58-shoes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A07.cookies_solution to "work/gsm8k-sprint58-cookies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A07.granola_solution to "work/gsm8k-sprint58-granola-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A07.bouquets_solution to "work/gsm8k-sprint58-bouquets-graph.json"
end LemmaWeave.Tests.GSM8KSprint0921A07
