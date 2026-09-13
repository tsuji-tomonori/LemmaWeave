namespace LemmaWeave.Problems.GSM8K.Daily0913C

def IceCreamCost
    (berryCups packageCups strawberryPackages raspberryPackages
     strawberryPackageCost raspberryPackageCost strawberryCost raspberryCost
     quarts creamPerQuart creamCups creamContainerCups creamContainers
     creamContainerCost creamCost totalCost : ℕ) : Prop :=
  berryCups = 4 ∧ packageCups = 2 ∧
  strawberryPackages * packageCups = berryCups ∧
  raspberryPackages * packageCups = berryCups ∧
  strawberryPackageCost = 3 ∧ raspberryPackageCost = 5 ∧
  strawberryCost = strawberryPackages * strawberryPackageCost ∧
  raspberryCost = raspberryPackages * raspberryPackageCost ∧
  quarts = 2 ∧ creamPerQuart = 2 ∧ creamCups = quarts * creamPerQuart ∧
  creamContainerCups = 4 ∧ creamContainers * creamContainerCups = creamCups ∧
  creamContainerCost = 4 ∧ creamCost = creamContainers * creamContainerCost ∧
  totalCost = strawberryCost + raspberryCost + creamCost

def GiftSale
    (mitts apron utensils knife kit discountPercent salePrice nieces total : ℕ) : Prop :=
  mitts = 14 ∧ apron = 16 ∧ utensils = 10 ∧ knife = 2 * utensils ∧
  kit = mitts + apron + utensils + knife ∧ discountPercent = 25 ∧
  100 * salePrice = (100 - discountPercent) * kit ∧
  nieces = 3 ∧ total = nieces * salePrice

def CakeSharing
    (cakes slicesPerCake total friendShare afterFriends familyShare eaten left : ℕ) : Prop :=
  cakes = 2 ∧ slicesPerCake = 8 ∧ total = cakes * slicesPerCake ∧
  4 * friendShare = total ∧ afterFriends + friendShare = total ∧
  3 * familyShare = afterFriends ∧ eaten = 3 ∧
  familyShare + eaten + left = afterFriends

def DrinkGathering
    (wine soda both wineOnly sodaOnly atLeastOne neither total : ℕ) : Prop :=
  wine = 26 ∧ soda = 22 ∧ both = 17 ∧
  wineOnly + both = wine ∧ sodaOnly + both = soda ∧
  atLeastOne = wineOnly + sodaOnly + both ∧ total = atLeastOne + neither

def FuelConsumption
    (supermarketOneWay supermarketRound abortedOneWay abortedRound farmDistance
     totalDistance initialGallons remainingGallons usedGallons milesPerGallon : ℕ) : Prop :=
  supermarketOneWay = 5 ∧ supermarketRound = 2 * supermarketOneWay ∧
  abortedOneWay = 2 ∧ abortedRound = 2 * abortedOneWay ∧ farmDistance = 6 ∧
  totalDistance = supermarketRound + abortedRound + farmDistance ∧
  initialGallons = 12 ∧ remainingGallons = 2 ∧
  usedGallons + remainingGallons = initialGallons ∧
  usedGallons * milesPerGallon = totalDistance

def PregnantCows (total female pregnant : ℕ) : Prop :=
  total = 44 ∧ 2 * female = total ∧ 2 * pregnant = female

def RopePurchase
    (stories feetPerStory required pieceLength loss usablePerPiece pieces usableTotal : ℕ) : Prop :=
  stories = 6 ∧ feetPerStory = 10 ∧ required = stories * feetPerStory ∧
  pieceLength = 20 ∧ 4 * loss = pieceLength ∧ usablePerPiece + loss = pieceLength ∧
  usableTotal = pieces * usablePerPiece ∧ usableTotal = required

def DustSweep (afterWalk added afterSweep original : ℕ) : Prop :=
  afterWalk = 331 ∧ added = 223 ∧ afterSweep + added = afterWalk ∧
  original = 10 * afterSweep

def SoccerTime (game first second played sideline : ℕ) : Prop :=
  game = 90 ∧ first = 20 ∧ second = 35 ∧ played = first + second ∧
  sideline + played = game

def TelevisionCost
    (watts hoursPerDay dailyWh days weeklyWh whPerKWh centsPerKWh weeklyCost : ℕ) : Prop :=
  watts = 125 ∧ hoursPerDay = 4 ∧ dailyWh = watts * hoursPerDay ∧
  days = 7 ∧ weeklyWh = dailyWh * days ∧ whPerKWh = 1000 ∧
  centsPerKWh = 14 ∧ whPerKWh * weeklyCost = weeklyWh * centsPerKWh

end LemmaWeave.Problems.GSM8K.Daily0913C
