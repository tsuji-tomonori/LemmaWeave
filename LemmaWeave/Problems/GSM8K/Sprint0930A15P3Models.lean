import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0930A15P3

structure ShirtsModel where
  shirts : ℕ
  cheapShirts : ℕ
  expensiveShirts : ℕ
  cheapPrice : ℕ
  expensivePrice : ℕ
  cheapCost : ℕ
  expensiveCost : ℕ
  totalCost : ℕ
  hShirts : shirts = 5
  hCheap : cheapShirts = 3
  hPartition : shirts = cheapShirts + expensiveShirts
  hCheapPrice : cheapPrice = 15
  hExpensivePrice : expensivePrice = 20
  hCheapCost : cheapCost = cheapShirts * cheapPrice
  hExpensiveCost : expensiveCost = expensiveShirts * expensivePrice
  hTotal : totalCost = cheapCost + expensiveCost

theorem shirts_cheap_cost (m : ShirtsModel) : m.cheapCost = 45 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem shirts_remaining (m : ShirtsModel) : m.expensiveShirts = 2 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem shirts_expensive_cost (m : ShirtsModel) : m.expensiveCost = 40 := by
  have h := shirts_remaining m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem shirts_total_cost (m : ShirtsModel) : m.totalCost = 85 := by
  have h1 := shirts_cheap_cost m
  have h2 := shirts_expensive_cost m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure VacationModel where
  workedDays : ℕ
  workDaysPerVacation : ℕ
  earned : ℕ
  marchUsed : ℕ
  septemberUsed : ℕ
  used : ℕ
  remaining : ℕ
  hWorked : workedDays = 300
  hRate : workDaysPerVacation = 10
  hEarned : workedDays = earned * workDaysPerVacation
  hMarch : marchUsed = 5
  hSeptember : septemberUsed = 2 * marchUsed
  hUsed : used = marchUsed + septemberUsed
  hRemaining : earned = used + remaining

theorem vacation_earned (m : VacationModel) : m.earned = 30 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem vacation_september (m : VacationModel) : m.septemberUsed = 10 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem vacation_used (m : VacationModel) : m.used = 15 := by
  have h := vacation_september m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem vacation_remaining (m : VacationModel) : m.remaining = 15 := by
  have h1 := vacation_earned m
  have h2 := vacation_used m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure AdBlockModel where
  totalPercent : ℕ
  unblockedPercent : ℕ
  interestingAmongUnblockedPercent : ℕ
  uninterestingAmongUnblockedPercent : ℕ
  requestedPercent : ℕ
  hTotal : totalPercent = 100
  hUnblocked : unblockedPercent = 20
  hInteresting : interestingAmongUnblockedPercent = 20
  hComplement : interestingAmongUnblockedPercent + uninterestingAmongUnblockedPercent = totalPercent
  hRequested : 100 * requestedPercent = unblockedPercent * uninterestingAmongUnblockedPercent

theorem adblock_uninteresting_among_unblocked (m : AdBlockModel) : m.uninterestingAmongUnblockedPercent = 80 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem adblock_requested_percent (m : AdBlockModel) : m.requestedPercent = 16 := by
  have h := m.hRequested
  rw [m.hUnblocked, adblock_uninteresting_among_unblocked m] at h
  omega

structure VitaminModel where
  days : ℕ
  capsulesPerBottle : ℕ
  capsulesPerDay : ℕ
  servingsPerBottle : ℕ
  bottles : ℕ
  hDays : days = 180
  hCapsules : capsulesPerBottle = 60
  hDaily : capsulesPerDay = 2
  hServings : capsulesPerBottle = servingsPerBottle * capsulesPerDay
  hBottles : days = bottles * servingsPerBottle

theorem vitamin_servings_per_bottle (m : VitaminModel) : m.servingsPerBottle = 30 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem vitamin_bottles (m : VitaminModel) : m.bottles = 6 := by
  have h := vitamin_servings_per_bottle m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure FurnitureModel where
  couch : ℕ
  table : ℕ
  lamp : ℕ
  total : ℕ
  initialPayment : ℕ
  owed : ℕ
  hCouch : couch = 750
  hTable : table = 100
  hLamp : lamp = 50
  hTotal : total = couch + table + lamp
  hPayment : initialPayment = 500
  hOwed : total = initialPayment + owed

theorem furniture_total (m : FurnitureModel) : m.total = 900 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem furniture_owed (m : FurnitureModel) : m.owed = 400 := by
  have h := furniture_total m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0930A15P3
