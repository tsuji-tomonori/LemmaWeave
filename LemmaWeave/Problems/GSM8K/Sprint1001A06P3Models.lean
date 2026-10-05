import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A06P3

structure DebtsModel where
  promised : ℕ
  received : ℕ
  owed : ℕ
  amy : ℕ
  derek : ℕ
  sally : ℕ
  carl : ℕ
  hPromised : promised = 400
  hReceived : received = 285
  hOwed : received + owed = promised
  hAmy : amy = 30
  hDerek : 2 * derek = amy
  hEqual : sally = carl
  hSplit : owed = sally + carl + amy + derek

theorem debts_total_owed (m : DebtsModel) : m.owed = 115 := by
  cases m <;> simp_all at * <;> omega

theorem debts_derek (m : DebtsModel) : m.derek = 15 := by
  cases m <;> simp_all at * <;> omega

theorem debts_each (m : DebtsModel) : m.sally = 35 ∧ m.carl = 35 := by
  have h1 := debts_total_owed m
  have h2 := debts_derek m
  cases m <;> simp_all at * <;> omega

structure StudentsModel where
  deaf : ℕ
  blind : ℕ
  total : ℕ
  hDeaf : deaf = 180
  hRelation : deaf = 3 * blind
  hTotal : total = deaf + blind

theorem students_blind (m : StudentsModel) : m.blind = 60 := by
  cases m <;> simp_all at * <;> omega

theorem students_total (m : StudentsModel) : m.total = 240 := by
  have h := students_blind m
  cases m <;> simp_all at * <;> omega

structure GradeModel where
  first : ℕ
  second : ℕ
  third : ℕ
  firstThree : ℕ
  desiredAverage : ℕ
  tests : ℕ
  desiredTotal : ℕ
  hFirst : first = 80
  hSecond : second = 75
  hThird : third = 90
  hFirstThree : firstThree = first + second + third
  hAverage : desiredAverage = 85
  hTests : tests = 4
  hDesiredTotal : desiredTotal = desiredAverage * tests

theorem grade_first_three (m : GradeModel) : m.firstThree = 245 := by
  cases m <;> simp_all at * <;> omega

theorem grade_desired_total (m : GradeModel) : m.desiredTotal = 340 := by
  cases m <;> simp_all at * <;> omega

theorem grade_minimum (m : GradeModel) :
    m.firstThree + 95 = m.desiredTotal ∧
    ∀ g : ℕ, m.desiredTotal ≤ m.firstThree + g → 95 ≤ g := by
  have h1 := grade_first_three m
  have h2 := grade_desired_total m
  constructor <;> omega

structure CattleModel where
  initial : ℕ
  increase1 : ℕ
  after1 : ℕ
  increase2 : ℕ
  after2 : ℕ
  hInitial : initial = 200
  hIncrease1 : 2 * increase1 = initial
  hAfter1 : after1 = initial + increase1
  hIncrease2 : 2 * increase2 = after1
  hAfter2 : after2 = after1 + increase2

theorem cattle_after_one (m : CattleModel) : m.after1 = 300 := by
  cases m <;> simp_all at * <;> omega

theorem cattle_after_two (m : CattleModel) : m.after2 = 450 := by
  have h := cattle_after_one m
  cases m <;> simp_all at * <;> omega

structure PoolModel where
  family1 : ℕ
  family2 : ℕ
  totalPeople : ℕ
  legsInPool : ℕ
  peopleInPool : ℕ
  notInPool : ℕ
  hFamily1 : family1 = 2 + 6
  hFamily2 : family2 = 2 + 4
  hTotal : totalPeople = family1 + family2
  hLegs : legsInPool = 16
  hPeopleInPool : 2 * peopleInPool = legsInPool
  hNotInPool : notInPool + peopleInPool = totalPeople

theorem pool_total_people (m : PoolModel) : m.totalPeople = 14 := by
  cases m <;> simp_all at * <;> omega

theorem pool_people_in (m : PoolModel) : m.peopleInPool = 8 := by
  cases m <;> simp_all at * <;> omega

theorem pool_people_not_in (m : PoolModel) : m.notInPool = 6 := by
  have h1 := pool_total_people m
  have h2 := pool_people_in m
  cases m <;> simp_all at * <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A06P3
