import LemmaWeave.Problems.GSM8K.Daily0913CModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0913C
open LemmaWeave.Problems.GSM8K.Daily0913C

theorem icecream_strawberry_packages (a b c d e f g h i j k l m n o p : ℕ)
    (x : IceCreamCost a b c d e f g h i j k l m n o p) : c = 2 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn, ho, hp⟩
  norm_num [ha, hb] at hc
  omega
theorem icecream_raspberry_packages (a b c d e f g h i j k l m n o p : ℕ)
    (x : IceCreamCost a b c d e f g h i j k l m n o p) : d = 2 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn, ho, hp⟩
  norm_num [ha, hb] at hd
  omega
theorem icecream_berry_costs (a b c d e f g h i j k l m n o p : ℕ)
    (x : IceCreamCost a b c d e f g h i j k l m n o p) : g = 6 ∧ h = 10 := by
  have hc0 := icecream_strawberry_packages a b c d e f g h i j k l m n o p x
  have hd0 := icecream_raspberry_packages a b c d e f g h i j k l m n o p x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn, ho, hp⟩
  constructor
  · norm_num [hc0, he] at hg
    exact hg
  · norm_num [hd0, hf] at hh
    exact hh
theorem icecream_cream_cost (a b c d e f g h i j k l m n o p : ℕ)
    (x : IceCreamCost a b c d e f g h i j k l m n o p) : o = 4 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn, ho, hp⟩
  norm_num [hi, hj] at hk
  norm_num [hk, hl] at hm
  norm_num [hm, hn] at ho
  omega
theorem icecream_total (a b c d e f g h i j k l m n o p : ℕ)
    (x : IceCreamCost a b c d e f g h i j k l m n o p) : p = 20 := by
  have hgh := icecream_berry_costs a b c d e f g h i j k l m n o p x
  have ho0 := icecream_cream_cost a b c d e f g h i j k l m n o p x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn, ho, hp⟩
  norm_num [hgh.1, hgh.2, ho0] at hp
  exact hp
theorem icecream_solution :
    IceCreamCost 4 2 2 2 3 5 6 10 2 2 4 4 1 4 4 20 ∧
    (∀ a b c d e f g h i j k l m n o p, IceCreamCost a b c d e f g h i j k l m n o p → c = 2) ∧
    (∀ a b c d e f g h i j k l m n o p, IceCreamCost a b c d e f g h i j k l m n o p → d = 2) ∧
    (∀ a b c d e f g h i j k l m n o p, IceCreamCost a b c d e f g h i j k l m n o p → g = 6 ∧ h = 10) ∧
    (∀ a b c d e f g h i j k l m n o p, IceCreamCost a b c d e f g h i j k l m n o p → o = 4) ∧
    (∀ a b c d e f g h i j k l m n o p, IceCreamCost a b c d e f g h i j k l m n o p → p = 20) :=
  ⟨by norm_num [IceCreamCost], icecream_strawberry_packages, icecream_raspberry_packages,
    icecream_berry_costs, icecream_cream_cost, icecream_total⟩

theorem gifts_knife (a b c d e f g h i : ℕ) (x : GiftSale a b c d e f g h i) : d = 20 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [hc] at hd
  exact hd
theorem gifts_kit (a b c d e f g h i : ℕ) (x : GiftSale a b c d e f g h i) : e = 60 := by
  have hd0 := gifts_knife a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [ha, hb, hc, hd0] at he
  exact he
theorem gifts_sale_price (a b c d e f g h i : ℕ) (x : GiftSale a b c d e f g h i) : g = 45 := by
  have he0 := gifts_kit a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [he0, hf] at hg
  omega
theorem gifts_total (a b c d e f g h i : ℕ) (x : GiftSale a b c d e f g h i) : i = 135 := by
  have hg0 := gifts_sale_price a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [hg0, hh] at hi
  exact hi
theorem gifts_solution : GiftSale 14 16 10 20 60 25 45 3 135 ∧
    (∀ a b c d e f g h i, GiftSale a b c d e f g h i → d = 20) ∧
    (∀ a b c d e f g h i, GiftSale a b c d e f g h i → e = 60) ∧
    (∀ a b c d e f g h i, GiftSale a b c d e f g h i → g = 45) ∧
    (∀ a b c d e f g h i, GiftSale a b c d e f g h i → i = 135) :=
  ⟨by norm_num [GiftSale], gifts_knife, gifts_kit, gifts_sale_price, gifts_total⟩

theorem cake_total (a b c d e f g h : ℕ) (x : CakeSharing a b c d e f g h) : c = 16 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at hc
  exact hc
theorem cake_friend_share (a b c d e f g h : ℕ) (x : CakeSharing a b c d e f g h) : d = 4 ∧ e = 12 := by
  have hc0 := cake_total a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  omega
