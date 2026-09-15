import LemmaWeave.Problems.GSM8K.Daily0907EModels
import LemmaWeave.Lemmas.ArithmeticMethods
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0907E
open LemmaWeave.Problems.GSM8K.Daily0907E

theorem course_food (f a e m : ℚ) (x : CourseworkBudget f a e m) : f = 300 := by
  have h := x.1
  norm_num at h ⊢
  exact h
theorem course_accommodation (f a e m : ℚ) (x : CourseworkBudget f a e m) : a = 150 := by
  have h := x.2.1
  norm_num at h ⊢
  exact h
theorem course_entertainment (f a e m : ℚ) (x : CourseworkBudget f a e m) : e = 250 := by
  have h := x.2.2.1
  norm_num at h ⊢
  exact h
theorem course_materials (f a e m : ℚ) (x : CourseworkBudget f a e m) : m = 300 := by
  have hf := course_food f a e m x
  have ha := course_accommodation f a e m x
  have he := course_entertainment f a e m x
  have hm := x.2.2.2
  linarith
theorem course_exists : CourseworkBudget 300 150 250 300 := by
  norm_num [CourseworkBudget]
theorem course_solution :
    CourseworkBudget 300 150 250 300 ∧
    (∀ f a e m, CourseworkBudget f a e m → f = 300) ∧
    (∀ f a e m, CourseworkBudget f a e m → a = 150) ∧
    (∀ f a e m, CourseworkBudget f a e m → e = 250) ∧
    (∀ f a e m, CourseworkBudget f a e m → m = 300) :=
  ⟨course_exists, course_food, course_accommodation, course_entertainment, course_materials⟩

theorem treats_reeses (r s k t : ℚ) (x : PinataTreats r s k t) : r = 36 := by
  have h := x.1
  norm_num at h ⊢
  exact h
theorem treats_snickers (r s k t : ℚ) (x : PinataTreats r s k t) : s = 15 := by
  have h := x.2.1
  norm_num at h ⊢
  exact h
theorem treats_skittles (r s k t : ℚ) (x : PinataTreats r s k t) : k = 35 := by
  have h := x.2.2.1
  norm_num at h ⊢
  exact h
theorem treats_total (r s k t : ℚ) (x : PinataTreats r s k t) : t = 99 := by
  have hr := treats_reeses r s k t x
  have hs := treats_snickers r s k t x
  have hk := treats_skittles r s k t x
  have ht := x.2.2.2
  linarith
theorem treats_exists : PinataTreats 36 15 35 99 := by norm_num [PinataTreats]
theorem treats_solution :
    PinataTreats 36 15 35 99 ∧ (∀ r s k t, PinataTreats r s k t → r = 36) ∧
    (∀ r s k t, PinataTreats r s k t → s = 15) ∧
    (∀ r s k t, PinataTreats r s k t → k = 35) ∧
    (∀ r s k t, PinataTreats r s k t → t = 99) :=
  ⟨treats_exists, treats_reeses, treats_snickers, treats_skittles, treats_total⟩

theorem practice_violin (v d w m : ℕ) (x : MonthlyPractice v d w m) : v = 60 := x.1
theorem practice_daily (v d w m : ℕ) (x : MonthlyPractice v d w m) : d = 80 := by
  have hv := practice_violin v d w m x
  have hd := x.2.1
  omega
theorem practice_weekly (v d w m : ℕ) (x : MonthlyPractice v d w m) : w = 480 := by
  have hd := practice_daily v d w m x
  have hw := x.2.2.1
  omega
theorem practice_monthly (v d w m : ℕ) (x : MonthlyPractice v d w m) : m = 1920 := by
  have hw := practice_weekly v d w m x
  have hm := x.2.2.2
  omega
theorem practice_exists : MonthlyPractice 60 80 480 1920 := by norm_num [MonthlyPractice]
theorem practice_solution :
    MonthlyPractice 60 80 480 1920 ∧
    (∀ v d w m, MonthlyPractice v d w m → v = 60) ∧
    (∀ v d w m, MonthlyPractice v d w m → d = 80) ∧
    (∀ v d w m, MonthlyPractice v d w m → w = 480) ∧
    (∀ v d w m, MonthlyPractice v d w m → m = 1920) :=
  ⟨practice_exists, practice_violin, practice_daily, practice_weekly, practice_monthly⟩

