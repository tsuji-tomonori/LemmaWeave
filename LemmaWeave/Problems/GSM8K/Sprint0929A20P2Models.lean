import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A20P2

structure SequentialSpendingModel where
  initial : ℕ
  firstQuarter : ℕ
  bookSpend : ℕ
  afterBooks : ℕ
  dvdFraction : ℕ
  dvdSpend : ℕ
  final : ℕ
  hQuarter : 4 * firstQuarter = initial
  hBookSpend : bookSpend = firstQuarter + 10
  hAfterBooks : initial = bookSpend + afterBooks
  hDvdFraction : 5 * dvdFraction = 2 * afterBooks
  hDvdSpend : dvdSpend = dvdFraction + 8
  hFinal : afterBooks = dvdSpend + final
  hFinalValue : final = 130

theorem spending_first_quarter (m : SequentialSpendingModel) : m.firstQuarter = 80 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  subst_vars <;> norm_num at * <;> omega

theorem spending_after_books (m : SequentialSpendingModel) : m.afterBooks = 230 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  subst_vars <;> norm_num at * <;> omega

theorem spending_dvd_fraction (m : SequentialSpendingModel) : m.dvdFraction = 92 := by
  have hAfter := spending_after_books m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  subst_vars <;> norm_num at * <;> omega

theorem spending_solution (m : SequentialSpendingModel) : m.initial = 320 := by
  have hQuarter := spending_first_quarter m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  subst_vars <;> norm_num at * <;> omega

structure SandwichModel where
  cucumberMade : ℕ
  eggMade : ℕ
  trianglesPerCucumber : ℕ
  rectanglesPerEgg : ℕ
  trianglesEaten : ℕ
  rectanglesEaten : ℕ
  cucumberEaten : ℕ
  eggEaten : ℕ
  sandwichesEaten : ℕ
  breadPerSandwich : ℕ
  breadSlices : ℕ
  hCucumberMade : cucumberMade = 10
  hEggMade : eggMade = 8
  hTrianglesPer : trianglesPerCucumber = 4
  hRectanglesPer : rectanglesPerEgg = 2
  hTrianglesEaten : trianglesEaten = 28
  hRectanglesEaten : rectanglesEaten = 12
  hCucumberPieces : trianglesEaten = cucumberEaten * trianglesPerCucumber
  hEggPieces : rectanglesEaten = eggEaten * rectanglesPerEgg
  hCucumberAvailable : cucumberEaten ≤ cucumberMade
  hEggAvailable : eggEaten ≤ eggMade
  hSandwiches : sandwichesEaten = cucumberEaten + eggEaten
  hBreadPer : breadPerSandwich = 2
  hBread : breadSlices = sandwichesEaten * breadPerSandwich

theorem sandwiches_cucumber_eaten (m : SandwichModel) : m.cucumberEaten = 7 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13⟩
  subst_vars <;> norm_num at * <;> omega

theorem sandwiches_egg_eaten (m : SandwichModel) : m.eggEaten = 6 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13⟩
  subst_vars <;> norm_num at * <;> omega

theorem sandwiches_total_eaten (m : SandwichModel) : m.sandwichesEaten = 13 := by
  have hCucumber := sandwiches_cucumber_eaten m
  have hEgg := sandwiches_egg_eaten m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13⟩
  subst_vars <;> norm_num at * <;> omega

theorem sandwiches_solution (m : SandwichModel) : m.breadSlices = 26 := by
  have hTotal := sandwiches_total_eaten m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13⟩
  subst_vars <;> norm_num at * <;> omega

structure AnimalPercentModel where
  monkeysInitial : ℕ
  birdsInitial : ℕ
  birdsEaten : ℕ
  monkeysNow : ℕ
  birdsNow : ℕ
  animalsNow : ℕ
  percentMonkeys : ℕ
  hMonkeysInitial : monkeysInitial = 6
  hBirdsInitial : birdsInitial = 6
  hBirdsEaten : birdsEaten = 2
  hMonkeysNow : monkeysNow = monkeysInitial
  hBirdBalance : birdsInitial = birdsEaten + birdsNow
  hAnimalsNow : animalsNow = monkeysNow + birdsNow
  hPercent : percentMonkeys * animalsNow = monkeysNow * 100

theorem animals_birds_now (m : AnimalPercentModel) : m.birdsNow = 4 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  subst_vars <;> norm_num at * <;> omega

theorem animals_total_now (m : AnimalPercentModel) : m.animalsNow = 10 := by
  have hBirds := animals_birds_now m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  subst_vars <;> norm_num at * <;> omega

theorem animals_solution (m : AnimalPercentModel) : m.percentMonkeys = 60 := by
  have hTotal := animals_total_now m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  subst_vars <;> norm_num at * <;> omega

structure PieCreamModel where
  piesPerDay : ℕ
  days : ℕ
  baked : ℕ
  eaten : ℕ
  remaining : ℕ
  cansPerPie : ℕ
  cans : ℕ
  hPerDay : piesPerDay = 3
  hDays : days = 11
  hBaked : baked = piesPerDay * days
  hEaten : eaten = 4
  hBalance : baked = eaten + remaining
  hCansPerPie : cansPerPie = 2
  hCans : cans = remaining * cansPerPie

theorem pies_baked (m : PieCreamModel) : m.baked = 33 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  subst_vars <;> norm_num at * <;> omega

theorem pies_remaining (m : PieCreamModel) : m.remaining = 29 := by
  have hBaked := pies_baked m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  subst_vars <;> norm_num at * <;> omega

theorem pies_solution (m : PieCreamModel) : m.cans = 58 := by
  have hRemaining := pies_remaining m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  subst_vars <;> norm_num at * <;> omega

structure ChocolateBoxModel where
  initial : ℕ
  groupTaken : ℕ
  groupSize : ℕ
  eachShare : ℕ
  afterGroup : ℕ
  returned : ℕ
  afterReturn : ℕ
  piperTakes : ℕ
  final : ℕ
  hInitial : initial = 200
  hQuarter : 4 * groupTaken = initial
  hGroupSize : groupSize = 5
  hShare : groupTaken = groupSize * eachShare
  hAfterGroup : initial = groupTaken + afterGroup
  hReturned : returned = 5
  hAfterReturn : afterReturn = afterGroup + returned
  hPiper : groupTaken = piperTakes + 5
  hFinal : afterReturn = piperTakes + final

theorem chocolate_group_taken (m : ChocolateBoxModel) : m.groupTaken = 50 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  subst_vars <;> norm_num at * <;> omega

theorem chocolate_after_return (m : ChocolateBoxModel) : m.afterReturn = 155 := by
  have hGroup := chocolate_group_taken m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  subst_vars <;> norm_num at * <;> omega

theorem chocolate_piper_takes (m : ChocolateBoxModel) : m.piperTakes = 45 := by
  have hGroup := chocolate_group_taken m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  subst_vars <;> norm_num at * <;> omega

theorem chocolate_solution (m : ChocolateBoxModel) : m.final = 110 := by
  have hAfter := chocolate_after_return m
  have hPiper := chocolate_piper_takes m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  subst_vars <;> norm_num at * <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0929A20P2
