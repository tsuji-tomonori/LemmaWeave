import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A11P3

structure AdoptionModel where
  catCost : ℕ
  adultDogCost : ℕ
  puppyCost : ℕ
  totalCost : ℕ
  hCat : catCost = 2 * 50
  hAdultDog : adultDogCost = 3 * 100
  hPuppy : puppyCost = 2 * 150
  hTotal : totalCost = catCost + adultDogCost + puppyCost

theorem adoption_cats (m : AdoptionModel) : m.catCost = 100 := by
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all

theorem adoption_dogs (m : AdoptionModel) : m.adultDogCost = 300 := by
  have hPrev := adoption_cats m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all

theorem adoption_puppies (m : AdoptionModel) : m.puppyCost = 300 := by
  have hPrev := adoption_dogs m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all

theorem adoption_solution (m : AdoptionModel) : m.totalCost = 700 := by
  have hPrev := adoption_puppies m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all

structure CountyFairModel where
  starting : ℕ
  rides : ℕ
  dessert : ℕ
  remaining : ℕ
  hStarting : starting = 30
  hRides : 2 * rides = starting
  hDessert : dessert = 5
  hRemaining : remaining + rides + dessert = starting

theorem county_rides (m : CountyFairModel) : m.rides = 15 := by
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem county_solution (m : CountyFairModel) : m.remaining = 10 := by
  have hPrev := county_rides m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

structure CoatModel where
  savings : ℕ
  bills : ℕ
  remaining : ℕ
  dadGift : ℕ
  hSavings : savings = 25 * 6
  hBills : 3 * bills = savings
  hRemaining : remaining + bills = savings
  hCoat : dadGift + remaining = 170

theorem coat_savings (m : CoatModel) : m.savings = 150 := by
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all

theorem coat_after_bills (m : CoatModel) : m.remaining = 100 := by
  have hPrev := coat_savings m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem coat_solution (m : CoatModel) : m.dadGift = 70 := by
  have hPrev := coat_after_bills m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

structure FamilyModel where
  fatherSide : ℕ
  increase : ℕ
  motherSide : ℕ
  total : ℕ
  hFather : fatherSide = 10
  hIncrease : 10 * increase = 3 * fatherSide
  hMother : motherSide = fatherSide + increase
  hTotal : total = fatherSide + motherSide

theorem family_increase (m : FamilyModel) : m.increase = 3 := by
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem family_mother (m : FamilyModel) : m.motherSide = 13 := by
  have hPrev := family_increase m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all

theorem family_solution (m : FamilyModel) : m.total = 23 := by
  have hPrev := family_mother m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all

structure VinegarModel where
  afterYearOnePercent : ℕ
  afterYearTwoPercent : ℕ
  hYearOne : afterYearOnePercent + 20 = 100
  hYearTwo : afterYearTwoPercent * 100 = afterYearOnePercent * 80

theorem vinegar_year_one (m : VinegarModel) : m.afterYearOnePercent = 80 := by
  rcases m with ⟨a, b, h1, h2⟩
  simp_all <;> omega

theorem vinegar_solution (m : VinegarModel) : m.afterYearTwoPercent = 64 := by
  have hPrev := vinegar_year_one m
  rcases m with ⟨a, b, h1, h2⟩
  simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0929A11P3