theorem download_first (f r rt t : ℚ) (x : DownloadTime f r rt t) : f = 12 := by
  have h := x.1
  norm_num at h ⊢
  exact h
theorem download_remaining (f r rt t : ℚ) (x : DownloadTime f r rt t) : r = 30 := by
  have h := x.2.1
  norm_num at h ⊢
  exact h
theorem download_remaining_time (f r rt t : ℚ) (x : DownloadTime f r rt t) : rt = 3 := by
  have hr := download_remaining f r rt t x
  have ht := x.2.2.1
  linarith
theorem download_total (f r rt t : ℚ) (x : DownloadTime f r rt t) : t = 15 := by
  have hf := download_first f r rt t x
  have hr := download_remaining_time f r rt t x
  have ht := x.2.2.2
  linarith
theorem download_exists : DownloadTime 12 30 3 15 := by norm_num [DownloadTime]
theorem download_solution :
    DownloadTime 12 30 3 15 ∧ (∀ f r rt t, DownloadTime f r rt t → f = 12) ∧
    (∀ f r rt t, DownloadTime f r rt t → r = 30) ∧
    (∀ f r rt t, DownloadTime f r rt t → rt = 3) ∧
    (∀ f r rt t, DownloadTime f r rt t → t = 15) :=
  ⟨download_exists, download_first, download_remaining, download_remaining_time, download_total⟩

theorem digits_carlos (c s : ℕ) (x : PiDigits c s) : c = 4 := by
  have hc := x.1
  omega
theorem digits_sam (c s : ℕ) (x : PiDigits c s) : s = 10 := by
  have hc := digits_carlos c s x
  have hs := x.2
  omega
theorem digits_exists : PiDigits 4 10 := by norm_num [PiDigits]
theorem digits_solution :
    PiDigits 4 10 ∧ (∀ c s, PiDigits c s → c = 4) ∧
    (∀ c s, PiDigits c s → s = 10) :=
  ⟨digits_exists, digits_carlos, digits_sam⟩

theorem shells_ben (b a : ℕ) (x : ShellCollection b a) : b = 12 := by
  have hb := x.1
  omega
theorem shells_alan (b a : ℕ) (x : ShellCollection b a) : a = 48 := by
  have hb := shells_ben b a x
  have ha := x.2
  omega
theorem shells_exists : ShellCollection 12 48 := by norm_num [ShellCollection]
theorem shells_solution :
    ShellCollection 12 48 ∧ (∀ b a, ShellCollection b a → b = 12) ∧
    (∀ b a, ShellCollection b a → a = 48) :=
  ⟨shells_exists, shells_ben, shells_alan⟩

theorem saving_cost (c m i h : ℕ) (x : SupplySaving c m i h) : c = 400 := x.1
theorem saving_months (c m i h : ℕ) (x : SupplySaving c m i h) : m = 8 := x.2.1
theorem saving_income (c m i h : ℕ) (x : SupplySaving c m i h) : i = 50 := by
  have hi := x.2.2.1
  rw [saving_cost c m i h x, saving_months c m i h x] at hi
  norm_num at hi ⊢
  exact hi
theorem saving_chores (c m i h : ℕ) (x : SupplySaving c m i h) : h = 5 := by
  have hh := x.2.2.2
  rw [saving_income c m i h x] at hh
  norm_num at hh ⊢
  exact hh
theorem saving_exists : SupplySaving 400 8 50 5 := by norm_num [SupplySaving]
theorem saving_solution :
    SupplySaving 400 8 50 5 ∧ (∀ c m i h, SupplySaving c m i h → c = 400) ∧
    (∀ c m i h, SupplySaving c m i h → m = 8) ∧
    (∀ c m i h, SupplySaving c m i h → i = 50) ∧
    (∀ c m i h, SupplySaving c m i h → h = 5) :=
  ⟨saving_exists, saving_cost, saving_months, saving_income, saving_chores⟩

