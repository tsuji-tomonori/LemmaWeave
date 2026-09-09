import LemmaWeave.Problems.GSM8K.Daily0910BModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0910B
open LemmaWeave.Problems.GSM8K.Daily0910B

theorem tickets_wednesday (m w s t : ℕ) (h : MovieTickets m w s t) : w = 10 := by
  rcases h with ⟨hm, hw, hs, ht⟩
  simp [hm] at hw
  exact hw
theorem tickets_saturday (m w s t : ℕ) (h : MovieTickets m w s t) : s = 25 := by
  rcases h with ⟨hm, hw, hs, ht⟩
  simp [hm] at hs
  exact hs
theorem tickets_total (m w s t : ℕ) (h : MovieTickets m w s t) : t = 35 := by
  have hw := tickets_wednesday m w s t h
  have hs := tickets_saturday m w s t h
  -- The total equation is the final model premise needed with those two values.
  rcases h with ⟨hm, hwd, hsd, ht⟩
  omega
theorem tickets_exists : MovieTickets 5 10 25 35 := by norm_num [MovieTickets]
theorem tickets_solution : MovieTickets 5 10 25 35 ∧
    (∀ m w s t, MovieTickets m w s t → w = 10) ∧
    (∀ m w s t, MovieTickets m w s t → s = 25) ∧
    (∀ m w s t, MovieTickets m w s t → t = 35) :=
  ⟨tickets_exists, tickets_wednesday, tickets_saturday, tickets_total⟩

theorem buggy_downhill (f d u s a : ℕ) (h : DuneBuggyAverage f d u s a) : d = 72 := by
  rcases h with ⟨hf, hd, hu, hs, ha⟩
  omega
theorem buggy_uphill (f d u s a : ℕ) (h : DuneBuggyAverage f d u s a) : u = 42 := by
  rcases h with ⟨hf, hd, hu, hs, ha⟩
  omega
theorem buggy_sum (f d u s a : ℕ) (h : DuneBuggyAverage f d u s a) : s = 174 := by
  have hd := buggy_downhill f d u s a h
  have hu := buggy_uphill f d u s a h
  rcases h with ⟨hf, hdown, hup, hs, ha⟩
  omega
theorem buggy_average (f d u s a : ℕ) (h : DuneBuggyAverage f d u s a) : a = 58 := by
  have hs := buggy_sum f d u s a h
  rcases h with ⟨hf, hd, hu, hsum, ha⟩
  omega
theorem buggy_exists : DuneBuggyAverage 60 72 42 174 58 := by norm_num [DuneBuggyAverage]
theorem buggy_solution : DuneBuggyAverage 60 72 42 174 58 ∧
    (∀ f d u s a, DuneBuggyAverage f d u s a → d = 72) ∧
    (∀ f d u s a, DuneBuggyAverage f d u s a → u = 42) ∧
    (∀ f d u s a, DuneBuggyAverage f d u s a → s = 174) ∧
    (∀ f d u s a, DuneBuggyAverage f d u s a → a = 58) :=
  ⟨buggy_exists, buggy_downhill, buggy_uphill, buggy_sum, buggy_average⟩

theorem sugar_grams (p g t k a : ℕ) (h : SugarSale p g t k a) : t = 2000 := by
  rcases h with ⟨hp, hg, ht, hk, ha⟩
  simp [hp, hg] at ht
  exact ht
theorem sugar_kilograms (p g t k a : ℕ) (h : SugarSale p g t k a) : a = 2 := by
  have ht := sugar_grams p g t k a h
  rcases h with ⟨hp, hg, htotal, hk, ha⟩
  simp [ht, hk] at ha
  omega
theorem sugar_exists : SugarSale 20 100 2000 1000 2 := by norm_num [SugarSale]
theorem sugar_solution : SugarSale 20 100 2000 1000 2 ∧
    (∀ p g t k a, SugarSale p g t k a → t = 2000) ∧
    (∀ p g t k a, SugarSale p g t k a → a = 2) :=
  ⟨sugar_exists, sugar_grams, sugar_kilograms⟩

theorem car_sale (o r s n q p x : ℕ) (h : CarReplacement o r s n q p x) : s = 16000 := by
  rcases h with ⟨ho, hr, hs, hn, hq, hp, hx⟩
  simp [ho, hr] at hs
  omega
