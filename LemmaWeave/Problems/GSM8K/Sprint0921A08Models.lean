namespace LemmaWeave.Problems.GSM8K.Sprint0921A08

def LeakingTank (initial hours lossPerHour lost addedThird addedFourth added left : Nat) : Prop :=
  lost = hours * lossPerHour ∧ added = addedThird + addedFourth ∧ initial + added = lost + left

def RoofShingles (length width sideArea sides roofArea roofs allArea perSquare total : Nat) : Prop :=
  sideArea = length * width ∧ roofArea = sideArea * sides ∧
  allArea = roofArea * roofs ∧ total = allArea * perSquare

def GeckoCrickets (total firstPercent first secondLess second third : Nat) : Prop :=
  first * 100 = total * firstPercent ∧ first = second + secondLess ∧ total = first + second + third

def PotatoCost (givenKg givenCost unitCost boughtKg totalCost : Nat) : Prop :=
  givenCost = givenKg * unitCost ∧ totalCost = boughtKg * unitCost

def Tulips (arwen multiplier elrond total : Nat) : Prop :=
  elrond = arwen * multiplier ∧ total = arwen + elrond

def CardCollection
    (basketBoxes basketEach basketball baseballBoxes baseballEach baseball total given left : Nat) : Prop :=
  basketball = basketBoxes * basketEach ∧ baseball = baseballBoxes * baseballEach ∧
  total = basketball + baseball ∧ total = given + left

def SchoolArrival
    (hourMinutes departureMinute available normal redLights perLight lightDelay
      construction travel late : Nat) : Prop :=
  available = hourMinutes - departureMinute ∧ lightDelay = redLights * perLight ∧
  travel = normal + lightDelay + construction ∧ travel = available + late

/-- “ten times more” is ambiguous: reference uses 10x; additive reading gives 11x. -/
def TrophyAmbiguity
    (michaelNow michaelIncrease michaelFuture referenceJack referenceTotal
      additiveJack additiveTotal : Nat) : Prop :=
  michaelFuture = michaelNow + michaelIncrease ∧ referenceJack = michaelNow * 10 ∧
  referenceTotal = michaelFuture + referenceJack ∧ additiveJack = michaelNow + michaelNow * 10 ∧
  additiveTotal = michaelFuture + additiveJack ∧ referenceTotal ≠ additiveTotal

def TreehousePlanks
    (needed storage parents friends owned bought : Nat) : Prop :=
  storage * 4 = needed ∧ parents * 2 = needed ∧ owned = storage + parents + friends ∧
  needed = owned + bought

def DreamingTime (sleep dreamed notDreaming : Nat) : Prop :=
  dreamed * 5 = sleep * 2 ∧ sleep = dreamed + notDreaming

def Butterflies (all black colored yellow blue : Nat) : Prop :=
  all = black + colored ∧ colored = yellow + blue ∧ blue = yellow * 2

def JeansPrice (socks shirtExtra shirt jeans : Nat) : Prop :=
  shirt = socks + shirtExtra ∧ jeans = shirt * 2

def RideTickets (kartRides kartEach kartTickets bumperRides bumperEach bumperTickets total : Nat) : Prop :=
  kartTickets = kartRides * kartEach ∧ bumperTickets = bumperRides * bumperEach ∧
  total = kartTickets + bumperTickets

def CarRental (rate hoursPerDay days weeklyHours weeklyPay : Nat) : Prop :=
  weeklyHours = hoursPerDay * days ∧ weeklyPay = weeklyHours * rate

def DeliveryPay
    (oulaDeliveries tonaNumerator tonaDenominator tonaDeliveries payEach oulaPay tonaPay difference : Nat) : Prop :=
  tonaDeliveries * tonaDenominator = oulaDeliveries * tonaNumerator ∧
  oulaPay = oulaDeliveries * payEach ∧ tonaPay = tonaDeliveries * payEach ∧
  oulaPay = tonaPay + difference

end LemmaWeave.Problems.GSM8K.Sprint0921A08
