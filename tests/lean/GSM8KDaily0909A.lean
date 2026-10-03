import LemmaWeave.Problems.GSM8K.Daily0909AModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0909A
open LemmaWeave.Problems.GSM8K.Daily0909A

theorem pets_nonfish (d c n f t : ℕ) (x : PetTotal d c n f t) : n = 5 := by
  rcases x with ⟨hd, hc, hn, hf, ht⟩
  omega
theorem pets_fish (d c n f t : ℕ) (x : PetTotal d c n f t) : f = 10 := by
  have hn := pets_nonfish d c n f t x
  have hf := x.2.2.2.1
  omega
theorem pets_total (d c n f t : ℕ) (x : PetTotal d c n f t) : t = 15 := by
  have hn := pets_nonfish d c n f t x
  have hf := pets_fish d c n f t x
  have ht := x.2.2.2.2
  omega
theorem pets_exists : PetTotal 2 3 5 10 15 := by norm_num [PetTotal]
theorem pets_solution : PetTotal 2 3 5 10 15 ∧
    (∀ d c n f t, PetTotal d c n f t → n = 5) ∧
    (∀ d c n f t, PetTotal d c n f t → f = 10) ∧
    (∀ d c n f t, PetTotal d c n f t → t = 15) :=
  ⟨pets_exists, pets_nonfish, pets_fish, pets_total⟩

theorem jelly_red (c r t : ℕ) (x : JellyBeans c r t) : r = 3000 := by
  rcases x with ⟨hc, hr, ht⟩
  omega
theorem jelly_total (c r t : ℕ) (x : JellyBeans c r t) : t = 4000 := by
  have hr := jelly_red c r t x
  have ht := x.2.2
  omega
theorem jelly_exists : JellyBeans 750 3000 4000 := by norm_num [JellyBeans]
theorem jelly_solution : JellyBeans 750 3000 4000 ∧
    (∀ c r t, JellyBeans c r t → r = 3000) ∧
    (∀ c r t, JellyBeans c r t → t = 4000) :=
  ⟨jelly_exists, jelly_red, jelly_total⟩

theorem stamps_rebates (c b r a p s : ℕ) (x : StampCount c b r a p s) : r = 5 := by
  rcases x with ⟨hc, hb, hr, ha, hp, hs⟩
  omega
theorem stamps_applications (c b r a p s : ℕ) (x : StampCount c b r a p s) : a = 10 := by
  have hr := stamps_rebates c b r a p s x
  have ha := x.2.2.2.1
  omega
theorem stamps_pieces (c b r a p s : ℕ) (x : StampCount c b r a p s) : p = 20 := by
  have hr := stamps_rebates c b r a p s x
  have ha := stamps_applications c b r a p s x
  rcases x with ⟨hc, hb, hreb, happ, hp, hs⟩
  omega
theorem stamps_total (c b r a p s : ℕ) (x : StampCount c b r a p s) : s = 21 := by
  have hp := stamps_pieces c b r a p s x
  have hs := x.2.2.2.2.2
  omega
theorem stamps_exists : StampCount 3 2 5 10 20 21 := by norm_num [StampCount]
theorem stamps_solution : StampCount 3 2 5 10 20 21 ∧
    (∀ c b r a p s, StampCount c b r a p s → r = 5) ∧
    (∀ c b r a p s, StampCount c b r a p s → a = 10) ∧
    (∀ c b r a p s, StampCount c b r a p s → p = 20) ∧
    (∀ c b r a p s, StampCount c b r a p s → s = 21) :=
  ⟨stamps_exists, stamps_rebates, stamps_applications, stamps_pieces, stamps_total⟩

theorem aquarium_each (t c b d j r n : ℕ) (x : Aquarium t c b d j r n) : c = 50 ∧ b = 50 := by
  rcases x with ⟨ht, hcb, hsum, hd, hj, hr, hn⟩
  omega
theorem aquarium_display (t c b d j r n : ℕ) (x : Aquarium t c b d j r n) : d = 24 := by
  have hb := (aquarium_each t c b d j r n x).2
  have hd := x.2.2.2.1
  omega
theorem aquarium_joined (t c b d j r n : ℕ) (x : Aquarium t c b d j r n) : j = 24 := by
  have hd := aquarium_display t c b d j r n x
  have hj := x.2.2.2.2.1
  omega
theorem aquarium_returned (t c b d j r n : ℕ) (x : Aquarium t c b d j r n) : r = 8 := by
  have hj := aquarium_joined t c b d j r n x
  have hr := x.2.2.2.2.2.1
  omega
theorem aquarium_remaining (t c b d j r n : ℕ) (x : Aquarium t c b d j r n) : n = 16 := by
  have hj := aquarium_joined t c b d j r n x
  have hr := aquarium_returned t c b d j r n x
  have hn := x.2.2.2.2.2.2
  omega