theorem car_purchase (o r s n q p x : ℕ) (h : CarReplacement o r s n q p x) : p = 27000 := by
  rcases h with ⟨ho, hr, hs, hn, hq, hp, hx⟩
  simp [hn, hq] at hp
  omega
theorem car_out_of_pocket (o r s n q p x : ℕ) (h : CarReplacement o r s n q p x) : x = 11000 := by
  have hs := car_sale o r s n q p x h
  have hp := car_purchase o r s n q p x h
  rcases h with ⟨ho, hr, hsale, hn, hq, hpurchase, hx⟩
  omega
theorem car_exists : CarReplacement 20000 80 16000 30000 90 27000 11000 := by
  norm_num [CarReplacement]
theorem car_solution : CarReplacement 20000 80 16000 30000 90 27000 11000 ∧
    (∀ o r s n q p x, CarReplacement o r s n q p x → s = 16000) ∧
    (∀ o r s n q p x, CarReplacement o r s n q p x → p = 27000) ∧
    (∀ o r s n q p x, CarReplacement o r s n q p x → x = 11000) :=
  ⟨car_exists, car_sale, car_purchase, car_out_of_pocket⟩

theorem flowers_pansies (a b c d e f g h i j k l m : ℕ)
    (x : FlowerPurchase a b c d e f g h i j k l m) : c = 1250 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  simp [ha, hb] at hc
  exact hc
theorem flowers_petunias (a b c d e f g h i j k l m : ℕ)
    (x : FlowerPurchase a b c d e f g h i j k l m) : g = 500 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  simp [he, hf] at hg
  exact hg
theorem flowers_subtotal (a b c d e f g h i j k l m : ℕ)
    (x : FlowerPurchase a b c d e f g h i j k l m) : h = 3000 := by
  have hc := flowers_pansies a b c d e f g h i j k l m x
  have hg := flowers_petunias a b c d e f g h i j k l m x
  rcases x with ⟨ha, hb, hpansies, hd, he, hf, hpetunias, hh, hi, hj, hk, hl, hm⟩
  omega
theorem flowers_discount (a b c d e f g h i j k l m : ℕ)
    (x : FlowerPurchase a b c d e f g h i j k l m) : j = 300 := by
  have hh := flowers_subtotal a b c d e f g h i j k l m x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hsubtotal, hi, hj, hk, hl, hm⟩
  simp [hh, hi] at hj
  omega
theorem flowers_total (a b c d e f g h i j k l m : ℕ)
    (x : FlowerPurchase a b c d e f g h i j k l m) : l = 2700 := by
  have hh := flowers_subtotal a b c d e f g h i j k l m x
  have hj := flowers_discount a b c d e f g h i j k l m x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hsubtotal, hi, hdiscount, hk, hl, hm⟩
  omega
theorem flowers_change (a b c d e f g h i j k l m : ℕ)
    (x : FlowerPurchase a b c d e f g h i j k l m) : m = 2300 := by
  have hl := flowers_total a b c d e f g h i j k l m x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, htotal, hm⟩
  omega
theorem flowers_exists : FlowerPurchase 5 250 1250 1250 5 100 500 3000 10 300 5000 2700 2300 := by
  norm_num [FlowerPurchase]
theorem flowers_solution : FlowerPurchase 5 250 1250 1250 5 100 500 3000 10 300 5000 2700 2300 ∧
    (∀ a b c d e f g h i j k l m, FlowerPurchase a b c d e f g h i j k l m → c = 1250) ∧
    (∀ a b c d e f g h i j k l m, FlowerPurchase a b c d e f g h i j k l m → g = 500) ∧
    (∀ a b c d e f g h i j k l m, FlowerPurchase a b c d e f g h i j k l m → h = 3000) ∧
    (∀ a b c d e f g h i j k l m, FlowerPurchase a b c d e f g h i j k l m → j = 300) ∧
    (∀ a b c d e f g h i j k l m, FlowerPurchase a b c d e f g h i j k l m → l = 2700) ∧
    (∀ a b c d e f g h i j k l m, FlowerPurchase a b c d e f g h i j k l m → m = 2300) :=
  ⟨flowers_exists, flowers_pansies, flowers_petunias, flowers_subtotal,
    flowers_discount, flowers_total, flowers_change⟩

