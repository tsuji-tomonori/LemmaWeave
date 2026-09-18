import LemmaWeave.Problems.GSM8K.Daily0908BModels
import LemmaWeave.Lemmas.ArithmeticMethods
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0908B
open LemmaWeave.Problems.GSM8K.Daily0908B

theorem weekly_reduction (r s h m p t : ℚ) (x : WeeklyEarnings r s h m p t) : r = 4 := by
  have hr := x.1
  norm_num at hr ⊢
  exact hr
theorem weekly_second_rate (r s h m p t : ℚ) (x : WeeklyEarnings r s h m p t) : s = 16 := by
  have hr := weekly_reduction r s h m p t x
  have hs := x.2.1
  linarith
theorem weekly_second_hours (r s h m p t : ℚ) (x : WeeklyEarnings r s h m p t) : h = 15 := by
  have hh := x.2.2.1
  norm_num at hh ⊢
  exact hh
theorem weekly_main_pay (r s h m p t : ℚ) (x : WeeklyEarnings r s h m p t) : m = 600 := by
  have hm := x.2.2.2.1
  norm_num at hm ⊢
  exact hm
theorem weekly_second_pay (r s h m p t : ℚ) (x : WeeklyEarnings r s h m p t) : p = 240 := by
  have hs := weekly_second_rate r s h m p t x
  have hh := weekly_second_hours r s h m p t x
  have hp := x.2.2.2.2.1
  nlinarith
theorem weekly_total (r s h m p t : ℚ) (x : WeeklyEarnings r s h m p t) : t = 840 := by
  have hm := weekly_main_pay r s h m p t x
  have hp := weekly_second_pay r s h m p t x
  have ht := x.2.2.2.2.2
  linarith
theorem weekly_exists : WeeklyEarnings 4 16 15 600 240 840 := by
  norm_num [WeeklyEarnings]
theorem weekly_solution :
    WeeklyEarnings 4 16 15 600 240 840 ∧
    (∀ r s h m p t, WeeklyEarnings r s h m p t → r = 4) ∧
    (∀ r s h m p t, WeeklyEarnings r s h m p t → s = 16) ∧
    (∀ r s h m p t, WeeklyEarnings r s h m p t → h = 15) ∧
    (∀ r s h m p t, WeeklyEarnings r s h m p t → m = 600) ∧
    (∀ r s h m p t, WeeklyEarnings r s h m p t → p = 240) ∧
    (∀ r s h m p t, WeeklyEarnings r s h m p t → t = 840) :=
  ⟨weekly_exists, weekly_reduction, weekly_second_rate, weekly_second_hours,
    weekly_main_pay, weekly_second_pay, weekly_total⟩

theorem lawn_base (b tips total : ℕ) (x : LawnEarnings b tips total) : b = 528 := by
  have hb := x.1
  norm_num at hb ⊢
  exact hb
theorem lawn_tips (b tips total : ℕ) (x : LawnEarnings b tips total) : tips = 30 := by
  have ht := x.2.1
  norm_num at ht ⊢
  exact ht
theorem lawn_total (b tips total : ℕ) (x : LawnEarnings b tips total) : total = 558 := by
  have hb := lawn_base b tips total x
  have hp := lawn_tips b tips total x
  have ht := x.2.2
  omega
theorem lawn_exists : LawnEarnings 528 30 558 := by norm_num [LawnEarnings]
theorem lawn_solution :
    LawnEarnings 528 30 558 ∧ (∀ b p t, LawnEarnings b p t → b = 528) ∧
    (∀ b p t, LawnEarnings b p t → p = 30) ∧
    (∀ b p t, LawnEarnings b p t → t = 558) :=
  ⟨lawn_exists, lawn_base, lawn_tips, lawn_total⟩

theorem laptop_required_down (r a p b : ℚ) (x : LaptopBalance r a p b) : r = 200 := by
  have hr := x.1
  norm_num at hr ⊢
  exact hr
theorem laptop_actual_down (r a p b : ℚ) (x : LaptopBalance r a p b) : a = 220 := by
  have hr := laptop_required_down r a p b x
  have ha := x.2.1
  linarith
theorem laptop_four_payments (r a p b : ℚ) (x : LaptopBalance r a p b) : p = 260 := by
  have hp := x.2.2.1
  norm_num at hp ⊢
  exact hp
theorem laptop_balance (r a p b : ℚ) (x : LaptopBalance r a p b) : b = 520 := by
  have ha := laptop_actual_down r a p b x
  have hp := laptop_four_payments r a p b x
  have hb := x.2.2.2
  linarith
theorem laptop_exists : LaptopBalance 200 220 260 520 := by norm_num [LaptopBalance]
theorem laptop_solution :
    LaptopBalance 200 220 260 520 ∧ (∀ r a p b, LaptopBalance r a p b → r = 200) ∧
    (∀ r a p b, LaptopBalance r a p b → a = 220) ∧
    (∀ r a p b, LaptopBalance r a p b → p = 260) ∧
    (∀ r a p b, LaptopBalance r a p b → b = 520) :=
  ⟨laptop_exists, laptop_required_down, laptop_actual_down, laptop_four_payments, laptop_balance⟩

