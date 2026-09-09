import LemmaWeave.Problems.GSM8K.Daily0910AModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0910A
open LemmaWeave.Problems.GSM8K.Daily0910A

theorem cards_tuesday (m t w p f : ℕ) (h : CardWeek m t w p f) : t = 15 := by
  rcases h with ⟨hm, ht, hw, hp, hf⟩
  omega
theorem cards_wednesday (m t w p f : ℕ) (h : CardWeek m t w p f) : w = 27 := by
  have ht := cards_tuesday m t w p f h
  rcases h with ⟨hm, htuesday, hw, hp, hf⟩
  omega
theorem cards_purchase (m t w p f : ℕ) (h : CardWeek m t w p f) : p = 5 := by
  have ht := cards_tuesday m t w p f h
  rcases h with ⟨hm, htuesday, hw, hp, hf⟩
  omega
theorem cards_final (m t w p f : ℕ) (h : CardWeek m t w p f) : f = 32 := by
  have hw := cards_wednesday m t w p f h
  have hp := cards_purchase m t w p f h
  rcases h with ⟨hm, ht, hwednesday, hpurchase, hf⟩
  omega
theorem cards_exists : CardWeek 30 15 27 5 32 := by norm_num [CardWeek]
theorem cards_solution : CardWeek 30 15 27 5 32 ∧
    (∀ m t w p f, CardWeek m t w p f → t = 15) ∧
    (∀ m t w p f, CardWeek m t w p f → w = 27) ∧
    (∀ m t w p f, CardWeek m t w p f → p = 5) ∧
    (∀ m t w p f, CardWeek m t w p f → f = 32) :=
  ⟨cards_exists, cards_tuesday, cards_wednesday, cards_purchase, cards_final⟩

theorem bus_return (o e r t p m h v s a : ℕ) (x : BusTour o e r t p m h v s a) : r = 65 := by
  rcases x with ⟨ho, he, hr, ht, hp, hm, hh, hv, hs, ha⟩
  omega
theorem bus_miles (o e r t p m h v s a : ℕ) (x : BusTour o e r t p m h v s a) : t = 120 := by
  have hr := bus_return o e r t p m h v s a x
  rcases x with ⟨ho, he, hreturn, ht, hp, hm, hh, hv, hs, ha⟩
  omega
theorem bus_minutes (o e r t p m h v s a : ℕ) (x : BusTour o e r t p m h v s a) : m = 240 := by
  have ht := bus_miles o e r t p m h v s a x
  rcases x with ⟨ho, he, hr, htotal, hp, hm, hh, hv, hs, ha⟩
  simp [ht, hp] at hm
  exact hm
theorem bus_travel_hours (o e r t p m h v s a : ℕ) (x : BusTour o e r t p m h v s a) : v = 4 := by
  have hm := bus_minutes o e r t p m h v s a x
  rcases x with ⟨ho, he, hr, ht, hp, hminutes, hh, hv, hs, ha⟩
  omega
theorem bus_total (o e r t p m h v s a : ℕ) (x : BusTour o e r t p m h v s a) : a = 6 := by
  have hv := bus_travel_hours o e r t p m h v s a x
  rcases x with ⟨ho, he, hr, ht, hp, hm, hh, htravel, hs, ha⟩
  omega
theorem bus_exists : BusTour 55 10 65 120 2 240 60 4 2 6 := by norm_num [BusTour]
theorem bus_solution : BusTour 55 10 65 120 2 240 60 4 2 6 ∧
    (∀ o e r t p m h v s a, BusTour o e r t p m h v s a → r = 65) ∧
    (∀ o e r t p m h v s a, BusTour o e r t p m h v s a → t = 120) ∧
    (∀ o e r t p m h v s a, BusTour o e r t p m h v s a → m = 240) ∧
    (∀ o e r t p m h v s a, BusTour o e r t p m h v s a → v = 4) ∧
    (∀ o e r t p m h v s a, BusTour o e r t p m h v s a → a = 6) :=
  ⟨bus_exists, bus_return, bus_miles, bus_minutes, bus_travel_hours, bus_total⟩

