import LemmaWeave.Problems.GSM8K.Daily0910DModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0910D
open LemmaWeave.Problems.GSM8K.Daily0910D

theorem gifts_shirts (a b c d e f g h i j : ℕ) (x : GiftCost a b c d e f g h i j) : c = 78 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  simp [ha, hb] at hc
  exact hc
theorem gifts_necklaces (a b c d e f g h i j : ℕ) (x : GiftCost a b c d e f g h i j) : f = 166 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  simp [hd, he] at hf
  exact hf
theorem gifts_subtotal (a b c d e f g h i j : ℕ) (x : GiftCost a b c d e f g h i j) : h = 334 := by
  have hc := gifts_shirts a b c d e f g h i j x
  have hf := gifts_necklaces a b c d e f g h i j x
  rcases x with ⟨ha, hb, hshirt, hd, he, hnecklace, hg, hh, hi, hj⟩
  omega
theorem gifts_total (a b c d e f g h i j : ℕ) (x : GiftCost a b c d e f g h i j) : j = 322 := by
  have hh := gifts_subtotal a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hsubtotal, hi, hj⟩
  omega
theorem gifts_exists : GiftCost 3 26 78 2 83 166 90 334 12 322 := by norm_num [GiftCost]
theorem gifts_solution : GiftCost 3 26 78 2 83 166 90 334 12 322 ∧
    (∀ a b c d e f g h i j, GiftCost a b c d e f g h i j → c = 78) ∧
    (∀ a b c d e f g h i j, GiftCost a b c d e f g h i j → f = 166) ∧
    (∀ a b c d e f g h i j, GiftCost a b c d e f g h i j → h = 334) ∧
    (∀ a b c d e f g h i j, GiftCost a b c d e f g h i j → j = 322) :=
  ⟨gifts_exists, gifts_shirts, gifts_necklaces, gifts_subtotal, gifts_total⟩

theorem party_drinks (a b c d e f g h i : ℕ) (x : PartyChange a b c d e f g h i) : c = 30 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  simp [ha, hb] at hc
  exact hc
theorem party_pizzas (a b c d e f g h i : ℕ) (x : PartyChange a b c d e f g h i) : f = 140 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  simp [hd, he] at hf
  exact hf
theorem party_spent (a b c d e f g h i : ℕ) (x : PartyChange a b c d e f g h i) : g = 170 := by
  have hc := party_drinks a b c d e f g h i x
  have hf := party_pizzas a b c d e f g h i x
  rcases x with ⟨ha, hb, hdrink, hd, he, hpizza, hg, hh, hi⟩
  omega
theorem party_change (a b c d e f g h i : ℕ) (x : PartyChange a b c d e f g h i) : i = 30 := by
  have hg := party_spent a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hspent, hh, hi⟩
  omega
theorem party_exists : PartyChange 5 6 30 10 14 140 170 200 30 := by norm_num [PartyChange]
theorem party_solution : PartyChange 5 6 30 10 14 140 170 200 30 ∧
    (∀ a b c d e f g h i, PartyChange a b c d e f g h i → c = 30) ∧
    (∀ a b c d e f g h i, PartyChange a b c d e f g h i → f = 140) ∧
    (∀ a b c d e f g h i, PartyChange a b c d e f g h i → g = 170) ∧
    (∀ a b c d e f g h i, PartyChange a b c d e f g h i → i = 30) :=
  ⟨party_exists, party_drinks, party_pizzas, party_spent, party_change⟩

theorem herbert_now (a b c d e : ℕ) (x : HerbertAge a b c d e) : c = 14 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem herbert_next (a b c d e : ℕ) (x : HerbertAge a b c d e) : e = 15 := by
  have hc := herbert_now a b c d e x
  rcases x with ⟨ha, hb, hnow, hd, he⟩
  omega
theorem herbert_exists : HerbertAge 24 10 14 1 15 := by norm_num [HerbertAge]
theorem herbert_solution : HerbertAge 24 10 14 1 15 ∧
    (∀ a b c d e, HerbertAge a b c d e → c = 14) ∧
    (∀ a b c d e, HerbertAge a b c d e → e = 15) :=
  ⟨herbert_exists, herbert_now, herbert_next⟩

theorem rolls_half_people (a b c d e f g h i : ℕ) (x : DinnerRolls a b c d e f g h i) : b = 8 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  omega
theorem rolls_first (a b c d e f g h i : ℕ) (x : DinnerRolls a b c d e f g h i) : e = 12 := by
  have hb := rolls_half_people a b c d e f g h i x
  rcases x with ⟨ha, hhalf, hc, hd, he, hf, hg, hh, hi⟩
  omega
theorem rolls_second (a b c d e f g h i : ℕ) (x : DinnerRolls a b c d e f g h i) : g = 4 := by
  have hb := rolls_half_people a b c d e f g h i x
  rcases x with ⟨ha, hhalf, hc, hd, he, hf, hg, hh, hi⟩
  omega
