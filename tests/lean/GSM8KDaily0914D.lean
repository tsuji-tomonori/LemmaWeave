import LemmaWeave.Problems.GSM8K.Daily0914DModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0914D
open LemmaWeave.Problems.GSM8K.Daily0914D

theorem buyers_yesterday (a b c d : ℕ) (x : GroceryBuyers a b c d) : b = 25 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  omega
theorem buyers_today (a b c d : ℕ) (x : GroceryBuyers a b c d) : c = 65 := by
  have hb0 := buyers_yesterday a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  omega
theorem buyers_total (a b c d : ℕ) (x : GroceryBuyers a b c d) : d = 140 := by
  have hb0 := buyers_yesterday a b c d x
  have hc0 := buyers_today a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  omega
theorem buyers_solution : GroceryBuyers 50 25 65 140 ∧
    (∀ a b c d, GroceryBuyers a b c d → b = 25) ∧
    (∀ a b c d, GroceryBuyers a b c d → c = 65) ∧
    (∀ a b c d, GroceryBuyers a b c d → d = 140) :=
  ⟨by norm_num [GroceryBuyers], buyers_yesterday, buyers_today, buyers_total⟩

theorem pants_factor (a b c : ℚ) (x : PantsPrice a b c) : c = (9 / 5) * a := by
  rcases x with ⟨hc, hb, htotal⟩
  rw [hb] at htotal
  linarith
theorem pants_wholesale (a b c : ℚ) (x : PantsPrice a b c) : a = 20 := by
  have hfactor := pants_factor a b c x
  rcases x with ⟨hc, hb, htotal⟩
  norm_num [hc] at hfactor ⊢
  linarith
theorem pants_solution : PantsPrice 20 16 36 ∧
    (∀ a b c, PantsPrice a b c → c = (9 / 5) * a) ∧
    (∀ a b c, PantsPrice a b c → a = 20) :=
  ⟨by norm_num [PantsPrice], pants_factor, pants_wholesale⟩

theorem apples_caleb (a b c d : ℕ) (x : AppleDifference a b c d) : b = 15 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  omega
theorem apples_suraya (a b c d : ℕ) (x : AppleDifference a b c d) : c = 27 := by
  have hb0 := apples_caleb a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  omega
theorem apples_difference (a b c d : ℕ) (x : AppleDifference a b c d) : d = 7 := by
  have hc0 := apples_suraya a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  omega
theorem apples_solution : AppleDifference 20 15 27 7 ∧
    (∀ a b c d, AppleDifference a b c d → b = 15) ∧
    (∀ a b c d, AppleDifference a b c d → c = 27) ∧
    (∀ a b c d, AppleDifference a b c d → d = 7) :=
  ⟨by norm_num [AppleDifference], apples_caleb, apples_suraya, apples_difference⟩

theorem cds_parts (a b c d e : ℚ) (x : CDLengths a b c d e) : c = 3 ∧ d = 3 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  constructor
  · norm_num [hb] at hc
    exact hc
  · norm_num [ha, hb] at hd
    exact hd
theorem cds_combined (a b c d e : ℚ) (x : CDLengths a b c d e) : e = 6 := by
  have hcd := cds_parts a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  rw [hcd.1, hcd.2] at he
  norm_num at he
  exact he
theorem cds_solution : CDLengths 2 (3 / 2) 3 3 6 ∧
    (∀ a b c d e, CDLengths a b c d e → c = 3 ∧ d = 3) ∧
    (∀ a b c d e, CDLengths a b c d e → e = 6) :=
  ⟨by norm_num [CDLengths], cds_parts, cds_combined⟩

theorem bakery_categories (a b c d e f g h i j k l : ℕ)
    (x : BakeryRevenue a b c d e f g h i j k l) : g = 3000 ∧ h = 2000 ∧ i = 2000 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  constructor
  · norm_num [ha, hb] at hg
    exact hg
  constructor
  · norm_num [hc, hd] at hh
    exact hh
  · norm_num [he, hf] at hi
    exact hi
theorem bakery_daily (a b c d e f g h i j k l : ℕ)
    (x : BakeryRevenue a b c d e f g h i j k l) : j = 7000 := by
  have hghi := bakery_categories a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  norm_num [hghi.1, hghi.2.1, hghi.2.2] at hj
  exact hj
theorem bakery_total (a b c d e f g h i j k l : ℕ)
    (x : BakeryRevenue a b c d e f g h i j k l) : l = 35000 := by
  have hj0 := bakery_daily a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  norm_num [hj0, hk] at hl
  exact hl
