import LemmaWeave.Problems.GSM8K.Daily0908AModels
import LemmaWeave.Lemmas.ArithmeticMethods
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0908A
open LemmaWeave.Problems.GSM8K.Daily0908A

theorem wallet_milkshake (m r w l : ℚ) (x : WalletLoss m r w l) : m = 4 := by
  have h := x.1
  norm_num at h ⊢
  exact h
theorem wallet_after (m r w l : ℚ) (x : WalletLoss m r w l) : r = 24 := by
  have hm := wallet_milkshake m r w l x
  have hr := x.2.1
  linarith
theorem wallet_amount (m r w l : ℚ) (x : WalletLoss m r w l) : w = 12 := by
  have hr := wallet_after m r w l x
  have hw := x.2.2.1
  linarith
theorem wallet_lost (m r w l : ℚ) (x : WalletLoss m r w l) : l = 11 := by
  have hw := wallet_amount m r w l x
  have hl := x.2.2.2
  linarith
theorem wallet_exists : WalletLoss 4 24 12 11 := by norm_num [WalletLoss]
theorem wallet_solution :
    WalletLoss 4 24 12 11 ∧ (∀ m r w l, WalletLoss m r w l → m = 4) ∧
    (∀ m r w l, WalletLoss m r w l → r = 24) ∧
    (∀ m r w l, WalletLoss m r w l → w = 12) ∧
    (∀ m r w l, WalletLoss m r w l → l = 11) :=
  ⟨wallet_exists, wallet_milkshake, wallet_after, wallet_amount, wallet_lost⟩

theorem flowers_total (t n p : ℚ) (x : FlowerPercentage t n p) : t = 100 := by
  have h := x.1
  norm_num at h ⊢
  exact h
theorem flowers_nonroses (t n p : ℚ) (x : FlowerPercentage t n p) : n = 75 := by
  have h := x.2.1
  norm_num at h ⊢
  exact h
theorem flowers_percentage (t n p : ℚ) (x : FlowerPercentage t n p) : p = 75 := by
  have ht := flowers_total t n p x
  have hn := flowers_nonroses t n p x
  have hp := x.2.2
  rw [ht, hn] at hp
  norm_num at hp ⊢
  exact hp
theorem flowers_exists : FlowerPercentage 100 75 75 := by norm_num [FlowerPercentage]
theorem flowers_solution :
    FlowerPercentage 100 75 75 ∧ (∀ t n p, FlowerPercentage t n p → t = 100) ∧
    (∀ t n p, FlowerPercentage t n p → n = 75) ∧
    (∀ t n p, FlowerPercentage t n p → p = 75) :=
  ⟨flowers_exists, flowers_total, flowers_nonroses, flowers_percentage⟩

theorem assignment_second (s f t h : ℕ) (x : AssignmentTime s f t h) : s = 50 := x.1
theorem assignment_first_two (s f t h : ℕ) (x : AssignmentTime s f t h) : f = 75 := by
  have hs := assignment_second s f t h x
  have hf := x.2.1
  omega
theorem assignment_total (s f t h : ℕ) (x : AssignmentTime s f t h) : t = 120 := x.2.2.1
theorem assignment_third (s f t h : ℕ) (x : AssignmentTime s f t h) : h = 45 := by
  have hf := assignment_first_two s f t h x
  have ht := assignment_total s f t h x
  have hh := x.2.2.2
  omega
theorem assignment_exists : AssignmentTime 50 75 120 45 := by norm_num [AssignmentTime]
theorem assignment_solution :
    AssignmentTime 50 75 120 45 ∧
    (∀ s f t h, AssignmentTime s f t h → s = 50) ∧
    (∀ s f t h, AssignmentTime s f t h → f = 75) ∧
    (∀ s f t h, AssignmentTime s f t h → t = 120) ∧
    (∀ s f t h, AssignmentTime s f t h → h = 45) :=
  ⟨assignment_exists, assignment_second, assignment_first_two, assignment_total, assignment_third⟩

