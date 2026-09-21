namespace LemmaWeave.Problems.GSM8K.Sprint0921A11

def GoldBars (initial taxPercent tax afterTax divorceDivisor remaining : Nat) : Prop :=
  tax * 100 = initial * taxPercent ∧ initial = tax + afterTax ∧
  afterTax = remaining * divorceDivisor

def TurtleHatchlings
    (eggsEach hatchPercent hatchEach turtles total : Nat) : Prop :=
  hatchEach * 100 = eggsEach * hatchPercent ∧ total = hatchEach * turtles

def ConcertSavings
    (adultTicket childTicket children ticketTotal brothersSaved isabelleSaved
      saved needed weeklyPay weeks : Nat) : Prop :=
  ticketTotal = adultTicket + childTicket * children ∧
  saved = brothersSaved + isabelleSaved ∧ ticketTotal = saved + needed ∧
  needed = weeklyPay * weeks

def CrackerBoxes
    (darrenBoxes perBox darrenCrackers doubled calvinBoxes calvinCrackers total : Nat) : Prop :=
  darrenCrackers = darrenBoxes * perBox ∧ doubled = darrenBoxes * 2 ∧
  doubled = calvinBoxes + 1 ∧ calvinCrackers = calvinBoxes * perBox ∧
  total = darrenCrackers + calvinCrackers

/-- The wording asks for Lyssa's positive excess, but the data imply she scored three fewer. -/
def ExamComparison
    (items lyssaMistakePercent lyssaMistakes preciousMistakes
      lyssaCorrect preciousCorrect difference : Nat) : Prop :=
  lyssaMistakes * 100 = items * lyssaMistakePercent ∧
  items = lyssaMistakes + lyssaCorrect ∧ items = preciousMistakes + preciousCorrect ∧
  preciousCorrect = lyssaCorrect + difference ∧ lyssaCorrect < preciousCorrect

def AnimalLegs
    (dogs dogLegsEach dogLegs chickens chickenLegsEach chickenLegs total : Nat) : Prop :=
  dogLegs = dogs * dogLegsEach ∧ chickenLegs = chickens * chickenLegsEach ∧
  total = dogLegs + chickenLegs

def MilkCartons
    (brian wife kids parents inlaws people servingsEach servings halfCupNumerator
      halfCupDenominator cups mlPerCup totalMl cartonMl cartons : Nat) : Prop :=
  people = brian + wife + kids + parents + inlaws ∧
  servings = people * servingsEach ∧ cups * halfCupDenominator = servings * halfCupNumerator ∧
  totalMl = cups * mlPerCup ∧ totalMl = cartons * cartonMl

def EqualDesserts (cupcakes holes total students each : Nat) : Prop :=
  total = cupcakes + holes ∧ total = students * each

def CamdenDogLegs
    (justin extra rico numerator denominator camden legsEach totalLegs : Nat) : Prop :=
  rico = justin + extra ∧ camden * denominator = rico * numerator ∧
  totalLegs = camden * legsEach

def ShoePurchase
    (shoes boots subtotal taxPercent tax total : Nat) : Prop :=
  subtotal = shoes + boots ∧ tax * 100 = subtotal * taxPercent ∧ total = subtotal + tax

def ChickenOrders
    (dinnerOrders dinnerPieces dinnerTotal pastaOrders pastaPieces pastaTotal
      barbecueOrders barbecuePieces barbecueTotal total : Nat) : Prop :=
  dinnerTotal = dinnerOrders * dinnerPieces ∧ pastaTotal = pastaOrders * pastaPieces ∧
  barbecueTotal = barbecueOrders * barbecuePieces ∧
  total = dinnerTotal + pastaTotal + barbecueTotal

def BuildingHeights
    (first secondMultiplier second firstTwo thirdMultiplier third total : Nat) : Prop :=
  second = first * secondMultiplier ∧ firstTwo = first + second ∧
  third = firstTwo * thirdMultiplier ∧ total = firstTwo + third

def DuckFlock
    (ducks1 youngEach1 young1 ducks2 youngEach2 young2 ducks3 youngEach3 young3
      adultTotal youngTotal total : Nat) : Prop :=
  young1 = ducks1 * youngEach1 ∧ young2 = ducks2 * youngEach2 ∧
  young3 = ducks3 * youngEach3 ∧ adultTotal = ducks1 + ducks2 + ducks3 ∧
  youngTotal = young1 + young2 + young3 ∧ total = adultTotal + youngTotal

/-- Monetary values are cents. -/
def FruitSales
    (applePrice orangePrice morningApples morningOranges afternoonApples afternoonOranges
      apples oranges appleSales orangeSales total : Nat) : Prop :=
  apples = morningApples + afternoonApples ∧ oranges = morningOranges + afternoonOranges ∧
  appleSales = apples * applePrice ∧ orangeSales = oranges * orangePrice ∧
  total = appleSales + orangeSales

def SkatingFalls
    (steven extra stephanie half halfOffset sonya : Nat) : Prop :=
  stephanie = steven + extra ∧ stephanie = half * 2 ∧ half = sonya + halfOffset

end LemmaWeave.Problems.GSM8K.Sprint0921A11
