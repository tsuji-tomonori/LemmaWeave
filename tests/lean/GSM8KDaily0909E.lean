import LemmaWeave.Problems.GSM8K.Daily0909EModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0909E
open LemmaWeave.Problems.GSM8K.Daily0909E

theorem interest_principal (d x p a y i f : ℕ)
    (h : SimpleInterest d x p a y i f) : p = 600 := by
  rcases h with ⟨hd, hx, hp, ha, hy, hi, hf⟩
  omega
theorem interest_annual (d x p a y i f : ℕ)
    (h : SimpleInterest d x p a y i f) : a = 60 := by
  have hp := interest_principal d x p a y i f h
  have ha := h.2.2.2.1
  omega
theorem interest_total (d x p a y i f : ℕ)
    (h : SimpleInterest d x p a y i f) : i = 120 := by
  have ha := interest_annual d x p a y i f h
  rcases h with ⟨hd, hx, hp, hannual, hy, hi, hf⟩
  simp [hy, ha] at hi
  exact hi
theorem interest_final (d x p a y i f : ℕ)
    (h : SimpleInterest d x p a y i f) : f = 720 := by
  have hp := interest_principal d x p a y i f h
  have hi := interest_total d x p a y i f h
  have hf := h.2.2.2.2.2.2
  omega
theorem interest_exists : SimpleInterest 400 200 600 60 2 120 720 := by
  norm_num [SimpleInterest]
theorem interest_solution : SimpleInterest 400 200 600 60 2 120 720 ∧
    (∀ d x p a y i f, SimpleInterest d x p a y i f → p = 600) ∧
    (∀ d x p a y i f, SimpleInterest d x p a y i f → a = 60) ∧
    (∀ d x p a y i f, SimpleInterest d x p a y i f → i = 120) ∧
    (∀ d x p a y i f, SimpleInterest d x p a y i f → f = 720) :=
  ⟨interest_exists, interest_principal, interest_annual, interest_total, interest_final⟩

theorem mango_after_market (t m a c r p n : ℕ)
    (h : MangoHarvest t m a c r p n) : a = 40 := by
  rcases h with ⟨ht, hm, ha, hc, hr, hp, hn⟩
  omega
theorem mango_community (t m a c r p n : ℕ)
    (h : MangoHarvest t m a c r p n) : c = 20 := by
  have ha := mango_after_market t m a c r p n h
  have hc := h.2.2.2.1
  omega
theorem mango_remaining (t m a c r p n : ℕ)
    (h : MangoHarvest t m a c r p n) : r = 20 := by
  have ha := mango_after_market t m a c r p n h
  have hc := mango_community t m a c r p n h
  have hr := h.2.2.2.2.1
  omega
theorem mango_count (t m a c r p n : ℕ)
    (h : MangoHarvest t m a c r p n) : n = 160 := by
  have hr := mango_remaining t m a c r p n h
  rcases h with ⟨ht, hm, ha, hc, hremain, hp, hn⟩
  simp [hr, hp] at hn
  exact hn
theorem mango_exists : MangoHarvest 60 20 40 20 20 8 160 := by
  norm_num [MangoHarvest]
theorem mango_solution : MangoHarvest 60 20 40 20 20 8 160 ∧
    (∀ t m a c r p n, MangoHarvest t m a c r p n → a = 40) ∧
    (∀ t m a c r p n, MangoHarvest t m a c r p n → c = 20) ∧
    (∀ t m a c r p n, MangoHarvest t m a c r p n → r = 20) ∧
    (∀ t m a c r p n, MangoHarvest t m a c r p n → n = 160) :=
  ⟨mango_exists, mango_after_market, mango_community, mango_remaining, mango_count⟩

theorem food_juice (s j u m t : ℕ) (h : TripFood s j u m t) : j = 8 := by
  rcases h with ⟨hs, hj, hu, hm, ht⟩
  omega
theorem food_subtotal (s j u m t : ℕ) (h : TripFood s j u m t) : u = 12 := by
  have hj := food_juice s j u m t h
  rcases h with ⟨hs, hjuice, hu, hm, ht⟩
  omega
theorem food_milk (s j u m t : ℕ) (h : TripFood s j u m t) : m = 9 := by
  have hu := food_subtotal s j u m t h
  have hm := h.2.2.2.1
  omega
theorem food_total (s j u m t : ℕ) (h : TripFood s j u m t) : t = 21 := by
  have hu := food_subtotal s j u m t h
  have hm := food_milk s j u m t h
  have ht := h.2.2.2.2
  omega