theorem rolls_eaten (a b c d e f g h i : ℕ) (x : DinnerRolls a b c d e f g h i) : h = 16 := by
  have he := rolls_first a b c d e f g h i x
  have hg := rolls_second a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, hfirst, hf, hsecond, hh, hi⟩
  omega
theorem rolls_left (a b c d e f g h i : ℕ) (x : DinnerRolls a b c d e f g h i) : i = 24 := by
  have hh := rolls_eaten a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, heaten, hi⟩
  omega
theorem rolls_exists : DinnerRolls 16 8 40 24 12 8 4 16 24 := by norm_num [DinnerRolls]
theorem rolls_solution : DinnerRolls 16 8 40 24 12 8 4 16 24 ∧
    (∀ a b c d e f g h i, DinnerRolls a b c d e f g h i → b = 8) ∧
    (∀ a b c d e f g h i, DinnerRolls a b c d e f g h i → e = 12) ∧
    (∀ a b c d e f g h i, DinnerRolls a b c d e f g h i → g = 4) ∧
    (∀ a b c d e f g h i, DinnerRolls a b c d e f g h i → h = 16) ∧
    (∀ a b c d e f g h i, DinnerRolls a b c d e f g h i → i = 24) :=
  ⟨rolls_exists, rolls_half_people, rolls_first, rolls_second, rolls_eaten, rolls_left⟩

theorem run_monday (a b c d e f g h i j k l m n : ℕ)
    (x : WeeklyRun a b c d e f g h i j k l m n) : g = 6 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn⟩
  simp [ha, hb, hc] at hd
  omega
theorem run_tuesday (a b c d e f g h i j k l m n : ℕ)
    (x : WeeklyRun a b c d e f g h i j k l m n) : h = 3 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn⟩
  simp [ha, hb, he] at hf
  omega
theorem run_wednesday (a b c d e f g h i j k l m n : ℕ)
    (x : WeeklyRun a b c d e f g h i j k l m n) : i = 6 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn⟩
  simp [ha, hb, hg] at hh
  omega
theorem run_thursday (a b c d e f g h i j k l m n : ℕ)
    (x : WeeklyRun a b c d e f g h i j k l m n) : j = 2 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn⟩
  simp [ha, hb, hi] at hj
  omega
theorem run_so_far (a b c d e f g h i j k l m n : ℕ)
    (x : WeeklyRun a b c d e f g h i j k l m n) : k = 17 := by
  have hg := run_monday a b c d e f g h i j k l m n x
  have hh := run_tuesday a b c d e f g h i j k l m n x
  have hi := run_wednesday a b c d e f g h i j k l m n x
  have hj := run_thursday a b c d e f g h i j k l m n x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hmon, htue, hwed, hthu, hk, hl, hm, hn⟩
  omega
theorem run_needed (a b c d e f g h i j k l m n : ℕ)
    (x : WeeklyRun a b c d e f g h i j k l m n) : m = 3 := by
  have hk := run_so_far a b c d e f g h i j k l m n x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hsofar, hl, hm, hn⟩
  omega
theorem run_friday (a b c d e f g h i j k l m n : ℕ)
    (x : WeeklyRun a b c d e f g h i j k l m n) : n = 30 := by
  have hm := run_needed a b c d e f g h i j k l m n x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hneeded, hn⟩
  simp [ha, hb, hm] at hn
  omega
theorem run_exists : WeeklyRun 6 60 60 30 60 20 6 3 6 2 17 20 3 30 := by norm_num [WeeklyRun]
theorem run_solution : WeeklyRun 6 60 60 30 60 20 6 3 6 2 17 20 3 30 ∧
    (∀ a b c d e f g h i j k l m n, WeeklyRun a b c d e f g h i j k l m n → g = 6) ∧
    (∀ a b c d e f g h i j k l m n, WeeklyRun a b c d e f g h i j k l m n → h = 3) ∧
    (∀ a b c d e f g h i j k l m n, WeeklyRun a b c d e f g h i j k l m n → i = 6) ∧
    (∀ a b c d e f g h i j k l m n, WeeklyRun a b c d e f g h i j k l m n → j = 2) ∧
    (∀ a b c d e f g h i j k l m n, WeeklyRun a b c d e f g h i j k l m n → k = 17) ∧
    (∀ a b c d e f g h i j k l m n, WeeklyRun a b c d e f g h i j k l m n → m = 3) ∧
    (∀ a b c d e f g h i j k l m n, WeeklyRun a b c d e f g h i j k l m n → n = 30) :=
  ⟨run_exists, run_monday, run_tuesday, run_wednesday, run_thursday, run_so_far, run_needed, run_friday⟩