theorem butter_chocolate (c p a s r : ℚ) (x : ButterUse c p a s r) : c = 5 := by
  have h := x.1
  norm_num at h ⊢
  exact h
theorem butter_peanut (c p a s r : ℚ) (x : ButterUse c p a s r) : p = 2 := by
  have h := x.2.1
  norm_num at h ⊢
  exact h
theorem butter_after_two (c p a s r : ℚ) (x : ButterUse c p a s r) : a = 3 := by
  have hc := butter_chocolate c p a s r x
  have hp := butter_peanut c p a s r x
  have ha := x.2.2.1
  linarith
theorem butter_sugar (c p a s r : ℚ) (x : ButterUse c p a s r) : s = 1 := by
  have ha := butter_after_two c p a s r x
  have hs := x.2.2.2.1
  linarith
theorem butter_remaining (c p a s r : ℚ) (x : ButterUse c p a s r) : r = 2 := by
  have ha := butter_after_two c p a s r x
  have hs := butter_sugar c p a s r x
  have hr := x.2.2.2.2
  linarith
theorem butter_exists : ButterUse 5 2 3 1 2 := by norm_num [ButterUse]
theorem butter_solution :
    ButterUse 5 2 3 1 2 ∧ (∀ c p a s r, ButterUse c p a s r → c = 5) ∧
    (∀ c p a s r, ButterUse c p a s r → p = 2) ∧
    (∀ c p a s r, ButterUse c p a s r → a = 3) ∧
    (∀ c p a s r, ButterUse c p a s r → s = 1) ∧
    (∀ c p a s r, ButterUse c p a s r → r = 2) :=
  ⟨butter_exists, butter_chocolate, butter_peanut, butter_after_two,
    butter_sugar, butter_remaining⟩

theorem allowance_six_students (s f sa fa t : ℚ) (x : AllowanceTotal s f sa fa t) : s = 40 := by
  have h := x.1
  norm_num at h ⊢
  exact h
theorem allowance_four_students (s f sa fa t : ℚ) (x : AllowanceTotal s f sa fa t) : f = 20 := by
  have hs := allowance_six_students s f sa fa t x
  have hf := x.2.1
  linarith
theorem allowance_six_amount (s f sa fa t : ℚ) (x : AllowanceTotal s f sa fa t) : sa = 240 := by
  have hs := allowance_six_students s f sa fa t x
  have ha := x.2.2.1
  linarith
theorem allowance_four_amount (s f sa fa t : ℚ) (x : AllowanceTotal s f sa fa t) : fa = 80 := by
  have hf := allowance_four_students s f sa fa t x
  have ha := x.2.2.2.1
  linarith
theorem allowance_total (s f sa fa t : ℚ) (x : AllowanceTotal s f sa fa t) : t = 320 := by
  have hs := allowance_six_amount s f sa fa t x
  have hf := allowance_four_amount s f sa fa t x
  have ht := x.2.2.2.2
  linarith
theorem allowance_exists : AllowanceTotal 40 20 240 80 320 := by norm_num [AllowanceTotal]
theorem allowance_solution :
    AllowanceTotal 40 20 240 80 320 ∧
    (∀ s f sa fa t, AllowanceTotal s f sa fa t → s = 40) ∧
    (∀ s f sa fa t, AllowanceTotal s f sa fa t → f = 20) ∧
    (∀ s f sa fa t, AllowanceTotal s f sa fa t → sa = 240) ∧
    (∀ s f sa fa t, AllowanceTotal s f sa fa t → fa = 80) ∧
    (∀ s f sa fa t, AllowanceTotal s f sa fa t → t = 320) :=
  ⟨allowance_exists, allowance_six_students, allowance_four_students,
    allowance_six_amount, allowance_four_amount, allowance_total⟩

