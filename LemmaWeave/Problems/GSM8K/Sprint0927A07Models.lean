import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A07
structure IslandTurtles where
  happy : ℕ
  lonely : ℕ
  excess : ℕ
  twiceLonely : ℕ
  hHappy : happy = 60
  hExcess : excess = 10
  hRelation : happy = twiceLonely + excess
  hTwice : twiceLonely = 2 * lonely
theorem turtles_twice_lonely (m : IslandTurtles) : m.twiceLonely = 50 := by cases m; omega
theorem turtles_lonely (m : IslandTurtles) : m.lonely = 25 := by cases m; omega
theorem turtles_solution (m : IslandTurtles) : m.lonely = 25 := turtles_lonely m
structure Potatoes where
  potatoesPerSession : ℕ
  sessionMinutes : ℕ
  totalPotatoes : ℕ
  sessions : ℕ
  totalMinutes : ℕ
  minutesPerHour : ℕ
  hours : ℕ
  hPerSession : potatoesPerSession = 3
  hSessionMinutes : sessionMinutes = 20
  hTotalPotatoes : totalPotatoes = 27
  hSessions : totalPotatoes = sessions * potatoesPerSession
  hTotalMinutes : totalMinutes = sessions * sessionMinutes
  hMinutesPerHour : minutesPerHour = 60
  hHours : totalMinutes = hours * minutesPerHour
theorem potatoes_sessions (m : Potatoes) : m.sessions = 9 := by cases m; omega
theorem potatoes_minutes (m : Potatoes) : m.totalMinutes = 180 := by cases m; omega
theorem potatoes_hours (m : Potatoes) : m.hours = 3 := by cases m; omega
theorem potatoes_solution (m : Potatoes) : m.hours = 3 := potatoes_hours m
structure Cows where
  total : ℕ
  half : ℕ
  extraBlack : ℕ
  black : ℕ
  notBlack : ℕ
  hTotal : total = 18
  hHalf : total = 2 * half
  hExtra : extraBlack = 5
  hBlack : black = half + extraBlack
  hPartition : total = black + notBlack
theorem cows_half (m : Cows) : m.half = 9 := by cases m; omega
theorem cows_black (m : Cows) : m.black = 14 := by cases m; omega
theorem cows_solution (m : Cows) : m.notBlack = 4 := by cases m; omega
structure Racecar where
  repairPrice : ℕ
  discountPercent : ℕ
  discount : ℕ
  repairPaid : ℕ
  prize : ℕ
  keptPercent : ℕ
  keptPrize : ℕ
  netMade : ℕ
  hRepair : repairPrice = 20000
  hDiscountPercent : discountPercent = 20
  hDiscount : 100 * discount = discountPercent * repairPrice
  hPaid : repairPrice = discount + repairPaid
  hPrize : prize = 70000
  hKeptPercent : keptPercent = 90
  hKept : 100 * keptPrize = keptPercent * prize
  hNet : keptPrize = repairPaid + netMade
theorem racecar_discount (m : Racecar) : m.discount = 4000 := by cases m; omega
theorem racecar_paid (m : Racecar) : m.repairPaid = 16000 := by cases m; omega
theorem racecar_kept (m : Racecar) : m.keptPrize = 63000 := by cases m; omega
theorem racecar_solution (m : Racecar) : m.netMade = 47000 := by cases m; omega
structure StairClimb where
  flights : ℕ
  feetPerFlight : ℕ
  totalFeet : ℕ
  inchesPerFoot : ℕ
  totalInches : ℕ
  inchesPerStep : ℕ
  steps : ℕ
  hFlights : flights = 9
  hFeetPerFlight : feetPerFlight = 10
  hFeet : totalFeet = flights * feetPerFlight
  hInchesPerFoot : inchesPerFoot = 12
  hInches : totalInches = totalFeet * inchesPerFoot
  hInchesPerStep : inchesPerStep = 18
  hSteps : totalInches = steps * inchesPerStep
theorem stairs_feet (m : StairClimb) : m.totalFeet = 90 := by cases m; omega
theorem stairs_inches (m : StairClimb) : m.totalInches = 1080 := by cases m; omega
theorem stairs_steps (m : StairClimb) : m.steps = 60 := by cases m; omega
theorem stairs_solution (m : StairClimb) : m.steps = 60 := stairs_steps m
end LemmaWeave.Problems.GSM8K.Sprint0927A07