theorem movies_minutes (d h e m t w a : ℕ) (x : MovieMarathon d h e m t w a) : m = 270 := by
  rcases x with ⟨hd, hh, he, hm, ht, hw, ha⟩
  simp [hh, he] at hm
  exact hm
theorem movies_tuesday (d h e m t w a : ℕ) (x : MovieMarathon d h e m t w a) : t = 3 := by
  have hm := movies_minutes d h e m t w a x
  rcases x with ⟨hd, hh, he, hminutes, ht, hw, ha⟩
  omega
theorem movies_wednesday (d h e m t w a : ℕ) (x : MovieMarathon d h e m t w a) : w = 6 := by
  have ht := movies_tuesday d h e m t w a x
  rcases x with ⟨hd, hh, he, hm, htuesday, hw, ha⟩
  omega
theorem movies_total (d h e m t w a : ℕ) (x : MovieMarathon d h e m t w a) : a = 9 := by
  have ht := movies_tuesday d h e m t w a x
  have hw := movies_wednesday d h e m t w a x
  rcases x with ⟨hd, hh, he, hm, htuesday, hwednesday, ha⟩
  omega
theorem movies_exists : MovieMarathon 90 4 30 270 3 6 9 := by norm_num [MovieMarathon]
theorem movies_solution : MovieMarathon 90 4 30 270 3 6 9 ∧
    (∀ d h e m t w a, MovieMarathon d h e m t w a → m = 270) ∧
    (∀ d h e m t w a, MovieMarathon d h e m t w a → t = 3) ∧
    (∀ d h e m t w a, MovieMarathon d h e m t w a → w = 6) ∧
    (∀ d h e m t w a, MovieMarathon d h e m t w a → a = 9) :=
  ⟨movies_exists, movies_minutes, movies_tuesday, movies_wednesday, movies_total⟩

theorem film_previous_minutes (h p r i n c d t : ℕ)
    (x : FilmProduction h p r i n c d t) : p = 120 := by
  rcases x with ⟨hh, hp, hr, hi, hn, hc, hd, ht⟩
  simp [hh] at hp
  exact hp
theorem film_increase (h p r i n c d t : ℕ)
    (x : FilmProduction h p r i n c d t) : i = 72 := by
  have hp := film_previous_minutes h p r i n c d t x
  rcases x with ⟨hh, hprevious, hr, hi, hn, hc, hd, ht⟩
  omega
theorem film_new_minutes (h p r i n c d t : ℕ)
    (x : FilmProduction h p r i n c d t) : n = 192 := by
  have hp := film_previous_minutes h p r i n c d t x
  have hi := film_increase h p r i n c d t x
  rcases x with ⟨hh, hprevious, hr, hincrease, hn, hc, hd, ht⟩
  omega
theorem film_new_rate (h p r i n c d t : ℕ)
    (x : FilmProduction h p r i n c d t) : d = 100 := by
  rcases x with ⟨hh, hp, hr, hi, hn, hc, hd, ht⟩
  omega
theorem film_total (h p r i n c d t : ℕ)
    (x : FilmProduction h p r i n c d t) : t = 19200 := by
  have hn := film_new_minutes h p r i n c d t x
  have hd := film_new_rate h p r i n c d t x
  rcases x with ⟨hh, hp, hr, hi, hnew, hc, hrate, ht⟩
  simp [hn, hd] at ht
  exact ht
theorem film_exists : FilmProduction 2 120 60 72 192 50 100 19200 := by
  norm_num [FilmProduction]
theorem film_solution : FilmProduction 2 120 60 72 192 50 100 19200 ∧
    (∀ h p r i n c d t, FilmProduction h p r i n c d t → p = 120) ∧
    (∀ h p r i n c d t, FilmProduction h p r i n c d t → i = 72) ∧
    (∀ h p r i n c d t, FilmProduction h p r i n c d t → n = 192) ∧
    (∀ h p r i n c d t, FilmProduction h p r i n c d t → d = 100) ∧
    (∀ h p r i n c d t, FilmProduction h p r i n c d t → t = 19200) :=
  ⟨film_exists, film_previous_minutes, film_increase, film_new_minutes, film_new_rate, film_total⟩

