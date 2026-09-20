namespace LemmaWeave.Problems.GSM8K.Sprint0920A19

def AdvertisementCost (ads minutesEach totalMinutes costPerMinute totalCost : Nat) : Prop :=
  totalMinutes = ads * minutesEach ∧ totalCost = totalMinutes * costPerMinute
def Socks (black factor white lost remaining difference : Nat) : Prop :=
  white = factor * black ∧ white = lost * 2 ∧ white = lost + remaining ∧ remaining = black + difference
def Roses (dozens dozenSize total given vase wilted remaining : Nat) : Prop :=
  total = dozens * dozenSize ∧ total = given * 2 ∧ total = given + vase ∧ vase = wilted * 3 ∧ vase = wilted + remaining
def FamilyAges (eddie beckyDiv becky ireneFactor irene : Nat) : Prop :=
  eddie = becky * beckyDiv ∧ irene = ireneFactor * becky
def WaterTower (total first secondFactor second thirdExtra third used fourth : Nat) : Prop :=
  second = first * secondFactor ∧ third = second + thirdExtra ∧ used = first + second + third ∧ total = used + fourth
def TestRange (highest range least multiplier mark : Nat) : Prop :=
  highest = least + range ∧ mark = multiplier * least
def CarPhotos (total less tim extra paul combined tom : Nat) : Prop :=
  total = tim + less ∧ paul = tim + extra ∧ combined = tim + paul ∧ total = combined + tom
def ReptileAnimals (reptiles fewer multiplier rainforest : Nat) : Prop :=
  reptiles + fewer = multiplier * rainforest
/-- `tim + 5 = 2 * john` is the literal algebraic reading of “5 less than twice John's age”. -/
def RelativeAges (jamesOld johnOld gap tim offset johnNow jamesNow : Nat) : Prop :=
  johnOld = jamesOld + gap ∧ tim + offset = 2 * johnNow ∧ johnNow = jamesNow + gap
def WeeklyReading (morning evening daily days total : Nat) : Prop :=
  daily = morning + evening ∧ total = daily * days
def ConcertCost (people ticket ticketTotal percent fee ticketWithFee parking entranceEach entrance total : Nat) : Prop :=
  ticketTotal = people * ticket ∧ fee * 100 = ticketTotal * percent ∧ ticketWithFee = ticketTotal + fee ∧ entrance = people * entranceEach ∧ total = ticketWithFee + parking + entrance
def Population (newEngland numerator denominator newYork combined : Nat) : Prop :=
  newYork * denominator = newEngland * numerator ∧ combined = newEngland + newYork
def Vegetables (potatoes carrotFactor carrots onionFactor onions beanDiv beans : Nat) : Prop :=
  carrots = potatoes * carrotFactor ∧ onions = carrots * onionFactor ∧ onions = beans * beanDiv
/-- Geraldo's amount is counted in half-containers, so 3.5 containers is seven halves. -/
def TeaPints (gallons pintsPerGallon totalPints containers pintsEach halfContainers drank : Nat) : Prop :=
  totalPints = gallons * pintsPerGallon ∧ totalPints = containers * pintsEach ∧ drank * 2 = halfContainers * pintsEach
def ReadingRate (hours days hoursPerDay pagesPerHour dailyPages targetDays totalPages : Nat) : Prop :=
  hours = days * hoursPerDay ∧ dailyPages = hoursPerDay * pagesPerHour ∧ totalPages = dailyPages * targetDays

end LemmaWeave.Problems.GSM8K.Sprint0920A19
