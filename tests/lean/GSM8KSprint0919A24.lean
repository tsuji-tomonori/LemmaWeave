import LemmaWeave.Problems.GSM8K.Sprint0919A24Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A24
open LemmaWeave.Problems.GSM8K.Sprint0919A24

theorem pets_dogs (a b c d e f g h i j : Nat) (x : CommunityPets a b c d e f g h i j) :
    d + f = 50 := by rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh,hi,hj⟩; norm_num [hb,hc,he] at hd hf ⊢; omega
theorem pets_cat_families (a b c d e f g h i j : Nat) (x : CommunityPets a b c d e f g h i j) : g = 15 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh,hi,hj⟩; omega
theorem pets_cats (a b c d e f g h i j : Nat) (x : CommunityPets a b c d e f g h i j) : i = 30 := by
  have hg := pets_cat_families a b c d e f g h i j x
  rcases x with ⟨ha,hb,hc,hd,he,hf,hx,hh,hi,hj⟩; norm_num [hg,hh] at hi; exact hi
theorem pets_total (a b c d e f g h i j : Nat) (x : CommunityPets a b c d e f g h i j) : j = 80 := by
  have hi := pets_cats a b c d e f g h i j x
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh,hx,hj⟩; norm_num [hb,hc,he,hi] at hd hf hj; exact hj
theorem pets_solution :
    CommunityPets 50 15 2 30 20 20 15 2 30 80 ∧
    50 = 50 ∧ 15 = 15 ∧ 30 = 30 ∧ 80 = 80 := by
  have x : CommunityPets 50 15 2 30 20 20 15 2 30 80 := by norm_num [CommunityPets]
  exact ⟨x, pets_dogs _ _ _ _ _ _ _ _ _ _ x, pets_cat_families _ _ _ _ _ _ _ _ _ _ x,
    pets_cats _ _ _ _ _ _ _ _ _ _ x, pets_total _ _ _ _ _ _ _ _ _ _ x⟩

theorem ceilings_next (a b c d e : Nat) (x : CeilingPainting a b c d e) : d = 3 := by
  rcases x with ⟨ha,hb,hc,hd,he⟩; norm_num [hb,hc] at hd; omega
theorem ceilings_left (a b c d e : Nat) (x : CeilingPainting a b c d e) : e = 13 := by
  have hd := ceilings_next a b c d e x; rcases x with ⟨ha,hb,hc,hx,he⟩; omega
theorem ceilings_solution : CeilingPainting 28 12 4 3 13 ∧ 3 = 3 ∧ 13 = 13 := by
  have x : CeilingPainting 28 12 4 3 13 := by norm_num [CeilingPainting]
  exact ⟨x, ceilings_next _ _ _ _ _ x, ceilings_left _ _ _ _ _ x⟩

theorem silk_given (a b c d e f g : Nat) (x : SilkDresses a b c d e f g) : d = 100 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg⟩; norm_num [hb,hc] at hd; exact hd
theorem silk_left (a b c d e f g : Nat) (x : SilkDresses a b c d e f g) : e = 500 := by
  have hd := silk_given a b c d e f g x; rcases x with ⟨ha,hb,hc,hx,he,hf,hg⟩; omega
theorem silk_dresses (a b c d e f g : Nat) (x : SilkDresses a b c d e f g) : g = 100 := by
  have he := silk_left a b c d e f g x; rcases x with ⟨ha,hb,hc,hd,hx,hf,hg⟩; norm_num [he,hf] at hg; omega
theorem silk_solution : SilkDresses 600 5 20 100 500 5 100 ∧ 100 = 100 := by
  have x : SilkDresses 600 5 20 100 500 5 100 := by norm_num [SilkDresses]
  exact ⟨x, silk_dresses _ _ _ _ _ _ _ x⟩

theorem errands_total (a b c d e : Nat) (x : ErrandHalfway a b c d e) : d = 30 := by
  rcases x with ⟨ha,hb,hc,hd,he⟩; norm_num [ha,hb,hc] at hd; exact hd
theorem errands_halfway (a b c d e : Nat) (x : ErrandHalfway a b c d e) : e = 15 := by
  have hd := errands_total a b c d e x; rcases x with ⟨ha,hb,hc,hx,he⟩; omega
theorem errands_solution : ErrandHalfway 10 15 5 30 15 ∧ 30 = 30 ∧ 15 = 15 := by
  have x : ErrandHalfway 10 15 5 30 15 := by norm_num [ErrandHalfway]
  exact ⟨x, errands_total _ _ _ _ _ x, errands_halfway _ _ _ _ _ x⟩