theorem car_fast_months (a b c d e f g h i : ℕ) (x : CarRepayment a b c d e f g h i) : d = 24 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  simp [hb, hc] at hd
  exact hd
theorem car_fast_monthly (a b c d e f g h i : ℕ) (x : CarRepayment a b c d e f g h i) : e = 250 := by
  have hd := car_fast_months a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hmonths, he, hf, hg, hh, hi⟩
  simp [ha, hd] at he
  omega
theorem car_slow_months (a b c d e f g h i : ℕ) (x : CarRepayment a b c d e f g h i) : g = 60 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  simp [hb, hf] at hg
  exact hg
theorem car_slow_monthly (a b c d e f g h i : ℕ) (x : CarRepayment a b c d e f g h i) : h = 100 := by
  have hg := car_slow_months a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hmonths, hh, hi⟩
  simp [ha, hg] at hh
  omega
theorem car_extra (a b c d e f g h i : ℕ) (x : CarRepayment a b c d e f g h i) : i = 150 := by
  have he := car_fast_monthly a b c d e f g h i x
  have hh := car_slow_monthly a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, hfast, hf, hg, hslow, hi⟩
  omega
theorem car_exists : CarRepayment 6000 12 2 24 250 5 60 100 150 := by norm_num [CarRepayment]
theorem car_solution : CarRepayment 6000 12 2 24 250 5 60 100 150 ∧
    (∀ a b c d e f g h i, CarRepayment a b c d e f g h i → d = 24) ∧
    (∀ a b c d e f g h i, CarRepayment a b c d e f g h i → e = 250) ∧
    (∀ a b c d e f g h i, CarRepayment a b c d e f g h i → g = 60) ∧
    (∀ a b c d e f g h i, CarRepayment a b c d e f g h i → h = 100) ∧
    (∀ a b c d e f g h i, CarRepayment a b c d e f g h i → i = 150) :=
  ⟨car_exists, car_fast_months, car_fast_monthly, car_slow_months, car_slow_monthly, car_extra⟩

theorem portraits_large_price (a b c d e f g h i j : ℕ) (x : PortraitEarnings a b c d e f g h i j) : c = 10 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  simp [ha, hb] at hc
  exact hc
theorem portraits_small_daily (a b c d e f g h i j : ℕ) (x : PortraitEarnings a b c d e f g h i j) : e = 15 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  simp [ha, hd] at he
  exact he
theorem portraits_large_daily (a b c d e f g h i j : ℕ) (x : PortraitEarnings a b c d e f g h i j) : g = 50 := by
  have hc := portraits_large_price a b c d e f g h i j x
  rcases x with ⟨ha, hb, hprice, hd, he, hf, hg, hh, hi, hj⟩
  simp [hc, hf] at hg
  exact hg
theorem portraits_daily (a b c d e f g h i j : ℕ) (x : PortraitEarnings a b c d e f g h i j) : h = 65 := by
  have he := portraits_small_daily a b c d e f g h i j x
  have hg := portraits_large_daily a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, hsmall, hf, hlarge, hh, hi, hj⟩
  omega
theorem portraits_total (a b c d e f g h i j : ℕ) (x : PortraitEarnings a b c d e f g h i j) : j = 195 := by
  have hh := portraits_daily a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hdaily, hi, hj⟩
  simp [hh, hi] at hj
  exact hj
theorem portraits_exists : PortraitEarnings 5 2 10 3 15 5 50 65 3 195 := by norm_num [PortraitEarnings]
theorem portraits_solution : PortraitEarnings 5 2 10 3 15 5 50 65 3 195 ∧
    (∀ a b c d e f g h i j, PortraitEarnings a b c d e f g h i j → c = 10) ∧
    (∀ a b c d e f g h i j, PortraitEarnings a b c d e f g h i j → e = 15) ∧
    (∀ a b c d e f g h i j, PortraitEarnings a b c d e f g h i j → g = 50) ∧
    (∀ a b c d e f g h i j, PortraitEarnings a b c d e f g h i j → h = 65) ∧
    (∀ a b c d e f g h i j, PortraitEarnings a b c d e f g h i j → j = 195) :=
  ⟨portraits_exists, portraits_large_price, portraits_small_daily,
    portraits_large_daily, portraits_daily, portraits_total⟩

theorem apples_first_days (a b c d e f g h i j k l : ℕ)
    (x : AppleWeeklyAverage a b c d e f g h i j k l) : c = 14 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  simp [ha, hb] at hc
  exact hc
theorem apples_first (a b c d e f g h i j k l : ℕ)
    (x : AppleWeeklyAverage a b c d e f g h i j k l) : d = 14 := by
  have hc := apples_first_days a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hdays, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  omega
