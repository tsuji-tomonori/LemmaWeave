import LemmaWeave.Problems.GSM8K.Daily0908CModels
import LemmaWeave.Lemmas.ArithmeticMethods
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0908C
open LemmaWeave.Problems.GSM8K.Daily0908C

theorem weight_second (s r e : ℕ) (x : WeightLoss s r e) : s = 20 := by
  have hs := x.1
  norm_num at hs ⊢
  exact hs
theorem weight_remaining (s r e : ℕ) (x : WeightLoss s r e) : r = 56 := by
  have hs := weight_second s r e x
  have hr := x.2.1
  omega
theorem weight_each (s r e : ℕ) (x : WeightLoss s r e) : e = 28 := by
  have hr := weight_remaining s r e x
  have he := x.2.2
  rw [hr] at he
  norm_num at he ⊢
  exact he
theorem weight_exists : WeightLoss 20 56 28 := by norm_num [WeightLoss]
theorem weight_solution : WeightLoss 20 56 28 ∧
    (∀ s r e, WeightLoss s r e → s = 20) ∧
    (∀ s r e, WeightLoss s r e → r = 56) ∧
    (∀ s r e, WeightLoss s r e → e = 28) :=
  ⟨weight_exists, weight_second, weight_remaining, weight_each⟩

theorem breakfast_dale_toast (dt atc de ae t : ℕ) (x : BreakfastCost dt atc de ae t) : dt = 2 := by
  have h := x.1
  norm_num at h ⊢
  exact h
theorem breakfast_andrew_toast (dt atc de ae t : ℕ) (x : BreakfastCost dt atc de ae t) : atc = 1 := by
  have h := x.2.1
  norm_num at h ⊢
  exact h
theorem breakfast_dale_eggs (dt atc de ae t : ℕ) (x : BreakfastCost dt atc de ae t) : de = 6 := by
  have h := x.2.2.1
  norm_num at h ⊢
  exact h
theorem breakfast_andrew_eggs (dt atc de ae t : ℕ) (x : BreakfastCost dt atc de ae t) : ae = 6 := by
  have h := x.2.2.2.1
  norm_num at h ⊢
  exact h
theorem breakfast_total (dt atc de ae t : ℕ) (x : BreakfastCost dt atc de ae t) : t = 15 := by
  have hdt := breakfast_dale_toast dt atc de ae t x
  have hat := breakfast_andrew_toast dt atc de ae t x
  have hde := breakfast_dale_eggs dt atc de ae t x
  have hae := breakfast_andrew_eggs dt atc de ae t x
  have ht := x.2.2.2.2
  omega
theorem breakfast_exists : BreakfastCost 2 1 6 6 15 := by norm_num [BreakfastCost]
theorem breakfast_solution : BreakfastCost 2 1 6 6 15 ∧
    (∀ dt atc de ae t, BreakfastCost dt atc de ae t → dt = 2) ∧
    (∀ dt atc de ae t, BreakfastCost dt atc de ae t → atc = 1) ∧
    (∀ dt atc de ae t, BreakfastCost dt atc de ae t → de = 6) ∧
    (∀ dt atc de ae t, BreakfastCost dt atc de ae t → ae = 6) ∧
    (∀ dt atc de ae t, BreakfastCost dt atc de ae t → t = 15) :=
  ⟨breakfast_exists, breakfast_dale_toast, breakfast_andrew_toast,
    breakfast_dale_eggs, breakfast_andrew_eggs, breakfast_total⟩

theorem vegetables_cucumbers (c p t : ℕ) (x : VegetableCount c p t) : c = 177 := by
  have hc := x.1
  norm_num at hc ⊢
  exact hc
theorem vegetables_peppers (c p t : ℕ) (x : VegetableCount c p t) : p = 354 := by
  have hc := vegetables_cucumbers c p t x
  have hp := x.2.1
  omega
theorem vegetables_total (c p t : ℕ) (x : VegetableCount c p t) : t = 768 := by
  have hc := vegetables_cucumbers c p t x
  have hp := vegetables_peppers c p t x
  have ht := x.2.2
  omega
theorem vegetables_exists : VegetableCount 177 354 768 := by norm_num [VegetableCount]
theorem vegetables_solution : VegetableCount 177 354 768 ∧
    (∀ c p t, VegetableCount c p t → c = 177) ∧
    (∀ c p t, VegetableCount c p t → p = 354) ∧
    (∀ c p t, VegetableCount c p t → t = 768) :=
  ⟨vegetables_exists, vegetables_cucumbers, vegetables_peppers, vegetables_total⟩

theorem boxer_loss (l w : ℕ) (x : BoxerWeight l w) : l = 12 := by
  have hl := x.1
  norm_num at hl ⊢
  exact hl
theorem boxer_final (l w : ℕ) (x : BoxerWeight l w) : w = 85 := by
  have hl := boxer_loss l w x
  have hw := x.2
  omega
theorem boxer_exists : BoxerWeight 12 85 := by norm_num [BoxerWeight]
theorem boxer_solution : BoxerWeight 12 85 ∧
    (∀ l w, BoxerWeight l w → l = 12) ∧ (∀ l w, BoxerWeight l w → w = 85) :=
  ⟨boxer_exists, boxer_loss, boxer_final⟩

