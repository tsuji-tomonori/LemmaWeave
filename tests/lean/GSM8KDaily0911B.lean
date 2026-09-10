import LemmaWeave.Problems.GSM8K.Daily0911BModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0911B
open LemmaWeave.Problems.GSM8K.Daily0911B

theorem scroll_second (a b c d e : ℕ) (x : ScrollAges a b c d e) : b = 6120 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha] at hb
  exact hb
theorem scroll_third (a b c d e : ℕ) (x : ScrollAges a b c d e) : c = 9180 := by
  have hb := scroll_second a b c d e x
  rcases x with ⟨ha, hb', hc, hd, he⟩
  norm_num [hb] at hc
  exact hc
theorem scroll_fourth (a b c d e : ℕ) (x : ScrollAges a b c d e) : d = 13770 := by
  have hc := scroll_third a b c d e x
  rcases x with ⟨ha, hb, hc', hd, he⟩
  norm_num [hc] at hd
  exact hd
theorem scroll_fifth (a b c d e : ℕ) (x : ScrollAges a b c d e) : e = 20655 := by
  have hd := scroll_fourth a b c d e x
  rcases x with ⟨ha, hb, hc, hd', he⟩
  norm_num [hd] at he
  exact he
theorem scroll_exists : ScrollAges 4080 6120 9180 13770 20655 := by norm_num [ScrollAges]
theorem scroll_solution : ScrollAges 4080 6120 9180 13770 20655 ∧
    (∀ a b c d e, ScrollAges a b c d e → b = 6120) ∧
    (∀ a b c d e, ScrollAges a b c d e → c = 9180) ∧
    (∀ a b c d e, ScrollAges a b c d e → d = 13770) ∧
    (∀ a b c d e, ScrollAges a b c d e → e = 20655) :=
  ⟨scroll_exists, scroll_second, scroll_third, scroll_fourth, scroll_fifth⟩

theorem wash_heavy (a b c d e f g h i j k l : ℕ) (x : WashWater a b c d e f g h i j k l) : h = 40 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  norm_num [ha, hd] at hh
  exact hh
theorem wash_regular (a b c d e f g h i j k l : ℕ) (x : WashWater a b c d e f g h i j k l) : i = 30 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  norm_num [hb, he] at hi
  exact hi
theorem wash_light (a b c d e f g h i j k l : ℕ) (x : WashWater a b c d e f g h i j k l) : j = 2 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  norm_num [hc, hf] at hj
  exact hj
theorem wash_bleach (a b c d e f g h i j k l : ℕ) (x : WashWater a b c d e f g h i j k l) : k = 4 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  norm_num [hc, hg] at hk
  exact hk
theorem wash_total (a b c d e f g h i j k l : ℕ) (x : WashWater a b c d e f g h i j k l) : l = 76 := by
  have hh := wash_heavy a b c d e f g h i j k l x
  have hi := wash_regular a b c d e f g h i j k l x
  have hj := wash_light a b c d e f g h i j k l x
  have hk := wash_bleach a b c d e f g h i j k l x
  simp [WashWater] at x
  omega
theorem wash_exists : WashWater 20 10 2 2 3 1 2 40 30 2 4 76 := by norm_num [WashWater]
theorem wash_solution : WashWater 20 10 2 2 3 1 2 40 30 2 4 76 ∧
    (∀ a b c d e f g h i j k l, WashWater a b c d e f g h i j k l → h = 40) ∧
    (∀ a b c d e f g h i j k l, WashWater a b c d e f g h i j k l → i = 30) ∧
    (∀ a b c d e f g h i j k l, WashWater a b c d e f g h i j k l → j = 2) ∧
    (∀ a b c d e f g h i j k l, WashWater a b c d e f g h i j k l → k = 4) ∧
    (∀ a b c d e f g h i j k l, WashWater a b c d e f g h i j k l → l = 76) :=
  ⟨wash_exists, wash_heavy, wash_regular, wash_light, wash_bleach, wash_total⟩

