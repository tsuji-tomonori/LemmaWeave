import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0930A02P1

structure AdsModel where
  first : ℕ
  second : ℕ
  third : ℕ
  fourth : ℕ
  total : ℕ
  clicked : ℕ
  hFirst : first = 12
  hSecond : second = 2 * first
  hThird : third = second + 24
  hFourth : 4 * fourth = 3 * second
  hTotal : total = first + second + third + fourth
  hClicked : 3 * clicked = 2 * total

theorem ads_second (m : AdsModel) : m.second = 24 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  dsimp at *
  omega

theorem ads_third (m : AdsModel) : m.third = 48 := by
  have h := ads_second m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  dsimp at *
  omega

theorem ads_fourth (m : AdsModel) : m.fourth = 18 := by
  have h := ads_second m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  dsimp at *
  omega

theorem ads_total (m : AdsModel) : m.total = 102 := by
  have h1 := ads_second m
  have h2 := ads_third m
  have h3 := ads_fourth m
  rcases m with ⟨a,b,c,d,e,f,p1,p2,p3,p4,p5,p6⟩
  dsimp at *
  omega

theorem ads_solution (m : AdsModel) : m.clicked = 68 := by
  have h := ads_total m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  dsimp at *
  omega

structure TowerModel where
  blocks : ℕ
  blocksPerStep : ℕ
  steps : ℕ
  stepsPerLevel : ℕ
  levels : ℕ
  hBlocks : blocks = 96
  hBlocksPerStep : blocksPerStep = 3
  hBlockCount : blocks = steps * blocksPerStep
  hStepsPerLevel : stepsPerLevel = 8
  hStepCount : steps = levels * stepsPerLevel

theorem tower_steps (m : TowerModel) : m.steps = 32 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

theorem tower_solution (m : TowerModel) : m.levels = 4 := by
  have h := tower_steps m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

structure SmoothieModel where
  freezeMinutes : ℕ
  smoothies : ℕ
  minutesPerSmoothie : ℕ
  blendingMinutes : ℕ
  totalMinutes : ℕ
  hFreeze : freezeMinutes = 40
  hSmoothies : smoothies = 5
  hRate : minutesPerSmoothie = 3
  hBlending : blendingMinutes = smoothies * minutesPerSmoothie
  hTotal : totalMinutes = freezeMinutes + blendingMinutes

theorem smoothie_blending (m : SmoothieModel) : m.blendingMinutes = 15 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

theorem smoothie_solution (m : SmoothieModel) : m.totalMinutes = 55 := by
  have h := smoothie_blending m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  omega

structure BirthdayModel where
  guests : ℕ
  married : ℕ
  single : ℕ
  children : ℕ
  moreMarried : ℕ
  hGuests : guests = 1000
  hMarriedPercent : 100 * married = 30 * guests
  hSinglePercent : 100 * single = 50 * guests
  hPartition : guests = married + single + children
  hDifference : married = children + moreMarried

theorem birthday_married (m : BirthdayModel) : m.married = 300 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  omega

theorem birthday_single (m : BirthdayModel) : m.single = 500 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  omega

theorem birthday_children (m : BirthdayModel) : m.children = 200 := by
  have h1 := birthday_married m
  have h2 := birthday_single m
  rcases m with ⟨a,b,c,d,e,p1,p2,p3,p4,p5⟩
  dsimp at *
  omega

theorem birthday_solution (m : BirthdayModel) : m.moreMarried = 100 := by
  have h1 := birthday_married m
  have h2 := birthday_children m
  rcases m with ⟨a,b,c,d,e,p1,p2,p3,p4,p5⟩
  dsimp at *
  omega

structure SodaModel where
  packs : ℕ
  sodasPerPack : ℕ
  bought : ℕ
  existing : ℕ
  total : ℕ
  days : ℕ
  perDay : ℕ
  hPacks : packs = 5
  hPerPack : sodasPerPack = 12
  hBought : bought = packs * sodasPerPack
  hExisting : existing = 10
  hTotal : total = bought + existing
  hDays : days = 7
  hDaily : total = days * perDay

theorem soda_bought (m : SodaModel) : m.bought = 60 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

theorem soda_total (m : SodaModel) : m.total = 70 := by
  have h := soda_bought m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  dsimp at *
  omega

theorem soda_solution (m : SodaModel) : m.perDay = 10 := by
  have h := soda_total m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0930A02P1
