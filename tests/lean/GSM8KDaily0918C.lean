import LemmaWeave.Problems.GSM8K.Daily0918CModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0918C
open LemmaWeave.Problems.GSM8K.Daily0918C

theorem stickers_after_boy (a b c d e : Nat) (h : StickerSharing a b c d e) : c = 90 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  omega

theorem stickers_given_friends (a b c d e : Nat) (h : StickerSharing a b c d e) : d = 45 := by
  have hc := stickers_after_boy a b c d e h
  rcases h with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc] at hd
  omega

theorem stickers_remaining (a b c d e : Nat) (h : StickerSharing a b c d e) : e = 45 := by
  have hc := stickers_after_boy a b c d e h
  have hd := stickers_given_friends a b c d e h
  rcases h with ⟨ha, hb, hx, hy, he⟩
  omega

theorem stickers_solution : StickerSharing 100 10 90 45 45 ∧
    90 = 90 ∧ 45 = 45 ∧ 45 = 45 := by
  have h : StickerSharing 100 10 90 45 45 := by norm_num [StickerSharing]
  exact ⟨h, stickers_after_boy _ _ _ _ _ h, stickers_given_friends _ _ _ _ _ h,
    stickers_remaining _ _ _ _ _ h⟩

theorem ice_drop (a b c d e f g h i j : Nat) (x : IceRiskConditional a b c d e f g h i j) : c = 24 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [ha, hb] at hc
  omega

theorem ice_steps (a b c d e f g h i j : Nat) (x : IceRiskConditional a b c d e f g h i j) : e = 8 := by
  have hc := ice_drop a b c d e f g h i j x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hc, hd] at he
  omega

theorem ice_added_risk (a b c d e f g h i j : Nat) (x : IceRiskConditional a b c d e f g h i j) : g = 40 := by
  have he := ice_steps a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg, hh, hi, hj⟩
  norm_num [he, hf] at hg
  exact hg

theorem ice_serious_after_skid (a b c d e f g h i j : Nat)
    (x : IceRiskConditional a b c d e f g h i j) : i = 60 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hh] at hi
  omega

theorem ice_accident_zero_baseline (a b c d e f g h i j : Nat)
    (x : IceRiskConditional a b c d e f g h i j) : j = 24 := by
  have hg := ice_added_risk a b c d e f g h i j x
  have hi := ice_serious_after_skid a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hx, hh, hy, hj⟩
  norm_num [hg, hi] at hj
  omega

theorem ice_baseline_counterexamples :
    IceRiskWithBaseline 0 40 60 24 ∧ IceRiskWithBaseline 10 50 60 30 ∧ 24 ≠ 30 := by
  norm_num [IceRiskWithBaseline]

theorem ice_solution : IceRiskConditional 32 8 24 3 8 5 40 40 60 24 ∧
    24 = 24 ∧ 8 = 8 ∧ 40 = 40 ∧ 60 = 60 ∧ 24 = 24 ∧
    (IceRiskWithBaseline 0 40 60 24 ∧ IceRiskWithBaseline 10 50 60 30 ∧ 24 ≠ 30) := by
  have h : IceRiskConditional 32 8 24 3 8 5 40 40 60 24 := by
    norm_num [IceRiskConditional]
  exact ⟨h, ice_drop _ _ _ _ _ _ _ _ _ _ h, ice_steps _ _ _ _ _ _ _ _ _ _ h,
    ice_added_risk _ _ _ _ _ _ _ _ _ _ h, ice_serious_after_skid _ _ _ _ _ _ _ _ _ _ h,
    ice_accident_zero_baseline _ _ _ _ _ _ _ _ _ _ h, ice_baseline_counterexamples⟩

theorem homework_history_mult (a b c d : Nat) (h : HomeworkMultiplicative a b c d) : b = 40 := by
  rcases h with ⟨ha, hb, hc, hd⟩
  norm_num [ha] at hb
  exact hb

theorem homework_geography_mult (a b c d : Nat) (h : HomeworkMultiplicative a b c d) : c = 120 := by
  have hb := homework_history_mult a b c d h
  rcases h with ⟨ha, hx, hc, hd⟩
  norm_num [hb] at hc
  exact hc

theorem homework_total_mult (a b c d : Nat) (h : HomeworkMultiplicative a b c d) : d = 180 := by
  have hb := homework_history_mult a b c d h
  have hc := homework_geography_mult a b c d h
  rcases h with ⟨ha, hx, hy, hd⟩
  norm_num [ha, hb, hc] at hd
  exact hd

theorem homework_history_literal (a b c d : Nat) (h : HomeworkLiteralMore a b c d) : b = 60 := by
  rcases h with ⟨ha, hb, hc, hd⟩
  norm_num [ha] at hb
  exact hb

theorem homework_geography_literal (a b c d : Nat) (h : HomeworkLiteralMore a b c d) : c = 240 := by
  have hb := homework_history_literal a b c d h
  rcases h with ⟨ha, hx, hc, hd⟩
  norm_num [hb] at hc
  exact hc

