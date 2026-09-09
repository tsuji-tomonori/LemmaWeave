import LemmaWeave.Problems.GSM8K.Daily0909DModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0909D
open LemmaWeave.Problems.GSM8K.Daily0909D

theorem beef_first_weight (w a b c t x y k r : ℕ)
    (h : GroundBeef w a b c t x y k r) : x = 40 := by
  rcases h with ⟨hw, ha, hb, ht, hx, hy, hk, hr, hc⟩
  simp [ha, hw] at hx
  exact hx
theorem beef_second_weight (w a b c t x y k r : ℕ)
    (h : GroundBeef w a b c t x y k r) : y = 28 := by
  rcases h with ⟨hw, ha, hb, ht, hx, hy, hk, hr, hc⟩
  simp [hb, hw] at hy
  exact hy
theorem beef_known_weight (w a b c t x y k r : ℕ)
    (h : GroundBeef w a b c t x y k r) : k = 68 := by
  have hx := beef_first_weight w a b c t x y k r h
  have hy := beef_second_weight w a b c t x y k r h
  have hk := h.2.2.2.2.2.2.1
  omega
theorem beef_remaining_weight (w a b c t x y k r : ℕ)
    (h : GroundBeef w a b c t x y k r) : r = 32 := by
  have hk := beef_known_weight w a b c t x y k r h
  rcases h with ⟨hw, ha, hb, ht, hx, hy, hknown, hr, hc⟩
  omega
theorem beef_third_packages (w a b c t x y k r : ℕ)
    (h : GroundBeef w a b c t x y k r) : c = 8 := by
  have hr := beef_remaining_weight w a b c t x y k r h
  rcases h with ⟨hw, ha, hb, ht, hx, hy, hk, hremaining, hc⟩
  omega
theorem beef_exists : GroundBeef 4 10 7 8 100 40 28 68 32 := by
  norm_num [GroundBeef]
theorem beef_solution : GroundBeef 4 10 7 8 100 40 28 68 32 ∧
    (∀ w a b c t x y k r, GroundBeef w a b c t x y k r → x = 40) ∧
    (∀ w a b c t x y k r, GroundBeef w a b c t x y k r → y = 28) ∧
    (∀ w a b c t x y k r, GroundBeef w a b c t x y k r → k = 68) ∧
    (∀ w a b c t x y k r, GroundBeef w a b c t x y k r → r = 32) ∧
    (∀ w a b c t x y k r, GroundBeef w a b c t x y k r → c = 8) :=
  ⟨beef_exists, beef_first_weight, beef_second_weight, beef_known_weight,
    beef_remaining_weight, beef_third_packages⟩

theorem tv_jeopardy_total (m e w n a b t h : ℕ)
    (x : Television m e w n a b t h) : a = 40 := by
  rcases x with ⟨hm, he, hw, hn, ha, hb, ht, hh⟩
  simp [he, hm] at ha
  exact ha
theorem tv_wheel_each (m e w n a b t h : ℕ)
    (x : Television m e w n a b t h) : w = 40 := by
  rcases x with ⟨hm, he, hw, hn, ha, hb, ht, hh⟩
  omega
theorem tv_wheel_total (m e w n a b t h : ℕ)
    (x : Television m e w n a b t h) : b = 80 := by
  have hw := tv_wheel_each m e w n a b t h x
  rcases x with ⟨hm, he, hwheel, hn, ha, hb, ht, hh⟩
  simp [hn, hw] at hb
  exact hb
theorem tv_total_minutes (m e w n a b t h : ℕ)
    (x : Television m e w n a b t h) : t = 120 := by
  have ha := tv_jeopardy_total m e w n a b t h x
  have hb := tv_wheel_total m e w n a b t h x
  have ht := x.2.2.2.2.2.2.1
  omega