theorem race_jesse_first (jf jr jd mf mr md av : ℚ) (x : RaceAverage jf jr jd mf mr md av) : jf = 2 := by
  have h := x.1
  norm_num at h ⊢
  exact h
theorem race_jesse_remaining (jf jr jd mf mr md av : ℚ) (x : RaceAverage jf jr jd mf mr md av) : jr = 18 := by
  have hj := race_jesse_first jf jr jd mf mr md av x
  have hr := x.2.1
  linarith
theorem race_jesse_daily (jf jr jd mf mr md av : ℚ) (x : RaceAverage jf jr jd mf mr md av) : jd = 6 := by
  have hr := race_jesse_remaining jf jr jd mf mr md av x
  have hd := x.2.2.1
  linarith
theorem race_mia_first (jf jr jd mf mr md av : ℚ) (x : RaceAverage jf jr jd mf mr md av) : mf = 12 := by
  have hm := x.2.2.2.1
  norm_num at hm ⊢
  exact hm
theorem race_mia_remaining (jf jr jd mf mr md av : ℚ) (x : RaceAverage jf jr jd mf mr md av) : mr = 18 := by
  have hm := race_mia_first jf jr jd mf mr md av x
  have hr := x.2.2.2.2.1
  linarith
theorem race_mia_daily (jf jr jd mf mr md av : ℚ) (x : RaceAverage jf jr jd mf mr md av) : md = 6 := by
  have hr := race_mia_remaining jf jr jd mf mr md av x
  have hd := x.2.2.2.2.2.1
  linarith
theorem race_average (jf jr jd mf mr md av : ℚ) (x : RaceAverage jf jr jd mf mr md av) : av = 6 := by
  have hj := race_jesse_daily jf jr jd mf mr md av x
  have hm := race_mia_daily jf jr jd mf mr md av x
  have ha := x.2.2.2.2.2.2
  linarith
theorem race_exists : RaceAverage 2 18 6 12 18 6 6 := by norm_num [RaceAverage]
theorem race_solution :
    RaceAverage 2 18 6 12 18 6 6 ∧
    (∀ jf jr jd mf mr md av, RaceAverage jf jr jd mf mr md av → jf = 2) ∧
    (∀ jf jr jd mf mr md av, RaceAverage jf jr jd mf mr md av → jr = 18) ∧
    (∀ jf jr jd mf mr md av, RaceAverage jf jr jd mf mr md av → jd = 6) ∧
    (∀ jf jr jd mf mr md av, RaceAverage jf jr jd mf mr md av → mf = 12) ∧
    (∀ jf jr jd mf mr md av, RaceAverage jf jr jd mf mr md av → mr = 18) ∧
    (∀ jf jr jd mf mr md av, RaceAverage jf jr jd mf mr md av → md = 6) ∧
    (∀ jf jr jd mf mr md av, RaceAverage jf jr jd mf mr md av → av = 6) :=
  ⟨race_exists, race_jesse_first, race_jesse_remaining, race_jesse_daily,
    race_mia_first, race_mia_remaining, race_mia_daily, race_average⟩

theorem ratio_total (r a s l : ℚ) (x : CoinRatio r a s l) : r = 55 := by
  have hr := x.1
  norm_num at hr ⊢
  exact hr
theorem ratio_amalie (r a s l : ℚ) (x : CoinRatio r a s l) : a = 360 := by
  have hr := ratio_total r a s l x
  have ha := x.2.1
  rw [hr] at ha
  norm_num at ha ⊢
  exact ha
theorem ratio_spent (r a s l : ℚ) (x : CoinRatio r a s l) : s = 270 := by
  have ha := ratio_amalie r a s l x
  have hs := x.2.2.1
  rw [ha] at hs
  norm_num at hs ⊢
  exact hs
theorem ratio_left (r a s l : ℚ) (x : CoinRatio r a s l) : l = 90 := by
  have ha := ratio_amalie r a s l x
  have hs := ratio_spent r a s l x
  have hl := x.2.2.2
  linarith
theorem ratio_exists : CoinRatio 55 360 270 90 := by norm_num [CoinRatio]
theorem ratio_solution :
    CoinRatio 55 360 270 90 ∧ (∀ r a s l, CoinRatio r a s l → r = 55) ∧
    (∀ r a s l, CoinRatio r a s l → a = 360) ∧
    (∀ r a s l, CoinRatio r a s l → s = 270) ∧
    (∀ r a s l, CoinRatio r a s l → l = 90) :=
  ⟨ratio_exists, ratio_total, ratio_amalie, ratio_spent, ratio_left⟩

theorem arms_starfish (s t : ℕ) (x : StarfishArms s t) : s = 35 := by
  have hs := x.1
  norm_num at hs ⊢
  exact hs