theorem bakery_quiches (q p c r s t b u v a h d e f : ℕ)
    (x : BakeryOrder q p c r s t b u v a h d e f) : c = 30 := by
  rcases x with ⟨hq, hp, hc, hr, hs, ht, hb, hu, hv, ha, hh, hover, hd, he, hf⟩
  simp [hq, hp] at hc
  exact hc
theorem bakery_croissants (q p c r s t b u v a h d e f : ℕ)
    (x : BakeryOrder q p c r s t b u v a h d e f) : t = 18 := by
  rcases x with ⟨hq, hp, hc, hr, hs, ht, hb, hu, hv, ha, hh, hover, hd, he, hf⟩
  simp [hr, hs] at ht
  exact ht
theorem bakery_biscuits (q p c r s t b u v a h d e f : ℕ)
    (x : BakeryOrder q p c r s t b u v a h d e f) : v = 12 := by
  rcases x with ⟨hq, hp, hc, hr, hs, ht, hb, hu, hv, ha, hh, hover, hd, he, hf⟩
  simp [hb, hu] at hv
  exact hv
theorem bakery_subtotal (q p c r s t b u v a h d e f : ℕ)
    (x : BakeryOrder q p c r s t b u v a h d e f) : a = 60 := by
  have hc := bakery_quiches q p c r s t b u v a h d e f x
  have ht := bakery_croissants q p c r s t b u v a h d e f x
  have hv := bakery_biscuits q p c r s t b u v a h d e f x
  rcases x with ⟨hq, hp, hqc, hr, hs, hcc, hb, hu, hbc, ha, hh, hover, hd, he, hf⟩
  omega
theorem bakery_discount (q p c r s t b u v a h d e f : ℕ)
    (x : BakeryOrder q p c r s t b u v a h d e f) : e = 6 := by
  have ha := bakery_subtotal q p c r s t b u v a h d e f x
  rcases x with ⟨hq, hp, hc, hr, hs, ht, hb, hu, hv, hsubtotal, hh, hover, hd, he, hf⟩
  omega
theorem bakery_total (q p c r s t b u v a h d e f : ℕ)
    (x : BakeryOrder q p c r s t b u v a h d e f) : f = 54 := by
  have ha := bakery_subtotal q p c r s t b u v a h d e f x
  have he := bakery_discount q p c r s t b u v a h d e f x
  rcases x with ⟨hq, hp, hc, hr, hs, ht, hb, hu, hv, hsubtotal, hh, hover, hd, hdiscount, hf⟩
  omega
theorem bakery_exists : BakeryOrder 2 15 30 6 3 18 6 2 12 60 50 10 6 54 := by
  norm_num [BakeryOrder]
theorem bakery_solution : BakeryOrder 2 15 30 6 3 18 6 2 12 60 50 10 6 54 ∧
    (∀ q p c r s t b u v a h d e f, BakeryOrder q p c r s t b u v a h d e f → c = 30) ∧
    (∀ q p c r s t b u v a h d e f, BakeryOrder q p c r s t b u v a h d e f → t = 18) ∧
    (∀ q p c r s t b u v a h d e f, BakeryOrder q p c r s t b u v a h d e f → v = 12) ∧
    (∀ q p c r s t b u v a h d e f, BakeryOrder q p c r s t b u v a h d e f → a = 60) ∧
    (∀ q p c r s t b u v a h d e f, BakeryOrder q p c r s t b u v a h d e f → e = 6) ∧
    (∀ q p c r s t b u v a h d e f, BakeryOrder q p c r s t b u v a h d e f → f = 54) :=
  ⟨bakery_exists, bakery_quiches, bakery_croissants, bakery_biscuits,
    bakery_subtotal, bakery_discount, bakery_total⟩