theorem food_exists : TripFood 4 8 12 9 21 := by norm_num [TripFood]
theorem food_solution : TripFood 4 8 12 9 21 ∧
    (∀ s j u m t, TripFood s j u m t → j = 8) ∧
    (∀ s j u m t, TripFood s j u m t → u = 12) ∧
    (∀ s j u m t, TripFood s j u m t → m = 9) ∧
    (∀ s j u m t, TripFood s j u m t → t = 21) :=
  ⟨food_exists, food_juice, food_subtotal, food_milk, food_total⟩

theorem beads_total (b y t p e d l r : ℕ) (h : BeadRemoval b y t p e d l r) : t = 39 := by
  rcases h with ⟨hb, hy, ht, hp, he, hd, hl, hr⟩
  omega
theorem beads_each (b y t p e d l r : ℕ) (h : BeadRemoval b y t p e d l r) : e = 13 := by
  have ht := beads_total b y t p e d l r h
  rcases h with ⟨hb, hy, htotal, hp, he, hd, hl, hr⟩
  simp [hp] at he
  omega
theorem beads_left (b y t p e d l r : ℕ) (h : BeadRemoval b y t p e d l r) : l = 3 := by
  rcases h with ⟨hb, hy, ht, hp, he, hd, hl, hr⟩
  omega
theorem beads_removed (b y t p e d l r : ℕ) (h : BeadRemoval b y t p e d l r) : r = 10 := by
  have he := beads_each b y t p e d l r h
  have hl := beads_left b y t p e d l r h
  have hr := h.2.2.2.2.2.2.2
  omega
theorem beads_exists : BeadRemoval 23 16 39 3 13 6 3 10 := by norm_num [BeadRemoval]
theorem beads_solution : BeadRemoval 23 16 39 3 13 6 3 10 ∧
    (∀ b y t p e d l r, BeadRemoval b y t p e d l r → t = 39) ∧
    (∀ b y t p e d l r, BeadRemoval b y t p e d l r → e = 13) ∧
    (∀ b y t p e d l r, BeadRemoval b y t p e d l r → l = 3) ∧
    (∀ b y t p e d l r, BeadRemoval b y t p e d l r → r = 10) :=
  ⟨beads_exists, beads_total, beads_each, beads_left, beads_removed⟩

theorem bicycle_prior (g d y p f : ℕ) (h : BicycleTrip g d y p f) : p = 144 := by
  rcases h with ⟨hg, hd, hy, hp, hf⟩
  simp [hd, hy] at hp
  exact hp
theorem bicycle_final (g d y p f : ℕ) (h : BicycleTrip g d y p f) : f = 6 := by
  have hp := bicycle_prior g d y p f h
  rcases h with ⟨hg, hd, hy, hprior, hf⟩
  omega
theorem bicycle_exists : BicycleTrip 150 12 12 144 6 := by norm_num [BicycleTrip]
theorem bicycle_solution : BicycleTrip 150 12 12 144 6 ∧
    (∀ g d y p f, BicycleTrip g d y p f → p = 144) ∧
    (∀ g d y p f, BicycleTrip g d y p f → f = 6) :=
  ⟨bicycle_exists, bicycle_prior, bicycle_final⟩

theorem haircut_increase (w i e : ℕ) (h : WeekendHaircut w i e) : i = 9 := by
  rcases h with ⟨hw, hi, he⟩
  omega
theorem haircut_weekend (w i e : ℕ) (h : WeekendHaircut w i e) : e = 27 := by
  have hi := haircut_increase w i e h
  rcases h with ⟨hw, hincrease, he⟩
  omega
theorem haircut_exists : WeekendHaircut 18 9 27 := by norm_num [WeekendHaircut]
theorem haircut_solution : WeekendHaircut 18 9 27 ∧
    (∀ w i e, WeekendHaircut w i e → i = 9) ∧
    (∀ w i e, WeekendHaircut w i e → e = 27) :=
  ⟨haircut_exists, haircut_increase, haircut_weekend⟩

theorem party_people (o p b q c s n h a t : ℕ)
    (x : BlockParty o p b q c s n h a t) : p = 4 := by
  rcases x with ⟨ho, hp, hb, hq, hc, hs, hn, hh, ha, ht⟩
  omega
theorem party_burger_cost (o p b q c s n h a t : ℕ)
    (x : BlockParty o p b q c s n h a t) : c = 300 := by
  rcases x with ⟨ho, hp, hb, hq, hc, hs, hn, hh, ha, ht⟩
  simp [hb, hq] at hc
  exact hc
theorem party_non_alcohol (o p b q c s n h a t : ℕ)
    (x : BlockParty o p b q c s n h a t) : n = 380 := by
  have hc := party_burger_cost o p b q c s n h a t x
  rcases x with ⟨ho, hp, hb, hq, hcost, hs, hn, hh, ha, ht⟩
  omega
