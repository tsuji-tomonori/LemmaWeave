import LemmaWeave.Problems.GSM8K.Daily0910CModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0910C
open LemmaWeave.Problems.GSM8K.Daily0910C

theorem covid_after_second (a b c d e f g h : ℕ) (x : CovidCases a b c d e f g h) : d = 2450 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  simp [ha, hb, hc] at hd
  exact hd
theorem covid_before_third_recovery (a b c d e f g h : ℕ) (x : CovidCases a b c d e f g h) : g = 3950 := by
  have hd := covid_after_second a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hafter, he, hf, hg, hh⟩
  omega
theorem covid_after_third (a b c d e f g h : ℕ) (x : CovidCases a b c d e f g h) : h = 3750 := by
  have hg := covid_before_third_recovery a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hbefore, hh⟩
  omega
theorem covid_exists : CovidCases 2000 500 50 2450 1500 200 3950 3750 := by norm_num [CovidCases]
theorem covid_solution : CovidCases 2000 500 50 2450 1500 200 3950 3750 ∧
    (∀ a b c d e f g h, CovidCases a b c d e f g h → d = 2450) ∧
    (∀ a b c d e f g h, CovidCases a b c d e f g h → g = 3950) ∧
    (∀ a b c d e f g h, CovidCases a b c d e f g h → h = 3750) :=
  ⟨covid_exists, covid_after_second, covid_before_third_recovery, covid_after_third⟩

theorem trout_dad (a b c d : ℕ) (x : TroutDifference a b c d) : c = 6 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  simp [ha, hb] at hc
  exact hc
theorem trout_more (a b c d : ℕ) (x : TroutDifference a b c d) : d = 4 := by
  have hc := trout_dad a b c d x
  rcases x with ⟨ha, hb, hdad, hd⟩
  omega
theorem trout_exists : TroutDifference 2 3 6 4 := by norm_num [TroutDifference]
theorem trout_solution : TroutDifference 2 3 6 4 ∧
    (∀ a b c d, TroutDifference a b c d → c = 6) ∧
    (∀ a b c d, TroutDifference a b c d → d = 4) :=
  ⟨trout_exists, trout_dad, trout_more⟩

theorem snakes_first (a b c d e f : ℕ) (x : SnakeLengths a b c d e f) : c = 24 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  simp [ha, hb] at hc
  exact hc
theorem snakes_total (a b c d e f : ℕ) (x : SnakeLengths a b c d e f) : f = 50 := by
  have hc := snakes_first a b c d e f x
  rcases x with ⟨ha, hb, hfirst, hd, he, hf⟩
  omega
theorem snakes_exists : SnakeLengths 2 12 24 16 10 50 := by norm_num [SnakeLengths]
theorem snakes_solution : SnakeLengths 2 12 24 16 10 50 ∧
    (∀ a b c d e f, SnakeLengths a b c d e f → c = 24) ∧
    (∀ a b c d e f, SnakeLengths a b c d e f → f = 50) :=
  ⟨snakes_exists, snakes_first, snakes_total⟩

theorem crayons_first_each (a b c d e f g h i j k l m n : ℕ)
    (x : CrayonUnused a b c d e f g h i j k l m n) : e = 15 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn, ho⟩
  simp [ha, hc, hd] at he
  omega
theorem crayons_first_total (a b c d e f g h i j k l m n : ℕ)
    (x : CrayonUnused a b c d e f g h i j k l m n) : f = 30 := by
  have he := crayons_first_each a b c d e f g h i j k l m n x
  rcases x with ⟨ha, hb, hc, hd, hfirst, hf, hg, hh, hi, hj, hk, hl, hm, hn, ho⟩
  simp [hb, he] at hf
  exact hf
theorem crayons_other_used (a b c d e f g h i j k l m n : ℕ)
    (x : CrayonUnused a b c d e f g h i j k l m n) : j = 16 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn, ho⟩
  simp [ha, hh, hi] at hj
  omega
theorem crayons_other_unused (a b c d e f g h i j k l m n : ℕ)
    (x : CrayonUnused a b c d e f g h i j k l m n) : k = 8 := by
  have hj := crayons_other_used a b c d e f g h i j k l m n x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hused, hk, hl, hm, hn, ho⟩
  omega
theorem crayons_other_total (a b c d e f g h i j k l m n : ℕ)
    (x : CrayonUnused a b c d e f g h i j k l m n) : l = 16 := by
  have hk := crayons_other_unused a b c d e f g h i j k l m n x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hunused, hl, hm, hn, ho⟩
  simp [hg, hk] at hl
  exact hl
