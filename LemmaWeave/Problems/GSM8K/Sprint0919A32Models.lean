namespace LemmaWeave.Problems.GSM8K.Sprint0919A32

/-- All monetary amounts are represented in cents. -/
def DoughProfit
    (flourPounds bagPounds bags bagPrice flourCost saltPounds saltPrice saltCost
      promotion ticketPrice tickets revenue totalCost profit centsPerDollar
      profitDollars : Nat) : Prop :=
  flourPounds = 500 ∧ bagPounds = 50 ∧ flourPounds = bags * bagPounds ∧
  bagPrice = 2000 ∧ flourCost = bags * bagPrice ∧ saltPounds = 10 ∧
  saltPrice = 20 ∧ saltCost = saltPounds * saltPrice ∧ promotion = 100000 ∧
  ticketPrice = 2000 ∧ tickets = 500 ∧ revenue = ticketPrice * tickets ∧
  totalCost = promotion + flourCost + saltCost ∧ revenue = profit + totalCost ∧
  centsPerDollar = 100 ∧ profit = profitDollars * centsPerDollar

/-- Food costs are represented in cents. -/
def PartyFood
    (guests servingsPerBatch batches potatoesPerBatch potatoes potatoPrice potatoCost
      saltPerBatch saltTeaspoons teaspoonsPerContainer saltContainers containerPrice
      saltCost totalCost : Nat) : Prop :=
  guests = 30 ∧ servingsPerBatch = 2 ∧ guests = batches * servingsPerBatch ∧
  potatoesPerBatch = 4 ∧ potatoes = batches * potatoesPerBatch ∧ potatoPrice = 10 ∧
  potatoCost = potatoes * potatoPrice ∧ saltPerBatch = 1 ∧
  saltTeaspoons = batches * saltPerBatch ∧ teaspoonsPerContainer = 5 ∧
  saltTeaspoons = saltContainers * teaspoonsPerContainer ∧ containerPrice = 200 ∧
  saltCost = saltContainers * containerPrice ∧ totalCost = potatoCost + saltCost

def GroceryApples
    (budget hummusCount hummusPrice hummusCost chicken bacon vegetables fixedCost
      remaining applePrice apples : Nat) : Prop :=
  budget = 60 ∧ hummusCount = 2 ∧ hummusPrice = 5 ∧
  hummusCost = hummusCount * hummusPrice ∧ chicken = 20 ∧ bacon = 10 ∧
  vegetables = 10 ∧ fixedCost = hummusCost + chicken + bacon + vegetables ∧
  budget = remaining + fixedCost ∧ applePrice = 2 ∧ remaining = apples * applePrice

def PenGiving
    (boxes perBox total friendPercent friendGiven afterFriends classDivisor
      classGiven remaining : Nat) : Prop :=
  boxes = 20 ∧ perBox = 5 ∧ total = boxes * perBox ∧ friendPercent = 40 ∧
  friendGiven * 100 = total * friendPercent ∧ afterFriends + friendGiven = total ∧
  classDivisor = 4 ∧ classGiven * classDivisor = afterFriends ∧
  remaining + classGiven = afterFriends

def RibbonLeft (initial gifts perGift used remaining : Nat) : Prop :=
  initial = 18 ∧ gifts = 6 ∧ perGift = 2 ∧ used = gifts * perGift ∧
  remaining + used = initial

def LunchCalories
    (total numerator denominator eaten recommended extra : Nat) : Prop :=
  total = 40 ∧ numerator = 3 ∧ denominator = 4 ∧
  eaten * denominator = total * numerator ∧ recommended = 25 ∧
  eaten = extra + recommended

def PeachSorting
    (picked freshPercent fresh discarded remaining : Nat) : Prop :=
  picked = 250 ∧ freshPercent = 60 ∧ fresh * 100 = picked * freshPercent ∧
  discarded = 15 ∧ fresh = remaining + discarded

/-- Inclusion-exclusion is modeled explicitly; vegan and kosher sets may overlap. -/
def MealNeeds
    (clients vegan kosher both union neither : Nat) : Prop :=
  clients = 30 ∧ vegan = 7 ∧ kosher = 8 ∧ both = 3 ∧
  union + both = vegan + kosher ∧ neither + union = clients

def TubingRafting
    (kids tubingDivisor tubers raftingDivisor raftingAndTubing : Nat) : Prop :=
  kids = 40 ∧ tubingDivisor = 4 ∧ tubers * tubingDivisor = kids ∧
  raftingDivisor = 2 ∧ raftingAndTubing * raftingDivisor = tubers

def CommencementAddresses
    (sandoval hawkinsFactor hawkins sloanExtra sloan total : Nat) : Prop :=
  sandoval = 12 ∧ hawkinsFactor = 2 ∧ sandoval = hawkins * hawkinsFactor ∧
  sloanExtra = 10 ∧ sloan = sandoval + sloanExtra ∧
  total = sandoval + hawkins + sloan

def FryCooking
    (minutes secondsPerMinute totalSeconds cookedSeconds remainingSeconds : Nat) : Prop :=
  minutes = 5 ∧ secondsPerMinute = 60 ∧ totalSeconds = minutes * secondsPerMinute ∧
  cookedSeconds = 45 ∧ totalSeconds = remainingSeconds + cookedSeconds

def TelevisionTime
    (minutesPerDay daysPerWeek weeklyMinutes weeks totalMinutes minutesPerHour
      totalHours : Nat) : Prop :=
  minutesPerDay = 45 ∧ daysPerWeek = 4 ∧ weeklyMinutes = minutesPerDay * daysPerWeek ∧
  weeks = 2 ∧ totalMinutes = weeklyMinutes * weeks ∧ minutesPerHour = 60 ∧
  totalMinutes = totalHours * minutesPerHour

def SandwichBread
    (sandwiches slicesPerSandwich slicesNeeded slicesPerPack packs : Nat) : Prop :=
  sandwiches = 8 ∧ slicesPerSandwich = 2 ∧
  slicesNeeded = sandwiches * slicesPerSandwich ∧ slicesPerPack = 4 ∧
  slicesNeeded = packs * slicesPerPack

def ApplePicking
    (first secondMultiplier second thirdDivisor third total : Nat) : Prop :=
  first = 66 ∧ secondMultiplier = 2 ∧ second = first * secondMultiplier ∧
  thirdDivisor = 3 ∧ third * thirdDivisor = first ∧ total = first + second + third

def RemainingJourney
    (total amoliSpeed amoliHours amoliMiles anayetSpeed anayetHours anayetMiles
      traveled remaining : Nat) : Prop :=
  total = 369 ∧ amoliSpeed = 42 ∧ amoliHours = 3 ∧
  amoliMiles = amoliSpeed * amoliHours ∧ anayetSpeed = 61 ∧ anayetHours = 2 ∧
  anayetMiles = anayetSpeed * anayetHours ∧ traveled = amoliMiles + anayetMiles ∧
  total = remaining + traveled

end LemmaWeave.Problems.GSM8K.Sprint0919A32