theorem flashlight_reference_freddie (a b c d e f g h : Nat) (x : FlashlightMultiplier a b c d e f g h) : c = 3000 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh⟩; norm_num [ha,hb] at hc; exact hc
theorem flashlight_reference_velma (a b c d e f g h : Nat) (x : FlashlightMultiplier a b c d e f g h) : g = 13000 := by
  have hc := flashlight_reference_freddie a b c d e f g h x
  rcases x with ⟨ha,hb,hx,hd,he,hf,hg,hh⟩; norm_num [hc,hd] at he; omega
theorem flashlight_reference_difference (a b c d e f g h : Nat) (x : FlashlightMultiplier a b c d e f g h) : h = 12000 := by
  have hg := flashlight_reference_velma a b c d e f g h x
  rcases x with ⟨ha,hb,hc,hd,he,hf,hx,hh⟩; omega
theorem flashlight_literal_difference (a b c d e f g h : Nat) (x : FlashlightLiteralFarther a b c d e f g h) : h = 21000 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh⟩
  norm_num [ha,hb] at hc; norm_num [hc,hd] at he; omega
theorem flashlight_solution :
    FlashlightMultiplier 1000 3 3000 5 15000 2000 13000 12000 ∧
    FlashlightLiteralFarther 1000 3 4000 5 24000 2000 22000 21000 ∧
    12000 = 12000 ∧ 21000 = 21000 := by
  have xm : FlashlightMultiplier 1000 3 3000 5 15000 2000 13000 12000 := by norm_num [FlashlightMultiplier]
  have xl : FlashlightLiteralFarther 1000 3 4000 5 24000 2000 22000 21000 := by norm_num [FlashlightLiteralFarther]
  exact ⟨xm, xl, flashlight_reference_difference _ _ _ _ _ _ _ _ xm,
    flashlight_literal_difference _ _ _ _ _ _ _ _ xl⟩

theorem bus_days (a b c d : Nat) (x : BusThirteenWeeks a b c d) : c = 91 := by
  rcases x with ⟨ha,hb,hc,hd⟩; norm_num [hb] at hc; exact hc
theorem bus_people (a b c d : Nat) (x : BusThirteenWeeks a b c d) : d = 109200000 := by
  have hc := bus_days a b c d x; rcases x with ⟨ha,hb,hx,hd⟩; norm_num [ha,hc] at hd; exact hd
theorem bus_weeks_solution : BusThirteenWeeks 1200000 13 91 109200000 ∧ 91 = 91 ∧ 109200000 = 109200000 := by
  have x : BusThirteenWeeks 1200000 13 91 109200000 := by norm_num [BusThirteenWeeks]
  exact ⟨x, bus_days _ _ _ _ x, bus_people _ _ _ _ x⟩

theorem flats_half (a b c d e f g h i : Nat) (x : FlatResidents a b c d e f g h i) : b = 6 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh,hi⟩; omega
theorem flats_apartments (a b c d e f g h i : Nat) (x : FlatResidents a b c d e f g h i) : g = 66 := by
  have hb := flats_half a b c d e f g h i x
  rcases x with ⟨ha,hx,hc,hd,he,hf,hg,hh,hi⟩; norm_num [hb,hc] at hd; norm_num [hb,he] at hf; omega
theorem flats_residents (a b c d e f g h i : Nat) (x : FlatResidents a b c d e f g h i) : i = 264 := by
  have hg := flats_apartments a b c d e f g h i x
  rcases x with ⟨ha,hb,hc,hd,he,hf,hx,hh,hi⟩; norm_num [hg,hh] at hi; exact hi
theorem flats_solution : FlatResidents 12 6 6 36 5 30 66 4 264 ∧ 264 = 264 := by
  have x : FlatResidents 12 6 6 36 5 30 66 4 264 := by norm_num [FlatResidents]
  exact ⟨x, flats_residents _ _ _ _ _ _ _ _ _ x⟩

theorem trip_outward (a b c d : Nat) (x : BusTwoTrips a b c d) : b = 150 := by
  rcases x with ⟨ha,hb,hc,hd⟩; norm_num [ha] at hb; omega
theorem trip_return (a b c d : Nat) (x : BusTwoTrips a b c d) : c = 160 := by
  rcases x with ⟨ha,hb,hc,hd⟩; norm_num [ha] at hc; omega
theorem trip_total (a b c d : Nat) (x : BusTwoTrips a b c d) : d = 310 := by
  have hb := trip_outward a b c d x; have hc := trip_return a b c d x
  rcases x with ⟨ha,hx,hy,hd⟩; omega