theorem coins_second (s t b a : ℕ) (x : CoinsEachHour s t b a) : s = 35 := x.1
theorem coins_third (s t b a : ℕ) (x : CoinsEachHour s t b a) : t = 35 := x.2.1
theorem coins_before (s t b a : ℕ) (x : CoinsEachHour s t b a) : b = 135 := by
  have hs := coins_second s t b a x
  have ht := coins_third s t b a x
  have hb := x.2.2.1
  omega
theorem coins_after (s t b a : ℕ) (x : CoinsEachHour s t b a) : a = 120 := by
  have hb := coins_before s t b a x
  have ha := x.2.2.2
  omega
theorem coins_combined_after (c b a : ℕ) (x : CoinsNextTwoCombined c b a) : a = 85 := by
  rcases x with ⟨hc, hb, ha⟩
  omega
theorem coins_examples :
    CoinsEachHour 35 35 135 120 ∧ CoinsNextTwoCombined 35 100 85 ∧ (120 : ℕ) ≠ 85 := by
  norm_num [CoinsEachHour, CoinsNextTwoCombined]
theorem coins_solution :
    CoinsEachHour 35 35 135 120 ∧
    (∀ s t b a, CoinsEachHour s t b a → a = 120) ∧
    (∀ c b a, CoinsNextTwoCombined c b a → a = 85) ∧
    (CoinsEachHour 35 35 135 120 ∧ CoinsNextTwoCombined 35 100 85 ∧ (120 : ℕ) ≠ 85) :=
  ⟨coins_examples.1, coins_after, coins_combined_after, coins_examples⟩

theorem daughters_games (g p t : ℕ) (x : DaughterHours g p t) : g = 32 := x.1
theorem daughters_practice (g p t : ℕ) (x : DaughterHours g p t) : p = 64 := x.2.1
theorem daughters_total (g p t : ℕ) (x : DaughterHours g p t) : t = 96 := by
  have hg := daughters_games g p t x
  have hp := daughters_practice g p t x
  have ht := x.2.2
  omega
theorem field_bounds (o t : ℕ) (x : FieldElapsed o t) : 48 ≤ t ∧ t ≤ 96 := by
  rcases x with ⟨ho, ht⟩
  omega
theorem field_examples : FieldElapsed 0 96 ∧ FieldElapsed 48 48 ∧ (48 : ℕ) ≠ 96 := by
  norm_num [FieldElapsed]
theorem daughters_exists : DaughterHours 32 64 96 := by norm_num [DaughterHours]
theorem daughters_solution :
    DaughterHours 32 64 96 ∧ (∀ g p t, DaughterHours g p t → t = 96) ∧
    (∀ o t, FieldElapsed o t → 48 ≤ t ∧ t ≤ 96) ∧
    (FieldElapsed 0 96 ∧ FieldElapsed 48 48 ∧ (48 : ℕ) ≠ 96) :=
  ⟨daughters_exists, daughters_total, field_bounds, field_examples⟩

theorem bear_berries (b a r s m : ℚ) (x : BearSources b a r s m) : b = 200 := by
  have h := x.1
  norm_num at h ⊢
  exact h
theorem bear_acorns (b a r s m : ℚ) (x : BearSources b a r s m) : a = 400 := by
  have hb := bear_berries b a r s m x
  have ha := x.2.1
  linarith
theorem bear_remaining (b a r s m : ℚ) (x : BearSources b a r s m) : r = 400 := by
  have hb := bear_berries b a r s m x
  have ha := bear_acorns b a r s m x
  have hr := x.2.2.1
  linarith
theorem bear_salmon (b a r s m : ℚ) (x : BearSources b a r s m) : s = 200 := by
  have hr := bear_remaining b a r s m x
  have hs := x.2.2.2
  linarith
theorem bear_small_if_goal (b a r s m : ℚ) (x : BearGoalAchieved b a r s m) : m = 200 := by
  have hb := bear_berries b a r s m x.1
  have ha := bear_acorns b a r s m x.1
  have hs := bear_salmon b a r s m x.1
  linarith [x.2]