theorem tv_hours (m e w n a b t h : ℕ)
    (x : Television m e w n a b t h) : h = 2 := by
  have ht := tv_total_minutes m e w n a b t h x
  have hh := x.2.2.2.2.2.2.2
  omega
theorem tv_exists : Television 20 2 40 2 40 80 120 2 := by
  norm_num [Television]
theorem tv_solution : Television 20 2 40 2 40 80 120 2 ∧
    (∀ m e w n a b t h, Television m e w n a b t h → a = 40) ∧
    (∀ m e w n a b t h, Television m e w n a b t h → w = 40) ∧
    (∀ m e w n a b t h, Television m e w n a b t h → b = 80) ∧
    (∀ m e w n a b t h, Television m e w n a b t h → t = 120) ∧
    (∀ m e w n a b t h, Television m e w n a b t h → h = 2) :=
  ⟨tv_exists, tv_jeopardy_total, tv_wheel_each, tv_wheel_total, tv_total_minutes, tv_hours⟩

theorem cleaning_cory (r c b o s w : ℕ) (h : RoomCleaning r c b o s w) : c = 25 := by
  rcases h with ⟨hr, hc, hb, ho, hs, hw⟩
  omega
theorem cleaning_blake (r c b o s w : ℕ) (h : RoomCleaning r c b o s w) : b = 21 := by
  have hc := cleaning_cory r c b o s w h
  have hb := h.2.2.1
  omega
theorem cleaning_one_session (r c b o s w : ℕ)
    (h : RoomCleaning r c b o s w) : o = 68 := by
  have hc := cleaning_cory r c b o s w h
  have hb := cleaning_blake r c b o s w h
  rcases h with ⟨hr, hcorey, hblake, ho, hs, hw⟩
  omega
theorem cleaning_weekly (r c b o s w : ℕ) (h : RoomCleaning r c b o s w) : w = 136 := by
  have ho := cleaning_one_session r c b o s w h
  rcases h with ⟨hr, hc, hb, hone, hs, hw⟩
  simp [ho, hs] at hw
  exact hw
theorem cleaning_exists : RoomCleaning 22 25 21 68 2 136 := by norm_num [RoomCleaning]
theorem cleaning_solution : RoomCleaning 22 25 21 68 2 136 ∧
    (∀ r c b o s w, RoomCleaning r c b o s w → c = 25) ∧
    (∀ r c b o s w, RoomCleaning r c b o s w → b = 21) ∧
    (∀ r c b o s w, RoomCleaning r c b o s w → o = 68) ∧
    (∀ r c b o s w, RoomCleaning r c b o s w → w = 136) :=
  ⟨cleaning_exists, cleaning_cory, cleaning_blake, cleaning_one_session, cleaning_weekly⟩

theorem crayons_initial (g b x y i v l : ℕ) (h : Crayons g b x y i v l) : i = 13 := by
  rcases h with ⟨hg, hb, hx, hy, hi, hv, hl⟩
  omega
theorem crayons_given (g b x y i v l : ℕ) (h : Crayons g b x y i v l) : v = 4 := by
  rcases h with ⟨hg, hb, hx, hy, hi, hv, hl⟩
  omega
theorem crayons_left (g b x y i v l : ℕ) (h : Crayons g b x y i v l) : l = 9 := by
  have hi := crayons_initial g b x y i v l h
  have hv := crayons_given g b x y i v l h
  have hl := h.2.2.2.2.2.2
  omega
theorem crayons_exists : Crayons 5 8 3 1 13 4 9 := by norm_num [Crayons]
theorem crayons_solution : Crayons 5 8 3 1 13 4 9 ∧
    (∀ g b x y i v l, Crayons g b x y i v l → i = 13) ∧
    (∀ g b x y i v l, Crayons g b x y i v l → v = 4) ∧
    (∀ g b x y i v l, Crayons g b x y i v l → l = 9) :=
  ⟨crayons_exists, crayons_initial, crayons_given, crayons_left⟩

