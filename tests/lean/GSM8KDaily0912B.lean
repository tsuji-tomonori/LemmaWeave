import LemmaWeave.Problems.GSM8K.Daily0912BModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0912B
open LemmaWeave.Problems.GSM8K.Daily0912B

theorem marble_katrina (a b c d e : ℕ) (x : MarbleCounts a b c d e) : a = 17 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha] at hb
  omega
theorem marble_twice (a b c d e : ℕ) (x : MarbleCounts a b c d e) : b = 34 := by
  have ha0 := marble_katrina a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha0] at hc
  exact hc
theorem marble_amanda (a b c d e : ℕ) (x : MarbleCounts a b c d e) : c = 22 := by
  have hb0 := marble_twice a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hb0] at hd
  omega
theorem marble_difference (a b c d e : ℕ) (x : MarbleCounts a b c d e) : e = 63 := by
  have hc0 := marble_amanda a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hc0] at he
  omega
theorem marble_solution : MarbleCounts 17 34 22 85 63 ∧
    (∀ a b c d e, MarbleCounts a b c d e → a = 17) ∧
    (∀ a b c d e, MarbleCounts a b c d e → b = 34) ∧
    (∀ a b c d e, MarbleCounts a b c d e → c = 22) ∧
    (∀ a b c d e, MarbleCounts a b c d e → e = 63) :=
  ⟨by norm_num [MarbleCounts], marble_katrina, marble_twice, marble_amanda, marble_difference⟩

theorem raise_hansel (a b c d e f g h : ℕ) (x : SalaryRaise a b c d e f g h) : d = 33000 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at hc hd
  omega
theorem raise_gretel (a b c d e f g h : ℕ) (x : SalaryRaise a b c d e f g h) : g = 34500 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, he] at hf hg
  omega
theorem raise_difference (a b c d e f g h : ℕ) (x : SalaryRaise a b c d e f g h) : h = 1500 := by
  have hd0 := raise_hansel a b c d e f g h x
  have hg0 := raise_gretel a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hd0, hg0] at hh
  omega
theorem raise_solution : SalaryRaise 30000 10 3000 33000 15 4500 34500 1500 ∧
    (∀ a b c d e f g h, SalaryRaise a b c d e f g h → d = 33000) ∧
    (∀ a b c d e f g h, SalaryRaise a b c d e f g h → g = 34500) ∧
    (∀ a b c d e f g h, SalaryRaise a b c d e f g h → h = 1500) :=
  ⟨by norm_num [SalaryRaise], raise_hansel, raise_gretel, raise_difference⟩

theorem reading_after_first (a b c d e f g h : ℕ) (x : ReadingSeries a b c d e f g h) : d = 10 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hc] at hd
  omega
theorem reading_second (a b c d e f g h : ℕ) (x : ReadingSeries a b c d e f g h) : e = 5 := by
  have hd0 := reading_after_first a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hd0] at he
  omega
theorem reading_remaining_books (a b c d e f g h : ℕ) (x : ReadingSeries a b c d e f g h) : g = 5 := by
  have he0 := reading_second a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hc, he0] at hf hg
  omega
theorem reading_remaining_pages (a b c d e f g h : ℕ) (x : ReadingSeries a b c d e f g h) : h = 1000 := by
  have hg0 := reading_remaining_books a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hb, hg0] at hh
  exact hh
theorem reading_solution : ReadingSeries 14 200 4 10 5 9 5 1000 ∧
    (∀ a b c d e f g h, ReadingSeries a b c d e f g h → d = 10) ∧
    (∀ a b c d e f g h, ReadingSeries a b c d e f g h → e = 5) ∧
    (∀ a b c d e f g h, ReadingSeries a b c d e f g h → g = 5) ∧
    (∀ a b c d e f g h, ReadingSeries a b c d e f g h → h = 1000) :=
  ⟨by norm_num [ReadingSeries], reading_after_first, reading_second,
    reading_remaining_books, reading_remaining_pages⟩