theorem arms_total (s t : ℕ) (x : StarfishArms s t) : t = 49 := by
  have hs := arms_starfish s t x
  have ht := x.2
  omega
theorem arms_exists : StarfishArms 35 49 := by norm_num [StarfishArms]
theorem arms_solution : StarfishArms 35 49 ∧
    (∀ s t, StarfishArms s t → s = 35) ∧ (∀ s t, StarfishArms s t → t = 49) :=
  ⟨arms_exists, arms_starfish, arms_total⟩

theorem apples_tim (t h : ℕ) (x : AppleCounts t h) : t = 38 := by
  have ht := x.1
  norm_num at ht ⊢
  exact ht
theorem apples_harry (t h : ℕ) (x : AppleCounts t h) : h = 19 := by
  have ht := apples_tim t h x
  have hh := x.2
  rw [ht] at hh
  norm_num at hh ⊢
  exact hh
theorem apples_exists : AppleCounts 38 19 := by norm_num [AppleCounts]
theorem apples_solution : AppleCounts 38 19 ∧
    (∀ t h, AppleCounts t h → t = 38) ∧ (∀ t h, AppleCounts t h → h = 19) :=
  ⟨apples_exists, apples_tim, apples_harry⟩

theorem craft_sales (s w l : ℕ) (x : CraftCash s w l) : s = 36 := by
  have hs := x.1
  norm_num at hs ⊢
  exact hs
theorem craft_with_tip (s w l : ℕ) (x : CraftCash s w l) : w = 43 := by
  have hs := craft_sales s w l x
  have hw := x.2.1
  omega
theorem craft_left (s w l : ℕ) (x : CraftCash s w l) : l = 25 := by
  have hw := craft_with_tip s w l x
  have hl := x.2.2
  omega
theorem craft_exists : CraftCash 36 43 25 := by norm_num [CraftCash]
theorem craft_solution : CraftCash 36 43 25 ∧
    (∀ s w l, CraftCash s w l → s = 36) ∧
    (∀ s w l, CraftCash s w l → w = 43) ∧
    (∀ s w l, CraftCash s w l → l = 25) :=
  ⟨craft_exists, craft_sales, craft_with_tip, craft_left⟩

theorem aquarium_capacity (c s t : ℚ) (x : AquariumWater c s t) : c = 72 := by
  have hc := x.1
  norm_num at hc ⊢
  exact hc
theorem aquarium_after_spill (c s t : ℚ) (x : AquariumWater c s t) : s = 18 := by
  have hc := aquarium_capacity c s t x
  have hs := x.2.1
  rw [hc] at hs
  norm_num at hs ⊢
  exact hs
theorem aquarium_after_triple (c s t : ℚ) (x : AquariumWater c s t) : t = 54 := by
  have hs := aquarium_after_spill c s t x
  have ht := x.2.2
  linarith
theorem aquarium_exists : AquariumWater 72 18 54 := by norm_num [AquariumWater]
theorem aquarium_solution : AquariumWater 72 18 54 ∧
    (∀ c s t, AquariumWater c s t → c = 72) ∧
    (∀ c s t, AquariumWater c s t → s = 18) ∧
    (∀ c s t, AquariumWater c s t → t = 54) :=
  ⟨aquarium_exists, aquarium_capacity, aquarium_after_spill, aquarium_after_triple⟩

theorem trail_people (p k : ℕ) (x : TrailMix p k) : p = 18 := by
  have hp := x.1
  norm_num at hp ⊢
  exact hp
theorem trail_packs (p k : ℕ) (x : TrailMix p k) : k = 3 := by
  have hp := trail_people p k x
  have hk := x.2
  rw [hp] at hk
  norm_num at hk ⊢
  exact hk
theorem trail_exists : TrailMix 18 3 := by norm_num [TrailMix]
theorem trail_solution : TrailMix 18 3 ∧
    (∀ p k, TrailMix p k → p = 18) ∧ (∀ p k, TrailMix p k → k = 3) :=
  ⟨trail_exists, trail_people, trail_packs⟩

end LemmaWeave.Tests.GSM8KDaily0908B

#print axioms LemmaWeave.Tests.GSM8KDaily0908B.weekly_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908B.lawn_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908B.laptop_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908B.race_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908B.ratio_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908B.arms_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908B.apples_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908B.craft_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908B.aquarium_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908B.trail_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908B.weekly_solution to "work/gsm8k-daily7-weekly-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908B.lawn_solution to "work/gsm8k-daily7-lawn-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908B.laptop_solution to "work/gsm8k-daily7-laptop-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908B.race_solution to "work/gsm8k-daily7-race-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908B.ratio_solution to "work/gsm8k-daily7-ratio-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908B.arms_solution to "work/gsm8k-daily7-arms-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908B.apples_solution to "work/gsm8k-daily7-apples-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908B.craft_solution to "work/gsm8k-daily7-craft-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908B.aquarium_solution to "work/gsm8k-daily7-aquarium-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908B.trail_solution to "work/gsm8k-daily7-trail-graph.json"
