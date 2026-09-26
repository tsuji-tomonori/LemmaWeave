namespace LemmaWeave.Problems.GSM8K.Sprint0920A11

def LaundryTiming
    (loads washMinutes dryMinutes perLoad serialMinutes minutesPerHour serialHours
      fullyParallelMinutes : Nat) : Prop :=
  perLoad = washMinutes + dryMinutes ∧ serialMinutes = loads * perLoad ∧
  serialMinutes = serialHours * minutesPerHour ∧ fullyParallelMinutes = perLoad ∧
  serialMinutes ≠ fullyParallelMinutes

def PharmacyCustomers
    (fullWorkers fullHours juliaHours personHours customersPerHour total : Nat) : Prop :=
  personHours = fullWorkers * fullHours + juliaHours ∧
  total = customersPerHour * personHours

def TowelPurchase
    (guestSets guestPrice guestTotal masterSets masterPrice masterTotal subtotal discountPercent
      discount payment : Nat) : Prop :=
  guestTotal = guestSets * guestPrice ∧ masterTotal = masterSets * masterPrice ∧
  subtotal = guestTotal + masterTotal ∧ discount * 100 = subtotal * discountPercent ∧
  subtotal = payment + discount

def BirthdayParty
    (invited bringerDivisor bringers companions guests host total : Nat) : Prop :=
  bringers * bringerDivisor = invited ∧ companions = bringers ∧
  guests = invited + companions ∧ total = guests + host

def GleeClub
    (femaleMultiplier male female total : Nat) : Prop :=
  female = femaleMultiplier * male ∧ total = female + male

def BrickCost
    (bricks divisor half fullPriceCents discountPercent discountedPriceCents discountedCostCents
      fullCostCents totalCents centsPerDollar dollars : Nat) : Prop :=
  half * divisor = bricks ∧ discountedPriceCents * 100 = fullPriceCents * (100 - discountPercent) ∧
  discountedCostCents = half * discountedPriceCents ∧ fullCostCents = half * fullPriceCents ∧
  totalCents = discountedCostCents + fullCostCents ∧ totalCents = dollars * centsPerDollar

def ApplePurchase
    (men maleEach maleTotal extra femaleEach women femaleTotal total : Nat) : Prop :=
  maleTotal = men * maleEach ∧ femaleEach = maleEach + extra ∧
  femaleTotal = women * femaleEach ∧ total = maleTotal + femaleTotal

def BaseballCards
    (brandon extra malcom divisor given remaining : Nat) : Prop :=
  malcom = brandon + extra ∧ given * divisor = malcom ∧ malcom = given + remaining

def ClientRequests
    (dailyReceived dailyCompleted dailyBacklog days totalBacklog : Nat) : Prop :=
  dailyReceived = dailyCompleted + dailyBacklog ∧ totalBacklog = days * dailyBacklog

def StairHeight
    (first multiplier second fewer third totalSteps halfFeetPerStep totalHalfFeet divisor totalFeet : Nat) : Prop :=
  second = multiplier * first ∧ second = third + fewer ∧
  totalSteps = first + second + third ∧ totalHalfFeet = totalSteps * halfFeetPerStep ∧
  totalHalfFeet = totalFeet * divisor

def TurtleRescue
    (martha extra marion total : Nat) : Prop :=
  marion = martha + extra ∧ total = martha + marion

def BreadLoaves
    (cupboard counter pantry totalFlour flourPerLoaf loaves : Nat) : Prop :=
  totalFlour = cupboard + counter + pantry ∧ totalFlour = loaves * flourPerLoaf

def CrayonCounts
    (billie multiplier bobbie divisor lizzie : Nat) : Prop :=
  bobbie = multiplier * billie ∧ lizzie * divisor = bobbie

def DressDiscount
    (price discountPercent discount final : Nat) : Prop :=
  discount * 100 = price * discountPercent ∧ price = final + discount

def SoccerPoints
    (winPoints drawPoints joeWins joeDraws joeWinScore joeDrawScore joeTotal firstWins firstDraws
      firstWinScore firstDrawScore firstTotal difference : Nat) : Prop :=
  joeWinScore = joeWins * winPoints ∧ joeDrawScore = joeDraws * drawPoints ∧
  joeTotal = joeWinScore + joeDrawScore ∧ firstWinScore = firstWins * winPoints ∧
  firstDrawScore = firstDraws * drawPoints ∧ firstTotal = firstWinScore + firstDrawScore ∧
  firstTotal = joeTotal + difference

end LemmaWeave.Problems.GSM8K.Sprint0920A11
