import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A13P2

structure GymModel where
  squatOriginal squatLoss squatNew bench deadOriginal deadNew total : ℕ
  hSquatOriginal : squatOriginal = 700
  hSquatLoss : 10 * squatLoss = 3 * squatOriginal
  hSquatNew : squatNew + squatLoss = squatOriginal
  hBench : bench = 400
  hDeadOriginal : deadOriginal = 800
  hDeadNew : deadNew + 200 = deadOriginal
  hTotal : total = squatNew + bench + deadNew

theorem gym_squat_loss (m : GymModel) : m.squatLoss = 210 := by
  cases m <;> omega

theorem gym_squat_new (m : GymModel) : m.squatNew = 490 := by
  have h := gym_squat_loss m
  cases m <;> omega

theorem gym_dead_new (m : GymModel) : m.deadNew = 600 := by
  cases m <;> omega

theorem gym_total (m : GymModel) : m.total = 1490 := by
  have h1 := gym_squat_new m
  have h2 := gym_dead_new m
  cases m <;> omega

structure PracticeModel where
  totalMinutes combined run lifting : ℕ
  hTotal : totalMinutes = 120
  hHalf : 2 * combined = totalMinutes
  hSplit : combined = run + lifting
  hRun : run = 2 * lifting

theorem practice_combined (m : PracticeModel) : m.combined = 60 := by
  cases m <;> omega

theorem practice_lifting (m : PracticeModel) : m.lifting = 20 := by
  have h := practice_combined m
  cases m <;> omega

structure HenModel where
  revenue pricePerDozen totalDozen perHenFourWeeks perHenWeek eggsPerWeek : ℕ
  hRevenue : revenue = 120
  hPrice : pricePerDozen = 3
  hDozen : 3 * totalDozen = revenue
  hPerHen : 10 * perHenFourWeeks = totalDozen
  hPerWeek : 4 * perHenWeek = perHenFourWeeks
  hEggs : eggsPerWeek = 12 * perHenWeek

theorem hen_total_dozen (m : HenModel) : m.totalDozen = 40 := by
  cases m <;> omega

theorem hen_per_four_weeks (m : HenModel) : m.perHenFourWeeks = 4 := by
  have h := hen_total_dozen m
  cases m <;> omega

theorem hen_per_week_dozen (m : HenModel) : m.perHenWeek = 1 := by
  have h := hen_per_four_weeks m
  cases m <;> omega

theorem hen_eggs_per_week (m : HenModel) : m.eggsPerWeek = 12 := by
  have h := hen_per_week_dozen m
  cases m <;> omega

structure QuizModel where
  nicole kim cherry : ℕ
  hNicole : nicole = 22
  hNicoleRelation : nicole + 3 = kim
  hKimRelation : cherry + 8 = kim

theorem quiz_kim (m : QuizModel) : m.kim = 25 := by
  cases m <;> omega

theorem quiz_cherry (m : QuizModel) : m.cherry = 17 := by
  have h := quiz_kim m
  cases m <;> omega

structure BagModel where
  original firstDiscount afterFirst secondDiscount afterSecond totalReduction : ℕ
  hOriginal : original = 500
  hFirstDiscount : 20 * firstDiscount = original
  hAfterFirst : afterFirst + firstDiscount = original
  hSecondDiscount : 25 * secondDiscount = afterFirst
  hAfterSecond : afterSecond + secondDiscount = afterFirst
  hTotalReduction : totalReduction = firstDiscount + secondDiscount

theorem bag_first_discount (m : BagModel) : m.firstDiscount = 25 ∧ m.afterFirst = 475 := by
  cases m <;> constructor <;> omega

theorem bag_second_discount (m : BagModel) : m.secondDiscount = 19 ∧ m.afterSecond = 456 := by
  have h := bag_first_discount m
  cases m <;> constructor <;> omega

theorem bag_total_reduction (m : BagModel) : m.totalReduction = 44 := by
  have h1 := bag_first_discount m
  have h2 := bag_second_discount m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A13P2