theorem chairs_half (a b c d e f g h : ℕ) (x : HallChairs a b c d e f g h) : b = 16 := by
  simp [HallChairs] at x
  omega
theorem chairs_rest (a b c d e f g h : ℕ) (x : HallChairs a b c d e f g h) : d = 11 := by
  have hb := chairs_half a b c d e f g h x
  simp [HallChairs] at x
  omega
theorem chairs_parts (a b c d e f g h : ℕ) (x : HallChairs a b c d e f g h) :
    e = 32 ∧ f = 15 ∧ g = 44 := by
  have hb := chairs_half a b c d e f g h x
  have hd := chairs_rest a b c d e f g h x
  rcases x with ⟨ha, hb', hc, hd', he, hf, hg, hh⟩
  norm_num [hb, hc, hd] at he hf hg
  exact ⟨he, hf, hg⟩
theorem chairs_total (a b c d e f g h : ℕ) (x : HallChairs a b c d e f g h) : h = 91 := by
  have hp := chairs_parts a b c d e f g h x
  simp [HallChairs] at x
  omega
theorem chairs_exists : HallChairs 32 16 5 11 32 15 44 91 := by norm_num [HallChairs]
theorem chairs_solution : HallChairs 32 16 5 11 32 15 44 91 ∧
    (∀ a b c d e f g h, HallChairs a b c d e f g h → b = 16) ∧
    (∀ a b c d e f g h, HallChairs a b c d e f g h → d = 11) ∧
    (∀ a b c d e f g h, HallChairs a b c d e f g h → e = 32 ∧ f = 15 ∧ g = 44) ∧
    (∀ a b c d e f g h, HallChairs a b c d e f g h → h = 91) :=
  ⟨chairs_exists, chairs_half, chairs_rest, chairs_parts, chairs_total⟩

theorem lottery_helen (a b c d e f : ℕ) (x : LotteryDebts a b c d e f) : c = 40 := by
  simp [LotteryDebts] at x
  omega
theorem lottery_benedict (a b c d e f : ℕ) (x : LotteryDebts a b c d e f) : d = 20 := by
  have hc := lottery_helen a b c d e f x
  rcases x with ⟨ha, hb, hc', hd, he, hf⟩
  norm_num [hc] at hd
  exact hd
theorem lottery_paid (a b c d e f : ℕ) (x : LotteryDebts a b c d e f) : e = 80 := by
  have hc := lottery_helen a b c d e f x
  have hd := lottery_benedict a b c d e f x
  simp [LotteryDebts] at x
  omega
theorem lottery_remaining (a b c d e f : ℕ) (x : LotteryDebts a b c d e f) : f = 20 := by
  have he := lottery_paid a b c d e f x
  simp [LotteryDebts] at x
  omega
theorem lottery_exists : LotteryDebts 100 20 40 20 80 20 := by norm_num [LotteryDebts]
theorem lottery_solution : LotteryDebts 100 20 40 20 80 20 ∧
    (∀ a b c d e f, LotteryDebts a b c d e f → c = 40) ∧
    (∀ a b c d e f, LotteryDebts a b c d e f → d = 20) ∧
    (∀ a b c d e f, LotteryDebts a b c d e f → e = 80) ∧
    (∀ a b c d e f, LotteryDebts a b c d e f → f = 20) :=
  ⟨lottery_exists, lottery_helen, lottery_benedict, lottery_paid, lottery_remaining⟩

theorem commute_drivers (a b c d e f g : ℕ) (x : CommuteCounts a b c d e f g) : d = 120 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb, hc] at hd
  omega
theorem commute_non_drivers (a b c d e f g : ℕ) (x : CommuteCounts a b c d e f g) : e = 80 := by
  have hd := commute_drivers a b c d e f g x
  simp [CommuteCounts] at x
  omega
theorem commute_transit (a b c d e f g : ℕ) (x : CommuteCounts a b c d e f g) : f = 40 := by
  have he := commute_non_drivers a b c d e f g x
  simp [CommuteCounts] at x
  omega