theorem stickers_friends (a b c d e f g h i j : ℕ)
    (x : DolphinStickers a b c d e f g h i j) : d = 12 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  simp [hb, hc] at hd
  exact hd
theorem stickers_mandy (a b c d e f g h i j : ℕ)
    (x : DolphinStickers a b c d e f g h i j) : f = 14 := by
  have hd := stickers_friends a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hfriends, he, hf, hg, hh, hi, hj⟩
  omega
theorem stickers_justin (a b c d e f g h i j : ℕ)
    (x : DolphinStickers a b c d e f g h i j) : h = 4 := by
  have hf := stickers_mandy a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hmandy, hg, hh, hi, hj⟩
  omega
theorem stickers_given (a b c d e f g h i j : ℕ)
    (x : DolphinStickers a b c d e f g h i j) : i = 30 := by
  have hd := stickers_friends a b c d e f g h i j x
  have hf := stickers_mandy a b c d e f g h i j x
  have hh := stickers_justin a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hfriends, he, hmandy, hg, hjustin, hi, hj⟩
  omega
theorem stickers_left (a b c d e f g h i j : ℕ)
    (x : DolphinStickers a b c d e f g h i j) : j = 42 := by
  have hi := stickers_given a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hgiven, hj⟩
  omega
theorem stickers_exists : DolphinStickers 72 3 4 12 2 14 10 4 30 42 := by
  norm_num [DolphinStickers]
theorem stickers_solution : DolphinStickers 72 3 4 12 2 14 10 4 30 42 ∧
    (∀ a b c d e f g h i j, DolphinStickers a b c d e f g h i j → d = 12) ∧
    (∀ a b c d e f g h i j, DolphinStickers a b c d e f g h i j → f = 14) ∧
    (∀ a b c d e f g h i j, DolphinStickers a b c d e f g h i j → h = 4) ∧
    (∀ a b c d e f g h i j, DolphinStickers a b c d e f g h i j → i = 30) ∧
    (∀ a b c d e f g h i j, DolphinStickers a b c d e f g h i j → j = 42) :=
  ⟨stickers_exists, stickers_friends, stickers_mandy, stickers_justin, stickers_given, stickers_left⟩

theorem books_textbooks (b t a s l : ℕ) (h : SemesterBooks b t a s l) : t = 480 := by
  rcases h with ⟨hb, ht, ha, hs, hl⟩
  omega
theorem books_after_textbooks (b t a s l : ℕ) (h : SemesterBooks b t a s l) : a = 480 := by
  have ht := books_textbooks b t a s l h
  rcases h with ⟨hb, htextbooks, ha, hs, hl⟩
  omega
theorem books_supplies (b t a s l : ℕ) (h : SemesterBooks b t a s l) : s = 120 := by
  have ha := books_after_textbooks b t a s l h
  rcases h with ⟨hb, ht, hafter, hs, hl⟩
  omega
theorem books_left (b t a s l : ℕ) (h : SemesterBooks b t a s l) : l = 360 := by
  have ha := books_after_textbooks b t a s l h
  have hs := books_supplies b t a s l h
  rcases h with ⟨hb, ht, hafter, hsupplies, hl⟩
  omega
theorem books_exists : SemesterBooks 960 480 480 120 360 := by norm_num [SemesterBooks]
theorem books_solution : SemesterBooks 960 480 480 120 360 ∧
    (∀ b t a s l, SemesterBooks b t a s l → t = 480) ∧
    (∀ b t a s l, SemesterBooks b t a s l → a = 480) ∧
    (∀ b t a s l, SemesterBooks b t a s l → s = 120) ∧
    (∀ b t a s l, SemesterBooks b t a s l → l = 360) :=
  ⟨books_exists, books_textbooks, books_after_textbooks, books_supplies, books_left⟩

theorem tree_growth_2018 (a b c d e f : ℕ) (h : TreeGrowth a b c d e f) : b = 10 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  simp [ha] at hb
  omega