theorem cake_family_share (a b c d e f g h : ℕ) (x : CakeSharing a b c d e f g h) : f = 4 := by
  have he0 := (cake_friend_share a b c d e f g h x).2
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [he0] at hf
  omega
theorem cake_left (a b c d e f g h : ℕ) (x : CakeSharing a b c d e f g h) : h = 5 := by
  have he0 := (cake_friend_share a b c d e f g h x).2
  have hf0 := cake_family_share a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  omega
theorem cake_solution : CakeSharing 2 8 16 4 12 4 3 5 ∧
    (∀ a b c d e f g h, CakeSharing a b c d e f g h → c = 16) ∧
    (∀ a b c d e f g h, CakeSharing a b c d e f g h → d = 4 ∧ e = 12) ∧
    (∀ a b c d e f g h, CakeSharing a b c d e f g h → f = 4) ∧
    (∀ a b c d e f g h, CakeSharing a b c d e f g h → h = 5) :=
  ⟨by norm_num [CakeSharing], cake_total, cake_friend_share, cake_family_share, cake_left⟩

theorem drinks_wine_only (a b c d e f g h : ℕ) (x : DrinkGathering a b c d e f g h) : d = 9 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega
theorem drinks_soda_only (a b c d e f g h : ℕ) (x : DrinkGathering a b c d e f g h) : e = 5 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega
theorem drinks_union (a b c d e f g h : ℕ) (x : DrinkGathering a b c d e f g h) : f = 31 := by
  have hd0 := drinks_wine_only a b c d e f g h x
  have he0 := drinks_soda_only a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hd0, he0, hc] at hf
  exact hf
theorem drinks_total_if_everyone_took_a_drink (a b c d e f h : ℕ)
    (x : DrinkGathering a b c d e f 0 h) : h = 31 := by
  have hf0 := drinks_union a b c d e f 0 h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  simpa [hf0] using hg
theorem drinks_total_not_unique :
    DrinkGathering 26 22 17 9 5 31 0 31 ∧
    DrinkGathering 26 22 17 9 5 31 1 32 ∧ 31 ≠ 32 := by
  norm_num [DrinkGathering]
theorem drinks_solution :
    DrinkGathering 26 22 17 9 5 31 0 31 ∧
    (∀ a b c d e f g h, DrinkGathering a b c d e f g h → d = 9) ∧
    (∀ a b c d e f g h, DrinkGathering a b c d e f g h → e = 5) ∧
    (∀ a b c d e f g h, DrinkGathering a b c d e f g h → f = 31) ∧
    (∀ a b c d e f h, DrinkGathering a b c d e f 0 h → h = 31) ∧
    DrinkGathering 26 22 17 9 5 31 1 32 ∧ 31 ≠ 32 :=
  ⟨by norm_num [DrinkGathering], drinks_wine_only, drinks_soda_only, drinks_union,
    drinks_total_if_everyone_took_a_drink, drinks_total_not_unique.2⟩

theorem fuel_supermarket_round (a b c d e f g h i j : ℕ) (x : FuelConsumption a b c d e f g h i j) : b = 10 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [ha] at hb
  exact hb
theorem fuel_total_distance (a b c d e f g h i j : ℕ) (x : FuelConsumption a b c d e f g h i j) : f = 20 := by
  have hb0 := fuel_supermarket_round a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hc] at hd
  norm_num [hb0, hd, he] at hf
  exact hf
theorem fuel_rate (a b c d e f g h i j : ℕ) (x : FuelConsumption a b c d e f g h i j) : i = 10 ∧ j = 2 := by
  have hf0 := fuel_total_distance a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  have hi0 : i = 10 := by omega
  constructor
  · exact hi0
  · norm_num [hf0, hi0] at hj
    omega
theorem fuel_solution : FuelConsumption 5 10 2 4 6 20 12 2 10 2 ∧
    (∀ a b c d e f g h i j, FuelConsumption a b c d e f g h i j → b = 10) ∧
    (∀ a b c d e f g h i j, FuelConsumption a b c d e f g h i j → f = 20) ∧
    (∀ a b c d e f g h i j, FuelConsumption a b c d e f g h i j → i = 10 ∧ j = 2) :=
  ⟨by norm_num [FuelConsumption], fuel_supermarket_round, fuel_total_distance, fuel_rate⟩

theorem cows_female (a b c : ℕ) (x : PregnantCows a b c) : b = 22 := by
  rcases x with ⟨ha, hb, hc⟩
  omega
theorem cows_pregnant (a b c : ℕ) (x : PregnantCows a b c) : c = 11 := by
  have hb0 := cows_female a b c x
  rcases x with ⟨ha, hb, hc⟩
  omega