theorem grapes_baseline (h p b r i t : ℕ) (x : GrapeProduction h p b r i t) : b = 180 := by
  rcases x with ⟨hh, hp, hb, hr, hi, ht⟩
  simp [hh, hp] at hb
  exact hb
theorem grapes_increase (h p b r i t : ℕ) (x : GrapeProduction h p b r i t) : i = 36 := by
  have hb := grapes_baseline h p b r i t x
  rcases x with ⟨hh, hp, hbaseline, hr, hi, ht⟩
  omega
theorem grapes_total (h p b r i t : ℕ) (x : GrapeProduction h p b r i t) : t = 216 := by
  have hb := grapes_baseline h p b r i t x
  have hi := grapes_increase h p b r i t x
  rcases x with ⟨hh, hp, hbaseline, hr, hincrease, ht⟩
  omega
theorem grapes_exists : GrapeProduction 90 2 180 20 36 216 := by norm_num [GrapeProduction]
theorem grapes_solution : GrapeProduction 90 2 180 20 36 216 ∧
    (∀ h p b r i t, GrapeProduction h p b r i t → b = 180) ∧
    (∀ h p b r i t, GrapeProduction h p b r i t → i = 36) ∧
    (∀ h p b r i t, GrapeProduction h p b r i t → t = 216) :=
  ⟨grapes_exists, grapes_baseline, grapes_increase, grapes_total⟩

theorem age_katherine (d z k x m : ℕ) (h : AgeDifference d z k x m) : k = 24 := by
  rcases h with ⟨hd, hz, hk, hx, hm⟩
  simp [hd, hz] at hk
  exact hk
theorem age_mel (d z k x m : ℕ) (h : AgeDifference d z k x m) : m = 21 := by
  have hk := age_katherine d z k x m h
  rcases h with ⟨hd, hz, hkatherine, hx, hm⟩
  omega
theorem age_exists : AgeDifference 12 2 24 3 21 := by norm_num [AgeDifference]
theorem age_solution : AgeDifference 12 2 24 3 21 ∧
    (∀ d z k x m, AgeDifference d z k x m → k = 24) ∧
    (∀ d z k x m, AgeDifference d z k x m → m = 21) :=
  ⟨age_exists, age_katherine, age_mel⟩

theorem seeds_plants (s p t e d r n : ℕ) (h : SeedPlanting s p t e d r n) : t = 40 := by
  rcases h with ⟨hs, hp, ht, he, hd, hr, hn⟩
  simp [hs, hp] at ht
  exact ht
theorem seeds_total (s p t e d r n : ℕ) (h : SeedPlanting s p t e d r n) : d = 40 := by
  have ht := seeds_plants s p t e d r n h
  rcases h with ⟨hs, hp, htotal, he, hd, hr, hn⟩
  simp [ht, he] at hd
  exact hd
theorem seeds_planted (s p t e d r n : ℕ) (h : SeedPlanting s p t e d r n) : n = 24 := by
  have hd := seeds_total s p t e d r n h
  rcases h with ⟨hs, hp, ht, he, hseeds, hr, hn⟩
  omega
theorem seeds_conditional_trees (s p t e d r n trees : ℕ)
    (h : AllPlantedSeedsBecomeTrees s p t e d r n trees) : trees = 24 := by
  have hn := seeds_planted s p t e d r n h.1
  omega
theorem seeds_zero_possible : SeedTreeOutcome 24 0 := by norm_num [SeedTreeOutcome]
theorem seeds_all_possible : SeedTreeOutcome 24 24 := by norm_num [SeedTreeOutcome]
theorem seeds_not_determined : ∃ a b, SeedTreeOutcome 24 a ∧ SeedTreeOutcome 24 b ∧ a ≠ b := by
  exact ⟨0, 24, seeds_zero_possible, seeds_all_possible, by decide⟩
