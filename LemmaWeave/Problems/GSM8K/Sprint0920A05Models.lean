namespace LemmaWeave.Problems.GSM8K.Sprint0920A05

def MarbleColors (white blue known total green : Nat) : Prop :=
  known = white + blue ∧ green + known = total

def TheaterParking
    (front literalExtra literalBack literalInitial literalArrivals
      multiplierBack multiplierInitial multiplierArrivals final : Nat) : Prop :=
  literalExtra = 2 * front ∧ literalBack = front + literalExtra ∧
  literalInitial = front + literalBack ∧ literalArrivals + literalInitial = final ∧
  multiplierBack = 2 * front ∧ multiplierInitial = front + multiplierBack ∧
  multiplierArrivals + multiplierInitial = final

def CoinFlips (flips heads tails excess : Nat) : Prop :=
  tails + heads = flips ∧ excess + heads = tails

def DogWalkers
    (walkers humanLegs otherDogs otherDogLegs accounted remaining dogLegs marielDogs total : Nat) : Prop :=
  humanLegs = walkers * 2 ∧ otherDogLegs = otherDogs * 4 ∧
  accounted = humanLegs + otherDogLegs ∧ remaining + accounted = total ∧
  marielDogs * dogLegs = remaining

def CapsizedAnimals
    (sheep sheepDrowned sheepSafe cows cowsDrowned cowsSafe dogs safe : Nat) : Prop :=
  sheepSafe + sheepDrowned = sheep ∧ cowsDrowned = 2 * sheepDrowned ∧
  cowsSafe + cowsDrowned = cows ∧ safe = sheepSafe + cowsSafe + dogs

def OmeletBreakfast
    (smallHalf olderHalf adultHalf seniorHalf bufferHalf totalHalf omelets eggs : Nat) : Prop :=
  smallHalf = 53 ∧ olderHalf = 2 * 35 ∧ adultHalf = 4 * 75 ∧
  seniorHalf = 3 * 37 ∧ bufferHalf = 2 * 25 ∧
  totalHalf = smallHalf + olderHalf + adultHalf + seniorHalf + bufferHalf ∧
  totalHalf = 2 * omelets ∧ eggs = 2 * omelets

def CampFood
    (dogMeal dogMeals dogDaily dogs dogTotal puppyMeal puppyMeals puppyDaily puppies puppyTotal total : Nat) : Prop :=
  dogDaily = dogMeal * dogMeals ∧ dogTotal = dogs * dogDaily ∧
  dogMeal = 2 * puppyMeal ∧ puppyMeals = 3 * dogMeals ∧
  puppyDaily = puppyMeal * puppyMeals ∧ puppyTotal = puppies * puppyDaily ∧
  total = dogTotal + puppyTotal

def PetRatio
    (dogParts catParts totalParts pets dogs given remaining : Nat) : Prop :=
  totalParts = dogParts + catParts ∧ dogs * totalParts = pets * dogParts ∧
  remaining + given = dogs

def Meatballs
    (pounds eighthsPerPound meatballs family perPerson : Nat) : Prop :=
  meatballs = pounds * eighthsPerPound ∧ perPerson * family = meatballs

def RandyMoney (initial lunch afterLunch iceCream remaining : Nat) : Prop :=
  afterLunch + lunch = initial ∧ iceCream * 4 = afterLunch ∧
  remaining + iceCream = afterLunch

def Ages (rahim futureAndy years currentAndy difference : Nat) : Prop :=
  futureAndy = 2 * rahim ∧ currentAndy + years = futureAndy ∧
  difference + rahim = currentAndy

def ActorShow (hourMinutes turnMinutes turns actorsPerTurn actors : Nat) : Prop :=
  turns * turnMinutes = hourMinutes ∧ actors = turns * actorsPerTurn

def RefrigeratorSavings
    (oldDaily newDaily days oldCost newCost savedCents : Nat) : Prop :=
  oldCost = oldDaily * days ∧ newCost = newDaily * days ∧
  savedCents + newCost = oldCost

def CornProfit
    (seed fertilizer labor cost profit revenue bags price : Nat) : Prop :=
  cost = seed + fertilizer + labor ∧ profit * 10 = cost ∧
  revenue = cost + profit ∧ price * bags = revenue

def MilkProduction
    (referenceCows referenceWeekly perCow cows weeks total : Nat) : Prop :=
  perCow * referenceCows = referenceWeekly ∧
  total = weeks * (perCow * cows)

end LemmaWeave.Problems.GSM8K.Sprint0920A05