theorem cookies_total (t p l : ℕ) (x : CookieSlices t p l) : t = 30 := by
  have ht := x.1
  norm_num at ht ⊢
  exact ht
theorem cookies_people (t p l : ℕ) (x : CookieSlices t p l) : p = 26 := by
  have hp := x.2.1
  norm_num at hp ⊢
  exact hp
theorem cookies_left (t p l : ℕ) (x : CookieSlices t p l) : l = 4 := by
  have ht := cookies_total t p l x
  have hp := cookies_people t p l x
  have hl := x.2.2
  omega
theorem cookies_exists : CookieSlices 30 26 4 := by norm_num [CookieSlices]
theorem cookies_solution : CookieSlices 30 26 4 ∧
    (∀ t p l, CookieSlices t p l → t = 30) ∧
    (∀ t p l, CookieSlices t p l → p = 26) ∧
    (∀ t p l, CookieSlices t p l → l = 4) :=
  ⟨cookies_exists, cookies_total, cookies_people, cookies_left⟩

theorem teaching_partner (p c : ℕ) (x : TeachingExperience p c) : p = 30 := by
  have hp := x.1
  norm_num at hp ⊢
  exact hp
theorem teaching_combined (p c : ℕ) (x : TeachingExperience p c) : c = 70 := by
  have hp := teaching_partner p c x
  have hc := x.2
  omega
theorem teaching_exists : TeachingExperience 30 70 := by norm_num [TeachingExperience]
theorem teaching_solution : TeachingExperience 30 70 ∧
    (∀ p c, TeachingExperience p c → p = 30) ∧
    (∀ p c, TeachingExperience p c → c = 70) :=
  ⟨teaching_exists, teaching_partner, teaching_combined⟩

theorem milk_groups (g a t : ℕ) (x : MilkPurchase g a t) : g = 10 := by
  have hg := x.1
  norm_num at hg ⊢
  exact hg
theorem milk_additional (g a t : ℕ) (x : MilkPurchase g a t) : a = 60 := by
  have hg := milk_groups g a t x
  have ha := x.2.1
  omega
theorem milk_total (g a t : ℕ) (x : MilkPurchase g a t) : t = 100 := by
  have ha := milk_additional g a t x
  have ht := x.2.2
  omega
theorem milk_exists : MilkPurchase 10 60 100 := by norm_num [MilkPurchase]
theorem milk_solution : MilkPurchase 10 60 100 ∧
    (∀ g a t, MilkPurchase g a t → g = 10) ∧
    (∀ g a t, MilkPurchase g a t → a = 60) ∧
    (∀ g a t, MilkPurchase g a t → t = 100) :=
  ⟨milk_exists, milk_groups, milk_additional, milk_total⟩

theorem skipping_round1 (r1 r2 r3 r4 t a : ℕ) (x : SkippingAverage r1 r2 r3 r4 t a) : r1 = 15 := by
  have h := x.1
  norm_num at h ⊢
  exact h
theorem skipping_round2 (r1 r2 r3 r4 t a : ℕ) (x : SkippingAverage r1 r2 r3 r4 t a) : r2 = 13 := by
  have h := x.2.1
  norm_num at h ⊢
  exact h
theorem skipping_round3 (r1 r2 r3 r4 t a : ℕ) (x : SkippingAverage r1 r2 r3 r4 t a) : r3 = 20 := by
  have h := x.2.2.1
  norm_num at h ⊢
  exact h
theorem skipping_round4 (r1 r2 r3 r4 t a : ℕ) (x : SkippingAverage r1 r2 r3 r4 t a) : r4 = 8 := by
  have h := x.2.2.2.1
  norm_num at h ⊢
  exact h
theorem skipping_total (r1 r2 r3 r4 t a : ℕ) (x : SkippingAverage r1 r2 r3 r4 t a) : t = 56 := by
  have h1 := skipping_round1 r1 r2 r3 r4 t a x
  have h2 := skipping_round2 r1 r2 r3 r4 t a x
  have h3 := skipping_round3 r1 r2 r3 r4 t a x
  have h4 := skipping_round4 r1 r2 r3 r4 t a x
  have ht := x.2.2.2.2.1
  omega
theorem skipping_average (r1 r2 r3 r4 t a : ℕ) (x : SkippingAverage r1 r2 r3 r4 t a) : a = 14 := by
  have ht := skipping_total r1 r2 r3 r4 t a x
  have ha := x.2.2.2.2.2
  rw [ht] at ha
  norm_num at ha ⊢
  exact ha