theorem trips_solution : BusTwoTrips 200 150 160 310 ∧ 150 = 150 ∧ 160 = 160 ∧ 310 = 310 := by
  have x : BusTwoTrips 200 150 160 310 := by norm_num [BusTwoTrips]
  exact ⟨x, trip_outward _ _ _ _ x, trip_return _ _ _ _ x, trip_total _ _ _ _ x⟩

theorem cupcakes_given (a b c d e f : Nat) (x : Cupcakes a b c d e f) : e = 38 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf⟩; norm_num [hb,hc,hd] at he; exact he
theorem cupcakes_left (a b c d e f : Nat) (x : Cupcakes a b c d e f) : f = 2 := by
  have he := cupcakes_given a b c d e f x; rcases x with ⟨ha,hb,hc,hd,hx,hf⟩; omega
theorem cupcakes_solution : Cupcakes 40 18 16 4 38 2 ∧ 38 = 38 ∧ 2 = 2 := by
  have x : Cupcakes 40 18 16 4 38 2 := by norm_num [Cupcakes]
  exact ⟨x, cupcakes_given _ _ _ _ _ _ x, cupcakes_left _ _ _ _ _ _ x⟩

theorem band_middle (a b c d e f g : Nat) (x : BandSets a b c d e f g) : e = 16 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg⟩; omega
theorem band_average (a b c d e f g : Nat) (x : BandSets a b c d e f g) : g = 8 := by
  have he := band_middle a b c d e f g x; rcases x with ⟨ha,hb,hc,hd,hx,hf,hg⟩; norm_num [he,hf] at hg; omega
theorem band_solution : BandSets 30 5 7 2 16 2 8 ∧ 16 = 16 ∧ 8 = 8 := by
  have x : BandSets 30 5 7 2 16 2 8 := by norm_num [BandSets]
  exact ⟨x, band_middle _ _ _ _ _ _ _ x, band_average _ _ _ _ _ _ _ x⟩

theorem pencils_count (a b c d e f g h : Nat) (x : PencilPurchase a b c d e f g h) : d = 10 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh⟩; norm_num [ha,hb,hc] at hd; exact hd
theorem pencils_cents (a b c d e f g h : Nat) (x : PencilPurchase a b c d e f g h) : f = 200 := by
  have hd := pencils_count a b c d e f g h x; rcases x with ⟨ha,hb,hc,hx,he,hf,hg,hh⟩; norm_num [hd,he] at hf; exact hf
theorem pencils_dollars (a b c d e f g h : Nat) (x : PencilPurchase a b c d e f g h) : h = 2 := by
  have hf := pencils_cents a b c d e f g h x; rcases x with ⟨ha,hb,hc,hd,he,hx,hg,hh⟩; norm_num [hf,hg] at hh; omega
theorem pencils_solution : PencilPurchase 3 5 2 10 20 200 100 2 ∧ 10 = 10 ∧ 200 = 200 ∧ 2 = 2 := by
  have x : PencilPurchase 3 5 2 10 20 200 100 2 := by norm_num [PencilPurchase]
  exact ⟨x, pencils_count _ _ _ _ _ _ _ _ x, pencils_cents _ _ _ _ _ _ _ _ x,
    pencils_dollars _ _ _ _ _ _ _ _ x⟩

theorem gummy_siblings (a b c d e f g h i : Nat) (x : GummyBears a b c d e f g h i) : d = 30 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh,hi⟩; norm_num [hb,hc] at hd; exact hd
theorem gummy_after_siblings (a b c d e f g h i : Nat) (x : GummyBears a b c d e f g h i) : e = 70 := by
  have hd := gummy_siblings a b c d e f g h i x; rcases x with ⟨ha,hb,hc,hx,he,hf,hg,hh,hi⟩; omega
theorem gummy_friend (a b c d e f g h i : Nat) (x : GummyBears a b c d e f g h i) : f = 35 := by
  have he := gummy_after_siblings a b c d e f g h i x; rcases x with ⟨ha,hb,hc,hd,hx,hf,hg,hh,hi⟩; omega
theorem gummy_share (a b c d e f g h i : Nat) (x : GummyBears a b c d e f g h i) : i = 19 := by
  have hf := gummy_friend a b c d e f g h i x; rcases x with ⟨ha,hb,hc,hd,he,hx,hg,hh,hi⟩; omega