theorem homework_total_literal (a b c d : Nat) (h : HomeworkLiteralMore a b c d) : d = 320 := by
  have hb := homework_history_literal a b c d h
  have hc := homework_geography_literal a b c d h
  rcases h with ⟨ha, hx, hy, hd⟩
  norm_num [ha, hb, hc] at hd
  exact hd

theorem homework_interpretations_differ : 180 ≠ 320 := by
  norm_num

theorem homework_solution : HomeworkMultiplicative 20 40 120 180 ∧
    40 = 40 ∧ 120 = 120 ∧ 180 = 180 ∧ HomeworkLiteralMore 20 60 240 320 ∧
    60 = 60 ∧ 240 = 240 ∧ 320 = 320 ∧ 180 ≠ 320 := by
  have hm : HomeworkMultiplicative 20 40 120 180 := by norm_num [HomeworkMultiplicative]
  have hl : HomeworkLiteralMore 20 60 240 320 := by norm_num [HomeworkLiteralMore]
  exact ⟨hm, homework_history_mult _ _ _ _ hm, homework_geography_mult _ _ _ _ hm,
    homework_total_mult _ _ _ _ hm, hl, homework_history_literal _ _ _ _ hl,
    homework_geography_literal _ _ _ _ hl, homework_total_literal _ _ _ _ hl,
    homework_interpretations_differ⟩

theorem bike_evening (a b c d : Nat) (h : BikeRide a b c d) : c = 10 := by
  rcases h with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb] at hc
  exact hc

theorem bike_total (a b c d : Nat) (h : BikeRide a b c d) : d = 12 := by
  have hc := bike_evening a b c d h
  rcases h with ⟨ha, hb, hx, hd⟩
  norm_num [ha, hc] at hd
  exact hd

theorem bike_solution : BikeRide 2 5 10 12 ∧ 10 = 10 ∧ 12 = 12 := by
  have h : BikeRide 2 5 10 12 := by norm_num [BikeRide]
  exact ⟨h, bike_evening _ _ _ _ h, bike_total _ _ _ _ h⟩

theorem marble_pair_total (a b c d e f : Nat) (h : MarbleShare a b c d e f) : c = 45 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb] at hc
  omega

theorem marble_elliot (a b c d e f : Nat) (h : MarbleShare a b c d e f) : d = 15 := by
  have hc := marble_pair_total a b c d e f h
  rcases h with ⟨ha, hb, hx, hd, he, hf⟩
  norm_num [hc, hd] at he hf
  omega

theorem marble_merill (a b c d e f : Nat) (h : MarbleShare a b c d e f) : f = 30 := by
  have hd := marble_elliot a b c d e f h
  rcases h with ⟨ha, hb, hc, he, hm, hf⟩
  norm_num [hd, he] at hm
  exact hm

theorem marble_solution : MarbleShare 50 5 45 15 2 30 ∧ 45 = 45 ∧ 15 = 15 ∧ 30 = 30 := by
  have h : MarbleShare 50 5 45 15 2 30 := by norm_num [MarbleShare]
  exact ⟨h, marble_pair_total _ _ _ _ _ _ h, marble_elliot _ _ _ _ _ _ h,
    marble_merill _ _ _ _ _ _ h⟩

theorem croissant_weekly (a b c d e f : Nat) (h : CroissantYear a b c d e f) : c = 900 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb] at hc
  exact hc

theorem croissant_annual_cents (a b c d e f : Nat) (h : CroissantYear a b c d e f) : e = 46800 := by
  have hc := croissant_weekly a b c d e f h
  rcases h with ⟨ha, hb, hx, hd, he, hf⟩
  norm_num [hc, hd] at he
  exact he

theorem croissant_annual_dollars (a b c d e f : Nat) (h : CroissantYear a b c d e f) : f = 468 := by
  have he := croissant_annual_cents a b c d e f h
  rcases h with ⟨ha, hb, hc, hd, hx, hf⟩
  norm_num [he] at hf
  omega

theorem croissant_solution : CroissantYear 350 550 900 52 46800 468 ∧
    900 = 900 ∧ 46800 = 46800 ∧ 468 = 468 := by
  have h : CroissantYear 350 550 900 52 46800 468 := by norm_num [CroissantYear]
  exact ⟨h, croissant_weekly _ _ _ _ _ _ h, croissant_annual_cents _ _ _ _ _ _ h,
    croissant_annual_dollars _ _ _ _ _ _ h⟩

theorem rock_after_limestone (a b c d e f g h i j : Nat) (x : RockLayers a b c d e f g h i j) : c = 20 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [ha, hb] at hc
  omega

theorem rock_sandstone (a b c d e f g h i j : Nat) (x : RockLayers a b c d e f g h i j) : d = 10 := by
  have hc := rock_after_limestone a b c d e f g h i j x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hc] at hd
  omega