theorem party_share (o p b q c s n h a t : ℕ)
    (x : BlockParty o p b q c s n h a t) : h = 95 := by
  have hp := party_people o p b q c s n h a t x
  have hn := party_non_alcohol o p b q c s n h a t x
  have hh := x.2.2.2.2.2.2.2.1
  simp [hp] at hh
  omega
theorem party_total (o p b q c s n h a t : ℕ)
    (x : BlockParty o p b q c s n h a t) : t = 295 := by
  have hh := party_share o p b q c s n h a t x
  rcases x with ⟨ho, hp, hb, hq, hc, hs, hn, hshare, ha, ht⟩
  omega
theorem party_exists : BlockParty 3 4 100 3 300 80 380 95 200 295 := by
  norm_num [BlockParty]
theorem party_solution : BlockParty 3 4 100 3 300 80 380 95 200 295 ∧
    (∀ o p b q c s n h a t, BlockParty o p b q c s n h a t → p = 4) ∧
    (∀ o p b q c s n h a t, BlockParty o p b q c s n h a t → c = 300) ∧
    (∀ o p b q c s n h a t, BlockParty o p b q c s n h a t → n = 380) ∧
    (∀ o p b q c s n h a t, BlockParty o p b q c s n h a t → h = 95) ∧
    (∀ o p b q c s n h a t, BlockParty o p b q c s n h a t → t = 295) :=
  ⟨party_exists, party_people, party_burger_cost, party_non_alcohol, party_share, party_total⟩

theorem budget_policing (b p e u s : ℕ) (h : TownBudget b p e u s) : p = 16 := by
  rcases h with ⟨hb, hp, he, hu, hs⟩
  omega
theorem budget_used (b p e u s : ℕ) (h : TownBudget b p e u s) : u = 28 := by
  have hp := budget_policing b p e u s h
  rcases h with ⟨hb, hpolice, he, hu, hs⟩
  omega
theorem budget_spaces (b p e u s : ℕ) (h : TownBudget b p e u s) : s = 4 := by
  have hu := budget_used b p e u s h
  rcases h with ⟨hb, hp, he, hused, hs⟩
  omega
theorem budget_exists : TownBudget 32 16 12 28 4 := by norm_num [TownBudget]
theorem budget_solution : TownBudget 32 16 12 28 4 ∧
    (∀ b p e u s, TownBudget b p e u s → p = 16) ∧
    (∀ b p e u s, TownBudget b p e u s → u = 28) ∧
    (∀ b p e u s, TownBudget b p e u s → s = 4) :=
  ⟨budget_exists, budget_policing, budget_used, budget_spaces⟩

theorem games_premium_cost (t p c r m n l q a : ℕ)
    (h : VideoGames t p c r m n l q a) : c = 960 := by
  rcases h with ⟨ht, hp, hc, hr, hm, hn, hl, hq, ha⟩
  simp [hp] at hc
  exact hc
theorem games_rest (t p c r m n l q a : ℕ)
    (h : VideoGames t p c r m n l q a) : r = 266 := by
  rcases h with ⟨ht, hp, hc, hr, hm, hn, hl, hq, ha⟩
  omega
theorem games_mid (t p c r m n l q a : ℕ)
    (h : VideoGames t p c r m n l q a) : m = 133 := by
  have hr := games_rest t p c r m n l q a h
  have hm := h.2.2.2.2.1
  omega
theorem games_mid_cost (t p c r m n l q a : ℕ)
    (h : VideoGames t p c r m n l q a) : n = 931 := by
  have hm := games_mid t p c r m n l q a h
  rcases h with ⟨ht, hp, hc, hr, hmid, hn, hl, hq, ha⟩
  simp [hm] at hn
  exact hn
theorem games_low (t p c r m n l q a : ℕ)
    (h : VideoGames t p c r m n l q a) : l = 133 := by
  have hr := games_rest t p c r m n l q a h
  have hm := games_mid t p c r m n l q a h
  have hl := h.2.2.2.2.2.2.1
  omega
theorem games_low_cost (t p c r m n l q a : ℕ)
    (h : VideoGames t p c r m n l q a) : q = 399 := by
  have hl := games_low t p c r m n l q a h
  rcases h with ⟨ht, hp, hc, hr, hm, hn, hlow, hq, ha⟩
  simp [hl] at hq
  exact hq