theorem bakery_solution : BakeryRevenue 20 150 10 200 20 100 3000 2000 2000 7000 5 35000 ∧
    (∀ a b c d e f g h i j k l, BakeryRevenue a b c d e f g h i j k l → g = 3000 ∧ h = 2000 ∧ i = 2000) ∧
    (∀ a b c d e f g h i j k l, BakeryRevenue a b c d e f g h i j k l → j = 7000) ∧
    (∀ a b c d e f g h i j k l, BakeryRevenue a b c d e f g h i j k l → l = 35000) :=
  ⟨by norm_num [BakeryRevenue], bakery_categories, bakery_daily, bakery_total⟩

theorem piano_list (a b c d e f g : ℕ) (x : PianoCost a b c d e f g) : d = 800 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hb, hc] at hd
  exact hd
theorem piano_lessons (a b c d e f g : ℕ) (x : PianoCost a b c d e f g) : e = 200 ∧ f = 600 := by
  have hd0 := piano_list a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega
theorem piano_total (a b c d e f g : ℕ) (x : PianoCost a b c d e f g) : g = 1100 := by
  have hef := piano_lessons a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega
theorem piano_solution : PianoCost 500 20 40 800 200 600 1100 ∧
    (∀ a b c d e f g, PianoCost a b c d e f g → d = 800) ∧
    (∀ a b c d e f g, PianoCost a b c d e f g → e = 200 ∧ f = 600) ∧
    (∀ a b c d e f g, PianoCost a b c d e f g → g = 1100) :=
  ⟨by norm_num [PianoCost], piano_list, piano_lessons, piano_total⟩

theorem ages_robert (a b c d : ℕ) (x : PatrickAge a b c d) : a = 28 := by
  rcases x with ⟨hb, hc, ha, hd⟩
  omega
theorem ages_patrick (a b c d : ℕ) (x : PatrickAge a b c d) : d = 14 := by
  have ha0 := ages_robert a b c d x
  rcases x with ⟨hb, hc, ha, hd⟩
  omega
theorem ages_solution : PatrickAge 28 30 2 14 ∧
    (∀ a b c d, PatrickAge a b c d → a = 28) ∧
    (∀ a b c d, PatrickAge a b c d → d = 14) :=
  ⟨by norm_num [PatrickAge], ages_robert, ages_patrick⟩

theorem work_tuesday (a b c d : ℕ) (x : WorkMinutes a b c d) : b = 225 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  omega
theorem work_difference (a b c d : ℕ) (x : WorkMinutes a b c d) : d = 75 := by
  have hb0 := work_tuesday a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  omega
theorem work_solution : WorkMinutes 450 225 300 75 ∧
    (∀ a b c d, WorkMinutes a b c d → b = 225) ∧
    (∀ a b c d, WorkMinutes a b c d → d = 75) :=
  ⟨by norm_num [WorkMinutes], work_tuesday, work_difference⟩

theorem windows_groups (a b c d e : ℕ) (x : WindowWashing a b c d e) : d = 16 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hc] at hd
  omega
theorem windows_time (a b c d e : ℕ) (x : WindowWashing a b c d e) : e = 160 := by
  have hd0 := windows_groups a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hd0, hb] at he
  exact he
theorem windows_solution : WindowWashing 4 10 64 16 160 ∧
    (∀ a b c d e, WindowWashing a b c d e → d = 16) ∧
    (∀ a b c d e, WindowWashing a b c d e → e = 160) :=
  ⟨by norm_num [WindowWashing], windows_groups, windows_time⟩

theorem cupcakes_remaining (a b c d : ℕ) (x : CupcakesLeft a b c d) : b = 12 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  omega
theorem cupcakes_left (a b c d : ℕ) (x : CupcakesLeft a b c d) : d = 9 := by
  have hb0 := cupcakes_remaining a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  omega
theorem cupcakes_solution : CupcakesLeft 60 12 3 9 ∧
    (∀ a b c d, CupcakesLeft a b c d → b = 12) ∧
    (∀ a b c d, CupcakesLeft a b c d → d = 9) :=
  ⟨by norm_num [CupcakesLeft], cupcakes_remaining, cupcakes_left⟩

end LemmaWeave.Tests.GSM8KDaily0914D

#print axioms LemmaWeave.Tests.GSM8KDaily0914D.buyers_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914D.pants_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914D.apples_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914D.cds_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914D.bakery_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914D.piano_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914D.ages_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914D.work_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914D.windows_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914D.cupcakes_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914D.buyers_solution to "work/gsm8k-daily38-buyers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914D.pants_solution to "work/gsm8k-daily38-pants-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914D.apples_solution to "work/gsm8k-daily38-apples-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914D.cds_solution to "work/gsm8k-daily38-cds-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914D.bakery_solution to "work/gsm8k-daily38-bakery-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914D.piano_solution to "work/gsm8k-daily38-piano-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914D.ages_solution to "work/gsm8k-daily38-ages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914D.work_solution to "work/gsm8k-daily38-work-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914D.windows_solution to "work/gsm8k-daily38-windows-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914D.cupcakes_solution to "work/gsm8k-daily38-cupcakes-graph.json"
