namespace LemmaWeave.Problems.GSM8K.Sprint0920A08

def BitcoinSequence
    (initial firstDonation afterFirst halfDivisor retained tripled secondDonation remaining : Nat) : Prop :=
  afterFirst + firstDonation = initial ∧ retained * halfDivisor = afterFirst ∧
  tripled = 3 * retained ∧ remaining + secondDonation = tripled

def JoggingTime
    (hoursPart minutesPart minutesPerHour dailyMinutes days totalMinutes totalHours : Nat) : Prop :=
  dailyMinutes = hoursPart * minutesPerHour + minutesPart ∧
  totalMinutes = dailyMinutes * days ∧ totalMinutes = totalHours * minutesPerHour

/-- “At least once” determines a minimum, not a unique expenditure. -/
def TheaterAtLeast
    (weeks hoursPerShow hourly visitCost minimum visitsA spentA visitsB spentB : Nat) : Prop :=
  visitCost = hoursPerShow * hourly ∧ minimum = weeks * visitCost ∧
  (∀ visits : Nat, weeks ≤ visits → minimum ≤ visits * visitCost) ∧
  weeks ≤ visitsA ∧ spentA = visitsA * visitCost ∧
  weeks ≤ visitsB ∧ spentB = visitsB * visitCost ∧ spentA ≠ spentB

def BicycleSpokes (front multiplier back total : Nat) : Prop :=
  back = multiplier * front ∧ total = front + back

def ProjectHardware
    (boltBoxes boltsPerBox boltsBought boltsLeft boltsUsed nutBoxes nutsPerBox
      nutsBought nutsLeft nutsUsed totalUsed : Nat) : Prop :=
  boltsBought = boltBoxes * boltsPerBox ∧ boltsBought = boltsUsed + boltsLeft ∧
  nutsBought = nutBoxes * nutsPerBox ∧ nutsBought = nutsUsed + nutsLeft ∧
  totalUsed = boltsUsed + nutsUsed

def VampireGrowth
    (initial turnsEach newFirst afterFirst newSecond afterSecond : Nat) : Prop :=
  newFirst = turnsEach * initial ∧ afterFirst = initial + newFirst ∧
  newSecond = turnsEach * afterFirst ∧ afterSecond = afterFirst + newSecond

def HandmadeShoes
    (mold hourly hours labor percent discounted total : Nat) : Prop :=
  labor = hourly * hours ∧ discounted * 100 = labor * percent ∧
  total = mold + discounted

def Supermarket
    (initial firstBottles multiplier addedBottles totalBottles bottlePrice waterCost
      poundPrice cheeseCost spent remaining : Nat) : Prop :=
  addedBottles = multiplier * firstBottles ∧
  totalBottles = firstBottles + addedBottles ∧
  waterCost = totalBottles * bottlePrice ∧ cheeseCost * 2 = poundPrice ∧
  spent = waterCost + cheeseCost ∧ initial = spent + remaining

/-- Both common readings of the nonstandard phrase “2 times older” are retained. -/
def AgePhraseAmbiguous
    (tyson multiplier youngerBy olderBy ratioFrederick ratioJulian ratioKyle
      additiveFrederick additiveJulian additiveKyle : Nat) : Prop :=
  ratioFrederick = multiplier * tyson ∧ ratioJulian + youngerBy = ratioFrederick ∧
  ratioKyle = ratioJulian + olderBy ∧
  additiveFrederick = tyson + multiplier * tyson ∧
  additiveJulian + youngerBy = additiveFrederick ∧
  additiveKyle = additiveJulian + olderBy ∧ ratioKyle ≠ additiveKyle

/-- The stated animals total 54; unmentioned pets make the literal total non-unique. -/
def PetCountAmbiguous
    (teddyDogs teddyCats teddyTotal benExtraDogs benDogs daveExtraCats daveCats
      daveFewerDogs daveDogs daveTotal namedTotal benOtherA totalA benOtherB totalB : Nat) : Prop :=
  teddyTotal = teddyDogs + teddyCats ∧ benDogs = teddyDogs + benExtraDogs ∧
  daveCats = teddyCats + daveExtraCats ∧ daveDogs + daveFewerDogs = teddyDogs ∧
  daveTotal = daveCats + daveDogs ∧ namedTotal = teddyTotal + benDogs + daveTotal ∧
  totalA = namedTotal + benOtherA ∧ totalB = namedTotal + benOtherB ∧ totalA ≠ totalB

def IPhoneWork
    (price trade net weekly weeks previousWeeks : Nat) : Prop :=
  price = trade + net ∧ net = weekly * weeks ∧ previousWeeks * weekly < net ∧
  previousWeeks + 1 = weeks

def JavelinThrows (first second third total : Nat) : Prop :=
  first = 2 * second ∧ third = 2 * first ∧ total = first + second + third

def SiblingAgeGap
    (katieDaughter daughterYounger laviniaDaughter sonMultiplier laviniaSon gap : Nat) : Prop :=
  laviniaDaughter + daughterYounger = katieDaughter ∧
  laviniaSon = sonMultiplier * katieDaughter ∧
  laviniaSon = laviniaDaughter + gap

def PartsDiscount (count each original paid discount : Nat) : Prop :=
  original = count * each ∧ original = paid + discount

def JewelryBeads
    (mondayNecklaces tuesdayNecklaces necklaces beadsPerNecklace necklaceBeads
      bracelets beadsPerBracelet braceletBeads earrings beadsPerEarring earringBeads total : Nat) : Prop :=
  necklaces = mondayNecklaces + tuesdayNecklaces ∧
  necklaceBeads = necklaces * beadsPerNecklace ∧
  braceletBeads = bracelets * beadsPerBracelet ∧
  earringBeads = earrings * beadsPerEarring ∧
  total = necklaceBeads + braceletBeads + earringBeads

end LemmaWeave.Problems.GSM8K.Sprint0920A08
