import LemmaWeave.Problems.GSM8K.Daily0911DModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0911D
open LemmaWeave.Problems.GSM8K.Daily0911D

theorem fox_hours (a b c d e : ℕ) (x : FoxRun a b c d e) : c = 2 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  omega
theorem fox_distance (a b c d e : ℕ) (x : FoxRun a b c d e) : e = 100 := by
  have hc0 := fox_hours a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  clear ha hb hc
  norm_num [hd, hc0] at he
  exact he
theorem fox_exists : FoxRun 120 60 2 50 100 := by norm_num [FoxRun]
theorem fox_solution : FoxRun 120 60 2 50 100 ∧
    (∀ a b c d e, FoxRun a b c d e → c = 2) ∧
    (∀ a b c d e, FoxRun a b c d e → e = 100) :=
  ⟨fox_exists, fox_hours, fox_distance⟩

theorem fruit_oranges (a b c d e f g : ℕ) (x : FruitTotal a b c d e f g) : c = 1800 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  exact hc
theorem fruit_nectarines (a b c d e f g : ℕ) (x : FruitTotal a b c d e f g) : f = 480 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hd, he] at hf
  exact hf
theorem fruit_total (a b c d e f g : ℕ) (x : FruitTotal a b c d e f g) : g = 2280 := by
  have hc0 := fruit_oranges a b c d e f g x
  have hf0 := fruit_nectarines a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  clear ha hb hc hd he hf
  norm_num [hc0, hf0] at hg
  exact hg
theorem fruit_exists : FruitTotal 12 150 1800 16 30 480 2280 := by norm_num [FruitTotal]
theorem fruit_solution : FruitTotal 12 150 1800 16 30 480 2280 ∧
    (∀ a b c d e f g, FruitTotal a b c d e f g → c = 1800) ∧
    (∀ a b c d e f g, FruitTotal a b c d e f g → f = 480) ∧
    (∀ a b c d e f g, FruitTotal a b c d e f g → g = 2280) :=
  ⟨fruit_exists, fruit_oranges, fruit_nectarines, fruit_total⟩

theorem share_total_parts (a b c d e f g : ℕ) (x : FamilyShare a b c d e f g) : c = 12 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  exact hc
theorem share_boys (a b c d e f g : ℕ) (x : FamilyShare a b c d e f g) : e = 75 := by
  have hc0 := share_total_parts a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  clear hb hc hf hg
  norm_num [hc0, hd, ha] at he
  omega
theorem share_each (a b c d e f g : ℕ) (x : FamilyShare a b c d e f g) : g = 52 := by
  have he0 := share_boys a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  clear ha hb hc hd he
  norm_num [hf, he0] at hg
  omega
theorem share_exists : FamilyShare 5 7 12 180 75 3900 52 := by norm_num [FamilyShare]
theorem share_solution : FamilyShare 5 7 12 180 75 3900 52 ∧
    (∀ a b c d e f g, FamilyShare a b c d e f g → c = 12) ∧
    (∀ a b c d e f g, FamilyShare a b c d e f g → e = 75) ∧
    (∀ a b c d e f g, FamilyShare a b c d e f g → g = 52) :=
  ⟨share_exists, share_total_parts, share_boys, share_each⟩

theorem pills_first_daily (a b c d e f g h i j k : ℕ)
    (x : Painkillers a b c d e f g h i j k) : c = 6 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [ha, hb] at hc
  exact hc
theorem pills_first_used (a b c d e f g h i j k : ℕ)
    (x : Painkillers a b c d e f g h i j k) : e = 12 := by
  have hc0 := pills_first_daily a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  clear ha hb hc hf hg hh hi hj hk
  norm_num [hc0, hd] at he
  exact he
theorem pills_next_daily (a b c d e f g h i j k : ℕ)
    (x : Painkillers a b c d e f g h i j k) : f = 3 := by
  have hc0 := pills_first_daily a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  clear ha hb hc hd he hg hh hi hj hk
  norm_num [hc0] at hf
  omega
theorem pills_next_used (a b c d e f g h i j k : ℕ)
    (x : Painkillers a b c d e f g h i j k) : h = 9 := by
  have hf0 := pills_next_daily a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  clear ha hb hc hd he hf hi hj hk
  norm_num [hf0, hg] at hh
  exact hh
theorem pills_used (a b c d e f g h i j k : ℕ)
    (x : Painkillers a b c d e f g h i j k) : j = 23 := by
  have he0 := pills_first_used a b c d e f g h i j k x
  have hh0 := pills_next_used a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  clear ha hb hc hd he hf hg hh hk
  norm_num [he0, hh0, hi] at hj
  exact hj
theorem pills_remaining (a b c d e f g h i j k : ℕ)
    (x : Painkillers a b c d e f g h i j k) : k = 27 := by
  have hj0 := pills_used a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  clear ha hb hc hd he hf hg hh hi hj
  norm_num [hj0] at hk
  omega