theorem apples_next (a b c d e f g h i j k l : ℕ)
    (x : AppleWeeklyAverage a b c d e f g h i j k l) : e = 14 := by
  have hd := apples_first a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hc, hfirst, he, hf, hg, hh, hi, hj, hk, hl⟩
  omega
theorem apples_last_days (a b c d e f g h i j k l : ℕ)
    (x : AppleWeeklyAverage a b c d e f g h i j k l) : g = 14 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  simp [ha, hf] at hg
  exact hg
theorem apples_last (a b c d e f g h i j k l : ℕ)
    (x : AppleWeeklyAverage a b c d e f g h i j k l) : i = 42 := by
  have hg := apples_last_days a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hdays, hh, hi, hj, hk, hl⟩
  simp [hg, hh] at hi
  exact hi
theorem apples_total (a b c d e f g h i j k l : ℕ)
    (x : AppleWeeklyAverage a b c d e f g h i j k l) : k = 70 := by
  have hd := apples_first a b c d e f g h i j k l x
  have he := apples_next a b c d e f g h i j k l x
  have hi := apples_last a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hc, hfirst, hnext, hf, hg, hh, hlast, hj, hk, hl⟩
  omega
theorem apples_average (a b c d e f g h i j k l : ℕ)
    (x : AppleWeeklyAverage a b c d e f g h i j k l) : l = 10 := by
  have hk := apples_total a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, htotal, hl⟩
  simp [hj, hk] at hl
  omega
theorem apples_exists : AppleWeeklyAverage 7 2 14 14 14 2 14 3 42 7 70 10 := by
  norm_num [AppleWeeklyAverage]
theorem apples_solution : AppleWeeklyAverage 7 2 14 14 14 2 14 3 42 7 70 10 ∧
    (∀ a b c d e f g h i j k l, AppleWeeklyAverage a b c d e f g h i j k l → c = 14) ∧
    (∀ a b c d e f g h i j k l, AppleWeeklyAverage a b c d e f g h i j k l → d = 14) ∧
    (∀ a b c d e f g h i j k l, AppleWeeklyAverage a b c d e f g h i j k l → e = 14) ∧
    (∀ a b c d e f g h i j k l, AppleWeeklyAverage a b c d e f g h i j k l → g = 14) ∧
    (∀ a b c d e f g h i j k l, AppleWeeklyAverage a b c d e f g h i j k l → i = 42) ∧
    (∀ a b c d e f g h i j k l, AppleWeeklyAverage a b c d e f g h i j k l → k = 70) ∧
    (∀ a b c d e f g h i j k l, AppleWeeklyAverage a b c d e f g h i j k l → l = 10) :=
  ⟨apples_exists, apples_first_days, apples_first, apples_next,
    apples_last_days, apples_last, apples_total, apples_average⟩

theorem piggy_increase (a b c d e : ℕ) (x : PiggyBank a b c d e) : d = 40 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  simp [ha, hb, hc] at hd
  omega
theorem piggy_total (a b c d e : ℕ) (x : PiggyBank a b c d e) : e = 240 := by
  have hd := piggy_increase a b c d e x
  rcases x with ⟨ha, hb, hc, hincrease, he⟩
  omega
theorem piggy_exists : PiggyBank 200 20 100 40 240 := by norm_num [PiggyBank]
theorem piggy_solution : PiggyBank 200 20 100 40 240 ∧
    (∀ a b c d e, PiggyBank a b c d e → d = 40) ∧
    (∀ a b c d e, PiggyBank a b c d e → e = 240) :=
  ⟨piggy_exists, piggy_increase, piggy_total⟩

theorem candy_drinks (a b c d e f g : ℕ) (x : CandyBarPrice a b c d e f g) : c = 8 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  simp [ha, hb] at hc
  exact hc
theorem candy_total (a b c d e f g : ℕ) (x : CandyBarPrice a b c d e f g) : e = 20 := by
  have hc := candy_drinks a b c d e f g x
  rcases x with ⟨ha, hb, hdrink, hd, he, hf, hg⟩
  omega
theorem candy_price (a b c d e f g : ℕ) (x : CandyBarPrice a b c d e f g) : g = 4 := by
  have he := candy_total a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, htotal, hf, hg⟩
  simp [he, hf] at hg
  omega
theorem candy_exists : CandyBarPrice 2 4 8 28 20 5 4 := by norm_num [CandyBarPrice]
theorem candy_solution : CandyBarPrice 2 4 8 28 20 5 4 ∧
    (∀ a b c d e f g, CandyBarPrice a b c d e f g → c = 8) ∧
    (∀ a b c d e f g, CandyBarPrice a b c d e f g → e = 20) ∧
    (∀ a b c d e f g, CandyBarPrice a b c d e f g → g = 4) :=
  ⟨candy_exists, candy_drinks, candy_total, candy_price⟩

end LemmaWeave.Tests.GSM8KDaily0910D