theorem fabric_bolt (b l d r : ℕ) (x : CurtainFabric b l d r) : b = 192 := x.1
theorem fabric_living (b l d r : ℕ) (x : CurtainFabric b l d r) : l = 24 := x.2.1
theorem fabric_bedroom (b l d r : ℕ) (x : CurtainFabric b l d r) : d = 8 := x.2.2.1
theorem fabric_remaining (b l d r : ℕ) (x : CurtainFabric b l d r) : r = 160 := by
  have hb := fabric_bolt b l d r x
  have hl := fabric_living b l d r x
  have hd := fabric_bedroom b l d r x
  have hr := x.2.2.2
  omega
theorem fabric_exists : CurtainFabric 192 24 8 160 := by norm_num [CurtainFabric]
theorem fabric_solution :
    CurtainFabric 192 24 8 160 ∧ (∀ b l d r, CurtainFabric b l d r → b = 192) ∧
    (∀ b l d r, CurtainFabric b l d r → l = 24) ∧
    (∀ b l d r, CurtainFabric b l d r → d = 8) ∧
    (∀ b l d r, CurtainFabric b l d r → r = 160) :=
  ⟨fabric_exists, fabric_bolt, fabric_living, fabric_bedroom, fabric_remaining⟩

theorem pencils_shared (s t e : ℕ) (x : PencilBoxes s t e) : s = 40 := x.1
theorem pencils_total (s t e : ℕ) (x : PencilBoxes s t e) : t = 50 := by
  have hs := pencils_shared s t e x
  have ht := x.2.1
  omega
theorem pencils_each (s t e : ℕ) (x : PencilBoxes s t e) : e = 5 := by
  have he := x.2.2
  rw [pencils_total s t e x] at he
  norm_num at he ⊢
  exact he
theorem pencils_exists : PencilBoxes 40 50 5 := by norm_num [PencilBoxes]
theorem pencils_solution :
    PencilBoxes 40 50 5 ∧ (∀ s t e, PencilBoxes s t e → s = 40) ∧
    (∀ s t e, PencilBoxes s t e → t = 50) ∧
    (∀ s t e, PencilBoxes s t e → e = 5) :=
  ⟨pencils_exists, pencils_shared, pencils_total, pencils_each⟩

theorem dessert_ice (i y d : ℕ) (x : FrozenDesserts i y d) : i = 40 := x.1
theorem dessert_yogurt (i y d : ℕ) (x : FrozenDesserts i y d) : y = 4 := x.2.1
theorem dessert_difference (i y d : ℕ) (x : FrozenDesserts i y d) : d = 36 := by
  have hi := dessert_ice i y d x
  have hy := dessert_yogurt i y d x
  have hd := x.2.2
  omega
theorem dessert_exists : FrozenDesserts 40 4 36 := by norm_num [FrozenDesserts]
theorem dessert_solution :
    FrozenDesserts 40 4 36 ∧ (∀ i y d, FrozenDesserts i y d → i = 40) ∧
    (∀ i y d, FrozenDesserts i y d → y = 4) ∧
    (∀ i y d, FrozenDesserts i y d → d = 36) :=
  ⟨dessert_exists, dessert_ice, dessert_yogurt, dessert_difference⟩

end LemmaWeave.Tests.GSM8KDaily0907E

#print axioms LemmaWeave.Tests.GSM8KDaily0907E.course_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907E.treats_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907E.practice_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907E.download_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907E.digits_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907E.shells_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907E.saving_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907E.fabric_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907E.pencils_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0907E.dessert_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907E.course_solution to "work/gsm8k-daily5-course-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907E.treats_solution to "work/gsm8k-daily5-treats-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907E.practice_solution to "work/gsm8k-daily5-practice-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907E.download_solution to "work/gsm8k-daily5-download-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907E.digits_solution to "work/gsm8k-daily5-digits-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907E.shells_solution to "work/gsm8k-daily5-shells-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907E.saving_solution to "work/gsm8k-daily5-saving-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907E.fabric_solution to "work/gsm8k-daily5-fabric-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907E.pencils_solution to "work/gsm8k-daily5-pencils-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0907E.dessert_solution to "work/gsm8k-daily5-dessert-graph.json"
