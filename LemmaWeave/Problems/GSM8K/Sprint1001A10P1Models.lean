import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A10P1

structure WhaleModel where
  tonguePounds poundsPerTon tons : ℕ
  hTongue : tonguePounds = 6000
  hPerTon : poundsPerTon = 2000
  hConvert : tonguePounds = tons * poundsPerTon

theorem whale_pounds (m : WhaleModel) : m.tonguePounds = 6000 := by
  exact m.hTongue

theorem whale_tons (m : WhaleModel) : m.tons = 3 := by
  have h := whale_pounds m
  cases m <;> omega

structure GemsModel where
  dollars gemsPerDollar baseGems bonusPercent bonusGems totalGems : ℕ
  hDollars : dollars = 250
  hRate : gemsPerDollar = 100
  hBase : baseGems = 250 * 100
  hPercent : bonusPercent = 20
  hBonus : 100 * bonusGems = 20 * baseGems
  hTotal : totalGems = baseGems + bonusGems

theorem gems_base (m : GemsModel) : m.baseGems = 25000 := by
  cases m <;> omega

theorem gems_bonus (m : GemsModel) : m.bonusGems = 5000 := by
  have h := gems_base m
  cases m <;> omega

theorem gems_total (m : GemsModel) : m.totalGems = 30000 := by
  have h1 := gems_base m
  have h2 := gems_bonus m
  cases m <;> omega

structure DogsModel where
  count average total first second third : ℕ
  hCount : count = 3
  hAverage : average = 15
  hTotal : total = 3 * 15
  hFirst : first = 13
  hSecond : second = 2 * 13
  hSplit : first + second + third = total

theorem dogs_total (m : DogsModel) : m.total = 45 := by
  cases m <;> omega

theorem dogs_second (m : DogsModel) : m.second = 26 := by
  cases m <;> omega

theorem dogs_third (m : DogsModel) : m.third = 6 := by
  have h1 := dogs_total m
  have h2 := dogs_second m
  cases m <;> omega

structure GlassModel where
  amber green clear greenPercent total : ℕ
  hAmber : amber = 20
  hGreen : green = 35
  hPercent : greenPercent = 25
  hShare : 100 * green = 25 * total
  hSplit : amber + green + clear = total

theorem glass_total (m : GlassModel) : m.total = 140 := by
  cases m <;> omega

theorem glass_clear (m : GlassModel) : m.clear = 85 := by
  have h := glass_total m
  cases m <;> omega

structure PensModel where
  students redEach blackEach perStudent pool firstTaken secondTaken remaining eachFinal : ℕ
  hStudents : students = 3
  hRed : redEach = 62
  hBlack : blackEach = 43
  hPerStudent : perStudent = redEach + blackEach
  hPool : pool = students * perStudent
  hFirst : firstTaken = 37
  hSecond : secondTaken = 41
  hRemaining : remaining + firstTaken + secondTaken = pool
  hSplit : remaining = students * eachFinal

theorem pens_initial (m : PensModel) : m.perStudent = 105 ∧ m.pool = 315 := by
  cases m <;> omega

theorem pens_remaining (m : PensModel) : m.remaining = 237 := by
  have h := pens_initial m
  cases m <;> omega

theorem pens_each (m : PensModel) : m.eachFinal = 79 := by
  have h := pens_remaining m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A10P1