theorem puppy_sale_cost (a b c d e f g : ℕ) (x : PuppyPrices a b c d e f g) : d = 450 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hb, hc] at hd
  exact hd
theorem puppy_other_cost (a b c d e f g : ℕ) (x : PuppyPrices a b c d e f g) : f = 350 := by
  have hd0 := puppy_sale_cost a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hd0] at hf
  omega
theorem puppy_each (a b c d e f g : ℕ) (x : PuppyPrices a b c d e f g) : g = 175 := by
  have hf0 := puppy_other_cost a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [he, hf0] at hg
  omega
theorem puppy_solution : PuppyPrices 800 3 150 450 2 350 175 ∧
    (∀ a b c d e f g, PuppyPrices a b c d e f g → d = 450) ∧
    (∀ a b c d e f g, PuppyPrices a b c d e f g → f = 350) ∧
    (∀ a b c d e f g, PuppyPrices a b c d e f g → g = 175) :=
  ⟨by norm_num [PuppyPrices], puppy_sale_cost, puppy_other_cost, puppy_each⟩

theorem property_area (a b c d e : ℕ) (x : PropertyPrice a b c d e) : c = 3400 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc
theorem property_total (a b c d e : ℕ) (x : PropertyPrice a b c d e) : e = 333200 := by
  have hc0 := property_area a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hc0, hd] at he
  exact he
theorem property_solution : PropertyPrice 2400 1000 3400 98 333200 ∧
    (∀ a b c d e, PropertyPrice a b c d e → c = 3400) ∧
    (∀ a b c d e, PropertyPrice a b c d e → e = 333200) :=
  ⟨by norm_num [PropertyPrice], property_area, property_total⟩

theorem savings_april (a b c d e f g : ℕ) (x : DoublingSavings a b c d e f g) : d = 16 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha] at hb hc hd
  omega
theorem savings_may (a b c d e f g : ℕ) (x : DoublingSavings a b c d e f g) : e = 32 := by
  have hd0 := savings_april a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hd0] at he
  exact he
theorem savings_june (a b c d e f g : ℕ) (x : DoublingSavings a b c d e f g) : f = 64 := by
  have he0 := savings_may a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [he0] at hf
  exact hf
theorem savings_total (a b c d e f g : ℕ) (x : DoublingSavings a b c d e f g) : g = 126 := by
  have hd0 := savings_april a b c d e f g x
  have he0 := savings_may a b c d e f g x
  have hf0 := savings_june a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha] at hb hc
  norm_num [ha, hb, hc, hd0, he0, hf0] at hg
  exact hg
theorem savings_solution : DoublingSavings 2 4 8 16 32 64 126 ∧
    (∀ a b c d e f g, DoublingSavings a b c d e f g → d = 16) ∧
    (∀ a b c d e f g, DoublingSavings a b c d e f g → e = 32) ∧
    (∀ a b c d e f g, DoublingSavings a b c d e f g → f = 64) ∧
    (∀ a b c d e f g, DoublingSavings a b c d e f g → g = 126) :=
  ⟨by norm_num [DoublingSavings], savings_april, savings_may, savings_june, savings_total⟩

theorem card_pair (a b c d e f g : ℕ) (x : CardCost a b c d e f g) : c = 300 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  exact hc
theorem card_cents (a b c d e f g : ℕ) (x : CardCost a b c d e f g) : e = 1800 := by
  have hc0 := card_pair a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hc0, hd] at he
  exact he
theorem card_dollars (a b c d e f g : ℕ) (x : CardCost a b c d e f g) : g = 18 := by
  have he0 := card_cents a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [he0, hf] at hg
  omega
theorem card_solution : CardCost 125 175 300 6 1800 100 18 ∧
    (∀ a b c d e f g, CardCost a b c d e f g → c = 300) ∧
    (∀ a b c d e f g, CardCost a b c d e f g → e = 1800) ∧
    (∀ a b c d e f g, CardCost a b c d e f g → g = 18) :=
  ⟨by norm_num [CardCost], card_pair, card_cents, card_dollars⟩