theorem games_total (t p c r m n l q a : ℕ)
    (h : VideoGames t p c r m n l q a) : a = 2290 := by
  have hc := games_premium_cost t p c r m n l q a h
  have hn := games_mid_cost t p c r m n l q a h
  have hq := games_low_cost t p c r m n l q a h
  have ha := h.2.2.2.2.2.2.2.2
  omega
theorem games_exists : VideoGames 346 80 960 266 133 931 133 399 2290 := by
  norm_num [VideoGames]
theorem games_solution : VideoGames 346 80 960 266 133 931 133 399 2290 ∧
    (∀ t p c r m n l q a, VideoGames t p c r m n l q a → c = 960) ∧
    (∀ t p c r m n l q a, VideoGames t p c r m n l q a → r = 266) ∧
    (∀ t p c r m n l q a, VideoGames t p c r m n l q a → m = 133) ∧
    (∀ t p c r m n l q a, VideoGames t p c r m n l q a → n = 931) ∧
    (∀ t p c r m n l q a, VideoGames t p c r m n l q a → l = 133) ∧
    (∀ t p c r m n l q a, VideoGames t p c r m n l q a → q = 399) ∧
    (∀ t p c r m n l q a, VideoGames t p c r m n l q a → a = 2290) :=
  ⟨games_exists, games_premium_cost, games_rest, games_mid, games_mid_cost,
    games_low, games_low_cost, games_total⟩

theorem football_per_game (t p g e d c v a r b : ℕ)
    (h : FootballRecord t p g e d c v a r b) : e = 24 := by
  rcases h with ⟨ht, hp, hg, he, hd, hc, hv, ha, hr, hb⟩
  simp [ht, hp] at he
  exact he
theorem football_touchdowns (t p g e d c v a r b : ℕ)
    (h : FootballRecord t p g e d c v a r b) : d = 360 := by
  have he := football_per_game t p g e d c v a r b h
  rcases h with ⟨ht, hp, hg, hper, hd, hc, hv, ha, hr, hb⟩
  simp [hg, he] at hd
  exact hd
theorem football_conversions (t p g e d c v a r b : ℕ)
    (h : FootballRecord t p g e d c v a r b) : v = 12 := by
  rcases h with ⟨ht, hp, hg, he, hd, hc, hv, ha, hr, hb⟩
  omega
theorem football_total (t p g e d c v a r b : ℕ)
    (h : FootballRecord t p g e d c v a r b) : a = 372 := by
  have hd := football_touchdowns t p g e d c v a r b h
  have hv := football_conversions t p g e d c v a r b h
  have ha := h.2.2.2.2.2.2.2.1
  omega
theorem football_beaten (t p g e d c v a r b : ℕ)
    (h : FootballRecord t p g e d c v a r b) : b = 72 := by
  have ha := football_total t p g e d c v a r b h
  rcases h with ⟨ht, hp, hg, he, hd, hc, hv, htotal, hr, hb⟩
  omega
theorem football_exists : FootballRecord 4 6 15 24 360 6 12 372 300 72 := by
  norm_num [FootballRecord]
theorem football_solution : FootballRecord 4 6 15 24 360 6 12 372 300 72 ∧
    (∀ t p g e d c v a r b, FootballRecord t p g e d c v a r b → e = 24) ∧
    (∀ t p g e d c v a r b, FootballRecord t p g e d c v a r b → d = 360) ∧
    (∀ t p g e d c v a r b, FootballRecord t p g e d c v a r b → v = 12) ∧
    (∀ t p g e d c v a r b, FootballRecord t p g e d c v a r b → a = 372) ∧
    (∀ t p g e d c v a r b, FootballRecord t p g e d c v a r b → b = 72) :=
  ⟨football_exists, football_per_game, football_touchdowns, football_conversions,
    football_total, football_beaten⟩

end LemmaWeave.Tests.GSM8KDaily0909E

#print axioms LemmaWeave.Tests.GSM8KDaily0909E.interest_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909E.mango_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909E.food_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909E.beads_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909E.bicycle_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909E.haircut_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909E.party_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909E.budget_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909E.games_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909E.football_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909E.interest_solution to "work/gsm8k-daily16-interest-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909E.mango_solution to "work/gsm8k-daily16-mango-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909E.food_solution to "work/gsm8k-daily16-food-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909E.beads_solution to "work/gsm8k-daily16-beads-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909E.bicycle_solution to "work/gsm8k-daily16-bicycle-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909E.haircut_solution to "work/gsm8k-daily16-haircut-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909E.party_solution to "work/gsm8k-daily16-party-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909E.budget_solution to "work/gsm8k-daily16-budget-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909E.games_solution to "work/gsm8k-daily16-games-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909E.football_solution to "work/gsm8k-daily16-football-graph.json"