theorem bear_examples :
    BearSources 200 400 400 200 0 ∧ BearGoalAchieved 200 400 400 200 200 ∧
    (0 : ℚ) ≠ 200 := by
  norm_num [BearSources, BearGoalAchieved]
theorem bear_exists : BearGoalAchieved 200 400 400 200 200 := bear_examples.2.1
theorem bear_solution :
    BearGoalAchieved 200 400 400 200 200 ∧
    (∀ b a r s m, BearGoalAchieved b a r s m → m = 200) ∧
    (BearSources 200 400 400 200 0 ∧ BearGoalAchieved 200 400 400 200 200 ∧
      (0 : ℚ) ≠ 200) :=
  ⟨bear_exists, bear_small_if_goal, bear_examples⟩

theorem oil_known (k r c e : ℕ) (x : OilCans k r c e) : k = 80 := x.1
theorem oil_remaining (k r c e : ℕ) (x : OilCans k r c e) : r = 210 := by
  have hk := oil_known k r c e x
  have hr := x.2.1
  omega
theorem oil_cans (k r c e : ℕ) (x : OilCans k r c e) : c = 14 := x.2.2.1
theorem oil_each (k r c e : ℕ) (x : OilCans k r c e) : e = 15 := by
  have he := x.2.2.2
  rw [oil_remaining k r c e x, oil_cans k r c e x] at he
  norm_num at he ⊢
  exact he
theorem oil_exists : OilCans 80 210 14 15 := by norm_num [OilCans]
theorem oil_solution :
    OilCans 80 210 14 15 ∧ (∀ k r c e, OilCans k r c e → k = 80) ∧
    (∀ k r c e, OilCans k r c e → r = 210) ∧
    (∀ k r c e, OilCans k r c e → c = 14) ∧
    (∀ k r c e, OilCans k r c e → e = 15) :=
  ⟨oil_exists, oil_known, oil_remaining, oil_cans, oil_each⟩

theorem situps_monday (m t w : ℕ) (x : SitupMakeup m t w) : m = 18 := x.1
theorem situps_tuesday (m t w : ℕ) (x : SitupMakeup m t w) : t = 11 := x.2.1
theorem situps_wednesday (m t w : ℕ) (x : SitupMakeup m t w) : w = 59 := by
  have hm := situps_monday m t w x
  have ht := situps_tuesday m t w x
  have hw := x.2.2
  omega
theorem situps_exists : SitupMakeup 18 11 59 := by norm_num [SitupMakeup]
theorem situps_solution :
    SitupMakeup 18 11 59 ∧ (∀ m t w, SitupMakeup m t w → m = 18) ∧
    (∀ m t w, SitupMakeup m t w → t = 11) ∧
    (∀ m t w, SitupMakeup m t w → w = 59) :=
  ⟨situps_exists, situps_monday, situps_tuesday, situps_wednesday⟩

end LemmaWeave.Tests.GSM8KDaily0908A

#print axioms LemmaWeave.Tests.GSM8KDaily0908A.wallet_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908A.flowers_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908A.assignment_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908A.butter_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908A.allowance_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908A.coins_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908A.daughters_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908A.bear_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908A.oil_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908A.situps_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908A.wallet_solution to "work/gsm8k-daily6-wallet-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908A.flowers_solution to "work/gsm8k-daily6-flowers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908A.assignment_solution to "work/gsm8k-daily6-assignment-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908A.butter_solution to "work/gsm8k-daily6-butter-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908A.allowance_solution to "work/gsm8k-daily6-allowance-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908A.coins_solution to "work/gsm8k-daily6-coins-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908A.daughters_solution to "work/gsm8k-daily6-daughters-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908A.bear_solution to "work/gsm8k-daily6-bear-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908A.oil_solution to "work/gsm8k-daily6-oil-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908A.situps_solution to "work/gsm8k-daily6-situps-graph.json"
