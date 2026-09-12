import LemmaWeave.Problems.GSM8K.Daily0909CModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0909C
open LemmaWeave.Problems.GSM8K.Daily0909C

theorem tickets_child_price (r d c a p q u t g h : ℕ)
    (x : FamilyTickets r d c a p q u t g h) : p = 104 := by
  rcases x with ⟨hr, hd, hc, ha, hp, hq, hu, ht, hg, hh⟩
  omega
theorem tickets_child_cost (r d c a p q u t g h : ℕ)
    (x : FamilyTickets r d c a p q u t g h) : q = 208 := by
  have hp := tickets_child_price r d c a p q u t g h x
  rcases x with ⟨hr, hd, hc, ha, hprice, hq, hu, ht, hg, hh⟩
  simp [hc, hp] at hq
  exact hq
theorem tickets_adult_cost (r d c a p q u t g h : ℕ)
    (x : FamilyTickets r d c a p q u t g h) : u = 218 := by
  rcases x with ⟨hr, hd, hc, ha, hp, hq, hu, ht, hg, hh⟩
  simp [ha, hr] at hu
  exact hu
theorem tickets_total (r d c a p q u t g h : ℕ)
    (x : FamilyTickets r d c a p q u t g h) : t = 426 := by
  have hq := tickets_child_cost r d c a p q u t g h x
  have hu := tickets_adult_cost r d c a p q u t g h x
  have ht := x.2.2.2.2.2.2.2.1
  omega
theorem tickets_change (r d c a p q u t g h : ℕ)
    (x : FamilyTickets r d c a p q u t g h) : h = 74 := by
  have ht := tickets_total r d c a p q u t g h x
  rcases x with ⟨hr, hd, hc, ha, hp, hq, hu, htotal, hg, hh⟩
  omega
theorem tickets_exists : FamilyTickets 109 5 2 2 104 208 218 426 500 74 := by
  norm_num [FamilyTickets]
theorem tickets_solution : FamilyTickets 109 5 2 2 104 208 218 426 500 74 ∧
    (∀ r d c a p q u t g h, FamilyTickets r d c a p q u t g h → p = 104) ∧
    (∀ r d c a p q u t g h, FamilyTickets r d c a p q u t g h → q = 208) ∧
    (∀ r d c a p q u t g h, FamilyTickets r d c a p q u t g h → u = 218) ∧
    (∀ r d c a p q u t g h, FamilyTickets r d c a p q u t g h → t = 426) ∧
    (∀ r d c a p q u t g h, FamilyTickets r d c a p q u t g h → h = 74) :=
  ⟨tickets_exists, tickets_child_price, tickets_child_cost, tickets_adult_cost,
    tickets_total, tickets_change⟩

theorem house_subtract (b k e : ℕ) (x : HouseArea b k e) : 4 * b = 9400 := by
  rcases x with ⟨hk, he, hrelation⟩
  omega
theorem house_benedict (b k e : ℕ) (x : HouseArea b k e) : b = 2350 := by
  have h := house_subtract b k e x
  omega
theorem house_exists : HouseArea 2350 10000 600 := by norm_num [HouseArea]
theorem house_solution : HouseArea 2350 10000 600 ∧
    (∀ b k e, HouseArea b k e → 4 * b = 9400) ∧
    (∀ b k e, HouseArea b k e → b = 2350) :=
  ⟨house_exists, house_subtract, house_benedict⟩

theorem wax_small_count (s l c d u v t : ℕ) (x : WaxSculptures s l c d u v t) : c = 6 := by
  rcases x with ⟨hs, hl, hu, hused, htriple, hv, ht⟩
  simp [hu, hs] at hused
  omega
theorem wax_large_count (s l c d u v t : ℕ) (x : WaxSculptures s l c d u v t) : d = 2 := by
  have hc := wax_small_count s l c d u v t x
  have hd := x.2.2.2.2.1
  omega
theorem wax_large_used (s l c d u v t : ℕ) (x : WaxSculptures s l c d u v t) : v = 8 := by
  have hd := wax_large_count s l c d u v t x
  rcases x with ⟨hs, hl, hu, hused, htriple, hv, ht⟩
  simp [hd, hl] at hv
  exact hv
