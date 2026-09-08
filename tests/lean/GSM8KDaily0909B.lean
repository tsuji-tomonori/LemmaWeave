import LemmaWeave.Problems.GSM8K.Daily0909BModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0909B
open LemmaWeave.Problems.GSM8K.Daily0909B

theorem yarn_first (f s t : ℕ) (x : YarnBalls f s t) : f = 9 := by
  rcases x with ⟨hthird, hsecond, ht⟩
  omega
theorem yarn_second (f s t : ℕ) (x : YarnBalls f s t) : s = 18 := by
  have hf := yarn_first f s t x
  have hs := x.2.1
  omega
theorem yarn_exists : YarnBalls 9 18 27 := by norm_num [YarnBalls]
theorem yarn_solution : YarnBalls 9 18 27 ∧
    (∀ f s t, YarnBalls f s t → f = 9) ∧
    (∀ f s t, YarnBalls f s t → s = 18) :=
  ⟨yarn_exists, yarn_first, yarn_second⟩

theorem growth_gained (r y c g f : ℕ) (x : AnnualGrowth r y c g f) : g = 30 := by
  rcases x with ⟨hr, hy, hc, hg, hf⟩
  simp [hr, hy] at hg
  exact hg
theorem growth_final (r y c g f : ℕ) (x : AnnualGrowth r y c g f) : f = 50 := by
  have hg := growth_gained r y c g f x
  rcases x with ⟨hr, hy, hc, hgain, hf⟩
  omega
theorem growth_exists : AnnualGrowth 3 10 20 30 50 := by
  norm_num [AnnualGrowth]
theorem growth_solution : AnnualGrowth 3 10 20 30 50 ∧
    (∀ r y c g f, AnnualGrowth r y c g f → g = 30) ∧
    (∀ r y c g f, AnnualGrowth r y c g f → f = 50) :=
  ⟨growth_exists, growth_gained, growth_final⟩

theorem roommates_doubled (b d j : ℕ) (x : Roommates b d j) : d = 20 := by
  rcases x with ⟨hb, hd, hj⟩
  omega
theorem roommates_john (b d j : ℕ) (x : Roommates b d j) : j = 25 := by
  have hd := roommates_doubled b d j x
  have hj := x.2.2
  omega
theorem roommates_exists : Roommates 10 20 25 := by norm_num [Roommates]
theorem roommates_solution : Roommates 10 20 25 ∧
    (∀ b d j, Roommates b d j → d = 20) ∧
    (∀ b d j, Roommates b d j → j = 25) :=
  ⟨roommates_exists, roommates_doubled, roommates_john⟩

theorem meows_second (a b c p m t : ℕ) (x : CatMeows a b c p m t) : b = 6 := by
  rcases x with ⟨ha, hb, hc, hp, hm, ht⟩
  omega
theorem meows_third (a b c p m t : ℕ) (x : CatMeows a b c p m t) : c = 2 := by
  have hb := meows_second a b c p m t x
  have hc := x.2.2.1
  omega
theorem meows_per_minute (a b c p m t : ℕ) (x : CatMeows a b c p m t) : p = 11 := by
  have hb := meows_second a b c p m t x
  have hc := meows_third a b c p m t x
  rcases x with ⟨ha, hsecond, hthird, hp, hm, ht⟩
  omega
theorem meows_total (a b c p m t : ℕ) (x : CatMeows a b c p m t) : t = 55 := by
  have hp := meows_per_minute a b c p m t x
  rcases x with ⟨ha, hb, hc, hper, hm, ht⟩
  simp [hp, hm] at ht
  exact ht
theorem meows_exists : CatMeows 3 6 2 11 5 55 := by norm_num [CatMeows]
theorem meows_solution : CatMeows 3 6 2 11 5 55 ∧
    (∀ a b c p m t, CatMeows a b c p m t → b = 6) ∧
    (∀ a b c p m t, CatMeows a b c p m t → c = 2) ∧
    (∀ a b c p m t, CatMeows a b c p m t → p = 11) ∧
    (∀ a b c p m t, CatMeows a b c p m t → t = 55) :=
  ⟨meows_exists, meows_second, meows_third, meows_per_minute, meows_total⟩

