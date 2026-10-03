namespace LemmaWeave.Problems.GSM8K.Daily0915B

def HayBales
    (oldBales oldAcres perAcre newAcres totalAcres monthly annual
      horses perHorse days daily consumed left : Nat) : Prop :=
  oldBales = 560 ∧ oldAcres = 5 ∧ oldBales = perAcre * oldAcres ∧
  newAcres = 7 ∧ totalAcres = oldAcres + newAcres ∧
  monthly = perAcre * totalAcres ∧ annual = 12 * monthly ∧
  horses = 9 ∧ perHorse = 3 ∧ days = 122 ∧ daily = horses * perHorse ∧
  consumed = days * daily ∧ left + consumed = annual

def RiverRace (width boatWidth gap boats used : Nat) : Prop :=
  width = 42 ∧ boatWidth = 3 ∧ gap = 2 ∧
  used = boats * boatWidth + (boats + 1) * gap ∧ used ≤ width ∧
  width < (boats + 1) * boatWidth + (boats + 2) * gap

def CookAndMovies
    (first extra second popcorn fries watching cooking totalMinutes
      minutesPerHour hours : Nat) : Prop :=
  first = 90 ∧ extra = 30 ∧ second = first + extra ∧
  popcorn = 10 ∧ fries = 2 * popcorn ∧ watching = first + second ∧
  cooking = popcorn + fries ∧ totalMinutes = watching + cooking ∧
  minutesPerHour = 60 ∧ totalMinutes = hours * minutesPerHour

def MilfordAge
    (eustaceNow futureYears eustaceFuture milfordNow milfordFuture : Nat) : Prop :=
  eustaceNow = 2 * milfordNow ∧ futureYears = 3 ∧
  eustaceFuture = 39 ∧ eustaceNow + futureYears = eustaceFuture ∧
  milfordFuture = milfordNow + futureYears

def ElevatorCapacity
    (adultCount adultAverage childCount childAverage current maximum next : Nat) : Prop :=
  adultCount = 3 ∧ adultAverage = 140 ∧ childCount = 2 ∧ childAverage = 64 ∧
  current = adultCount * adultAverage + childCount * childAverage ∧
  maximum = 600 ∧ current + next = maximum

def SalesQuota
    (totalDays quota firstDays firstPer nextDays nextPer elapsed
      soldFirst soldNext sold remainingDays remainingCars : Nat) : Prop :=
  totalDays = 30 ∧ quota = 50 ∧ firstDays = 3 ∧ firstPer = 5 ∧
  nextDays = 4 ∧ nextPer = 3 ∧ elapsed = firstDays + nextDays ∧
  soldFirst = firstDays * firstPer ∧ soldNext = nextDays * nextPer ∧
  sold = soldFirst + soldNext ∧ remainingDays + elapsed = totalDays ∧
  remainingCars + sold = quota

def RopeJump
    (record perSecond secondsPerMinute minutesPerHour perMinute perHour hours : Nat) : Prop :=
  record = 54000 ∧ perSecond = 3 ∧ secondsPerMinute = 60 ∧ minutesPerHour = 60 ∧
  perMinute = perSecond * secondsPerMinute ∧
  perHour = perMinute * minutesPerHour ∧ record = hours * perHour

def Grandchildren
    (children exceptional exceptionalEach regular regularEach
      regularTotal exceptionalTotal total : Nat) : Prop :=
  children = 8 ∧ exceptional = 2 ∧ exceptionalEach = 5 ∧
  regular + exceptional = children ∧ regularEach = children ∧
  regularTotal = regular * regularEach ∧
  exceptionalTotal = exceptional * exceptionalEach ∧
  total = regularTotal + exceptionalTotal

def CookieDivision (baked tim mike anna given fridge : Nat) : Prop :=
  baked = 256 ∧ tim = 15 ∧ mike = 23 ∧ anna = 2 * tim ∧
  given = tim + mike + anna ∧ fridge + given = baked

def ColoredBalls (total blue red green : Nat) : Prop :=
  total = 40 ∧ blue = 11 ∧ red = 2 * blue ∧ total = blue + red + green

end LemmaWeave.Problems.GSM8K.Daily0915B
