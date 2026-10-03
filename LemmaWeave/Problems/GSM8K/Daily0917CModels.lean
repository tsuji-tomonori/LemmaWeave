namespace LemmaWeave.Problems.GSM8K.Daily0917C

def PingPong (total frankie carla : Nat) : Prop :=
  total = 30 ∧ carla = 2 * frankie ∧ frankie + carla = total

def RouteComparison
    (base redLights redDelay route1 route2 longer : Nat) : Prop :=
  base = 10 ∧ redLights = 3 ∧ redDelay = 3 ∧
  route1 = base + redLights * redDelay ∧ route2 = 14 ∧ route1 = route2 + longer

def PaidLeave
    (sick vacation usedSick usedVacation remainingSick remainingVacation
      hoursPerDay remainingHours : Nat) : Prop :=
  sick = 10 ∧ vacation = 10 ∧ 2 * usedSick = sick ∧ 2 * usedVacation = vacation ∧
  usedSick + remainingSick = sick ∧ usedVacation + remainingVacation = vacation ∧
  hoursPerDay = 8 ∧ remainingHours = (remainingSick + remainingVacation) * hoursPerDay

def BootWalk (first second third total : Nat) : Prop :=
  first = 2 ∧ second + 1 = 2 ∧ third + 1 = 4 ∧ total = first + second + third

def ShoppingCost
    (shirtCost sweaterCost jacketFull discount jacketSale subtotal tax total : Nat) : Prop :=
  shirtCost = 6 * 8 ∧ sweaterCost = 4 * 18 ∧ jacketFull = 5 * 80 ∧
  100 * discount = 10 * jacketFull ∧ jacketSale + discount = jacketFull ∧
  subtotal = shirtCost + sweaterCost + jacketSale ∧
  100 * tax = 5 * subtotal ∧ total = subtotal + tax

def ChampagneCost
    (gallons quartsPerGallon bottles price gross percentBase discountPercent discount total : Nat) : Prop :=
  gallons = 40 ∧ quartsPerGallon = 4 ∧ bottles = gallons * quartsPerGallon ∧
  price = 50 ∧ gross = bottles * price ∧ percentBase = 100 ∧ discountPercent = 20 ∧
  percentBase * discount = discountPercent * gross ∧ total + discount = gross

def OvertimePay
    (totalPay normalRate regularHours regularPay multiplierNumerator multiplierDenominator
      overtimeRate overtimePay overtimeHours totalHours : Nat) : Prop :=
  totalPay = 696 ∧ normalRate = 12 ∧ regularHours = 40 ∧
  regularPay = normalRate * regularHours ∧ multiplierNumerator = 3 ∧ multiplierDenominator = 2 ∧
  multiplierDenominator * overtimeRate = multiplierNumerator * normalRate ∧
  regularPay + overtimePay = totalPay ∧ overtimePay = overtimeHours * overtimeRate ∧
  totalHours = regularHours + overtimeHours

/-- 階番号に欠番がなく、現在階と最上階の階番号差が9であるという読み。 -/
def BuildingFloors
    (start afterUp afterDown current gap top : Nat) : Prop :=
  start = 1 ∧ afterUp = start + 5 ∧ afterDown + 2 = afterUp ∧
  current = afterDown + 7 ∧ gap = 9 ∧ top = current + gap

def AppleTree
    (plantedAge currentAge bearingYears elapsed remaining firstAge : Nat) : Prop :=
  plantedAge = 4 ∧ currentAge = 9 ∧ bearingYears = 7 ∧
  plantedAge + elapsed = currentAge ∧ elapsed + remaining = bearingYears ∧
  firstAge = currentAge + remaining

def SharedMoney (total difference ali james : Nat) : Prop :=
  total = 250 ∧ difference = 40 ∧ james = ali + difference ∧ james + ali = total

end LemmaWeave.Problems.GSM8K.Daily0917C
