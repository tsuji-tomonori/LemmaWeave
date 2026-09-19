namespace LemmaWeave.Problems.GSM8K.Sprint0919A25

def PiggyPennies
    (compartments initialEach addedEach finalEach total : Nat) : Prop :=
  compartments = 12 ∧ initialEach = 2 ∧ addedEach = 6 ∧
  finalEach = initialEach + addedEach ∧ total = compartments * finalEach

def BatteryBudget
    (chargeCents charges spent budgetCents leftCents : Nat) : Prop :=
  chargeCents = 350 ∧ charges = 4 ∧ spent = chargeCents * charges ∧
  budgetCents = 2000 ∧ leftCents + spent = budgetCents

def BooksWritten (zig factor flo total : Nat) : Prop :=
  zig = 60 ∧ factor = 4 ∧ zig = factor * flo ∧ total = zig + flo

def TrainDeparture
    (walk trainHours trainExtra trainMinutes travel deadline departure : Nat) : Prop :=
  walk = 10 ∧ trainHours = 1 ∧ trainExtra = 20 ∧
  trainMinutes = trainHours * 60 + trainExtra ∧ travel = walk + trainMinutes ∧
  deadline = 9 * 60 ∧ departure + travel = deadline

/-- Numerical face-value comparison. The two net prices retain different currencies. -/
def ComputerFaceValue
    (firstList firstPercent firstDiscount firstNet secondList secondPercent
      secondDiscount secondNet faceDifference : Nat) : Prop :=
  firstList = 950 ∧ firstPercent = 6 ∧
  firstDiscount * 100 = firstList * firstPercent ∧
  firstNet + firstDiscount = firstList ∧ secondList = 920 ∧
  secondPercent = 5 ∧ secondDiscount * 100 = secondList * secondPercent ∧
  secondNet + secondDiscount = secondList ∧
  faceDifference + secondNet = firstNet

def GranolaProfit
    (costEach bags cost fullSold fullPrice fullRevenue markedSold markedPrice
      markedRevenue revenue profit : Nat) : Prop :=
  costEach = 3 ∧ bags = 20 ∧ cost = costEach * bags ∧ fullSold = 15 ∧
  fullPrice = 6 ∧ fullRevenue = fullSold * fullPrice ∧ markedSold = 5 ∧
  markedPrice = 4 ∧ markedRevenue = markedSold * markedPrice ∧
  revenue = fullRevenue + markedRevenue ∧ profit + cost = revenue

def AntCount (abe bethExtra beth cece duke total : Nat) : Prop :=
  abe = 4 ∧ bethExtra * 100 = abe * 50 ∧ beth = abe + bethExtra ∧
  cece = 2 * abe ∧ 2 * duke = abe ∧ total = abe + beth + cece + duke

def NutsLeft (total numerator denominator eaten left : Nat) : Prop :=
  total = 30 ∧ numerator = 5 ∧ denominator = 6 ∧
  eaten * denominator = total * numerator ∧ left + eaten = total

def FamilyBooks (harry floraFactor flora gary total : Nat) : Prop :=
  harry = 50 ∧ floraFactor = 2 ∧ flora = floraFactor * harry ∧
  2 * gary = harry ∧ total = harry + flora + gary

def Flowerbed (width doubled length perimeter : Nat) : Prop :=
  width = 4 ∧ doubled = 2 * width ∧ length + 1 = doubled ∧
  perimeter = 2 * (width + length)

def FishLifeHalfYears
    (hamsterHalfYears dogFactor dogHalfYears extraHalfYears fishHalfYears : Nat) : Prop :=
  hamsterHalfYears = 5 ∧ dogFactor = 4 ∧
  dogHalfYears = dogFactor * hamsterHalfYears ∧ extraHalfYears = 4 ∧
  fishHalfYears = dogHalfYears + extraHalfYears

/-- “3 apples” is the number sent with each child for the named teachers collectively. -/
def ApplesLeft
    (picked children perChild schoolApples pies perPie pieApples used left : Nat) : Prop :=
  picked = 50 ∧ children = 2 ∧ perChild = 3 ∧
  schoolApples = children * perChild ∧ pies = 2 ∧ perPie = 10 ∧
  pieApples = pies * perPie ∧ used = schoolApples + pieApples ∧
  left + used = picked

/-- Reference-answer convention: “five times more” is read as “five times as much”. -/
def JacksonMultiplier (williams factor jackson total : Nat) : Prop :=
  factor = 5 ∧ jackson = factor * williams ∧ total = williams + jackson ∧
  total = 150

def DogPark (spotted total pointy : Nat) : Prop :=
  spotted = 15 ∧ total = 2 * spotted ∧ 5 * pointy = total

/-- An explicit axis-aligned orientation certifies an exact packing, not merely a volume ratio. -/
def BoxPacking
    (boxH boxW boxL blockH blockW blockL alongH alongW alongL count
      boxVolume blockVolume : Nat) : Prop :=
  boxH = 8 ∧ boxW = 10 ∧ boxL = 12 ∧ blockH = 3 ∧ blockW = 2 ∧
  blockL = 4 ∧ boxH = alongH * blockL ∧ boxW = alongW * blockW ∧
  boxL = alongL * blockH ∧ count = alongH * alongW * alongL ∧
  boxVolume = boxH * boxW * boxL ∧ blockVolume = blockH * blockW * blockL ∧
  boxVolume = count * blockVolume

end LemmaWeave.Problems.GSM8K.Sprint0919A25