theorem hotel_capacity (s b p c q r : ℕ) (x : HotelRooms s b p c q r) : q = 5 := by
  rcases x with ⟨hs, hb, hp, hc, hq, hr⟩
  simp [hb, hp, hc] at hq
  exact hq
theorem hotel_rooms (s b p c q r : ℕ) (x : HotelRooms s b p c q r) : r = 6 := by
  have hq := hotel_capacity s b p c q r x
  rcases x with ⟨hs, hb, hp, hc, hcap, hr⟩
  simp [hq, hs] at hr
  omega
theorem hotel_exists : HotelRooms 30 2 2 1 5 6 := by norm_num [HotelRooms]
theorem hotel_solution : HotelRooms 30 2 2 1 5 6 ∧
    (∀ s b p c q r, HotelRooms s b p c q r → q = 5) ∧
    (∀ s b p c q r, HotelRooms s b p c q r → r = 6) :=
  ⟨hotel_exists, hotel_capacity, hotel_rooms⟩

theorem ice_paid (c p f u r : ℕ) (x : IceCreamCustomers c p f u r) : p = 50 := by
  rcases x with ⟨hu, hr, hfree, hpaid, hsale⟩
  omega
theorem ice_ten_free : IceCreamCustomers 60 50 10 2 100 := by
  norm_num [IceCreamCustomers]
theorem ice_nine_free : IceCreamCustomers 59 50 9 2 100 := by
  norm_num [IceCreamCustomers]
theorem ice_distinct : (10 : ℕ) ≠ 9 := by omega
theorem ice_solution :
    IceCreamCustomers 60 50 10 2 100 ∧
    IceCreamCustomers 59 50 9 2 100 ∧ (10 : ℕ) ≠ 9 ∧
    (∀ c p f u r, IceCreamCustomers c p f u r → p = 50) :=
  ⟨ice_ten_free, ice_nine_free, ice_distinct, ice_paid⟩

theorem shells_after_friends (s f b o l : ℕ) (x : Seashells s f b o l) : f = 140 := by
  rcases x with ⟨hs, hf, hb, ho, hl⟩
  omega
theorem shells_after_brothers (s f b o l : ℕ) (x : Seashells s f b o l) : b = 110 := by
  have hf := shells_after_friends s f b o l x
  have hb := x.2.2.1
  omega
theorem shells_sold (s f b o l : ℕ) (x : Seashells s f b o l) : o = 55 := by
  have hb := shells_after_brothers s f b o l x
  have ho := x.2.2.2.1
  omega
theorem shells_left (s f b o l : ℕ) (x : Seashells s f b o l) : l = 55 := by
  have hb := shells_after_brothers s f b o l x
  have ho := shells_sold s f b o l x
  have hl := x.2.2.2.2
  omega
theorem shells_exists : Seashells 180 140 110 55 55 := by norm_num [Seashells]
theorem shells_solution : Seashells 180 140 110 55 55 ∧
    (∀ s f b o l, Seashells s f b o l → f = 140) ∧
    (∀ s f b o l, Seashells s f b o l → b = 110) ∧
    (∀ s f b o l, Seashells s f b o l → o = 55) ∧
    (∀ s f b o l, Seashells s f b o l → l = 55) :=
  ⟨shells_exists, shells_after_friends, shells_after_brothers, shells_sold, shells_left⟩

theorem pages_before (c p b q n l t : ℕ) (x : PagesRead c p b q n l t) : b = 400 := by
  rcases x with ⟨hc, hp, hb, hq, hn, hl, ht⟩
  simp [hc, hp] at hb
  exact hb
theorem pages_later (c p b q n l t : ℕ) (x : PagesRead c p b q n l t) : l = 80 := by
  rcases x with ⟨hc, hp, hb, hq, hn, hl, ht⟩
  simp [hn, hp] at hl
  exact hl
theorem pages_total (c p b q n l t : ℕ) (x : PagesRead c p b q n l t) : t = 500 := by
  have hb := pages_before c p b q n l t x
  have hl := pages_later c p b q n l t x
  rcases x with ⟨hc, hp, hbefore, hq, hn, hlater, ht⟩
  omega
