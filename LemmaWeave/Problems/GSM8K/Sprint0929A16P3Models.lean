import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A16P3

structure RentModel where
  oldRate : ℕ
  oldArea : ℕ
  oldRent : ℕ
  newTotal : ℕ
  shareCount : ℕ
  newRent : ℕ
  monthlySaving : ℕ
  months : ℕ
  yearlySaving : ℕ
  hOldRate : oldRate = 2
  hOldArea : oldArea = 750
  hOldRent : oldRent = oldRate * oldArea
  hNewTotal : newTotal = 2800
  hShareCount : shareCount = 2
  hNewRent : newTotal = newRent * shareCount
  hMonthly : oldRent = newRent + monthlySaving
  hMonths : months = 12
  hYearly : yearlySaving = monthlySaving * months

theorem rent_old (m : RentModel) : m.oldRent = 1500 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all

theorem rent_new (m : RentModel) : m.newRent = 1400 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all <;> omega

theorem rent_monthly (m : RentModel) : m.monthlySaving = 100 := by
  have hOld := rent_old m
  have hNew := rent_new m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all <;> omega

theorem rent_solution (m : RentModel) : m.yearlySaving = 1200 := by
  have hPrev := rent_monthly m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  simp_all

structure DebateModel where
  third : ℕ
  extra : ℕ
  second : ℕ
  multiplier : ℕ
  first : ℕ
  total : ℕ
  hThird : third = 200
  hExtra : extra = 40
  hSecond : second = third + extra
  hMultiplier : multiplier = 2
  hFirst : first = multiplier * second
  hTotal : total = first + second + third

theorem debate_second (m : DebateModel) : m.second = 240 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all

theorem debate_first (m : DebateModel) : m.first = 480 := by
  have hPrev := debate_second m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all

theorem debate_solution (m : DebateModel) : m.total = 920 := by
  have hSecond := debate_second m
  have hFirst := debate_first m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all

structure MangoModel where
  total : ℕ
  ripe : ℕ
  unripe : ℕ
  kept : ℕ
  given : ℕ
  perJar : ℕ
  jars : ℕ
  hTotal : total = 54
  hThirdRipe : total = 3 * ripe
  hPartition : total = ripe + unripe
  hKept : kept = 16
  hGiven : unripe = kept + given
  hPerJar : perJar = 4
  hJars : given = perJar * jars

theorem mango_ripe (m : MangoModel) : m.ripe = 18 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all <;> omega

theorem mango_unripe (m : MangoModel) : m.unripe = 36 := by
  have hPrev := mango_ripe m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all <;> omega

theorem mango_given (m : MangoModel) : m.given = 20 := by
  have hPrev := mango_unripe m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all <;> omega

theorem mango_solution (m : MangoModel) : m.jars = 5 := by
  have hPrev := mango_given m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all <;> omega

structure JillConventionalModel where
  goal : ℕ
  first : ℕ
  second : ℕ
  third : ℕ
  fourth : ℕ
  last : ℕ
  sold : ℕ
  remaining : ℕ
  hGoal : goal = 150
  hFirst : first = 5
  hSecond : second = 4 * first
  hThird : second = 2 * third
  hFourth : fourth = 3 * third
  hLast : last = 10
  hSold : sold = first + second + third + fourth + last
  hRemaining : goal = sold + remaining

theorem jill_second (m : JillConventionalModel) : m.second = 20 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  simp_all

theorem jill_third (m : JillConventionalModel) : m.third = 10 := by
  have hPrev := jill_second m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  simp_all <;> omega

theorem jill_fourth (m : JillConventionalModel) : m.fourth = 30 := by
  have hPrev := jill_third m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  simp_all

theorem jill_sold (m : JillConventionalModel) : m.sold = 75 := by
  have hSecond := jill_second m
  have hThird := jill_third m
  have hFourth := jill_fourth m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  simp_all

theorem jill_solution_conventional (m : JillConventionalModel) : m.remaining = 75 := by
  have hPrev := jill_sold m
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  simp_all <;> omega

theorem jill_literal_more_no_whole_third : ¬ ∃ third : ℕ, 2 * third = 25 := by
  omega

structure BeansModel where
  total : ℕ
  red : ℕ
  afterRed : ℕ
  white : ℕ
  afterWhite : ℕ
  green : ℕ
  hTotal : total = 572
  hRed : total = 4 * red
  hAfterRed : total = red + afterRed
  hWhite : afterRed = 3 * white
  hAfterWhite : afterRed = white + afterWhite
  hGreen : afterWhite = 2 * green

theorem beans_red (m : BeansModel) : m.red = 143 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all <;> omega

theorem beans_after_red (m : BeansModel) : m.afterRed = 429 := by
  have hPrev := beans_red m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all <;> omega

theorem beans_white (m : BeansModel) : m.white = 143 := by
  have hPrev := beans_after_red m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all <;> omega

theorem beans_after_white (m : BeansModel) : m.afterWhite = 286 := by
  have hA := beans_after_red m
  have hW := beans_white m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all <;> omega

theorem beans_solution (m : BeansModel) : m.green = 143 := by
  have hPrev := beans_after_white m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0929A16P3
