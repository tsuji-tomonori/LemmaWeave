import LemmaWeave.Problems.GSM8K.Daily0915CModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0915C
open LemmaWeave.Problems.GSM8K.Daily0915C

theorem energy_second (a b c d e f g h : ℚ)
    (x : EnergyCaffeine a b c d e f g h) : e = 125 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb, hc, hd] at he
  linarith

theorem energy_total (a b c d e f g h : ℚ)
    (x : EnergyCaffeine a b c d e f g h) : f = 375 ∧ g = 375 ∧ h = 750 := by
  have he := energy_second a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg, hh⟩
  constructor
  · linarith
  constructor <;> linarith

theorem energy_solution :
    EnergyCaffeine 12 250 3 2 125 375 375 750 ∧
    (125 : ℚ) = 125 ∧ ((375 : ℚ) = 375 ∧ (375 : ℚ) = 375 ∧ (750 : ℚ) = 750) := by
  have h : EnergyCaffeine 12 250 3 2 125 375 375 750 := by
    norm_num [EnergyCaffeine]
  exact ⟨h, energy_second _ _ _ _ _ _ _ _ h, energy_total _ _ _ _ _ _ _ _ h⟩

theorem dog_doublings (a b c d e f : Nat) (h : DogWeight a b c d e f) :
    b = 12 ∧ c = 24 ∧ d = 48 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  omega

theorem dog_adult (a b c d e f : Nat) (h : DogWeight a b c d e f) : f = 78 := by
  have hbcd := dog_doublings a b c d e f h
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  omega

theorem dog_solution : DogWeight 6 12 24 48 30 78 ∧
    (12 = 12 ∧ 24 = 24 ∧ 48 = 48) ∧ 78 = 78 := by
  have h : DogWeight 6 12 24 48 30 78 := by norm_num [DogWeight]
  exact ⟨h, dog_doublings _ _ _ _ _ _ h, dog_adult _ _ _ _ _ _ h⟩

theorem river_june (a b c d e : Nat) (h : RiverDepth a b c d e) : c = 15 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  omega

theorem river_july (a b c d e : Nat) (h : RiverDepth a b c d e) : e = 45 := by
  have hc := river_june a b c d e h
  rcases h with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  exact he

theorem river_solution : RiverDepth 5 10 15 3 45 ∧ 15 = 15 ∧ 45 = 45 := by
  have h : RiverDepth 5 10 15 3 45 := by norm_num [RiverDepth]
  exact ⟨h, river_june _ _ _ _ _ h, river_july _ _ _ _ _ h⟩

theorem carwash_list (a b c d e f : ℚ) (h : CarWashPackage a b c d e f) : e = 300 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hd] at he
  exact he

theorem carwash_paid (a b c d e f : ℚ) (h : CarWashPackage a b c d e f) : f = 180 := by
  have he := carwash_list a b c d e f h
  rcases h with ⟨ha, hb, hc, hd, hx, hf⟩
  norm_num [hb, hc, he] at hf
  linarith

theorem carwash_solution : CarWashPackage 20 60 100 15 300 180 ∧
    (300 : ℚ) = 300 ∧ (180 : ℚ) = 180 := by
  have h : CarWashPackage 20 60 100 15 300 180 := by norm_num [CarWashPackage]
  exact ⟨h, carwash_list _ _ _ _ _ _ h, carwash_paid _ _ _ _ _ _ h⟩

theorem pencils_nilo (a b c d e : Nat) (h : PencilSharing a b c d e) : c = 20 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  omega

theorem pencils_given (a b c d e : Nat) (h : PencilSharing a b c d e) : d = 30 := by
  have hc := pencils_nilo a b c d e h
  rcases h with ⟨ha, hb, hx, hd, he⟩
  omega

theorem pencils_kept (a b c d e : Nat) (h : PencilSharing a b c d e) : e = 20 := by
  have hd := pencils_given a b c d e h
  rcases h with ⟨ha, hb, hc, hx, he⟩
  omega

theorem pencils_solution : PencilSharing 50 10 20 30 20 ∧
    20 = 20 ∧ 30 = 30 ∧ 20 = 20 := by
  have h : PencilSharing 50 10 20 30 20 := by norm_num [PencilSharing]
  exact ⟨h, pencils_nilo _ _ _ _ _ h, pencils_given _ _ _ _ _ h,
    pencils_kept _ _ _ _ _ h⟩

theorem practice_running (a b c : Nat) (h : PracticeHours a b c) : b = 20 := by
  rcases h with ⟨ha, hb, hc⟩
  omega

theorem practice_trumpet (a b c : Nat) (h : PracticeHours a b c) : c = 40 := by
  have hb := practice_running a b c h
  rcases h with ⟨ha, hx, hc⟩
  omega