theorem aquarium_exists : Aquarium 100 50 50 24 24 8 16 := by norm_num [Aquarium]
theorem aquarium_solution : Aquarium 100 50 50 24 24 8 16 ∧
    (∀ t c b d j r n, Aquarium t c b d j r n → c = 50 ∧ b = 50) ∧
    (∀ t c b d j r n, Aquarium t c b d j r n → d = 24) ∧
    (∀ t c b d j r n, Aquarium t c b d j r n → j = 24) ∧
    (∀ t c b d j r n, Aquarium t c b d j r n → r = 8) ∧
    (∀ t c b d j r n, Aquarium t c b d j r n → n = 16) :=
  ⟨aquarium_exists, aquarium_each, aquarium_display, aquarium_joined,
    aquarium_returned, aquarium_remaining⟩

theorem juggling_intended : JugglingScenario 5 3 2 13 := by
  norm_num [JugglingScenario]
theorem juggling_alternative : JugglingScenario 4 3 2 11 := by
  norm_num [JugglingScenario]
theorem juggling_distinct : (13 : ℕ) ≠ 11 := by omega
theorem juggling_solution : JugglingScenario 5 3 2 13 ∧
    JugglingScenario 4 3 2 11 ∧ (13 : ℕ) ≠ 11 :=
  ⟨juggling_intended, juggling_alternative, juggling_distinct⟩

theorem cupcakes_fourth (c p f e t : ℕ) (x : CupcakeCount c p f e t) : f = 90 := by
  rcases x with ⟨hc, hp, hf, he, ht⟩
  simp [hc, hp] at hf
  exact hf
theorem cupcakes_total (c p f e t : ℕ) (x : CupcakeCount c p f e t) : t = 140 := by
  have hf := cupcakes_fourth c p f e t x
  rcases x with ⟨hc, hp, hfourth, he, ht⟩
  omega
theorem cupcakes_exists : CupcakeCount 3 30 90 50 140 := by norm_num [CupcakeCount]
theorem cupcakes_solution : CupcakeCount 3 30 90 50 140 ∧
    (∀ c p f e t, CupcakeCount c p f e t → f = 90) ∧
    (∀ c p f e t, CupcakeCount c p f e t → t = 140) :=
  ⟨cupcakes_exists, cupcakes_fourth, cupcakes_total⟩

theorem bike_weekly (w h d q m b l : ℕ) (x : BikeSavings w h d q m b l) : q = 280 := by
  rcases x with ⟨hh, hd, hq, hm, hb, hl⟩
  simp [hh, hd] at hq
  exact hq
theorem bike_four_weeks (h d q m b l : ℕ) (x : BikeSavings 4 h d q m b l) : m = 1120 := by
  have hq := bike_weekly 4 h d q m b l x
  have hm := x.2.2.2.1
  omega
theorem bike_intended_left (h d q m b l : ℕ) (x : BikeSavings 4 h d q m b l) : l = 720 := by
  have hm := bike_four_weeks h d q m b l x
  rcases x with ⟨hh, hd, hq, hmonth, hb, hl⟩
  omega
theorem bike_five_weeks (h d q m b l : ℕ) (x : BikeSavings 5 h d q m b l) : m = 1400 := by
  have hq := bike_weekly 5 h d q m b l x
  have hm := x.2.2.2.1
  omega
theorem bike_alternative_left (h d q m b l : ℕ) (x : BikeSavings 5 h d q m b l) : l = 1000 := by
  have hm := bike_five_weeks h d q m b l x
  rcases x with ⟨hh, hd, hq, hmonth, hb, hl⟩
  omega
theorem bike_intended_exists : BikeSavings 4 8 35 280 1120 400 720 := by
  norm_num [BikeSavings]
theorem bike_alternative_exists : BikeSavings 5 8 35 280 1400 400 1000 := by
  norm_num [BikeSavings]
theorem bike_solution : BikeSavings 4 8 35 280 1120 400 720 ∧
    BikeSavings 5 8 35 280 1400 400 1000 ∧
    (∀ h d q m b l, BikeSavings 4 h d q m b l → l = 720) ∧
    (∀ h d q m b l, BikeSavings 5 h d q m b l → l = 1000) :=
  ⟨bike_intended_exists, bike_alternative_exists,
    bike_intended_left, bike_alternative_left⟩

theorem truck_first_rate (r f m p s h t : ℕ) (x : TruckFill r f m p s h t) : r = 500 := by
  norm_num [TruckFill] at x
  exact x.1
theorem truck_first_filled (r f m p s h t : ℕ) (x : TruckFill r f m p s h t) : f = 2000 := by
  have hr := truck_first_rate r f m p s h t x
  have hf := x.2.1
  omega
theorem truck_remaining (r f m p s h t : ℕ) (x : TruckFill r f m p s h t) : m = 4000 := by
  have hf := truck_first_filled r f m p s h t x
  have hm := x.2.2.1
  omega
theorem truck_people (r f m p s h t : ℕ) (x : TruckFill r f m p s h t) : p = 8 := by
  norm_num [TruckFill] at x
  exact x.2.2.2.1