theorem crayons_range (a b c d e f g h i j k l m n : ℕ)
    (x : CrayonUnused a b c d e f g h i j k l m n) : 47 ≤ n ∧ n ≤ 70 := by
  have hf := crayons_first_total a b c d e f g h i j k l m n x
  have hl := crayons_other_total a b c d e f g h i j k l m n x
  rcases x with ⟨ha, hb, hc, hd, he, hfirst, hg, hh, hi, hj, hk, hother, hm, hn, ho⟩
  omega
theorem crayons_last_all_unused (a b c d e f g h i j k l m n : ℕ)
    (x : CrayonUnused a b c d e f g h i j k l m n) (hm : m = 24) : n = 70 := by
  have hf := crayons_first_total a b c d e f g h i j k l m n x
  have hl := crayons_other_total a b c d e f g h i j k l m n x
  rcases x with ⟨ha, hb, hc, hd, he, hfirst, hg, hh, hi, hj, hk, hother, hpositive, hbound, ho⟩
  omega
theorem crayons_two_models :
    CrayonUnused 24 2 5 8 15 30 2 2 3 16 8 16 1 47 ∧
    CrayonUnused 24 2 5 8 15 30 2 2 3 16 8 16 24 70 := by
  norm_num [CrayonUnused]
theorem crayons_solution :
    (∀ a b c d e f g h i j k l m n, CrayonUnused a b c d e f g h i j k l m n → 47 ≤ n ∧ n ≤ 70) ∧
    (∀ a b c d e f g h i j k l m n, CrayonUnused a b c d e f g h i j k l m n → m = 24 → n = 70) ∧
    CrayonUnused 24 2 5 8 15 30 2 2 3 16 8 16 1 47 ∧
    CrayonUnused 24 2 5 8 15 30 2 2 3 16 8 16 24 70 :=
  ⟨crayons_range, crayons_last_all_unused, crayons_two_models⟩

theorem glasses_william (a b c d : ℕ) (x : BrokenGlasses a b c d) : c = 8 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  simp [ha, hb] at hc
  exact hc
theorem glasses_total (a b c d : ℕ) (x : BrokenGlasses a b c d) : d = 10 := by
  have hc := glasses_william a b c d x
  rcases x with ⟨ha, hb, hwilliam, hd⟩
  omega
theorem glasses_exists : BrokenGlasses 2 4 8 10 := by norm_num [BrokenGlasses]
theorem glasses_solution : BrokenGlasses 2 4 8 10 ∧
    (∀ a b c d, BrokenGlasses a b c d → c = 8) ∧
    (∀ a b c d, BrokenGlasses a b c d → d = 10) :=
  ⟨glasses_exists, glasses_william, glasses_total⟩

theorem heroes_mul_captain (a b c d e : ℕ) (x : HeroAgesMultiplicative a b c d e) : b = 112 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  simp [ha] at hb
  omega
theorem heroes_mul_peter (a b c d e : ℕ) (x : HeroAgesMultiplicative a b c d e) : c = 16 := by
  have hb := heroes_mul_captain a b c d e x
  rcases x with ⟨ha, hcaptain, hc, hd, he⟩
  simp [hb] at hc
  omega
theorem heroes_mul_ironman (a b c d e : ℕ) (x : HeroAgesMultiplicative a b c d e) : d = 48 := by
  have hc := heroes_mul_peter a b c d e x
  rcases x with ⟨ha, hb, hpeter, hd, he⟩
  omega
theorem heroes_literal_captain (a b c d e : ℕ) (x : HeroAgesLiteralOlder a b c d e) : b = 104 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  simp [ha] at hb
  omega
theorem heroes_literal_peter (a b c d e : ℕ) (x : HeroAgesLiteralOlder a b c d e) : c = 13 := by
  have hb := heroes_literal_captain a b c d e x
  rcases x with ⟨ha, hcaptain, hc, hd, he⟩
  simp [hb] at hc
  omega
theorem heroes_literal_ironman (a b c d e : ℕ) (x : HeroAgesLiteralOlder a b c d e) : d = 45 := by
  have hc := heroes_literal_peter a b c d e x
  rcases x with ⟨ha, hb, hpeter, hd, he⟩
  omega
