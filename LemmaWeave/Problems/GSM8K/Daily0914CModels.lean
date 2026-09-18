import Mathlib.Data.Nat.Basic

namespace LemmaWeave.Problems.GSM8K.Daily0914C

def CombinedBooks
    (stu multiplier albert total : ℕ) : Prop :=
  stu = 9 ∧ multiplier = 4 ∧ albert = multiplier * stu ∧
  total = stu + albert

def RunnerTimes
    (runners earlyRunners earlyTime delay lateRunners lateTime
     earlyRunnerHours lateRunnerHours aggregateRunnerHours : ℕ) : Prop :=
  runners = 8 ∧ earlyRunners = 5 ∧ earlyTime = 8 ∧ delay = 2 ∧
  lateRunners + earlyRunners = runners ∧ lateTime = earlyTime + delay ∧
  earlyRunnerHours = earlyRunners * earlyTime ∧
  lateRunnerHours = lateRunners * lateTime ∧
  aggregateRunnerHours = earlyRunnerHours + lateRunnerHours

def LadderDistance
    (keatonLadder keatonClimbs keatonFeet shorter reeceLadder reeceClimbs
     reeceFeet totalFeet inchesPerFoot totalInches : ℕ) : Prop :=
  keatonLadder = 30 ∧ keatonClimbs = 20 ∧
  keatonFeet = keatonLadder * keatonClimbs ∧ shorter = 4 ∧
  reeceLadder + shorter = keatonLadder ∧ reeceClimbs = 15 ∧
  reeceFeet = reeceLadder * reeceClimbs ∧
  totalFeet = keatonFeet + reeceFeet ∧ inchesPerFoot = 12 ∧
  totalInches = totalFeet * inchesPerFoot

def SalaryRedistribution
    (emilySalary employees oldSalary targetSalary increasePerEmployee
     totalIncrease newSalary : ℕ) : Prop :=
  emilySalary = 1000000 ∧ employees = 10 ∧ oldSalary = 20000 ∧
  targetSalary = 35000 ∧ oldSalary + increasePerEmployee = targetSalary ∧
  totalIncrease = employees * increasePerEmployee ∧
  newSalary + totalIncrease = emilySalary

def StuffedAnimalCost
    (bookCount bookPrice peanutPacks peanutPackPrice knownCost paid stuffed : ℕ) : Prop :=
  bookCount = 2 ∧ bookPrice = 400 ∧ peanutPacks = 4 ∧
  peanutPackPrice = 150 ∧
  knownCost = bookCount * bookPrice + peanutPacks * peanutPackPrice ∧
  paid = 2500 ∧ knownCost + stuffed = paid

def DaySpending
    (mall movies moviePrice movieCost beanBags beanPrice beanCost total : ℕ) : Prop :=
  mall = 25000 ∧ movies = 3 ∧ moviePrice = 2400 ∧
  movieCost = movies * moviePrice ∧ beanBags = 20 ∧ beanPrice = 125 ∧
  beanCost = beanBags * beanPrice ∧ total = mall + movieCost + beanCost

def DinnerServing
    (patients special standard baseMinutes specialMinutes
     standardTotal specialTotal totalMinutes : ℕ) : Prop :=
  patients = 12 ∧ 3 * special = patients ∧ standard + special = patients ∧
  baseMinutes = 5 ∧ 5 * specialMinutes = 6 * baseMinutes ∧
  standardTotal = standard * baseMinutes ∧
  specialTotal = special * specialMinutes ∧
  totalMinutes = standardTotal + specialTotal

def GrillSessions
    (needed cooked remaining capacity sessions : ℕ) : Prop :=
  needed = 115 ∧ cooked = 40 ∧ cooked + remaining = needed ∧
  capacity = 15 ∧ sessions * capacity = remaining

def RacePace
    (distance firstHalf secondHalf totalMinutes minutesPerKilometer : ℕ) : Prop :=
  distance = 10 ∧ firstHalf = 20 ∧ secondHalf = 30 ∧
  totalMinutes = firstHalf + secondHalf ∧
  distance * minutesPerKilometer = totalMinutes

def StorageTubs
    (largeCount smallCount largePrice total smallPrice : ℕ) : Prop :=
  largeCount = 3 ∧ smallCount = 6 ∧ largePrice = 6 ∧ total = 48 ∧
  largeCount * largePrice + smallCount * smallPrice = total

end LemmaWeave.Problems.GSM8K.Daily0914C
