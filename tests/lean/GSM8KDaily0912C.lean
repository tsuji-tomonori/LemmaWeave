import LemmaWeave.Problems.GSM8K.Daily0912CModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0912C
open LemmaWeave.Problems.GSM8K.Daily0912C

theorem massage_increase (a b c d e f g : ℕ) (x : MassageVibrations a b c d e f g) : c = 960 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  omega
theorem massage_high (a b c d e f g : ℕ) (x : MassageVibrations a b c d e f g) : d = 2560 := by
  have hc0 := massage_increase a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hc0] at hd
  exact hd
theorem massage_seconds (a b c d e f g : ℕ) (x : MassageVibrations a b c d e f g) : f = 300 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [he] at hf
  exact hf
theorem massage_total (a b c d e f g : ℕ) (x : MassageVibrations a b c d e f g) : g = 768000 := by
  have hd0 := massage_high a b c d e f g x
  have hf0 := massage_seconds a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hd0, hf0] at hg
  exact hg
theorem massage_solution : MassageVibrations 1600 60 960 2560 5 300 768000 ∧
    (∀ a b c d e f g, MassageVibrations a b c d e f g → c = 960) ∧
    (∀ a b c d e f g, MassageVibrations a b c d e f g → d = 2560) ∧
    (∀ a b c d e f g, MassageVibrations a b c d e f g → f = 300) ∧
    (∀ a b c d e f g, MassageVibrations a b c d e f g → g = 768000) :=
  ⟨by norm_num [MassageVibrations], massage_increase, massage_high, massage_seconds, massage_total⟩

theorem show_minutes (a b c d e f g : ℕ) (x : ShowSchedule a b c d e f g) : c = 600 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  exact hc
theorem show_hours (a b c d e f g : ℕ) (x : ShowSchedule a b c d e f g) : e = 10 := by
  have hc0 := show_minutes a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hc0, hd] at he
  omega
theorem show_daily (a b c d e f g : ℕ) (x : ShowSchedule a b c d e f g) : g = 2 := by
  have he0 := show_hours a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [he0, hf] at hg
  omega
theorem show_solution : ShowSchedule 20 30 600 60 10 5 2 ∧
    (∀ a b c d e f g, ShowSchedule a b c d e f g → c = 600) ∧
    (∀ a b c d e f g, ShowSchedule a b c d e f g → e = 10) ∧
    (∀ a b c d e f g, ShowSchedule a b c d e f g → g = 2) :=
  ⟨by norm_num [ShowSchedule], show_minutes, show_hours, show_daily⟩

theorem minibus_initial_girls (a b c d e : ℕ) (x : MinibusAttendance a b c d e) : c = 10 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem minibus_attending_girls (a b c d e : ℕ) (x : MinibusAttendance a b c d e) : d = 8 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem minibus_absent (a b c d e : ℕ) (x : MinibusAttendance a b c d e) : e = 2 := by
  have hc0 := minibus_initial_girls a b c d e x
  have hd0 := minibus_attending_girls a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem minibus_solution : MinibusAttendance 18 8 10 8 2 ∧
    (∀ a b c d e, MinibusAttendance a b c d e → c = 10) ∧
    (∀ a b c d e, MinibusAttendance a b c d e → d = 8) ∧
    (∀ a b c d e, MinibusAttendance a b c d e → e = 2) :=
  ⟨by norm_num [MinibusAttendance], minibus_initial_girls, minibus_attending_girls, minibus_absent⟩

theorem tuition_scholarship (a b c d e f g h : ℕ) (x : TuitionPayment a b c d e f g h) : c = 27 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at hc
  omega
theorem tuition_after_scholarship (a b c d e f g h : ℕ) (x : TuitionPayment a b c d e f g h) : d = 63 := by
  have hc0 := tuition_scholarship a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  omega
theorem tuition_earnings (a b c d e f g h : ℕ) (x : TuitionPayment a b c d e f g h) : g = 45 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [he, hf] at hg
  exact hg