theorem heroes_mul_exists : HeroAgesMultiplicative 1456 112 16 48 32 := by norm_num [HeroAgesMultiplicative]
theorem heroes_literal_exists : HeroAgesLiteralOlder 1456 104 13 45 32 := by norm_num [HeroAgesLiteralOlder]
theorem heroes_solution :
    HeroAgesMultiplicative 1456 112 16 48 32 ∧
    HeroAgesLiteralOlder 1456 104 13 45 32 ∧
    (∀ a b c d e, HeroAgesMultiplicative a b c d e → d = 48) ∧
    (∀ a b c d e, HeroAgesLiteralOlder a b c d e → d = 45) :=
  ⟨heroes_mul_exists, heroes_literal_exists, heroes_mul_ironman, heroes_literal_ironman⟩

theorem dallas_darcy_now (a b c d e : ℕ) (x : DallasAge a b c d e) : b = 16 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  simp [ha] at hb
  exact hb
theorem dallas_darcy_last (a b c d e : ℕ) (x : DallasAge a b c d e) : c = 15 := by
  have hb := dallas_darcy_now a b c d e x
  rcases x with ⟨ha, hdarcy, hc, hd, he⟩
  omega
theorem dallas_last (a b c d e : ℕ) (x : DallasAge a b c d e) : d = 45 := by
  have hc := dallas_darcy_last a b c d e x
  rcases x with ⟨ha, hb, hdarcy, hd, he⟩
  simp [hc] at hd
  exact hd
theorem dallas_now (a b c d e : ℕ) (x : DallasAge a b c d e) : e = 46 := by
  have hd := dallas_last a b c d e x
  rcases x with ⟨ha, hb, hc, hlast, he⟩
  omega
theorem dallas_exists : DallasAge 8 16 15 45 46 := by norm_num [DallasAge]
theorem dallas_solution : DallasAge 8 16 15 45 46 ∧
    (∀ a b c d e, DallasAge a b c d e → b = 16) ∧
    (∀ a b c d e, DallasAge a b c d e → c = 15) ∧
    (∀ a b c d e, DallasAge a b c d e → d = 45) ∧
    (∀ a b c d e, DallasAge a b c d e → e = 46) :=
  ⟨dallas_exists, dallas_darcy_now, dallas_darcy_last, dallas_last, dallas_now⟩

theorem forest_caught_weasels (a b c d e f g h i j k l m : ℕ)
    (x : ForestRodents a b c d e f g h i j k l m) : i = 36 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  simp [ha, hb, he] at hg hi
  omega
theorem forest_caught_rabbits (a b c d e f g h i j k l m : ℕ)
    (x : ForestRodents a b c d e f g h i j k l m) : j = 18 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm⟩
  simp [ha, hb, hf] at hh hj
  omega
theorem forest_left_weasels (a b c d e f g h i j k l m : ℕ)
    (x : ForestRodents a b c d e f g h i j k l m) : k = 64 := by
  have hi := forest_caught_weasels a b c d e f g h i j k l m x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hcaught, hj, hk, hl, hm⟩
  omega
theorem forest_left_rabbits (a b c d e f g h i j k l m : ℕ)
    (x : ForestRodents a b c d e f g h i j k l m) : l = 32 := by
  have hj := forest_caught_rabbits a b c d e f g h i j k l m x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hcaught, hk, hl, hm⟩
  omega
theorem forest_total (a b c d e f g h i j k l m : ℕ)
    (x : ForestRodents a b c d e f g h i j k l m) : m = 96 := by
  have hk := forest_left_weasels a b c d e f g h i j k l m x
  have hl := forest_left_rabbits a b c d e f g h i j k l m x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hweasels, hrabbits, hm⟩
  omega
theorem forest_exists : ForestRodents 3 3 100 50 4 2 12 6 36 18 64 32 96 := by norm_num [ForestRodents]
theorem forest_solution : ForestRodents 3 3 100 50 4 2 12 6 36 18 64 32 96 ∧
    (∀ a b c d e f g h i j k l m, ForestRodents a b c d e f g h i j k l m → i = 36) ∧
    (∀ a b c d e f g h i j k l m, ForestRodents a b c d e f g h i j k l m → j = 18) ∧
    (∀ a b c d e f g h i j k l m, ForestRodents a b c d e f g h i j k l m → k = 64) ∧
    (∀ a b c d e f g h i j k l m, ForestRodents a b c d e f g h i j k l m → l = 32) ∧
    (∀ a b c d e f g h i j k l m, ForestRodents a b c d e f g h i j k l m → m = 96) :=
  ⟨forest_exists, forest_caught_weasels, forest_caught_rabbits,
    forest_left_weasels, forest_left_rabbits, forest_total⟩

