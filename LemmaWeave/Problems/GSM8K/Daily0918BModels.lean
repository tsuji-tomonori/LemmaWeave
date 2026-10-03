namespace LemmaWeave.Problems.GSM8K.Daily0918B

def YardWork
    (springEarnings springHours hourlyRate fallHours fallEarnings gross repair remaining
      console shortfall additionalHours : Nat) : Prop :=
  springEarnings = 460 ∧ springHours = 23 ∧ springHours * hourlyRate = springEarnings ∧
  fallHours = 8 ∧ fallEarnings = fallHours * hourlyRate ∧
  gross = springEarnings + fallEarnings ∧ repair = 340 ∧
  remaining + repair = gross ∧ console = 600 ∧
  shortfall + remaining = console ∧ hourlyRate * additionalHours = shortfall

def SheepCount (pen total wild : Nat) : Prop :=
  pen = 81 ∧ pen + wild = total ∧ 10 * pen = 9 * total

/-- Distances are represented in tenths of a mile until the final conversion. -/
def RunningAverage
    (monday tuesday wednesday thursday totalTenths days averageTenths averageMiles : Nat) : Prop :=
  monday = 42 ∧ tuesday = 38 ∧ wednesday = 36 ∧ thursday = 44 ∧
  totalTenths = monday + tuesday + wednesday + thursday ∧ days = 4 ∧
  days * averageTenths = totalTenths ∧ 10 * averageMiles = averageTenths

/-- The promotion is interpreted pound-for-pound and the 20 pounds form complete pairs. -/
def SteakPromotion (totalPounds pairSize paidPounds pricePerPound cost : Nat) : Prop :=
  totalPounds = 20 ∧ pairSize = 2 ∧ pairSize * paidPounds = totalPounds ∧
  pricePerPound = 15 ∧ cost = paidPounds * pricePerPound

/-- Times are represented as numbers of half-hours, so distance satisfies `2d = vt`. -/
def DrivingDistance
    (firstSpeed firstHalfHours firstDistance secondSpeed secondHalfHours secondDistance total : Nat) : Prop :=
  firstSpeed = 30 ∧ firstHalfHours = 1 ∧
  2 * firstDistance = firstSpeed * firstHalfHours ∧
  secondSpeed = 2 * firstSpeed ∧ secondHalfHours = 2 * firstHalfHours ∧
  2 * secondDistance = secondSpeed * secondHalfHours ∧
  total = firstDistance + secondDistance

/-- The wording is read as a 2.4 kW oven used for 25 hours at 10 cents per kWh.
    Energy is kept in tenths of a kWh and money in cents before conversion. -/
def OvenElectricity
    (hours rateTenthsKWh totalTenthsKWh priceCents costCents costDollars : Nat) : Prop :=
  hours = 25 ∧ rateTenthsKWh = 24 ∧ totalTenthsKWh = hours * rateTenthsKWh ∧
  priceCents = 10 ∧ 10 * costCents = priceCents * totalTenthsKWh ∧
  100 * costDollars = costCents

def PieRevenue (pies slicesPerPie slices pricePerSlice revenue : Nat) : Prop :=
  pies = 6 ∧ slicesPerPie = 10 ∧ slices = pies * slicesPerPie ∧
  pricePerSlice = 3 ∧ revenue = slices * pricePerSlice

def VegetableSale (carrots zucchini broccoli total sold : Nat) : Prop :=
  carrots = 15 ∧ zucchini = 13 ∧ broccoli = 8 ∧
  total = carrots + zucchini + broccoli ∧ 2 * sold = total

/-- One trip means one simultaneous trip by Elysse and her brother. -/
def GroceryTrips (people bagsPerPerson bagsPerTrip totalBags trips : Nat) : Prop :=
  people = 2 ∧ bagsPerPerson = 3 ∧ bagsPerTrip = people * bagsPerPerson ∧
  totalBags = 30 ∧ bagsPerTrip * trips = totalBags

def FruitRemaining
    (pears oranges appleMultiplier apples total giveEach fruitKinds given remaining : Nat) : Prop :=
  pears = 10 ∧ oranges = 20 ∧ appleMultiplier = 2 ∧
  apples = appleMultiplier * pears ∧ total = pears + oranges + apples ∧
  giveEach = 2 ∧ fruitKinds = 3 ∧ given = giveEach * fruitKinds ∧
  remaining + given = total

end LemmaWeave.Problems.GSM8K.Daily0918B