theorem gummy_solution : GummyBears 100 3 10 30 70 35 35 16 19 ∧ 30 = 30 ∧ 70 = 70 ∧ 35 = 35 ∧ 19 = 19 := by
  have x : GummyBears 100 3 10 30 70 35 35 16 19 := by norm_num [GummyBears]
  exact ⟨x, gummy_siblings _ _ _ _ _ _ _ _ _ x, gummy_after_siblings _ _ _ _ _ _ _ _ _ x,
    gummy_friend _ _ _ _ _ _ _ _ _ x, gummy_share _ _ _ _ _ _ _ _ _ x⟩

theorem olivia_hours (a b c d e f : Nat) (x : OliviaPay a b c d e f) : e = 13 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf⟩; norm_num [hb,hc,hd] at he; exact he
theorem olivia_total (a b c d e f : Nat) (x : OliviaPay a b c d e f) : f = 117 := by
  have he := olivia_hours a b c d e f x; rcases x with ⟨ha,hb,hc,hd,hx,hf⟩; norm_num [ha,he] at hf; exact hf
theorem olivia_solution : OliviaPay 9 4 3 6 13 117 ∧ 13 = 13 ∧ 117 = 117 := by
  have x : OliviaPay 9 4 3 6 13 117 := by norm_num [OliviaPay]
  exact ⟨x, olivia_hours _ _ _ _ _ _ x, olivia_total _ _ _ _ _ _ x⟩

theorem crackers_extra (a b c d e : Nat) (x : CrackerSales a b c d e) : c = 30 := by
  rcases x with ⟨ha,hb,hc,hd,he⟩; norm_num [ha,hb] at hc; omega
theorem crackers_sunday (a b c d e : Nat) (x : CrackerSales a b c d e) : d = 90 := by
  have hc := crackers_extra a b c d e x; rcases x with ⟨ha,hb,hx,hd,he⟩; omega
theorem crackers_total (a b c d e : Nat) (x : CrackerSales a b c d e) : e = 150 := by
  have hd := crackers_sunday a b c d e x; rcases x with ⟨ha,hb,hc,hx,he⟩; omega
theorem crackers_solution : CrackerSales 60 50 30 90 150 ∧ 30 = 30 ∧ 90 = 90 ∧ 150 = 150 := by
  have x : CrackerSales 60 50 30 90 150 := by norm_num [CrackerSales]
  exact ⟨x, crackers_extra _ _ _ _ _ x, crackers_sunday _ _ _ _ _ x, crackers_total _ _ _ _ _ x⟩

theorem allowance_after_movie (a b c d e : Nat) (x : Allowance a b c d e) : c = 8 := by
  rcases x with ⟨ha,hb,hc,hd,he⟩; omega
theorem allowance_weekly (a b c d e : Nat) (x : Allowance a b c d e) : e = 16 := by
  have hc := allowance_after_movie a b c d e x; rcases x with ⟨ha,hb,hx,hd,he⟩; norm_num [hc,hd] at he; exact he
theorem allowance_solution : Allowance 14 6 8 2 16 ∧ 8 = 8 ∧ 16 = 16 := by
  have x : Allowance 14 6 8 2 16 := by norm_num [Allowance]
  exact ⟨x, allowance_after_movie _ _ _ _ _ x, allowance_weekly _ _ _ _ _ x⟩

#print axioms pets_solution
#print axioms ceilings_solution
#print axioms silk_solution
#print axioms errands_solution
#print axioms flashlight_solution
#print axioms bus_weeks_solution
#print axioms flats_solution
#print axioms trips_solution
#print axioms cupcakes_solution
#print axioms band_solution
#print axioms pencils_solution
#print axioms gummy_solution
#print axioms olivia_solution
#print axioms crackers_solution
#print axioms allowance_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A24.pets_solution to "work/gsm8k-sprint24-pets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A24.ceilings_solution to "work/gsm8k-sprint24-ceilings-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A24.silk_solution to "work/gsm8k-sprint24-silk-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A24.errands_solution to "work/gsm8k-sprint24-errands-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A24.flashlight_solution to "work/gsm8k-sprint24-flashlight-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A24.bus_weeks_solution to "work/gsm8k-sprint24-bus-weeks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A24.flats_solution to "work/gsm8k-sprint24-flats-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A24.trips_solution to "work/gsm8k-sprint24-trips-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A24.cupcakes_solution to "work/gsm8k-sprint24-cupcakes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A24.band_solution to "work/gsm8k-sprint24-band-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A24.pencils_solution to "work/gsm8k-sprint24-pencils-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A24.gummy_solution to "work/gsm8k-sprint24-gummy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A24.olivia_solution to "work/gsm8k-sprint24-olivia-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A24.crackers_solution to "work/gsm8k-sprint24-crackers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A24.allowance_solution to "work/gsm8k-sprint24-allowance-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A24
