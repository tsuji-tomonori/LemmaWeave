namespace LemmaWeave.Problems.GSM8K.Sprint0921A04

def Concert (tickets before remaining late middle absent : Nat) : Prop :=
  tickets * 3 = before * 4 ∧ tickets = before + remaining ∧ remaining * 5 = late * 9 ∧
  remaining = late + middle + absent

def GinaMoney (initial mom clothes charity spent kept : Nat) : Prop :=
  initial = mom * 4 ∧ initial = clothes * 8 ∧ initial = charity * 5 ∧
  spent = mom + clothes + charity ∧ initial = spent + kept

def FriendAges (older younger difference total : Nat) : Prop :=
  older = younger + difference ∧ total = older + younger

def ReferenceCoinSale (payment soldCoins unitValue originalValue originalCoins remainingCoins : Nat) : Prop :=
  payment = soldCoins * unitValue ∧ originalValue = originalCoins * unitValue ∧
  originalCoins = soldCoins + remainingCoins

def CashBalanceCoinSale
    (preCash payment postCash unitValue originalValue originalCoins soldCoins remainingCoins : Nat) : Prop :=
  postCash = preCash + payment ∧ originalValue = originalCoins * unitValue ∧
  originalCoins = soldCoins + remainingCoins

def Cards (ann heikeMultiple heike antonMultiple anton difference : Nat) : Prop :=
  ann = heike * heikeMultiple ∧ anton = heike * antonMultiple ∧ ann = anton + difference

def Fruits (mike mattMultiplier matt mark total : Nat) : Prop :=
  matt = mike * mattMultiplier ∧ mark = mike + matt ∧ total = mike + matt + mark

def DoseVolume (weight mlPerKg totalMl parts eachMl : Nat) : Prop :=
  totalMl = weight * mlPerKg ∧ totalMl = parts * eachMl

def DoseMassReading (eachMl mgPerMl eachMg : Nat) : Prop :=
  eachMg = eachMl * mgPerMl

def Butcher
    (steakCount steakHalfUnitsEach steakHalfUnits steakPrice steakCost
     chickenHalfUnits chickenPrice chickenCost totalCost : Nat) : Prop :=
  steakHalfUnits = steakCount * steakHalfUnitsEach ∧ steakCost * 2 = steakHalfUnits * steakPrice ∧
  chickenCost * 2 = chickenHalfUnits * chickenPrice ∧ totalCost = steakCost + chickenCost

def Berries (total raspberries blackberries blueberries : Nat) : Prop :=
  total = raspberries * 2 ∧ total = blackberries * 3 ∧
  total = raspberries + blackberries + blueberries

def ViggoAges (brotherThen viggoThen ageGap brotherNow viggoNow total : Nat) : Prop :=
  viggoThen = 2 * brotherThen + 10 ∧ viggoThen = brotherThen + ageGap ∧
  viggoNow = brotherNow + ageGap ∧ total = brotherNow + viggoNow

def Donuts (perDay days made eatenPerDay eatenByJeff eatenByChris remaining perBox boxes : Nat) : Prop :=
  made = perDay * days ∧ eatenByJeff = eatenPerDay * days ∧
  made = eatenByJeff + eatenByChris + remaining ∧ remaining = perBox * boxes

def Scallops (people perPerson needed perPound pounds pricePerPound cost : Nat) : Prop :=
  needed = people * perPerson ∧ needed = perPound * pounds ∧ cost = pounds * pricePerPound

def Savings (dailyStart dailySpent dailySaved days doubled gift total : Nat) : Prop :=
  dailyStart = dailySpent + dailySaved ∧ doubled = days * dailySaved * 2 ∧
  total = doubled + gift

def GladysAges (gladys divisor billy pairSum lucasNow yearsAhead lucasFuture : Nat) : Prop :=
  gladys = billy * divisor ∧ gladys = pairSum * 2 ∧ pairSum = billy + lucasNow ∧
  lucasFuture = lucasNow + yearsAhead

def Golf (phil charlie dana perry difference : Nat) : Prop :=
  phil = charlie + 3 ∧ dana = charlie + 2 ∧ perry = dana + 5 ∧ perry = phil + difference

end LemmaWeave.Problems.GSM8K.Sprint0921A04