theorem seeds_exists : SeedPlanting 2 20 40 1 40 60 24 := by norm_num [SeedPlanting]
theorem seeds_solution : SeedPlanting 2 20 40 1 40 60 24 ∧
    (∀ s p t e d r n, SeedPlanting s p t e d r n → t = 40) ∧
    (∀ s p t e d r n, SeedPlanting s p t e d r n → d = 40) ∧
    (∀ s p t e d r n, SeedPlanting s p t e d r n → n = 24) ∧
    (∀ s p t e d r n trees, AllPlantedSeedsBecomeTrees s p t e d r n trees → trees = 24) ∧
    SeedTreeOutcome 24 0 ∧ SeedTreeOutcome 24 24 ∧
    (∃ a b, SeedTreeOutcome 24 a ∧ SeedTreeOutcome 24 b ∧ a ≠ b) :=
  ⟨seeds_exists, seeds_plants, seeds_total, seeds_planted, seeds_conditional_trees,
    seeds_zero_possible, seeds_all_possible, seeds_not_determined⟩

theorem bottles_total (i a t c s : ℕ) (h : OrigamiBottles i a t c s) : t = 5 := by
  rcases h with ⟨hi, ha, ht, hc, hs⟩
  omega
theorem bottles_stars (i a t c s : ℕ) (h : OrigamiBottles i a t c s) : s = 75 := by
  have ht := bottles_total i a t c s h
  rcases h with ⟨hi, ha, htotal, hc, hs⟩
  simp [ht, hc] at hs
  exact hs
theorem bottles_exists : OrigamiBottles 2 3 5 15 75 := by norm_num [OrigamiBottles]
theorem bottles_solution : OrigamiBottles 2 3 5 15 75 ∧
    (∀ i a t c s, OrigamiBottles i a t c s → t = 5) ∧
    (∀ i a t c s, OrigamiBottles i a t c s → s = 75) :=
  ⟨bottles_exists, bottles_total, bottles_stars⟩

theorem race_hare_time (d h t a b s : ℕ) (x : PetRace d h t a b s) : a = 2 := by
  rcases x with ⟨hd, hh, ht, ha, hb, hs⟩
  omega
theorem race_turtle_time (d h t a b s : ℕ) (x : PetRace d h t a b s) : b = 20 := by
  rcases x with ⟨hd, hh, ht, ha, hb, hs⟩
  omega
theorem race_head_start (d h t a b s : ℕ) (x : PetRace d h t a b s) : s = 18 := by
  have ha := race_hare_time d h t a b s x
  have hb := race_turtle_time d h t a b s x
  rcases x with ⟨hd, hh, ht, hhare, hturtle, hs⟩
  omega
theorem race_exists : PetRace 20 10 1 2 20 18 := by norm_num [PetRace]
theorem race_solution : PetRace 20 10 1 2 20 18 ∧
    (∀ d h t a b s, PetRace d h t a b s → a = 2) ∧
    (∀ d h t a b s, PetRace d h t a b s → b = 20) ∧
    (∀ d h t a b s, PetRace d h t a b s → s = 18) :=
  ⟨race_exists, race_hare_time, race_turtle_time, race_head_start⟩

end LemmaWeave.Tests.GSM8KDaily0910A

#print axioms LemmaWeave.Tests.GSM8KDaily0910A.cards_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910A.bus_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910A.movies_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910A.film_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910A.bakery_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910A.grapes_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910A.age_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910A.seeds_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910A.bottles_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910A.race_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910A.cards_solution to "work/gsm8k-daily17-cards-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910A.bus_solution to "work/gsm8k-daily17-bus-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910A.movies_solution to "work/gsm8k-daily17-movies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910A.film_solution to "work/gsm8k-daily17-film-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910A.bakery_solution to "work/gsm8k-daily17-bakery-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910A.grapes_solution to "work/gsm8k-daily17-grapes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910A.age_solution to "work/gsm8k-daily17-age-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910A.seeds_solution to "work/gsm8k-daily17-seeds-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910A.bottles_solution to "work/gsm8k-daily17-bottles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910A.race_solution to "work/gsm8k-daily17-race-graph.json"