theorem lottery_tax (p t f a h : ℕ) (x : LotteryTakeHome p t f a h) : t = 10 := by
  rcases x with ⟨hp, ht, hf, ha, hh⟩
  omega
theorem lottery_after_tax (p t f a h : ℕ) (x : LotteryTakeHome p t f a h) : a = 40 := by
  have ht := lottery_tax p t f a h x
  rcases x with ⟨hp, htax, hf, ha, hh⟩
  omega
theorem lottery_take_home (p t f a h : ℕ) (x : LotteryTakeHome p t f a h) : h = 35 := by
  have ha := lottery_after_tax p t f a h x
  rcases x with ⟨hp, ht, hf, hafter, hh⟩
  omega
theorem lottery_exists : LotteryTakeHome 50 10 5 40 35 := by norm_num [LotteryTakeHome]
theorem lottery_solution : LotteryTakeHome 50 10 5 40 35 ∧
    (∀ p t f a h, LotteryTakeHome p t f a h → t = 10) ∧
    (∀ p t f a h, LotteryTakeHome p t f a h → a = 40) ∧
    (∀ p t f a h, LotteryTakeHome p t f a h → h = 35) :=
  ⟨lottery_exists, lottery_tax, lottery_after_tax, lottery_take_home⟩

theorem ages_ernesto_future (y e f j k : ℕ) (h : FutureAges y e f j k) : f = 14 := by
  rcases h with ⟨hy, he, hf, hk, hj⟩
  omega
theorem ages_jayden_future (y e f j k : ℕ) (h : FutureAges y e f j k) : k = 7 := by
  have hf := ages_ernesto_future y e f j k h
  have hk := h.2.2.2.1
  omega
theorem ages_jayden_now (y e f j k : ℕ) (h : FutureAges y e f j k) : j = 4 := by
  have hk := ages_jayden_future y e f j k h
  have hj := h.2.2.2.2
  omega
theorem ages_exists : FutureAges 3 11 14 4 7 := by norm_num [FutureAges]
theorem ages_solution : FutureAges 3 11 14 4 7 ∧
    (∀ y e f j k, FutureAges y e f j k → f = 14) ∧
    (∀ y e f j k, FutureAges y e f j k → k = 7) ∧
    (∀ y e f j k, FutureAges y e f j k → j = 4) :=
  ⟨ages_exists, ages_ernesto_future, ages_jayden_future, ages_jayden_now⟩

theorem messenger_equation (m p t : ℕ) (h : MessengerDeliveries m p t) : 9 * m = 27 := by
  rcases h with ⟨hp, ht, h27⟩
  omega
theorem messenger_meals (m p t : ℕ) (h : MessengerDeliveries m p t) : m = 3 := by
  have hm := messenger_equation m p t h
  omega
theorem messenger_packages (m p t : ℕ) (h : MessengerDeliveries m p t) : p = 24 := by
  have hm := messenger_meals m p t h
  have hp := h.1
  omega
theorem messenger_exists : MessengerDeliveries 3 24 27 := by norm_num [MessengerDeliveries]
theorem messenger_solution : MessengerDeliveries 3 24 27 ∧
    (∀ m p t, MessengerDeliveries m p t → 9 * m = 27) ∧
    (∀ m p t, MessengerDeliveries m p t → m = 3) ∧
    (∀ m p t, MessengerDeliveries m p t → p = 24) :=
  ⟨messenger_exists, messenger_equation, messenger_meals, messenger_packages⟩

theorem texts_this_week (l t c : ℕ) (h : TextMessages l t c) : t = 172 := by
  rcases h with ⟨hl, ht, hc⟩
  omega
theorem texts_combined (l t c : ℕ) (h : TextMessages l t c) : c = 283 := by
  have ht := texts_this_week l t c h
  rcases h with ⟨hl, hthis, hc⟩
  omega