theorem wax_total (s l c d u v t : ℕ) (x : WaxSculptures s l c d u v t) : t = 20 := by
  have hv := wax_large_used s l c d u v t x
  rcases x with ⟨hs, hl, hu, hused, htriple, hlarge, ht⟩
  omega
theorem wax_exists : WaxSculptures 2 4 6 2 12 8 20 := by norm_num [WaxSculptures]
theorem wax_solution : WaxSculptures 2 4 6 2 12 8 20 ∧
    (∀ s l c d u v t, WaxSculptures s l c d u v t → c = 6) ∧
    (∀ s l c d u v t, WaxSculptures s l c d u v t → d = 2) ∧
    (∀ s l c d u v t, WaxSculptures s l c d u v t → v = 8) ∧
    (∀ s l c d u v t, WaxSculptures s l c d u v t → t = 20) :=
  ⟨wax_exists, wax_small_count, wax_large_count, wax_large_used, wax_total⟩

theorem towels_people (f p n d q t c l : ℕ) (x : BeachTowels f p n d q t c l) : n = 12 := by
  rcases x with ⟨hf, hp, hn, hd, hq, ht, hc, hl⟩
  simp [hf, hp] at hn
  exact hn
theorem towels_total (f p n d q t c l : ℕ) (x : BeachTowels f p n d q t c l) : t = 84 := by
  have hn := towels_people f p n d q t c l x
  rcases x with ⟨hf, hp, hpeople, hd, hq, ht, hc, hl⟩
  have hq12 : q = 12 := by omega
  simp [hq12, hd] at ht
  exact ht
theorem towels_loads (f p n d q t c l : ℕ) (x : BeachTowels f p n d q t c l) : l = 6 := by
  have ht := towels_total f p n d q t c l x
  rcases x with ⟨hf, hp, hn, hd, hq, htotal, hc, hl⟩
  simp [ht, hc] at hl
  omega
theorem towels_exists : BeachTowels 3 4 12 7 12 84 14 6 := by norm_num [BeachTowels]
theorem towels_solution : BeachTowels 3 4 12 7 12 84 14 6 ∧
    (∀ f p n d q t c l, BeachTowels f p n d q t c l → n = 12) ∧
    (∀ f p n d q t c l, BeachTowels f p n d q t c l → t = 84) ∧
    (∀ f p n d q t c l, BeachTowels f p n d q t c l → l = 6) :=
  ⟨towels_exists, towels_people, towels_total, towels_loads⟩

theorem discounts_milk_each (r s e n m c b d t : ℕ)
    (x : ShoppingDiscounts r s e n m c b d t) : e = 1 := by
  rcases x with ⟨hr, hs, he, hn, hm, hc, hb, hd, ht⟩
  omega
theorem discounts_milk_total (r s e n m c b d t : ℕ)
    (x : ShoppingDiscounts r s e n m c b d t) : m = 3 := by
  have he := discounts_milk_each r s e n m c b d t x
  rcases x with ⟨hr, hs, hsave, hn, hm, hc, hb, hd, ht⟩
  simp [he, hn] at hm
  exact hm
theorem discounts_cereal_total (r s e n m c b d t : ℕ)
    (x : ShoppingDiscounts r s e n m c b d t) : d = 5 := by
  rcases x with ⟨hr, hs, he, hn, hm, hc, hb, hd, ht⟩
  simp [hc, hb] at hd
  exact hd
theorem discounts_total (r s e n m c b d t : ℕ)
    (x : ShoppingDiscounts r s e n m c b d t) : t = 8 := by
  have hm := discounts_milk_total r s e n m c b d t x
  have hd := discounts_cereal_total r s e n m c b d t x
  have ht := x.2.2.2.2.2.2.2.2
  omega
theorem discounts_exists : ShoppingDiscounts 3 2 1 3 3 1 5 5 8 := by
  norm_num [ShoppingDiscounts]
theorem discounts_solution : ShoppingDiscounts 3 2 1 3 3 1 5 5 8 ∧
    (∀ r s e n m c b d t, ShoppingDiscounts r s e n m c b d t → e = 1) ∧
    (∀ r s e n m c b d t, ShoppingDiscounts r s e n m c b d t → m = 3) ∧
    (∀ r s e n m c b d t, ShoppingDiscounts r s e n m c b d t → d = 5) ∧
    (∀ r s e n m c b d t, ShoppingDiscounts r s e n m c b d t → t = 8) :=
  ⟨discounts_exists, discounts_milk_each, discounts_milk_total,
    discounts_cereal_total, discounts_total⟩