theorem tree_height_2018 (a b c d e f : ℕ) (h : TreeGrowth a b c d e f) : c = 110 := by
  have hb := tree_growth_2018 a b c d e f h
  rcases h with ⟨ha, hgrowth, hc, hd, he, hf⟩
  omega
theorem tree_growth_2019 (a b c d e f : ℕ) (h : TreeGrowth a b c d e f) : d = 11 := by
  have hc := tree_height_2018 a b c d e f h
  rcases h with ⟨ha, hb, hheight, hd, he, hf⟩
  simp [hc] at hd
  omega
theorem tree_height_2019 (a b c d e f : ℕ) (h : TreeGrowth a b c d e f) : e = 121 := by
  have hc := tree_height_2018 a b c d e f h
  have hd := tree_growth_2019 a b c d e f h
  rcases h with ⟨ha, hb, hheight, hgrowth, he, hf⟩
  omega
theorem tree_total_growth (a b c d e f : ℕ) (h : TreeGrowth a b c d e f) : f = 21 := by
  have he := tree_height_2019 a b c d e f h
  rcases h with ⟨ha, hb, hc, hd, hheight, hf⟩
  omega
theorem tree_exists : TreeGrowth 100 10 110 11 121 21 := by norm_num [TreeGrowth]
theorem tree_solution : TreeGrowth 100 10 110 11 121 21 ∧
    (∀ a b c d e f, TreeGrowth a b c d e f → b = 10) ∧
    (∀ a b c d e f, TreeGrowth a b c d e f → c = 110) ∧
    (∀ a b c d e f, TreeGrowth a b c d e f → d = 11) ∧
    (∀ a b c d e f, TreeGrowth a b c d e f → e = 121) ∧
    (∀ a b c d e f, TreeGrowth a b c d e f → f = 21) :=
  ⟨tree_exists, tree_growth_2018, tree_height_2018, tree_growth_2019, tree_height_2019, tree_total_growth⟩

theorem shopping_lisa_jeans (a b c d e f g h i : ℕ) (x : ShoppingTotal a b c d e f g h i) : b = 20 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  omega
theorem shopping_lisa_coats (a b c d e f g h i : ℕ) (x : ShoppingTotal a b c d e f g h i) : c = 80 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  omega
theorem shopping_lisa_total (a b c d e f g h i : ℕ) (x : ShoppingTotal a b c d e f g h i) : d = 140 := by
  have hb := shopping_lisa_jeans a b c d e f g h i x
  have hc := shopping_lisa_coats a b c d e f g h i x
  rcases x with ⟨ha, hjeans, hcoats, hd, he, hf, hg, hh, hi⟩
  omega
theorem shopping_carly_shirts (a b c d e f g h i : ℕ) (x : ShoppingTotal a b c d e f g h i) : e = 10 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  omega
theorem shopping_carly_jeans (a b c d e f g h i : ℕ) (x : ShoppingTotal a b c d e f g h i) : f = 60 := by
  have hb := shopping_lisa_jeans a b c d e f g h i x
  rcases x with ⟨ha, hjeans, hc, hd, he, hf, hg, hh, hi⟩
  simp [hb] at hf
  exact hf
theorem shopping_carly_coats (a b c d e f g h i : ℕ) (x : ShoppingTotal a b c d e f g h i) : g = 20 := by
  have hc := shopping_lisa_coats a b c d e f g h i x
  rcases x with ⟨ha, hb, hcoats, hd, he, hf, hg, hh, hi⟩
  omega
theorem shopping_carly_total (a b c d e f g h i : ℕ) (x : ShoppingTotal a b c d e f g h i) : h = 90 := by
  have he := shopping_carly_shirts a b c d e f g h i x
  have hf := shopping_carly_jeans a b c d e f g h i x
  have hg := shopping_carly_coats a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, hshirts, hjeans, hcoats, hh, hi⟩
  omega
theorem shopping_total (a b c d e f g h i : ℕ) (x : ShoppingTotal a b c d e f g h i) : i = 230 := by
  have hd := shopping_lisa_total a b c d e f g h i x
  have hh := shopping_carly_total a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hlisa, he, hf, hg, hcarly, hi⟩
  omega