theorem account_each (a b c d e : ℕ) (x : AccountBalances a b c d e) : c = 864 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  omega
theorem account_combined (a b c d e : ℕ) (x : AccountBalances a b c d e) : e = 1728 := by
  have hc0 := account_each a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hc0, hd] at he
  exact he
theorem account_solution : AccountBalances 3456 4 864 2 1728 ∧
    (∀ a b c d e, AccountBalances a b c d e → c = 864) ∧
    (∀ a b c d e, AccountBalances a b c d e → e = 1728) :=
  ⟨by norm_num [AccountBalances], account_each, account_combined⟩

theorem stickers_as_many (a b : ℕ) (x : StickerScale 25 a b) : b = 2125 := by
  rcases x with ⟨ha, hb⟩
  norm_num [ha] at hb
  exact hb
theorem stickers_more_than (a b : ℕ) (x : StickerScale 26 a b) : b = 2210 := by
  rcases x with ⟨ha, hb⟩
  norm_num [ha] at hb
  exact hb
theorem stickers_solution : StickerScale 25 85 2125 ∧
    (∀ a b, StickerScale 25 a b → b = 2125) ∧ StickerScale 26 85 2210 ∧
    (∀ a b, StickerScale 26 a b → b = 2210) ∧ 2125 ≠ 2210 :=
  ⟨by norm_num [StickerScale], stickers_as_many, by norm_num [StickerScale],
    stickers_more_than, by norm_num⟩

theorem lottery_prices (a b c d e f g h : ℕ) (x : LotteryPrize a b c d e f g h) :
    b = 2 ∧ c = 3 ∧ d = 4 ∧ e = 5 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  omega
theorem lottery_revenue (a b c d e f g h : ℕ) (x : LotteryPrize a b c d e f g h) : f = 15 := by
  have hp := lottery_prices a b c d e f g h x
  rcases hp with ⟨hb0, hc0, hd0, he0⟩
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb0, hc0, hd0, he0] at hf
  exact hf
theorem lottery_prize (a b c d e f g h : ℕ) (x : LotteryPrize a b c d e f g h) : h = 11 := by
  have hf0 := lottery_revenue a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hf0, hg] at hh
  omega
theorem lottery_solution : LotteryPrize 1 2 3 4 5 15 4 11 ∧
    (∀ a b c d e f g h, LotteryPrize a b c d e f g h → b = 2 ∧ c = 3 ∧ d = 4 ∧ e = 5) ∧
    (∀ a b c d e f g h, LotteryPrize a b c d e f g h → f = 15) ∧
    (∀ a b c d e f g h, LotteryPrize a b c d e f g h → h = 11) :=
  ⟨by norm_num [LotteryPrize], lottery_prices, lottery_revenue, lottery_prize⟩

end LemmaWeave.Tests.GSM8KDaily0912B

#print axioms LemmaWeave.Tests.GSM8KDaily0912B.marble_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912B.raise_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912B.reading_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912B.puppy_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912B.property_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912B.savings_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912B.card_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912B.account_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912B.stickers_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912B.lottery_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912B.marble_solution to "work/gsm8k-daily28-marble-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912B.raise_solution to "work/gsm8k-daily28-raise-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912B.reading_solution to "work/gsm8k-daily28-reading-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912B.puppy_solution to "work/gsm8k-daily28-puppy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912B.property_solution to "work/gsm8k-daily28-property-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912B.savings_solution to "work/gsm8k-daily28-savings-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912B.card_solution to "work/gsm8k-daily28-card-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912B.account_solution to "work/gsm8k-daily28-account-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912B.stickers_solution to "work/gsm8k-daily28-stickers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912B.lottery_solution to "work/gsm8k-daily28-lottery-graph.json"