theorem skipping_exists : SkippingAverage 15 13 20 8 56 14 := by norm_num [SkippingAverage]
theorem skipping_solution : SkippingAverage 15 13 20 8 56 14 ∧
    (∀ r1 r2 r3 r4 t a, SkippingAverage r1 r2 r3 r4 t a → r1 = 15) ∧
    (∀ r1 r2 r3 r4 t a, SkippingAverage r1 r2 r3 r4 t a → r2 = 13) ∧
    (∀ r1 r2 r3 r4 t a, SkippingAverage r1 r2 r3 r4 t a → r3 = 20) ∧
    (∀ r1 r2 r3 r4 t a, SkippingAverage r1 r2 r3 r4 t a → r4 = 8) ∧
    (∀ r1 r2 r3 r4 t a, SkippingAverage r1 r2 r3 r4 t a → t = 56) ∧
    (∀ r1 r2 r3 r4 t a, SkippingAverage r1 r2 r3 r4 t a → a = 14) :=
  ⟨skipping_exists, skipping_round1, skipping_round2, skipping_round3,
    skipping_round4, skipping_total, skipping_average⟩

theorem overtime_hours (h p t : ℕ) (x : OvertimeIncome h p t) : h = 10 := by
  have hh := x.1
  norm_num at hh ⊢
  exact hh
theorem overtime_pay (h p t : ℕ) (x : OvertimeIncome h p t) : p = 200 := by
  have hh := overtime_hours h p t x
  have hp := x.2.1
  omega
theorem overtime_total (h p t : ℕ) (x : OvertimeIncome h p t) : t = 700 := by
  have hp := overtime_pay h p t x
  have ht := x.2.2
  omega
theorem overtime_exists : OvertimeIncome 10 200 700 := by norm_num [OvertimeIncome]
theorem overtime_solution : OvertimeIncome 10 200 700 ∧
    (∀ h p t, OvertimeIncome h p t → h = 10) ∧
    (∀ h p t, OvertimeIncome h p t → p = 200) ∧
    (∀ h p t, OvertimeIncome h p t → t = 700) :=
  ⟨overtime_exists, overtime_hours, overtime_pay, overtime_total⟩

theorem hats_paityn (p zr zb z c e : ℕ) (x : HatSharing p zr zb z c e) : p = 44 := by
  have hp := x.1
  norm_num at hp ⊢
  exact hp
theorem hats_zola_red (p zr zb z c e : ℕ) (x : HatSharing p zr zb z c e) : zr = 16 := by
  have hr := x.2.1
  norm_num at hr ⊢
  exact hr
theorem hats_zola_blue (p zr zb z c e : ℕ) (x : HatSharing p zr zb z c e) : zb = 48 := by
  have hb := x.2.2.1
  norm_num at hb ⊢
  exact hb
theorem hats_zola_total (p zr zb z c e : ℕ) (x : HatSharing p zr zb z c e) : z = 64 := by
  have hr := hats_zola_red p zr zb z c e x
  have hb := hats_zola_blue p zr zb z c e x
  have hz := x.2.2.2.1
  omega
theorem hats_combined (p zr zb z c e : ℕ) (x : HatSharing p zr zb z c e) : c = 108 := by
  have hp := hats_paityn p zr zb z c e x
  have hz := hats_zola_total p zr zb z c e x
  have hc := x.2.2.2.2.1
  omega
theorem hats_each (p zr zb z c e : ℕ) (x : HatSharing p zr zb z c e) : e = 54 := by
  have hc := hats_combined p zr zb z c e x
  have he := x.2.2.2.2.2
  rw [hc] at he
  norm_num at he ⊢
  exact he
theorem hats_exists : HatSharing 44 16 48 64 108 54 := by norm_num [HatSharing]
theorem hats_solution : HatSharing 44 16 48 64 108 54 ∧
    (∀ p zr zb z c e, HatSharing p zr zb z c e → p = 44) ∧
    (∀ p zr zb z c e, HatSharing p zr zb z c e → zr = 16) ∧
    (∀ p zr zb z c e, HatSharing p zr zb z c e → zb = 48) ∧
    (∀ p zr zb z c e, HatSharing p zr zb z c e → z = 64) ∧
    (∀ p zr zb z c e, HatSharing p zr zb z c e → c = 108) ∧
    (∀ p zr zb z c e, HatSharing p zr zb z c e → e = 54) :=
  ⟨hats_exists, hats_paityn, hats_zola_red, hats_zola_blue,
    hats_zola_total, hats_combined, hats_each⟩

end LemmaWeave.Tests.GSM8KDaily0908C

#print axioms LemmaWeave.Tests.GSM8KDaily0908C.weight_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908C.breakfast_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908C.vegetables_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908C.boxer_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908C.cookies_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908C.teaching_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908C.milk_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908C.skipping_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908C.overtime_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908C.hats_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908C.weight_solution to "work/gsm8k-daily8-weight-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908C.breakfast_solution to "work/gsm8k-daily8-breakfast-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908C.vegetables_solution to "work/gsm8k-daily8-vegetables-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908C.boxer_solution to "work/gsm8k-daily8-boxer-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908C.cookies_solution to "work/gsm8k-daily8-cookies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908C.teaching_solution to "work/gsm8k-daily8-teaching-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908C.milk_solution to "work/gsm8k-daily8-milk-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908C.skipping_solution to "work/gsm8k-daily8-skipping-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908C.overtime_solution to "work/gsm8k-daily8-overtime-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908C.hats_solution to "work/gsm8k-daily8-hats-graph.json"
