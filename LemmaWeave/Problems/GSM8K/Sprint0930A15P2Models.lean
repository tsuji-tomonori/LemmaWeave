import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0930A15P2

structure LiftsModel where
  oldSquat : ℕ
  squatLoss : ℕ
  newSquat : ℕ
  bench : ℕ
  oldDeadlift : ℕ
  deadliftLoss : ℕ
  newDeadlift : ℕ
  total : ℕ
  hOldSquat : oldSquat = 700
  hSquatPercent : 100 * squatLoss = 30 * oldSquat
  hNewSquat : oldSquat = newSquat + squatLoss
  hBench : bench = 400
  hOldDeadlift : oldDeadlift = 800
  hDeadliftLoss : deadliftLoss = 200
  hNewDeadlift : oldDeadlift = newDeadlift + deadliftLoss
  hTotal : total = newSquat + bench + newDeadlift

theorem lifts_squat_loss (m : LiftsModel) : m.squatLoss = 210 := by
  cases m <;> simp_all <;> omega

theorem lifts_new_squat (m : LiftsModel) : m.newSquat = 490 := by
  have h := lifts_squat_loss m
  cases m <;> simp_all <;> omega

theorem lifts_new_deadlift (m : LiftsModel) : m.newDeadlift = 600 := by
  cases m <;> simp_all <;> omega

theorem lifts_total (m : LiftsModel) : m.total = 1490 := by
  have h1 := lifts_new_squat m
  have h2 := lifts_new_deadlift m
  cases m <;> simp_all <;> omega

structure PracticeModel where
  totalMinutes : ℕ
  shootingMinutes : ℕ
  otherMinutes : ℕ
  runningMinutes : ℕ
  liftingMinutes : ℕ
  hTotal : totalMinutes = 120
  hHalf : totalMinutes = 2 * shootingMinutes
  hOther : otherMinutes + shootingMinutes = totalMinutes
  hSplit : otherMinutes = runningMinutes + liftingMinutes
  hRunning : runningMinutes = 2 * liftingMinutes

theorem practice_other_minutes (m : PracticeModel) : m.otherMinutes = 60 := by
  cases m <;> simp_all <;> omega

theorem practice_running_relation (m : PracticeModel) : m.otherMinutes = 3 * m.liftingMinutes := by
  cases m <;> simp_all <;> omega

theorem practice_lifting_minutes (m : PracticeModel) : m.liftingMinutes = 20 := by
  have h1 := practice_other_minutes m
  have h2 := practice_running_relation m
  omega

structure HensModel where
  hens : ℕ
  weeks : ℕ
  dollarsPerDozen : ℕ
  revenue : ℕ
  dozens : ℕ
  eggs : ℕ
  eggsPerHenWeek : ℕ
  hHens : hens = 10
  hWeeks : weeks = 4
  hPrice : dollarsPerDozen = 3
  hRevenue : revenue = 120
  hRevenueEq : revenue = dozens * dollarsPerDozen
  hEggs : eggs = dozens * 12
  hRate : eggs = hens * weeks * eggsPerHenWeek

theorem hens_dozens (m : HensModel) : m.dozens = 40 := by
  cases m <;> simp_all <;> omega

theorem hens_eggs (m : HensModel) : m.eggs = 480 := by
  have h := hens_dozens m
  cases m <;> simp_all <;> omega

theorem hens_per_week (m : HensModel) : m.eggsPerHenWeek = 12 := by
  have h := hens_eggs m
  cases m <;> simp_all <;> omega

structure QuizModel where
  nicole : ℕ
  kim : ℕ
  cherry : ℕ
  hNicole : nicole = 22
  hNicoleFewer : kim = nicole + 3
  hKimMore : kim = cherry + 8

theorem quiz_kim (m : QuizModel) : m.kim = 25 := by
  cases m <;> simp_all <;> omega

theorem quiz_cherry (m : QuizModel) : m.cherry = 17 := by
  have h := quiz_kim m
  cases m <;> simp_all <;> omega

structure BagModel where
  original : ℕ
  firstReduction : ℕ
  afterFirst : ℕ
  secondReduction : ℕ
  finalPrice : ℕ
  totalReduction : ℕ
  hOriginal : original = 500
  hFirstPercent : 100 * firstReduction = 5 * original
  hAfterFirst : original = afterFirst + firstReduction
  hSecondPercent : 100 * secondReduction = 4 * afterFirst
  hFinal : afterFirst = finalPrice + secondReduction
  hReduction : original = finalPrice + totalReduction

theorem bag_first_reduction (m : BagModel) : m.firstReduction = 25 := by
  cases m <;> simp_all <;> omega

theorem bag_after_first (m : BagModel) : m.afterFirst = 475 := by
  have h := bag_first_reduction m
  cases m <;> simp_all <;> omega

theorem bag_second_reduction (m : BagModel) : m.secondReduction = 19 := by
  have h := bag_after_first m
  cases m <;> simp_all <;> omega

theorem bag_final_price (m : BagModel) : m.finalPrice = 456 := by
  have h1 := bag_after_first m
  have h2 := bag_second_reduction m
  cases m <;> simp_all <;> omega

theorem bag_total_reduction (m : BagModel) : m.totalReduction = 44 := by
  have h := bag_final_price m
  cases m <;> simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0930A15P2
