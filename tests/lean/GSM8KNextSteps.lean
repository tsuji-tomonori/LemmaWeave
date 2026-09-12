import LemmaWeave.Problems.GSM8K.NextModels
import LemmaWeave.Lemmas.ArithmeticMethods
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KNextSteps
open LemmaWeave.Problems.GSM8K.Next LemmaWeave.Lemmas.ArithmeticMethods

theorem flowers_purple (p g t : ℚ) (h : Flowers p g t) : p = 18 := by
  have hp := h.1
  norm_num at hp
  exact hp

theorem flowers_pair (p g t : ℚ) (h : Flowers p g t) : 10+p = 28 := by
  rw [flowers_purple p g t h]
  norm_num

theorem flowers_green (p g t : ℚ) (h : Flowers p g t) : g = 7 := by
  rw [h.2.1, flowers_pair p g t h]
  norm_num

theorem flowers_total (p g t : ℚ) (h : Flowers p g t) : t = 35 := by
  rw [h.2.2, flowers_pair p g t h, flowers_green p g t h]
  norm_num

theorem flowers_exists : Flowers 18 7 35 := by norm_num [Flowers]

theorem flowers_solution : (∃ p g t, Flowers p g t) ∧ ∀ p g t, Flowers p g t → t = 35 :=
  ⟨⟨18,7,35,flowers_exists⟩, flowers_total⟩

theorem pizza_large (l s t : ℕ) (h : Pizza l s t) : l = 32 := h.1

theorem pizza_small (l s t : ℕ) (h : Pizza l s t) : s = 16 := h.2.1

theorem pizza_total (l s t : ℕ) (h : Pizza l s t) : t = 48 := by
  rw [h.2.2, pizza_large l s t h, pizza_small l s t h]

theorem pizza_exists : Pizza 32 16 48 := by norm_num [Pizza]

theorem pizza_solution : (∃ l s t, Pizza l s t) ∧ ∀ l s t, Pizza l s t → t = 48 :=
  ⟨⟨32,16,48,pizza_exists⟩, pizza_total⟩

theorem parcel_tripled (b m f : ℚ) (h : Parcel b m f) : b = 6 := by
  have hb := h.1
  norm_num at hb
  exact hb

theorem parcel_added (b m f : ℚ) (h : Parcel b m f) : m = 8 := by
  rw [h.2.1, parcel_tripled b m f h]
  norm_num

theorem parcel_doubled (b m f : ℚ) (h : Parcel b m f) : f = 16 := by
  rw [h.2.2, parcel_added b m f h]
  norm_num

theorem parcel_exists : Parcel 6 8 16 := by norm_num [Parcel]

theorem parcel_solution : (∃ b m f, Parcel b m f) ∧ ∀ b m f, Parcel b m f → f = 16 :=
  ⟨⟨6,8,16,parcel_exists⟩, parcel_doubled⟩

theorem clothes_known (s : ℚ) (h : Clothes s) : 143+s+16 = 200 := by
  have hb := h.1
  norm_num at hb
  exact hb

theorem clothes_spent (s : ℚ) (h : Clothes s) : 143+s = 184 := by
  linarith [clothes_known s h]

theorem clothes_shoes (s : ℚ) (h : Clothes s) : s = 41 := by
  have hs := (remaining_iff 184 143 s).mp (clothes_spent s h)
  norm_num at hs
  exact hs

theorem clothes_exists : Clothes 41 := by norm_num [Clothes]

theorem clothes_solution (s : ℚ) : Clothes s ↔ s = 41 := by
  constructor
  · exact clothes_shoes s
  · rintro rfl
    exact clothes_exists

theorem overtime_hours (e r n p d w : ℚ) (h : Overtime e r n p d w) : e = 2 := by
  have he := (remaining_iff 10 8 e).mp h.1
  norm_num at he
  exact he

theorem overtime_rate (e r n p d w : ℚ) (h : Overtime e r n p d w) : r = 27 := by
  have hr := h.2.1
  norm_num at hr
  exact hr

theorem overtime_regular (e r n p d w : ℚ) (h : Overtime e r n p d w) : n = 144 := by
  have hn := h.2.2.1
  norm_num at hn
  exact hn

theorem overtime_premium (e r n p d w : ℚ) (h : Overtime e r n p d w) : p = 54 := by
  rw [h.2.2.2.1, overtime_hours e r n p d w h, overtime_rate e r n p d w h]
  norm_num

theorem overtime_daily (e r n p d w : ℚ) (h : Overtime e r n p d w) : d = 198 := by
  rw [h.2.2.2.2.1, overtime_regular e r n p d w h, overtime_premium e r n p d w h]
  norm_num

theorem overtime_weekly (e r n p d w : ℚ) (h : Overtime e r n p d w) : w = 990 := by
  rw [h.2.2.2.2.2, overtime_daily e r n p d w h]
  norm_num

theorem overtime_exists : Overtime 2 27 144 54 198 990 := by norm_num [Overtime]

theorem overtime_solution : (∃ e r n p d w, Overtime e r n p d w) ∧
    ∀ e r n p d w, Overtime e r n p d w → w = 990 :=
  ⟨⟨2,27,144,54,198,990,overtime_exists⟩, overtime_weekly⟩

end LemmaWeave.Tests.GSM8KNextSteps

#print axioms LemmaWeave.Tests.GSM8KNextSteps.flowers_solution
#print axioms LemmaWeave.Tests.GSM8KNextSteps.pizza_solution
#print axioms LemmaWeave.Tests.GSM8KNextSteps.parcel_solution
#print axioms LemmaWeave.Tests.GSM8KNextSteps.clothes_solution
#print axioms LemmaWeave.Tests.GSM8KNextSteps.overtime_solution
#lw_dependencies LemmaWeave.Tests.GSM8KNextSteps.flowers_solution to "work/gsm8k-next-flowers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KNextSteps.pizza_solution to "work/gsm8k-next-pizza-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KNextSteps.parcel_solution to "work/gsm8k-next-parcel-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KNextSteps.clothes_solution to "work/gsm8k-next-clothes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KNextSteps.overtime_solution to "work/gsm8k-next-overtime-graph.json"