theorem stairs_up (p u d a b t : ℕ) (x : StairFlights p u d a b t) : a = 15 := by
  rcases x with ⟨hp, hu, hd, ha, hb, ht⟩
  simp [hp, hu] at ha
  exact ha
theorem stairs_down (p u d a b t : ℕ) (x : StairFlights p u d a b t) : b = 9 := by
  rcases x with ⟨hp, hu, hd, ha, hb, ht⟩
  simp [hp, hd] at hb
  exact hb
theorem stairs_total (p u d a b t : ℕ) (x : StairFlights p u d a b t) : t = 24 := by
  have ha := stairs_up p u d a b t x
  have hb := stairs_down p u d a b t x
  have ht := x.2.2.2.2.2
  omega
theorem stairs_exists : StairFlights 3 5 3 15 9 24 := by norm_num [StairFlights]
theorem stairs_solution : StairFlights 3 5 3 15 9 24 ∧
    (∀ p u d a b t, StairFlights p u d a b t → a = 15) ∧
    (∀ p u d a b t, StairFlights p u d a b t → b = 9) ∧
    (∀ p u d a b t, StairFlights p u d a b t → t = 24) :=
  ⟨stairs_exists, stairs_up, stairs_down, stairs_total⟩

theorem movie_rejected_r (r w m a b c t q i : ℕ)
    (x : MovieAdmissions r w m a b c t q i) : a = 24 := by
  rcases x with ⟨hr, hw, hm, ha, hb, hc, ht, hq, hi⟩
  omega
theorem movie_rejected_w (r w m a b c t q i : ℕ)
    (x : MovieAdmissions r w m a b c t q i) : b = 63 := by
  rcases x with ⟨hr, hw, hm, ha, hb, hc, ht, hq, hi⟩
  omega
theorem movie_rejected_m (r w m a b c t q i : ℕ)
    (x : MovieAdmissions r w m a b c t q i) : c = 25 := by
  rcases x with ⟨hr, hw, hm, ha, hb, hc, ht, hq, hi⟩
  omega
theorem movie_admitted (r w m a b c t q i : ℕ)
    (x : MovieAdmissions r w m a b c t q i) : i = 148 := by
  have ha := movie_rejected_r r w m a b c t q i x
  have hb := movie_rejected_w r w m a b c t q i x
  have hc := movie_rejected_m r w m a b c t q i x
  rcases x with ⟨hr, hw, hm, hra, hrb, hrc, ht, hq, hi⟩
  omega
theorem movie_exists : MovieAdmissions 120 90 50 24 63 25 260 112 148 := by
  norm_num [MovieAdmissions]
theorem movie_solution : MovieAdmissions 120 90 50 24 63 25 260 112 148 ∧
    (∀ r w m a b c t q i, MovieAdmissions r w m a b c t q i → a = 24) ∧
    (∀ r w m a b c t q i, MovieAdmissions r w m a b c t q i → b = 63) ∧
    (∀ r w m a b c t q i, MovieAdmissions r w m a b c t q i → c = 25) ∧
    (∀ r w m a b c t q i, MovieAdmissions r w m a b c t q i → i = 148) :=
  ⟨movie_exists, movie_rejected_r, movie_rejected_w, movie_rejected_m, movie_admitted⟩

theorem dog_walk (w s a f t : ℕ) (x : DogCare w s a f t) : a = 60 := by
  rcases x with ⟨hw, hs, ha, hf, ht⟩
  simp [hw, hs] at ha
  exact ha
theorem dog_feed (w s a f t : ℕ) (x : DogCare w s a f t) : f = 12 := by
  have hf := x.2.2.2.1
  omega
theorem dog_total (w s a f t : ℕ) (x : DogCare w s a f t) : t = 72 := by
  have ha := dog_walk w s a f t x
  have hf := dog_feed w s a f t x
  have ht := x.2.2.2.2
  omega