theorem pages_exists : PagesRead 10 40 400 20 2 80 500 := by norm_num [PagesRead]
theorem pages_solution : PagesRead 10 40 400 20 2 80 500 ∧
    (∀ c p b q n l t, PagesRead c p b q n l t → b = 400) ∧
    (∀ c p b q n l t, PagesRead c p b q n l t → l = 80) ∧
    (∀ c p b q n l t, PagesRead c p b q n l t → t = 500) :=
  ⟨pages_exists, pages_before, pages_later, pages_total⟩

theorem beef_pounds (p q w c t d : ℕ) (x : BeefPurchase p q w c t d) : w = 20 := by
  rcases x with ⟨hp, hq, hw, hc, ht, hd⟩
  simp [hp, hq] at hw
  exact hw
theorem beef_total_cents (p q w c t d : ℕ) (x : BeefPurchase p q w c t d) : t = 11000 := by
  have hw := beef_pounds p q w c t d x
  rcases x with ⟨hp, hq, hpounds, hc, ht, hd⟩
  simp [hw, hc] at ht
  exact ht
theorem beef_total_dollars (p q w c t d : ℕ) (x : BeefPurchase p q w c t d) : d = 110 := by
  have ht := beef_total_cents p q w c t d x
  have hd := x.2.2.2.2.2
  omega
theorem beef_exists : BeefPurchase 5 4 20 550 11000 110 := by
  norm_num [BeefPurchase]
theorem beef_solution : BeefPurchase 5 4 20 550 11000 110 ∧
    (∀ p q w c t d, BeefPurchase p q w c t d → w = 20) ∧
    (∀ p q w c t d, BeefPurchase p q w c t d → t = 11000) ∧
    (∀ p q w c t d, BeefPurchase p q w c t d → d = 110) :=
  ⟨beef_exists, beef_pounds, beef_total_cents, beef_total_dollars⟩

theorem students_absent (s a p c n : ℕ) (x : StudentLocations s a p c n) : a = 4 := by
  rcases x with ⟨hs, ha, hp, hc, hn⟩
  omega
theorem students_present (s a p c n : ℕ) (x : StudentLocations s a p c n) : p = 36 := by
  have ha := students_absent s a p c n x
  rcases x with ⟨hs, habsent, hp, hc, hn⟩
  omega
theorem students_classroom (s a p c n : ℕ) (x : StudentLocations s a p c n) : c = 27 := by
  have hp := students_present s a p c n x
  have hc := x.2.2.2.1
  omega
theorem students_canteen (s a p c n : ℕ) (x : StudentLocations s a p c n) : n = 9 := by
  have hp := students_present s a p c n x
  have hc := students_classroom s a p c n x
  have hn := x.2.2.2.2
  omega
theorem students_exists : StudentLocations 40 4 36 27 9 := by
  norm_num [StudentLocations]
theorem students_solution : StudentLocations 40 4 36 27 9 ∧
    (∀ s a p c n, StudentLocations s a p c n → a = 4) ∧
    (∀ s a p c n, StudentLocations s a p c n → p = 36) ∧
    (∀ s a p c n, StudentLocations s a p c n → c = 27) ∧
    (∀ s a p c n, StudentLocations s a p c n → n = 9) :=
  ⟨students_exists, students_absent, students_present,
    students_classroom, students_canteen⟩

end LemmaWeave.Tests.GSM8KDaily0909B

#print axioms LemmaWeave.Tests.GSM8KDaily0909B.yarn_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909B.growth_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909B.roommates_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909B.meows_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909B.hotel_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909B.ice_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909B.shells_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909B.pages_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909B.beef_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909B.students_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909B.yarn_solution to "work/gsm8k-daily13-yarn-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909B.growth_solution to "work/gsm8k-daily13-growth-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909B.roommates_solution to "work/gsm8k-daily13-roommates-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909B.meows_solution to "work/gsm8k-daily13-meows-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909B.hotel_solution to "work/gsm8k-daily13-hotel-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909B.ice_solution to "work/gsm8k-daily13-ice-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909B.shells_solution to "work/gsm8k-daily13-shells-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909B.pages_solution to "work/gsm8k-daily13-pages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909B.beef_solution to "work/gsm8k-daily13-beef-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909B.students_solution to "work/gsm8k-daily13-students-graph.json"