theorem tuition_remaining (a b c d e f g h : ℕ) (x : TuitionPayment a b c d e f g h) : h = 18 := by
  have hd0 := tuition_after_scholarship a b c d e f g h x
  have hg0 := tuition_earnings a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  omega
theorem tuition_solution : TuitionPayment 90 30 27 63 15 3 45 18 ∧
    (∀ a b c d e f g h, TuitionPayment a b c d e f g h → c = 27) ∧
    (∀ a b c d e f g h, TuitionPayment a b c d e f g h → d = 63) ∧
    (∀ a b c d e f g h, TuitionPayment a b c d e f g h → g = 45) ∧
    (∀ a b c d e f g h, TuitionPayment a b c d e f g h → h = 18) :=
  ⟨by norm_num [TuitionPayment], tuition_scholarship, tuition_after_scholarship,
    tuition_earnings, tuition_remaining⟩

theorem gym_cheap (m a b c d e f g h : ℕ) (x : GymMemberships m a b c d e f g h) : d = 170 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb, hc] at hd
  exact hd
theorem gym_threefold_expensive (a b c d e f g h : ℕ) (x : GymMemberships 3 a b c d e f g h) : g = 480 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at he
  norm_num [he] at hf
  norm_num [ha, he, hf] at hg
  exact hg
theorem gym_threefold_total (a b c d e f g h : ℕ) (x : GymMemberships 3 a b c d e f g h) : h = 650 := by
  have hd0 := gym_cheap 3 a b c d e f g h x
  have hg0 := gym_threefold_expensive a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hd0, hg0] at hh
  exact hh
theorem gym_fourfold_total (a b c d e f g h : ℕ) (x : GymMemberships 4 a b c d e f g h) : h = 810 := by
  have hd0 := gym_cheap 4 a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at he
  norm_num [he] at hf
  norm_num [ha, he, hf] at hg
  norm_num [hd0, hg] at hh
  exact hh
theorem gym_solution : GymMemberships 3 12 10 50 170 30 120 480 650 ∧
    (∀ a b c d e f g h, GymMemberships 3 a b c d e f g h → h = 650) ∧
    GymMemberships 4 12 10 50 170 40 160 640 810 ∧
    (∀ a b c d e f g h, GymMemberships 4 a b c d e f g h → h = 810) ∧ 650 ≠ 810 :=
  ⟨by norm_num [GymMemberships], gym_threefold_total, by norm_num [GymMemberships],
    gym_fourfold_total, by norm_num⟩

theorem cars_chevys (a b c d : ℕ) (x : ModelCars a b c d) : a = 26 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  omega
theorem cars_fords (a b c d : ℕ) (x : ModelCars a b c d) : b = 55 := by
  have ha0 := cars_chevys a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  omega
theorem cars_buicks (a b c d : ℕ) (x : ModelCars a b c d) : c = 220 := by
  have hb0 := cars_fords a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  omega
theorem cars_solution : ModelCars 26 55 220 301 ∧
    (∀ a b c d, ModelCars a b c d → a = 26) ∧
    (∀ a b c d, ModelCars a b c d → b = 55) ∧
    (∀ a b c d, ModelCars a b c d → c = 220) :=
  ⟨by norm_num [ModelCars], cars_chevys, cars_fords, cars_buicks⟩

theorem eggs_total (a b c d e f g h i j : ℕ) (x : EggTrip a b c d e f g h i j) : c = 36 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [ha, hb] at hc
  exact hc
theorem eggs_adults (a b c d e f g h i j : ℕ) (x : EggTrip a b c d e f g h i j) : f = 9 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hd, he] at hf
  exact hf
theorem eggs_boy_each (a b c d e f g h i j : ℕ) (x : EggTrip a b c d e f g h i j) : j = 2 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hh] at hi
  exact hi
theorem eggs_boys (a b c d e f g h i j : ℕ) (x : EggTrip a b c d e f g h i j) : i = 10 := by
  have hc0 := eggs_total a b c d e f g h i j x
  have hf0 := eggs_adults a b c d e f g h i j x
  have hj0 := eggs_boy_each a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hc0, hf0, hg, hh, hj0] at hj
  omega