theorem dog_exists : DogCare 30 2 60 12 72 := by norm_num [DogCare]
theorem dog_solution : DogCare 30 2 60 12 72 ∧
    (∀ w s a f t, DogCare w s a f t → a = 60) ∧
    (∀ w s a f t, DogCare w s a f t → f = 12) ∧
    (∀ w s a f t, DogCare w s a f t → t = 72) :=
  ⟨dog_exists, dog_walk, dog_feed, dog_total⟩

theorem sanitizer_point_killed (a b o k l : ℚ)
    (x : SanitizerPointOverlap a b o k l) : k = 70 := by
  rcases x with ⟨ha, hb, ho, hk, hl⟩
  linarith
theorem sanitizer_point_left (a b o k l : ℚ)
    (x : SanitizerPointOverlap a b o k l) : l = 30 := by
  have hk := sanitizer_point_killed a b o k l x
  have hl := x.2.2.2.2
  linarith
theorem sanitizer_point_exists : SanitizerPointOverlap 50 25 5 70 30 := by
  norm_num [SanitizerPointOverlap]
theorem sanitizer_relative_overlap (a b o k l : ℚ)
    (x : SanitizerRelativeOverlap a b o k l) : o = 5 / 4 := by
  rcases x with ⟨ha, hb, ho, hk, hl⟩
  norm_num [hb] at ho ⊢
  exact ho
theorem sanitizer_relative_left (a b o k l : ℚ)
    (x : SanitizerRelativeOverlap a b o k l) : l = 105 / 4 := by
  have ho := sanitizer_relative_overlap a b o k l x
  rcases x with ⟨ha, hb, hoverlap, hk, hl⟩
  linarith
theorem sanitizer_relative_exists : SanitizerRelativeOverlap 50 25 (5/4) (295/4) (105/4) := by
  norm_num [SanitizerRelativeOverlap]
theorem sanitizer_distinct : (30 : ℚ) ≠ 105 / 4 := by norm_num
theorem sanitizer_solution :
    SanitizerPointOverlap 50 25 5 70 30 ∧
    SanitizerRelativeOverlap 50 25 (5/4) (295/4) (105/4) ∧
    (30 : ℚ) ≠ 105 / 4 ∧
    (∀ a b o k l, SanitizerPointOverlap a b o k l → l = 30) ∧
    (∀ a b o k l, SanitizerRelativeOverlap a b o k l → l = 105 / 4) :=
  ⟨sanitizer_point_exists, sanitizer_relative_exists, sanitizer_distinct,
    sanitizer_point_left, sanitizer_relative_left⟩

theorem goldfish_total (s t b : ℕ) (x : Goldfish s t b) : t = 60 := by
  rcases x with ⟨hs, ht, hb⟩
  omega
theorem goldfish_below (s t b : ℕ) (x : Goldfish s t b) : b = 45 := by
  have ht := goldfish_total s t b x
  rcases x with ⟨hs, htotal, hb⟩
  omega
theorem goldfish_exists : Goldfish 15 60 45 := by norm_num [Goldfish]
theorem goldfish_solution : Goldfish 15 60 45 ∧
    (∀ s t b, Goldfish s t b → t = 60) ∧
    (∀ s t b, Goldfish s t b → b = 45) :=
  ⟨goldfish_exists, goldfish_total, goldfish_below⟩

end LemmaWeave.Tests.GSM8KDaily0909C

#print axioms LemmaWeave.Tests.GSM8KDaily0909C.tickets_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909C.house_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909C.wax_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909C.towels_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909C.discounts_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909C.stairs_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909C.movie_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909C.dog_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909C.sanitizer_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909C.goldfish_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909C.tickets_solution to "work/gsm8k-daily14-tickets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909C.house_solution to "work/gsm8k-daily14-house-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909C.wax_solution to "work/gsm8k-daily14-wax-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909C.towels_solution to "work/gsm8k-daily14-towels-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909C.discounts_solution to "work/gsm8k-daily14-discounts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909C.stairs_solution to "work/gsm8k-daily14-stairs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909C.movie_solution to "work/gsm8k-daily14-movie-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909C.dog_solution to "work/gsm8k-daily14-dog-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909C.sanitizer_solution to "work/gsm8k-daily14-sanitizer-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909C.goldfish_solution to "work/gsm8k-daily14-goldfish-graph.json"