theorem commute_difference (a b c d e f g : ℕ) (x : CommuteCounts a b c d e f g) : g = 80 := by
  have hd := commute_drivers a b c d e f g x
  have hf := commute_transit a b c d e f g x
  simp [CommuteCounts] at x
  omega
theorem commute_reference_answer_wrong : (120 : ℕ) - 40 ≠ 40 := by norm_num
theorem commute_exists : CommuteCounts 200 60 100 120 80 40 80 := by norm_num [CommuteCounts]
theorem commute_solution : CommuteCounts 200 60 100 120 80 40 80 ∧
    (∀ a b c d e f g, CommuteCounts a b c d e f g → d = 120) ∧
    (∀ a b c d e f g, CommuteCounts a b c d e f g → e = 80) ∧
    (∀ a b c d e f g, CommuteCounts a b c d e f g → f = 40) ∧
    (∀ a b c d e f g, CommuteCounts a b c d e f g → g = 80) ∧
    (120 : ℕ) - 40 ≠ 40 :=
  ⟨commute_exists, commute_drivers, commute_non_drivers, commute_transit,
    commute_difference, commute_reference_answer_wrong⟩

theorem cable_sections (a b c d e f g h : ℕ) (x : CableSections a b c d e f g h) : c = 40 := by
  simp [CableSections] at x
  omega
theorem cable_given (a b c d e f g h : ℕ) (x : CableSections a b c d e f g h) : d = 10 := by
  have hc := cable_sections a b c d e f g h x
  simp [CableSections] at x
  omega
theorem cable_remaining (a b c d e f g h : ℕ) (x : CableSections a b c d e f g h) : e = 30 := by
  have hc := cable_sections a b c d e f g h x
  have hd := cable_given a b c d e f g h x
  simp [CableSections] at x
  omega
theorem cable_on_hand (a b c d e f g h : ℕ) (x : CableSections a b c d e f g h) : g = 15 := by
  have he := cable_remaining a b c d e f g h x
  simp [CableSections] at x
  omega
theorem cable_on_hand_feet (a b c d e f g h : ℕ) (x : CableSections a b c d e f g h) : h = 375 := by
  have hg := cable_on_hand a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg', hh⟩
  norm_num [hb, hg] at hh
  exact hh
theorem cable_exists : CableSections 1000 25 40 10 30 15 15 375 := by norm_num [CableSections]
theorem cable_solution : CableSections 1000 25 40 10 30 15 15 375 ∧
    (∀ a b c d e f g h, CableSections a b c d e f g h → c = 40) ∧
    (∀ a b c d e f g h, CableSections a b c d e f g h → d = 10) ∧
    (∀ a b c d e f g h, CableSections a b c d e f g h → e = 30) ∧
    (∀ a b c d e f g h, CableSections a b c d e f g h → g = 15) ∧
    (∀ a b c d e f g h, CableSections a b c d e f g h → h = 375) :=
  ⟨cable_exists, cable_sections, cable_given, cable_remaining, cable_on_hand, cable_on_hand_feet⟩

theorem reading_emery_serena (a b c : ℕ) (x : ReadingDaysEmery a b c) : b = 100 := by
  simp [ReadingDaysEmery] at x
  omega
theorem reading_emery_average (a b c : ℕ) (x : ReadingDaysEmery a b c) : c = 60 := by
  have hb := reading_emery_serena a b c x
  simp [ReadingDaysEmery] at x
  omega
theorem reading_serena_emery (a b c : ℕ) (x : ReadingDaysSerena a b c) : a = 4 := by
  simp [ReadingDaysSerena] at x
  omega
theorem reading_serena_average (a b c : ℕ) (x : ReadingDaysSerena a b c) : c = 12 := by
  have ha := reading_serena_emery a b c x
  simp [ReadingDaysSerena] at x
  omega
