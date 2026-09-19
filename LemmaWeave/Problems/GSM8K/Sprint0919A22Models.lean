namespace LemmaWeave.Problems.GSM8K.Sprint0919A22

def TeacherEarnings
    (periodsPerDay daysPerMonth payPerPeriod months daily monthly total : Nat) : Prop :=
  periodsPerDay = 5 ∧ daysPerMonth = 24 ∧ payPerPeriod = 5 ∧ months = 6 ∧
  daily = periodsPerDay * payPerPeriod ∧ monthly = daily * daysPerMonth ∧
  total = monthly * months

def CandleRatio (redRatio blueRatio red blue : Nat) : Prop :=
  redRatio = 5 ∧ blueRatio = 3 ∧ red = 45 ∧
  red * blueRatio = blue * redRatio

def GiftShopping
    (sunglassPairs sunglassPrice jeans mary shoes deckCount deckPrice
      cardCost rose : Nat) : Prop :=
  sunglassPairs = 2 ∧ sunglassPrice = 50 ∧ jeans = 100 ∧
  mary = sunglassPairs * sunglassPrice + jeans ∧ shoes = 150 ∧
  deckCount = 2 ∧ cardCost = deckCount * deckPrice ∧
  rose = shoes + cardCost ∧ rose = mary

def WatermelonSeeds
    (bom extra gwi multiplier yeon total : Nat) : Prop :=
  bom = 300 ∧ extra = 40 ∧ gwi = bom + extra ∧ multiplier = 3 ∧
  yeon = multiplier * gwi ∧ total = bom + gwi + yeon

/-- This is the problem's stipulated numerical doubling of shoe sizes, not a physical length claim. -/
def ShoeSizes (jasmine multiplier alexa total : Nat) : Prop :=
  jasmine = 7 ∧ multiplier = 2 ∧ alexa = multiplier * jasmine ∧
  total = jasmine + alexa

end LemmaWeave.Problems.GSM8K.Sprint0919A22