theorem texts_exists : TextMessages 111 172 283 := by norm_num [TextMessages]
theorem texts_solution : TextMessages 111 172 283 ∧
    (∀ l t c, TextMessages l t c → t = 172) ∧
    (∀ l t c, TextMessages l t c → c = 283) :=
  ⟨texts_exists, texts_this_week, texts_combined⟩

theorem newspaper_discount (r d c : ℕ) (h : NewspaperSubscription r d c) : d = 36 := by
  rcases h with ⟨hr, hd, hc⟩
  omega
theorem newspaper_cost (r d c : ℕ) (h : NewspaperSubscription r d c) : c = 44 := by
  have hd := newspaper_discount r d c h
  rcases h with ⟨hr, hdiscount, hc⟩
  omega
theorem newspaper_exists : NewspaperSubscription 80 36 44 := by
  norm_num [NewspaperSubscription]
theorem newspaper_solution : NewspaperSubscription 80 36 44 ∧
    (∀ r d c, NewspaperSubscription r d c → d = 36) ∧
    (∀ r d c, NewspaperSubscription r d c → c = 44) :=
  ⟨newspaper_exists, newspaper_discount, newspaper_cost⟩

theorem medical_doctor_covered (d c p a b q t : ℕ)
    (h : MedicalPayments d c p a b q t) : c = 225 := by
  rcases h with ⟨hd, hc, hp, ha, hb, hq, ht⟩
  omega
theorem medical_doctor_paid (d c p a b q t : ℕ)
    (h : MedicalPayments d c p a b q t) : p = 75 := by
  have hc := medical_doctor_covered d c p a b q t h
  rcases h with ⟨hd, hcovered, hp, ha, hb, hq, ht⟩
  omega
theorem medical_cat_paid (d c p a b q t : ℕ)
    (h : MedicalPayments d c p a b q t) : q = 60 := by
  rcases h with ⟨hd, hc, hp, ha, hb, hq, ht⟩
  omega
theorem medical_total (d c p a b q t : ℕ)
    (h : MedicalPayments d c p a b q t) : t = 135 := by
  have hp := medical_doctor_paid d c p a b q t h
  have hq := medical_cat_paid d c p a b q t h
  have ht := h.2.2.2.2.2.2
  omega
theorem medical_exists : MedicalPayments 300 225 75 120 60 60 135 := by
  norm_num [MedicalPayments]
theorem medical_solution : MedicalPayments 300 225 75 120 60 60 135 ∧
    (∀ d c p a b q t, MedicalPayments d c p a b q t → c = 225) ∧
    (∀ d c p a b q t, MedicalPayments d c p a b q t → p = 75) ∧
    (∀ d c p a b q t, MedicalPayments d c p a b q t → q = 60) ∧
    (∀ d c p a b q t, MedicalPayments d c p a b q t → t = 135) :=
  ⟨medical_exists, medical_doctor_covered, medical_doctor_paid,
    medical_cat_paid, medical_total⟩

end LemmaWeave.Tests.GSM8KDaily0909D

#print axioms LemmaWeave.Tests.GSM8KDaily0909D.beef_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909D.tv_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909D.cleaning_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909D.crayons_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909D.lottery_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909D.ages_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909D.messenger_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909D.texts_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909D.newspaper_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0909D.medical_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909D.beef_solution to "work/gsm8k-daily15-beef-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909D.tv_solution to "work/gsm8k-daily15-tv-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909D.cleaning_solution to "work/gsm8k-daily15-cleaning-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909D.crayons_solution to "work/gsm8k-daily15-crayons-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909D.lottery_solution to "work/gsm8k-daily15-lottery-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909D.ages_solution to "work/gsm8k-daily15-ages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909D.messenger_solution to "work/gsm8k-daily15-messenger-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909D.texts_solution to "work/gsm8k-daily15-texts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909D.newspaper_solution to "work/gsm8k-daily15-newspaper-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0909D.medical_solution to "work/gsm8k-daily15-medical-graph.json"
