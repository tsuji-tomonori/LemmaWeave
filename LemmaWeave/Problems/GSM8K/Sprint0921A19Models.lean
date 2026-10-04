namespace LemmaWeave.Problems.GSM8K.Sprint0921A19

def ElectionVotes
    (total john remaining jamesPercent james third difference : Nat) : Prop :=
  total = john + remaining ∧ remaining * jamesPercent = james * 100 ∧
  remaining = james + third ∧ third = john + difference

def HeightSteps (roy joeTaller joe saraTaller sara : Nat) : Prop :=
  joe = roy + joeTaller ∧ sara = joe + saraTaller

def ExerciseHours (hoursPerDay daysPerWeek weekly weeks total : Nat) : Prop :=
  weekly = hoursPerDay * daysPerWeek ∧ total = weekly * weeks

def AgeSteps (zrinka multiplier jordyn older mehki : Nat) : Prop :=
  jordyn = zrinka * multiplier ∧ mehki = jordyn + older

def CakeRemainder
    (target initialDivisor initial todayDivisor today afterToday nextDivisor next final : Nat) : Prop :=
  target = initial * initialDivisor ∧ initial = today * todayDivisor ∧
  afterToday + initial + today = target ∧ afterToday = next * nextDivisor ∧
  target = initial + today + next + final

def EnvelopeRate
    (total first second remaining totalHours usedHours remainingHours perHour : Nat) : Prop :=
  total = first + second + remaining ∧ totalHours = usedHours + remainingHours ∧
  remaining = perHour * remainingHours

def AppleTotal (lexie multiplier tom total : Nat) : Prop :=
  tom = lexie * multiplier ∧ total = lexie + tom

def LawnHours (days lawnsPerDay lawns minutesPerLawn minutes minutesPerHour hours : Nat) : Prop :=
  lawns = days * lawnsPerDay ∧ minutes = lawns * minutesPerLawn ∧
  minutes = hours * minutesPerHour

def ShoeCount
    (bonnyPairs offset beckyMultiplier beckyPairs bobbyMultiplier bobbyPairs
      shoesPerPair bobbyShoes : Nat) : Prop :=
  bonnyPairs + offset = beckyPairs * beckyMultiplier ∧
  bobbyPairs = beckyPairs * bobbyMultiplier ∧ bobbyShoes = bobbyPairs * shoesPerPair

def CeilingBulbs
    (mediumLights largeMultiplier largeLights smallExtra smallLights smallBulbsPerLight
      mediumBulbsPerLight largeBulbsPerLight smallBulbs mediumBulbs largeBulbs total : Nat) : Prop :=
  largeLights = mediumLights * largeMultiplier ∧ smallLights = mediumLights + smallExtra ∧
  smallBulbs = smallLights * smallBulbsPerLight ∧
  mediumBulbs = mediumLights * mediumBulbsPerLight ∧
  largeBulbs = largeLights * largeBulbsPerLight ∧ total = smallBulbs + mediumBulbs + largeBulbs

def PipeCost (copper plasticExtra plastic totalMeters pricePerMeter totalCost : Nat) : Prop :=
  plastic = copper + plasticExtra ∧ totalMeters = copper + plastic ∧
  totalCost = totalMeters * pricePerMeter

def RidingTime
    (maxMinutes maxDays maxTotal shortMinutes shortDays shortTotal halfMinutes halfDays
      halfTotal totalMinutes minutesPerHour totalHours : Nat) : Prop :=
  maxTotal = maxMinutes * maxDays ∧ shortTotal = shortMinutes * shortDays ∧
  maxMinutes = halfMinutes * 2 ∧ halfTotal = halfMinutes * halfDays ∧
  totalMinutes = maxTotal + shortTotal + halfTotal ∧ totalMinutes = totalHours * minutesPerHour

def QuestionRemainder (rate hours done total remaining : Nat) : Prop :=
  done = rate * hours ∧ total = done + remaining

def BankWindfall
    (weekly weeks deposits initial balance extraPercent extra windfall total : Nat) : Prop :=
  deposits = weekly * weeks ∧ balance = initial + deposits ∧
  balance * extraPercent = extra * 100 ∧ windfall = balance + extra ∧ total = balance + windfall

def ShoeWarehouse (total blue nonblue green purple : Nat) : Prop :=
  total = blue + nonblue ∧ nonblue = green + purple ∧ green = purple

end LemmaWeave.Problems.GSM8K.Sprint0921A19