theorem shopping_exists : ShoppingTotal 40 20 80 140 10 60 20 90 230 := by
  norm_num [ShoppingTotal]
theorem shopping_solution : ShoppingTotal 40 20 80 140 10 60 20 90 230 ∧
    (∀ a b c d e f g h i, ShoppingTotal a b c d e f g h i → b = 20) ∧
    (∀ a b c d e f g h i, ShoppingTotal a b c d e f g h i → c = 80) ∧
    (∀ a b c d e f g h i, ShoppingTotal a b c d e f g h i → d = 140) ∧
    (∀ a b c d e f g h i, ShoppingTotal a b c d e f g h i → e = 10) ∧
    (∀ a b c d e f g h i, ShoppingTotal a b c d e f g h i → f = 60) ∧
    (∀ a b c d e f g h i, ShoppingTotal a b c d e f g h i → g = 20) ∧
    (∀ a b c d e f g h i, ShoppingTotal a b c d e f g h i → h = 90) ∧
    (∀ a b c d e f g h i, ShoppingTotal a b c d e f g h i → i = 230) :=
  ⟨shopping_exists, shopping_lisa_jeans, shopping_lisa_coats, shopping_lisa_total,
    shopping_carly_shirts, shopping_carly_jeans, shopping_carly_coats,
    shopping_carly_total, shopping_total⟩

theorem poultry_chickens (a b c d e f g h i j k : ℕ)
    (x : PoultryAfterWeek a b c d e f g h i j k) : h = 160 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  simp [ha, hb, he] at hh
  exact hh
theorem poultry_turkeys (a b c d e f g h i j k : ℕ)
    (x : PoultryAfterWeek a b c d e f g h i j k) : i = 144 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  simp [ha, hc, hf] at hi
  exact hi
theorem poultry_guinea (a b c d e f g h i j k : ℕ)
    (x : PoultryAfterWeek a b c d e f g h i j k) : j = 45 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  simp [ha, hd, hg] at hj
  exact hj
theorem poultry_total (a b c d e f g h i j k : ℕ)
    (x : PoultryAfterWeek a b c d e f g h i j k) : k = 349 := by
  have hh := poultry_chickens a b c d e f g h i j k x
  have hi := poultry_turkeys a b c d e f g h i j k x
  have hj := poultry_guinea a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hchickens, hturkeys, hguinea, hk⟩
  omega
theorem poultry_exists : PoultryAfterWeek 7 300 200 80 20 8 5 160 144 45 349 := by
  norm_num [PoultryAfterWeek]
theorem poultry_solution : PoultryAfterWeek 7 300 200 80 20 8 5 160 144 45 349 ∧
    (∀ a b c d e f g h i j k, PoultryAfterWeek a b c d e f g h i j k → h = 160) ∧
    (∀ a b c d e f g h i j k, PoultryAfterWeek a b c d e f g h i j k → i = 144) ∧
    (∀ a b c d e f g h i j k, PoultryAfterWeek a b c d e f g h i j k → j = 45) ∧
    (∀ a b c d e f g h i j k, PoultryAfterWeek a b c d e f g h i j k → k = 349) :=
  ⟨poultry_exists, poultry_chickens, poultry_turkeys, poultry_guinea, poultry_total⟩

end LemmaWeave.Tests.GSM8KDaily0910B

#print axioms LemmaWeave.Tests.GSM8KDaily0910B.tickets_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910B.buggy_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910B.sugar_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910B.car_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910B.flowers_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910B.stickers_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910B.books_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910B.tree_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910B.shopping_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910B.poultry_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910B.tickets_solution to "work/gsm8k-daily18-tickets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910B.buggy_solution to "work/gsm8k-daily18-buggy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910B.sugar_solution to "work/gsm8k-daily18-sugar-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910B.car_solution to "work/gsm8k-daily18-car-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910B.flowers_solution to "work/gsm8k-daily18-flowers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910B.stickers_solution to "work/gsm8k-daily18-stickers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910B.books_solution to "work/gsm8k-daily18-books-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910B.tree_solution to "work/gsm8k-daily18-tree-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910B.shopping_solution to "work/gsm8k-daily18-shopping-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910B.poultry_solution to "work/gsm8k-daily18-poultry-graph.json"