theorem pills_exists : Painkillers 2 3 6 2 12 3 3 9 2 23 27 := by norm_num [Painkillers]
theorem pills_solution : Painkillers 2 3 6 2 12 3 3 9 2 23 27 ∧
    (∀ a b c d e f g h i j k, Painkillers a b c d e f g h i j k → c = 6) ∧
    (∀ a b c d e f g h i j k, Painkillers a b c d e f g h i j k → e = 12) ∧
    (∀ a b c d e f g h i j k, Painkillers a b c d e f g h i j k → f = 3) ∧
    (∀ a b c d e f g h i j k, Painkillers a b c d e f g h i j k → h = 9) ∧
    (∀ a b c d e f g h i j k, Painkillers a b c d e f g h i j k → j = 23) ∧
    (∀ a b c d e f g h i j k, Painkillers a b c d e f g h i j k → k = 27) :=
  ⟨pills_exists, pills_first_daily, pills_first_used, pills_next_daily,
    pills_next_used, pills_used, pills_remaining⟩

theorem magazine_issues (a b c d e f g h : ℕ) (x : MagazineDiscount a b c d e f g h) : c = 36 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at hc
  exact hc
theorem magazine_discount_cents (a b c d e f g h : ℕ)
    (x : MagazineDiscount a b c d e f g h) : e = 900 := by
  have hc0 := magazine_issues a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  clear ha hb hc hf hg hh
  norm_num [hc0, hd] at he
  exact he
theorem magazine_discount_dollars (a b c d e f g h : ℕ)
    (x : MagazineDiscount a b c d e f g h) : h = 9 := by
  have he0 := magazine_discount_cents a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  clear ha hb hc hd he hf hg
  norm_num [he0] at hh
  omega
theorem magazine_exists : MagazineDiscount 18 2 36 25 900 3400 2500 9 := by
  norm_num [MagazineDiscount]
theorem magazine_solution : MagazineDiscount 18 2 36 25 900 3400 2500 9 ∧
    (∀ a b c d e f g h, MagazineDiscount a b c d e f g h → c = 36) ∧
    (∀ a b c d e f g h, MagazineDiscount a b c d e f g h → e = 900) ∧
    (∀ a b c d e f g h, MagazineDiscount a b c d e f g h → h = 9) :=
  ⟨magazine_exists, magazine_issues, magazine_discount_cents, magazine_discount_dollars⟩

theorem dandelion_given (a b c d e f g h i : ℕ) (x : Dandelions a b c d e f g h i) : e = 13 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [ha, hb, hc, hd] at he
  exact he
theorem dandelion_remaining (a b c d e f g h i : ℕ)
    (x : Dandelions a b c d e f g h i) : g = 27 := by
  have he0 := dandelion_given a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  clear ha hb hc hd he hh hi
  norm_num [he0, hf] at hg
  omega
theorem dandelion_each (a b c d e f g h i : ℕ) (x : Dandelions a b c d e f g h i) : i = 9 := by
  have hg0 := dandelion_remaining a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  clear ha hb hc hd he hf hg
  norm_num [hg0, hh] at hi
  omega
theorem dandelion_exists : Dandelions 3 3 5 2 13 40 27 3 9 := by norm_num [Dandelions]
theorem dandelion_solution : Dandelions 3 3 5 2 13 40 27 3 9 ∧
    (∀ a b c d e f g h i, Dandelions a b c d e f g h i → e = 13) ∧
    (∀ a b c d e f g h i, Dandelions a b c d e f g h i → g = 27) ∧
    (∀ a b c d e f g h i, Dandelions a b c d e f g h i → i = 9) :=
  ⟨dandelion_exists, dandelion_given, dandelion_remaining, dandelion_each⟩

theorem weight_base (a b c d e f : ℕ) (x : LoweringWeight a b c d e f) : c = 300 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb] at hc
  exact hc
theorem weight_extra (a b c d e f : ℕ) (x : LoweringWeight a b c d e f) : e = 60 := by
  have hc0 := weight_base a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  clear ha hb hc hf
  norm_num [hc0, hd] at he
  omega
theorem weight_lowered (a b c d e f : ℕ) (x : LoweringWeight a b c d e f) : f = 360 := by
  have hc0 := weight_base a b c d e f x
  have he0 := weight_extra a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  clear ha hb hc hd he
  norm_num [hc0, he0] at hf
  exact hf
theorem weight_exists : LoweringWeight 10 30 300 20 60 360 := by norm_num [LoweringWeight]
theorem weight_solution : LoweringWeight 10 30 300 20 60 360 ∧
    (∀ a b c d e f, LoweringWeight a b c d e f → c = 300) ∧
    (∀ a b c d e f, LoweringWeight a b c d e f → e = 60) ∧
    (∀ a b c d e f, LoweringWeight a b c d e f → f = 360) :=
  ⟨weight_exists, weight_base, weight_extra, weight_lowered⟩