theorem rock_after_sandstone (a b c d e f g h i j : Nat) (x : RockLayers a b c d e f g h i j) : e = 10 := by
  have hc := rock_after_limestone a b c d e f g h i j x
  have hd := rock_sandstone a b c d e f g h i j x
  rcases x with ⟨ha, hb, hx, hy, he, hf, hg, hh, hi, hj⟩
  omega

theorem rock_after_quartz (a b c d e f g h i j : Nat) (x : RockLayers a b c d e f g h i j) : g = 6 := by
  have he := rock_after_sandstone a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg, hh, hi, hj⟩
  norm_num [he, hf] at hg
  omega

theorem rock_shale (a b c d e f g h i j : Nat) (x : RockLayers a b c d e f g h i j) : h = 3 := by
  have hg := rock_after_quartz a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hx, hh, hi, hj⟩
  norm_num [hg] at hh
  omega

theorem rock_singleton_kinds (a b c d e f g h i j : Nat) (x : RockLayers a b c d e f g h i j) : j = 3 := by
  have hg := rock_after_quartz a b c d e f g h i j x
  have hh := rock_shale a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hx, hy, hi, hj⟩
  omega

theorem rock_solution : RockLayers 25 5 20 10 10 4 6 3 3 3 ∧
    20 = 20 ∧ 10 = 10 ∧ 10 = 10 ∧ 6 = 6 ∧ 3 = 3 ∧ 3 = 3 := by
  have h : RockLayers 25 5 20 10 10 4 6 3 3 3 := by norm_num [RockLayers]
  exact ⟨h, rock_after_limestone _ _ _ _ _ _ _ _ _ _ h, rock_sandstone _ _ _ _ _ _ _ _ _ _ h,
    rock_after_sandstone _ _ _ _ _ _ _ _ _ _ h, rock_after_quartz _ _ _ _ _ _ _ _ _ _ h,
    rock_shale _ _ _ _ _ _ _ _ _ _ h, rock_singleton_kinds _ _ _ _ _ _ _ _ _ _ h⟩

theorem strawberry_picked (a b c d e : Nat) (h : StrawberryShare a b c d e) : c = 24 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc

theorem strawberry_remaining (a b c d e : Nat) (h : StrawberryShare a b c d e) : e = 18 := by
  have hc := strawberry_picked a b c d e h
  rcases h with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  omega

theorem strawberry_solution : StrawberryShare 2 12 24 6 18 ∧ 24 = 24 ∧ 18 = 18 := by
  have h : StrawberryShare 2 12 24 6 18 := by norm_num [StrawberryShare]
  exact ⟨h, strawberry_picked _ _ _ _ _ h, strawberry_remaining _ _ _ _ _ h⟩

theorem owl_heard (a b c d e : Nat) (h : OwlCount a b c d e) : c = 15 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  omega

theorem owl_count (a b c d e : Nat) (h : OwlCount a b c d e) : e = 3 := by
  have hc := owl_heard a b c d e h
  rcases h with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  omega

theorem owl_solution : OwlCount 20 5 15 5 3 ∧ 15 = 15 ∧ 3 = 3 := by
  have h : OwlCount 20 5 15 5 3 := by norm_num [OwlCount]
  exact ⟨h, owl_heard _ _ _ _ _ h, owl_count _ _ _ _ _ h⟩

theorem laundry_pods (a b c d e : Nat) (h : LaundryPacks a b c d e) : c = 156 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc

theorem laundry_packs (a b c d e : Nat) (h : LaundryPacks a b c d e) : e = 4 := by
  have hc := laundry_pods a b c d e h
  rcases h with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  omega

theorem laundry_solution : LaundryPacks 3 52 156 39 4 ∧ 156 = 156 ∧ 4 = 4 := by
  have h : LaundryPacks 3 52 156 39 4 := by norm_num [LaundryPacks]
  exact ⟨h, laundry_pods _ _ _ _ _ h, laundry_packs _ _ _ _ _ h⟩

#print axioms stickers_solution
#print axioms ice_solution
#print axioms homework_solution
#print axioms bike_solution
#print axioms marble_solution
#print axioms croissant_solution
#print axioms rock_solution
#print axioms strawberry_solution
#print axioms owl_solution
#print axioms laundry_solution
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918C.stickers_solution to "work/gsm8k-daily52-stickers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918C.ice_solution to "work/gsm8k-daily52-ice-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918C.homework_solution to "work/gsm8k-daily52-homework-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918C.bike_solution to "work/gsm8k-daily52-bike-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918C.marble_solution to "work/gsm8k-daily52-marble-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918C.croissant_solution to "work/gsm8k-daily52-croissant-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918C.rock_solution to "work/gsm8k-daily52-rock-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918C.strawberry_solution to "work/gsm8k-daily52-strawberry-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918C.owl_solution to "work/gsm8k-daily52-owl-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0918C.laundry_solution to "work/gsm8k-daily52-laundry-graph.json"

end LemmaWeave.Tests.GSM8KDaily0918C