theorem reading_emery_exists : ReadingDaysEmery 20 100 60 := by norm_num [ReadingDaysEmery]
theorem reading_serena_exists : ReadingDaysSerena 4 20 12 := by norm_num [ReadingDaysSerena]
theorem reading_solution : ReadingDaysEmery 20 100 60 ∧ ReadingDaysSerena 4 20 12 ∧
    (∀ a b c, ReadingDaysEmery a b c → b = 100) ∧
    (∀ a b c, ReadingDaysEmery a b c → c = 60) ∧
    (∀ a b c, ReadingDaysSerena a b c → a = 4) ∧
    (∀ a b c, ReadingDaysSerena a b c → c = 12) :=
  ⟨reading_emery_exists, reading_serena_exists, reading_emery_serena,
    reading_emery_average, reading_serena_emery, reading_serena_average⟩

theorem beakers_tested (a b c d e : ℕ) (x : BeakerTests a b c d e) : c = 15 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  omega
theorem beakers_non_copper (a b c d e : ℕ) (x : BeakerTests a b c d e) : e = 7 := by
  have hc := beakers_tested a b c d e x
  simp [BeakerTests] at x
  omega
theorem beakers_exists : BeakerTests 3 45 15 8 7 := by norm_num [BeakerTests]
theorem beakers_solution : BeakerTests 3 45 15 8 7 ∧
    (∀ a b c d e, BeakerTests a b c d e → c = 15) ∧
    (∀ a b c d e, BeakerTests a b c d e → e = 7) :=
  ⟨beakers_exists, beakers_tested, beakers_non_copper⟩

theorem child_total_gap (a b c d e : ℕ) (x : FourthChildAge a b c d e) : b + c + d = 7 := by
  simp [FourthChildAge] at x
  omega
theorem child_fourth_age (a b c d e : ℕ) (x : FourthChildAge a b c d e) : e = 8 := by
  have hg := child_total_gap a b c d e x
  simp [FourthChildAge] at x
  omega
theorem child_exists : FourthChildAge 15 1 4 2 8 := by norm_num [FourthChildAge]
theorem child_solution : FourthChildAge 15 1 4 2 8 ∧
    (∀ a b c d e, FourthChildAge a b c d e → b + c + d = 7) ∧
    (∀ a b c d e, FourthChildAge a b c d e → e = 8) :=
  ⟨child_exists, child_total_gap, child_fourth_age⟩

theorem pushups_planned (a b c d e : ℕ) (x : PushupTotal a b c d e) : c = 45 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc
theorem pushups_completed (a b c d e : ℕ) (x : PushupTotal a b c d e) : e = 40 := by
  have hc := pushups_planned a b c d e x
  simp [PushupTotal] at x
  omega
theorem pushups_exists : PushupTotal 3 15 45 5 40 := by norm_num [PushupTotal]
theorem pushups_solution : PushupTotal 3 15 45 5 40 ∧
    (∀ a b c d e, PushupTotal a b c d e → c = 45) ∧
    (∀ a b c d e, PushupTotal a b c d e → e = 40) :=
  ⟨pushups_exists, pushups_planned, pushups_completed⟩

end LemmaWeave.Tests.GSM8KDaily0911B

#print axioms LemmaWeave.Tests.GSM8KDaily0911B.scroll_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911B.wash_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911B.chairs_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911B.lottery_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911B.commute_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911B.cable_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911B.reading_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911B.beakers_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911B.child_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0911B.pushups_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911B.scroll_solution to "work/gsm8k-daily23-scroll-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911B.wash_solution to "work/gsm8k-daily23-wash-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911B.chairs_solution to "work/gsm8k-daily23-chairs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911B.lottery_solution to "work/gsm8k-daily23-lottery-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911B.commute_solution to "work/gsm8k-daily23-commute-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911B.cable_solution to "work/gsm8k-daily23-cable-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911B.reading_solution to "work/gsm8k-daily23-reading-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911B.beakers_solution to "work/gsm8k-daily23-beakers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911B.child_solution to "work/gsm8k-daily23-child-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0911B.pushups_solution to "work/gsm8k-daily23-pushups-graph.json"
