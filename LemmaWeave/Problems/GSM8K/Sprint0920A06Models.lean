namespace LemmaWeave.Problems.GSM8K.Sprint0920A06

def BalloonIntact
    (total firstFractionDen firstBurst firstIntact secondMultiplier secondBurst remaining : Nat) : Prop :=
  firstBurst * firstFractionDen = total ∧ firstIntact + firstBurst = total ∧
  secondBurst = secondMultiplier * firstBurst ∧ remaining + secondBurst = firstIntact

def ChipCounts
    (susanaChocolate vivianaChocolate vivianaVanilla susanaVanilla
      chocolateTotal vanillaTotal total : Nat) : Prop :=
  vivianaChocolate = susanaChocolate + 5 ∧ susanaVanilla * 4 = 3 * vivianaVanilla ∧
  chocolateTotal = susanaChocolate + vivianaChocolate ∧
  vanillaTotal = vivianaVanilla + susanaVanilla ∧ total = chocolateTotal + vanillaTotal

def RoundCountCompatible (wins rounds : Nat) : Prop :=
  ∃ nonwinningRounds : Nat, rounds = wins + nonwinningRounds

def CardGame
    (pointsPerWin final lost earned wins roundsA roundsB : Nat) : Prop :=
  earned = final + lost ∧ earned = pointsPerWin * wins ∧
  RoundCountCompatible wins roundsA ∧ RoundCountCompatible wins roundsB ∧ roundsA ≠ roundsB

def AntDoubling (start h1 h2 h3 h4 h5 : Nat) : Prop :=
  h1 = 2 * start ∧ h2 = 2 * h1 ∧ h3 = 2 * h2 ∧
  h4 = 2 * h3 ∧ h5 = 2 * h4

def ToothpickHouse
    (deck unused used toothpicksPerCard total boxSize boxes : Nat) : Prop :=
  used + unused = deck ∧ total = used * toothpicksPerCard ∧ boxes * boxSize = total

def WeekdayRun
    (normalDays normalMinutes earlyMinutes thursday extraMinutes friday total : Nat) : Prop :=
  earlyMinutes = normalDays * normalMinutes ∧ thursday + 20 = normalMinutes ∧
  friday = normalMinutes + extraMinutes ∧ total = earlyMinutes + thursday + friday

def GamblingLoss (roulette blackjack lost remaining initial : Nat) : Prop :=
  lost = roulette + blackjack ∧ initial = lost + remaining

def PiggyBank
    (perTrip tripsPerMonth monthly months yearly remaining initial : Nat) : Prop :=
  monthly = perTrip * tripsPerMonth ∧ yearly = monthly * months ∧
  initial = yearly + remaining

def Bookstore
    (sarahPaperback sarahHardback brotherPaperback brotherHardback total : Nat) : Prop :=
  brotherPaperback * 3 = sarahPaperback ∧ brotherHardback = 2 * sarahHardback ∧
  total = brotherPaperback + brotherHardback

def AddedSugar
    (drinkCalories sugarPercent drinkSugar recommended totalSugar candySugar
      perBar bars : Nat) : Prop :=
  drinkSugar * 100 = drinkCalories * sugarPercent ∧ totalSugar = 2 * recommended ∧
  totalSugar = drinkSugar + candySugar ∧ candySugar = perBar * bars

def GummyFactory
    (perMinute perPacket packetsPerMinute packets minutes : Nat) : Prop :=
  packetsPerMinute * perPacket = perMinute ∧ minutes * packetsPerMinute = packets

def DebtSettlement
    (earlStart fredStart gregStart earlOwes fredOwes gregOwes
      earlAfterPay fredAfterReceive fredAfterPay gregAfterReceive gregAfterPay
      earlFinal combined : Nat) : Prop :=
  earlAfterPay + earlOwes = earlStart ∧ fredAfterReceive = fredStart + earlOwes ∧
  fredAfterPay + fredOwes = fredAfterReceive ∧ gregAfterReceive = gregStart + fredOwes ∧
  gregAfterPay + gregOwes = gregAfterReceive ∧ earlFinal = earlAfterPay + gregOwes ∧
  combined = gregAfterPay + earlFinal

def DentalGiveaway
    (hours halfHoursPerVisit visitsPerDay days weeklyVisits perPatient toothbrushes : Nat) : Prop :=
  visitsPerDay * halfHoursPerVisit = hours * 2 ∧ weeklyVisits = visitsPerDay * days ∧
  toothbrushes = weeklyVisits * perPatient

def SquirrelAcorns (squirrels collected eachNow needed eachMore : Nat) : Prop :=
  eachNow * squirrels = collected ∧ eachMore + eachNow = needed

def FoodSurvey
    (students fries burgers both friesOnly burgersOnly either neither : Nat) : Prop :=
  friesOnly + both = fries ∧ burgersOnly + both = burgers ∧
  either = friesOnly + burgersOnly + both ∧ neither + either = students

end LemmaWeave.Problems.GSM8K.Sprint0920A06