theorem practice_solution : PracticeHours 10 20 40 ∧ 20 = 20 ∧ 40 = 40 := by
  have h : PracticeHours 10 20 40 := by norm_num [PracticeHours]
  exact ⟨h, practice_running _ _ _ h, practice_trumpet _ _ _ h⟩

theorem tasks_totals (a b c d e f g h : Nat) (x : TaskMinutes a b c d e f g h) :
    f = 120 ∧ g = 85 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hd, he] at hf
  norm_num [ha, hb, hc] at hg
  exact ⟨hf, hg⟩

theorem tasks_room (a b c d e f g h : Nat) (x : TaskMinutes a b c d e f g h) :
    h = 35 := by
  have hfg := tasks_totals a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  omega

theorem tasks_solution : TaskMinutes 30 15 40 2 60 120 85 35 ∧
    (120 = 120 ∧ 85 = 85) ∧ 35 = 35 := by
  have h : TaskMinutes 30 15 40 2 60 120 85 35 := by norm_num [TaskMinutes]
  exact ⟨h, tasks_totals _ _ _ _ _ _ _ _ h, tasks_room _ _ _ _ _ _ _ _ h⟩

theorem concert_ticket_totals (a b c d e f g h i : Nat)
    (x : ConcertSavings a b c d e f g h i) : f = 200 ∧ g = 150 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [hb, hc] at hf
  norm_num [hd, he] at hg
  exact ⟨hf, hg⟩

theorem concert_remaining (a b c d e f g h i : Nat)
    (x : ConcertSavings a b c d e f g h i) : h = 350 ∧ i = 150 := by
  have hfg := concert_ticket_totals a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  omega

theorem concert_solution : ConcertSavings 500 2 100 3 50 200 150 350 150 ∧
    (200 = 200 ∧ 150 = 150) ∧ (350 = 350 ∧ 150 = 150) := by
  have h : ConcertSavings 500 2 100 3 50 200 150 350 150 := by
    norm_num [ConcertSavings]
  exact ⟨h, concert_ticket_totals _ _ _ _ _ _ _ _ _ h,
    concert_remaining _ _ _ _ _ _ _ _ _ h⟩

theorem social_advertisement (a b c d : Nat) (h : SocialMediaHours a b c d) : b = 2 := by
  rcases h with ⟨ha, hb, hc, hd⟩
  omega

theorem social_marketing (a b c d : Nat) (h : SocialMediaHours a b c d) : c = 2 := by
  have hb := social_advertisement a b c d h
  rcases h with ⟨ha, hx, hc, hd⟩
  omega

theorem social_solution : SocialMediaHours 4 2 2 8 ∧ 2 = 2 ∧ 2 = 2 := by
  have h : SocialMediaHours 4 2 2 8 := by norm_num [SocialMediaHours]
  exact ⟨h, social_advertisement _ _ _ _ h, social_marketing _ _ _ _ h⟩

theorem market_spent (a b c d e f g h : Nat) (x : MarketShopping a b c d e f g h) :
    g = 27 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hb, hc, hd, he, hf] at hg
  exact hg

theorem market_left (a b c d e f g h : Nat) (x : MarketShopping a b c d e f g h) :
    h = 28 := by
  have hg := market_spent a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hx, hh⟩
  omega

theorem market_solution : MarketShopping 55 2 4 2 6 11 27 28 ∧ 27 = 27 ∧ 28 = 28 := by
  have h : MarketShopping 55 2 4 2 6 11 27 28 := by norm_num [MarketShopping]
  exact ⟨h, market_spent _ _ _ _ _ _ _ _ h, market_left _ _ _ _ _ _ _ _ h⟩

#print axioms energy_solution
#print axioms dog_solution
#print axioms river_solution
#print axioms carwash_solution
#print axioms pencils_solution
#print axioms practice_solution
#print axioms tasks_solution
#print axioms concert_solution
#print axioms social_solution
#print axioms market_solution
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915C.energy_solution to "work/gsm8k-daily42-energy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915C.dog_solution to "work/gsm8k-daily42-dog-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915C.river_solution to "work/gsm8k-daily42-river-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915C.carwash_solution to "work/gsm8k-daily42-carwash-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915C.pencils_solution to "work/gsm8k-daily42-pencils-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915C.practice_solution to "work/gsm8k-daily42-practice-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915C.tasks_solution to "work/gsm8k-daily42-tasks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915C.concert_solution to "work/gsm8k-daily42-concert-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915C.social_solution to "work/gsm8k-daily42-social-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0915C.market_solution to "work/gsm8k-daily42-market-graph.json"

end LemmaWeave.Tests.GSM8KDaily0915C