theorem pie_pieces (a b c d e f g h i : ℕ) (x : PieProfit a b c d e f g h i) : c = 36 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [ha, hb] at hc
  exact hc
theorem pie_revenue (a b c d e f g h i : ℕ) (x : PieProfit a b c d e f g h i) : e = 14400 := by
  have hc0 := pie_pieces a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  clear ha hb hc hf hg hh hi
  norm_num [hc0, hd] at he
  exact he
theorem pie_cost (a b c d e f g h i : ℕ) (x : PieProfit a b c d e f g h i) : g = 600 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  clear hb hc hd he hh hi
  norm_num [ha, hf] at hg
  exact hg
theorem pie_profit_cents (a b c d e f g h i : ℕ)
    (x : PieProfit a b c d e f g h i) : h = 13800 := by
  have he0 := pie_revenue a b c d e f g h i x
  have hg0 := pie_cost a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  clear ha hb hc hd he hf hg hi
  norm_num [he0, hg0] at hh
  omega
theorem pie_profit_dollars (a b c d e f g h i : ℕ)
    (x : PieProfit a b c d e f g h i) : i = 138 := by
  have hh0 := pie_profit_cents a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  clear ha hb hc hd he hf hg hh
  norm_num [hh0] at hi
  omega
theorem pie_exists : PieProfit 12 3 36 400 14400 50 600 13800 138 := by norm_num [PieProfit]
theorem pie_solution : PieProfit 12 3 36 400 14400 50 600 13800 138 ∧
    (∀ a b c d e f g h i, PieProfit a b c d e f g h i → c = 36) ∧
    (∀ a b c d e f g h i, PieProfit a b c d e f g h i → e = 14400) ∧
    (∀ a b c d e f g h i, PieProfit a b c d e f g h i → g = 600) ∧
    (∀ a b c d e f g h i, PieProfit a b c d e f g h i → h = 13800) ∧
    (∀ a b c d e f g h i, PieProfit a b c d e f g h i → i = 138) :=
  ⟨pie_exists, pie_pieces, pie_revenue, pie_cost, pie_profit_cents, pie_profit_dollars⟩

theorem coffee_total (a b c d e : ℕ) (x : CoffeeDays a b c d e) : c = 120 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc
theorem coffee_days (a b c d e : ℕ) (x : CoffeeDays a b c d e) : e = 40 := by
  have hc0 := coffee_total a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  clear ha hb hc
  norm_num [hc0, hd] at he
  omega
theorem coffee_exists : CoffeeDays 3 40 120 3 40 := by norm_num [CoffeeDays]
theorem coffee_solution : CoffeeDays 3 40 120 3 40 ∧
    (∀ a b c d e, CoffeeDays a b c d e → c = 120) ∧
    (∀ a b c d e, CoffeeDays a b c d e → e = 40) :=
  ⟨coffee_exists, coffee_total, coffee_days⟩

theorem fence_eight_short (a b c : ℕ) (x : FenceRepair a b c) : c = 8 * a := by
  rcases x with ⟨ha, hb, hc⟩
  omega
theorem fence_short (a b c : ℕ) (x : FenceRepair a b c) : a = 80 := by
  have hc0 := fence_eight_short a b c x
  rcases x with ⟨ha, hb, hc⟩
  omega
theorem fence_exists : FenceRepair 80 240 640 := by norm_num [FenceRepair]
theorem fence_solution : FenceRepair 80 240 640 ∧
    (∀ a b c, FenceRepair a b c → c = 8 * a) ∧
    (∀ a b c, FenceRepair a b c → a = 80) :=
  ⟨fence_exists, fence_eight_short, fence_short⟩

end LemmaWeave.Tests.GSM8KDaily0911D

#print axioms LemmaWeave.Tests.GSM8KDaily0911D.fox_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911D.fruit_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911D.share_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911D.pills_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911D.magazine_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911D.dandelion_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911D.weight_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911D.pie_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911D.coffee_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911D.fence_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911D.fox_solution to "work/gsm8k-daily25-fox-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911D.fruit_solution to "work/gsm8k-daily25-fruit-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911D.share_solution to "work/gsm8k-daily25-share-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911D.pills_solution to "work/gsm8k-daily25-pills-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911D.magazine_solution to "work/gsm8k-daily25-magazine-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911D.dandelion_solution to "work/gsm8k-daily25-dandelion-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911D.weight_solution to "work/gsm8k-daily25-weight-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911D.pie_solution to "work/gsm8k-daily25-pie-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911D.coffee_solution to "work/gsm8k-daily25-coffee-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911D.fence_solution to "work/gsm8k-daily25-fence-graph.json"