theorem apple_phone_sales (a b c d e f g h i j k l : ℕ)
    (x : AppleAverage a b c d e f g h i j k l) : c = 100000 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  simp [ha, hb] at hc
  exact hc
theorem apple_tablet_sales (a b c d e f g h i j k l : ℕ)
    (x : AppleAverage a b c d e f g h i j k l) : f = 18000 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  simp [hd, he] at hf
  exact hf
theorem apple_tv_sales (a b c d e f g h i j k l : ℕ)
    (x : AppleAverage a b c d e f g h i j k l) : i = 16000 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  simp [hg, hh] at hi
  exact hi
theorem apple_total_products (a b c d e f g h i j k l : ℕ)
    (x : AppleAverage a b c d e f g h i j k l) : j = 200 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  omega
theorem apple_total_sales (a b c d e f g h i j k l : ℕ)
    (x : AppleAverage a b c d e f g h i j k l) : k = 134000 := by
  have hc := apple_phone_sales a b c d e f g h i j k l x
  have hf := apple_tablet_sales a b c d e f g h i j k l x
  have hi := apple_tv_sales a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hphone, hd, he, htablet, hg, hh, htv, hj, hk, hl⟩
  omega
theorem apple_average (a b c d e f g h i j k l : ℕ)
    (x : AppleAverage a b c d e f g h i j k l) : l = 670 := by
  have hj := apple_total_products a b c d e f g h i j k l x
  have hk := apple_total_sales a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hproducts, hsales, hl⟩
  simp [hj, hk] at hl
  omega
theorem apple_exists : AppleAverage 100 1000 100000 20 900 18000 80 200 16000 200 134000 670 := by
  norm_num [AppleAverage]
theorem apple_solution : AppleAverage 100 1000 100000 20 900 18000 80 200 16000 200 134000 670 ∧
    (∀ a b c d e f g h i j k l, AppleAverage a b c d e f g h i j k l → c = 100000) ∧
    (∀ a b c d e f g h i j k l, AppleAverage a b c d e f g h i j k l → f = 18000) ∧
    (∀ a b c d e f g h i j k l, AppleAverage a b c d e f g h i j k l → i = 16000) ∧
    (∀ a b c d e f g h i j k l, AppleAverage a b c d e f g h i j k l → j = 200) ∧
    (∀ a b c d e f g h i j k l, AppleAverage a b c d e f g h i j k l → k = 134000) ∧
    (∀ a b c d e f g h i j k l, AppleAverage a b c d e f g h i j k l → l = 670) :=
  ⟨apple_exists, apple_phone_sales, apple_tablet_sales, apple_tv_sales,
    apple_total_products, apple_total_sales, apple_average⟩

theorem sunflower_b (a b c d : ℕ) (x : SunflowerHeight a b c d) : d = 160 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  simp [ha, hb, hc] at hd
  omega
theorem sunflower_exists : SunflowerHeight 192 100 120 160 := by norm_num [SunflowerHeight]
theorem sunflower_solution : SunflowerHeight 192 100 120 160 ∧
    (∀ a b c d, SunflowerHeight a b c d → d = 160) :=
  ⟨sunflower_exists, sunflower_b⟩

end LemmaWeave.Tests.GSM8KDaily0910C

#print axioms LemmaWeave.Tests.GSM8KDaily0910C.covid_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910C.trout_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910C.snakes_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910C.crayons_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910C.glasses_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910C.heroes_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910C.dallas_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910C.forest_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910C.apple_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0910C.sunflower_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910C.covid_solution to "work/gsm8k-daily19-covid-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910C.trout_solution to "work/gsm8k-daily19-trout-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910C.snakes_solution to "work/gsm8k-daily19-snakes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910C.crayons_solution to "work/gsm8k-daily19-crayons-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910C.glasses_solution to "work/gsm8k-daily19-glasses-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910C.heroes_solution to "work/gsm8k-daily19-heroes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910C.dallas_solution to "work/gsm8k-daily19-dallas-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910C.forest_solution to "work/gsm8k-daily19-forest-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910C.apple_solution to "work/gsm8k-daily19-apple-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0910C.sunflower_solution to "work/gsm8k-daily19-sunflower-graph.json"