theorem eggs_solution : EggTrip 3 12 36 3 3 9 7 1 10 2 ∧
    (∀ a b c d e f g h i j, EggTrip a b c d e f g h i j → c = 36) ∧
    (∀ a b c d e f g h i j, EggTrip a b c d e f g h i j → f = 9) ∧
    (∀ a b c d e f g h i j, EggTrip a b c d e f g h i j → j = 2) ∧
    (∀ a b c d e f g h i j, EggTrip a b c d e f g h i j → i = 10) :=
  ⟨by norm_num [EggTrip], eggs_total, eggs_adults, eggs_boy_each, eggs_boys⟩

theorem fuel_reduction (a b c d e : ℕ) (x : FuelUse a b c d e) : c = 3 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  omega
theorem fuel_last (a b c d e : ℕ) (x : FuelUse a b c d e) : d = 12 := by
  have hc0 := fuel_reduction a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem fuel_total (a b c d e : ℕ) (x : FuelUse a b c d e) : e = 27 := by
  have hd0 := fuel_last a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hd0] at he
  exact he
theorem fuel_solution : FuelUse 15 20 3 12 27 ∧
    (∀ a b c d e, FuelUse a b c d e → c = 3) ∧
    (∀ a b c d e, FuelUse a b c d e → d = 12) ∧
    (∀ a b c d e, FuelUse a b c d e → e = 27) :=
  ⟨by norm_num [FuelUse], fuel_reduction, fuel_last, fuel_total⟩

theorem scarves_yarns (a b c d e f : ℕ) (x : ScarfKnitting a b c d e f) : e = 12 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hb, hc, hd] at he
  exact he
theorem scarves_total (a b c d e f : ℕ) (x : ScarfKnitting a b c d e f) : f = 36 := by
  have he0 := scarves_yarns a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, he0] at hf
  exact hf
theorem scarves_solution : ScarfKnitting 3 2 6 4 12 36 ∧
    (∀ a b c d e f, ScarfKnitting a b c d e f → e = 12) ∧
    (∀ a b c d e f, ScarfKnitting a b c d e f → f = 36) :=
  ⟨by norm_num [ScarfKnitting], scarves_yarns, scarves_total⟩

theorem opera_practice (a b c d : ℕ) (x : OperaTime a b c d) : b = 18 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha] at hb
  exact hb
theorem opera_tantrums (a b c d : ℕ) (x : OperaTime a b c d) : c = 30 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha] at hc
  exact hc
theorem opera_total (a b c d : ℕ) (x : OperaTime a b c d) : d = 54 := by
  have hb0 := opera_practice a b c d x
  have hc0 := opera_tantrums a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb0, hc0] at hd
  exact hd
theorem opera_solution : OperaTime 6 18 30 54 ∧
    (∀ a b c d, OperaTime a b c d → b = 18) ∧
    (∀ a b c d, OperaTime a b c d → c = 30) ∧
    (∀ a b c d, OperaTime a b c d → d = 54) :=
  ⟨by norm_num [OperaTime], opera_practice, opera_tantrums, opera_total⟩

end LemmaWeave.Tests.GSM8KDaily0912C

#print axioms LemmaWeave.Tests.GSM8KDaily0912C.massage_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912C.show_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912C.minibus_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912C.tuition_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912C.gym_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912C.cars_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912C.eggs_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912C.fuel_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912C.scarves_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0912C.opera_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912C.massage_solution to "work/gsm8k-daily29-massage-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912C.show_solution to "work/gsm8k-daily29-show-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912C.minibus_solution to "work/gsm8k-daily29-minibus-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912C.tuition_solution to "work/gsm8k-daily29-tuition-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912C.gym_solution to "work/gsm8k-daily29-gym-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912C.cars_solution to "work/gsm8k-daily29-cars-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912C.eggs_solution to "work/gsm8k-daily29-eggs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912C.fuel_solution to "work/gsm8k-daily29-fuel-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912C.scarves_solution to "work/gsm8k-daily29-scarves-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0912C.opera_solution to "work/gsm8k-daily29-opera-graph.json"
