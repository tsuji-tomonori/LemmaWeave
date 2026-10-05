import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A11P2

structure SavingsModel where
  total : ℕ
  september : ℕ
  october : ℕ
  november : ℕ
  left : ℕ
  hSeptember : 5 * september = total
  hOctober : 4 * october = total
  hNovember : november = 120
  hLeft : left = 540
  hAccounting : total = september + october + november + left

theorem savings_fraction_spending (m : SavingsModel) :
    m.september = 240 ∧ m.october = 300 := by
  cases m <;> simp_all <;> omega

theorem savings_original (m : SavingsModel) : m.total = 1200 := by
  have h := savings_fraction_spending m
  cases m <;> simp_all <;> omega

structure StuffedAnimalsModel where
  barbaraCount : ℕ
  trishCount : ℕ
  barbaraRevenue : ℕ
  trishRevenue : ℕ
  totalRevenue : ℕ
  hBarbaraCount : barbaraCount = 9
  hTrishCount : trishCount = 2 * barbaraCount
  hBarbaraRevenue : barbaraRevenue = 200 * barbaraCount
  hTrishRevenue : trishRevenue = 150 * trishCount
  hTotal : totalRevenue = barbaraRevenue + trishRevenue

theorem stuffed_barbara_revenue (m : StuffedAnimalsModel) : m.barbaraRevenue = 1800 := by
  cases m <;> simp_all <;> omega

theorem stuffed_trish_revenue (m : StuffedAnimalsModel) :
    m.trishCount = 18 ∧ m.trishRevenue = 2700 := by
  cases m <;> simp_all <;> omega

theorem stuffed_total_revenue (m : StuffedAnimalsModel) : m.totalRevenue = 4500 := by
  have h1 := stuffed_barbara_revenue m
  have h2 := stuffed_trish_revenue m
  cases m <;> simp_all <;> omega

def SongCompletion (overlap total : ℕ) : Prop :=
  overlap ≤ 25 ∧ total + overlap = 80

theorem songs_disjoint_example : SongCompletion 0 80 := by
  constructor <;> norm_num

theorem songs_nested_example : SongCompletion 25 55 := by
  constructor <;> norm_num

theorem songs_not_unique :
    ∃ o₁ t₁ o₂ t₂ : ℕ,
      SongCompletion o₁ t₁ ∧ SongCompletion o₂ t₂ ∧ t₁ ≠ t₂ := by
  exact ⟨0, 80, 25, 55, songs_disjoint_example, songs_nested_example, by norm_num⟩

structure HouseModel where
  sara : ℕ
  nada : ℕ
  excess : ℕ
  hSara : sara = 1000
  hExcess : excess = 100
  hRelation : sara = 2 * nada + excess

theorem house_relation (m : HouseModel) : m.sara = 2 * m.nada + m.excess := by
  exact m.hRelation

theorem house_nada (m : HouseModel) : m.nada = 450 := by
  have h := house_relation m
  cases m <;> simp_all <;> omega

structure SodaModel where
  week0 : ℕ
  week1 : ℕ
  week2 : ℕ
  week3 : ℕ
  hWeek0 : week0 = 48
  hWeek1 : 2 * week1 = week0
  hWeek2 : 2 * week2 = week1
  hWeek3 : 2 * week3 = week2

theorem soda_after_one (m : SodaModel) : m.week1 = 24 := by
  cases m <;> simp_all <;> omega

theorem soda_after_two (m : SodaModel) : m.week2 = 12 := by
  have h := soda_after_one m
  cases m <;> simp_all <;> omega

theorem soda_after_three (m : SodaModel) : m.week3 = 6 := by
  have h := soda_after_two m
  cases m <;> simp_all <;> omega

theorem soda_first_reaches_six (m : SodaModel) :
    m.week1 > 6 ∧ m.week2 > 6 ∧ m.week3 = 6 := by
  have h1 := soda_after_one m
  have h2 := soda_after_two m
  have h3 := soda_after_three m
  omega

end LemmaWeave.Problems.GSM8K.Sprint1001A11P2