theorem cows_solution : PregnantCows 44 22 11 ∧
    (∀ a b c, PregnantCows a b c → b = 22) ∧
    (∀ a b c, PregnantCows a b c → c = 11) :=
  ⟨by norm_num [PregnantCows], cows_female, cows_pregnant⟩

theorem rope_required (a b c d e f g h : ℕ) (x : RopePurchase a b c d e f g h) : c = 60 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at hc
  exact hc
theorem rope_loss (a b c d e f g h : ℕ) (x : RopePurchase a b c d e f g h) : e = 5 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hd] at he
  omega
theorem rope_usable_piece (a b c d e f g h : ℕ) (x : RopePurchase a b c d e f g h) : f = 15 := by
  have he0 := rope_loss a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  omega
theorem rope_pieces (a b c d e f g h : ℕ) (x : RopePurchase a b c d e f g h) : g = 4 := by
  have hc0 := rope_required a b c d e f g h x
  have hf0 := rope_usable_piece a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hc0, hf0] at hg hh
  omega
theorem rope_solution : RopePurchase 6 10 60 20 5 15 4 60 ∧
    (∀ a b c d e f g h, RopePurchase a b c d e f g h → c = 60) ∧
    (∀ a b c d e f g h, RopePurchase a b c d e f g h → e = 5) ∧
    (∀ a b c d e f g h, RopePurchase a b c d e f g h → f = 15) ∧
    (∀ a b c d e f g h, RopePurchase a b c d e f g h → g = 4) :=
  ⟨by norm_num [RopePurchase], rope_required, rope_loss, rope_usable_piece, rope_pieces⟩

theorem dust_after_sweep (a b c d : ℕ) (x : DustSweep a b c d) : c = 108 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  omega
theorem dust_original (a b c d : ℕ) (x : DustSweep a b c d) : d = 1080 := by
  have hc0 := dust_after_sweep a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [hc0] at hd
  exact hd
theorem dust_solution : DustSweep 331 223 108 1080 ∧
    (∀ a b c d, DustSweep a b c d → c = 108) ∧
    (∀ a b c d, DustSweep a b c d → d = 1080) :=
  ⟨by norm_num [DustSweep], dust_after_sweep, dust_original⟩

theorem soccer_played (a b c d e : ℕ) (x : SoccerTime a b c d e) : d = 55 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hb, hc] at hd
  exact hd
theorem soccer_sideline (a b c d e : ℕ) (x : SoccerTime a b c d e) : e = 35 := by
  have hd0 := soccer_played a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem soccer_solution : SoccerTime 90 20 35 55 35 ∧
    (∀ a b c d e, SoccerTime a b c d e → d = 55) ∧
    (∀ a b c d e, SoccerTime a b c d e → e = 35) :=
  ⟨by norm_num [SoccerTime], soccer_played, soccer_sideline⟩

theorem television_daily (a b c d e f g h : ℕ) (x : TelevisionCost a b c d e f g h) : c = 500 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at hc
  exact hc
theorem television_weekly_energy (a b c d e f g h : ℕ) (x : TelevisionCost a b c d e f g h) : e = 3500 := by
  have hc0 := television_daily a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hc0, hd] at he
  exact he
theorem television_weekly_cost (a b c d e f g h : ℕ) (x : TelevisionCost a b c d e f g h) : h = 49 := by
  have he0 := television_weekly_energy a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [he0, hf, hg] at hh
  omega
theorem television_solution : TelevisionCost 125 4 500 7 3500 1000 14 49 ∧
    (∀ a b c d e f g h, TelevisionCost a b c d e f g h → c = 500) ∧
    (∀ a b c d e f g h, TelevisionCost a b c d e f g h → e = 3500) ∧
    (∀ a b c d e f g h, TelevisionCost a b c d e f g h → h = 49) :=
  ⟨by norm_num [TelevisionCost], television_daily, television_weekly_energy,
    television_weekly_cost⟩

end LemmaWeave.Tests.GSM8KDaily0913C

#print axioms LemmaWeave.Tests.GSM8KDaily0913C.icecream_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913C.gifts_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913C.cake_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913C.drinks_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913C.fuel_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913C.cows_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913C.rope_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913C.dust_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913C.soccer_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0913C.television_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913C.icecream_solution to "work/gsm8k-daily34-icecream-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913C.gifts_solution to "work/gsm8k-daily34-gifts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913C.cake_solution to "work/gsm8k-daily34-cake-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913C.drinks_solution to "work/gsm8k-daily34-drinks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913C.fuel_solution to "work/gsm8k-daily34-fuel-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913C.cows_solution to "work/gsm8k-daily34-cows-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913C.rope_solution to "work/gsm8k-daily34-rope-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913C.dust_solution to "work/gsm8k-daily34-dust-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913C.soccer_solution to "work/gsm8k-daily34-soccer-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0913C.television_solution to "work/gsm8k-daily34-television-graph.json"