theorem truck_second_rate (r f m p s h t : ℕ) (x : TruckFill r f m p s h t) : s = 2000 := by
  have hp := truck_people r f m p s h t x
  have hs := x.2.2.2.2.1
  omega
theorem truck_second_hours (r f m p s h t : ℕ) (x : TruckFill r f m p s h t) : h = 2 := by
  have hm := truck_remaining r f m p s h t x
  have hs := truck_second_rate r f m p s h t x
  have hh := x.2.2.2.2.2.1
  simp [hm, hs] at hh
  omega
theorem truck_total_hours (r f m p s h t : ℕ) (x : TruckFill r f m p s h t) : t = 6 := by
  have hh := truck_second_hours r f m p s h t x
  have ht := x.2.2.2.2.2.2
  omega
theorem truck_exists : TruckFill 500 2000 4000 8 2000 2 6 := by norm_num [TruckFill]
theorem truck_solution : TruckFill 500 2000 4000 8 2000 2 6 ∧
    (∀ r f m p s h t, TruckFill r f m p s h t → r = 500) ∧
    (∀ r f m p s h t, TruckFill r f m p s h t → f = 2000) ∧
    (∀ r f m p s h t, TruckFill r f m p s h t → m = 4000) ∧
    (∀ r f m p s h t, TruckFill r f m p s h t → p = 8) ∧
    (∀ r f m p s h t, TruckFill r f m p s h t → s = 2000) ∧
    (∀ r f m p s h t, TruckFill r f m p s h t → h = 2) ∧
    (∀ r f m p s h t, TruckFill r f m p s h t → t = 6) :=
  ⟨truck_exists, truck_first_rate, truck_first_filled, truck_remaining,
    truck_people, truck_second_rate, truck_second_hours, truck_total_hours⟩

theorem conference_empty (c s e o a : ℕ) (x : ConferenceAttendance c s e o a) : e = 16 := by
  rcases x with ⟨hc, hs, he, ho, ha⟩
  omega
theorem conference_occupied (c s e o a : ℕ) (x : ConferenceAttendance c s e o a) : o = 24 := by
  have he := conference_empty c s e o a x
  rcases x with ⟨hc, hs, hempty, ho, ha⟩
  omega
theorem conference_attended (c s e o a : ℕ) (x : ConferenceAttendance c s e o a) : a = 48 := by
  have ho := conference_occupied c s e o a x
  rcases x with ⟨hc, hs, he, hoccupied, ha⟩
  simp [ho, hs] at ha
  exact ha
theorem conference_exists : ConferenceAttendance 40 2 16 24 48 := by
  norm_num [ConferenceAttendance]
theorem conference_solution : ConferenceAttendance 40 2 16 24 48 ∧
    (∀ c s e o a, ConferenceAttendance c s e o a → e = 16) ∧
    (∀ c s e o a, ConferenceAttendance c s e o a → o = 24) ∧
    (∀ c s e o a, ConferenceAttendance c s e o a → a = 48) :=
  ⟨conference_exists, conference_empty, conference_occupied, conference_attended⟩

theorem cans_bulk (b g d : ℕ) (x : CanPrice b g d) : b = 25 := by
  rcases x with ⟨hb, hg, hd⟩
  omega
theorem cans_grocery (b g d : ℕ) (x : CanPrice b g d) : g = 50 := by
  rcases x with ⟨hb, hg, hd⟩
  omega
theorem cans_difference (b g d : ℕ) (x : CanPrice b g d) : d = 25 := by
  have hb := cans_bulk b g d x
  have hg := cans_grocery b g d x
  have hd := x.2.2
  omega
theorem cans_exists : CanPrice 25 50 25 := by norm_num [CanPrice]
theorem cans_solution : CanPrice 25 50 25 ∧
    (∀ b g d, CanPrice b g d → b = 25) ∧
    (∀ b g d, CanPrice b g d → g = 50) ∧
    (∀ b g d, CanPrice b g d → d = 25) :=
  ⟨cans_exists, cans_bulk, cans_grocery, cans_difference⟩

end LemmaWeave.Tests.GSM8KDaily0909A

#print axioms LemmaWeave.Tests.GSM8KDaily0909A.pets_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909A.jelly_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909A.stamps_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909A.aquarium_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909A.juggling_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909A.cupcakes_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909A.bike_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909A.truck_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909A.conference_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909A.cans_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909A.pets_solution to "work/gsm8k-daily12-pets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909A.jelly_solution to "work/gsm8k-daily12-jelly-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909A.stamps_solution to "work/gsm8k-daily12-stamps-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909A.aquarium_solution to "work/gsm8k-daily12-aquarium-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909A.juggling_solution to "work/gsm8k-daily12-juggling-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909A.cupcakes_solution to "work/gsm8k-daily12-cupcakes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909A.bike_solution to "work/gsm8k-daily12-bike-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909A.truck_solution to "work/gsm8k-daily12-truck-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909A.conference_solution to "work/gsm8k-daily12-conference-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909A.cans_solution to "work/gsm8k-daily12-cans-graph.json"
