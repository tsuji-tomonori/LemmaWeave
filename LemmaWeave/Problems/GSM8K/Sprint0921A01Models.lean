namespace LemmaWeave.Problems.GSM8K.Sprint0921A01

def JuiceBoxes (children daysPerWeek weekly weeks total : Nat) : Prop :=
  weekly = children * daysPerWeek ∧ total = weekly * weeks
def Earrings (pairs perPair bought given divisor multiplier alissa : Nat) : Prop :=
  bought = pairs * perPair ∧ bought = given * divisor ∧ alissa = given * multiplier
def CakeShare (cakes each total people paid : Nat) : Prop :=
  total = cakes * each ∧ total = paid * people
def Sandwiches (ruth brother firstCousin otherCousins eachOther consumed left prepared : Nat) : Prop :=
  consumed = ruth + brother + firstCousin + otherCousins * eachOther ∧ prepared = consumed + left
def SugarCake (layers cupcakesPerDozen cakeEquivalent cupcakeCount totalEquivalent sugarTotal sugarPerCupcake : Nat) : Prop :=
  cakeEquivalent = layers * cupcakesPerDozen ∧ totalEquivalent = cakeEquivalent + cupcakeCount ∧
  sugarTotal = totalEquivalent * sugarPerCupcake
def PetFood (geckos iguanas snakes geckoCost iguanaCost snakeCost geckoTotal iguanaTotal snakeTotal monthly months annual : Nat) : Prop :=
  geckoTotal = geckos * geckoCost ∧ iguanaTotal = iguanas * iguanaCost ∧
  snakeTotal = snakes * snakeCost ∧ monthly = geckoTotal + iguanaTotal + snakeTotal ∧ annual = monthly * months
def SquatGear (raw sleeveAdded wrapPercent wrapAdded wrapMore : Nat) : Prop :=
  wrapAdded * 100 = raw * wrapPercent ∧ wrapAdded = sleeveAdded + wrapMore
def Orchard (georgeOranges orangeDifference ameliaOranges ameliaApples appleExtra georgeApples oranges apples total : Nat) : Prop :=
  georgeOranges = ameliaOranges + orangeDifference ∧ georgeApples = ameliaApples + appleExtra ∧
  oranges = georgeOranges + ameliaOranges ∧ apples = georgeApples + ameliaApples ∧ total = oranges + apples
def AppleBoxes (perCrate crates delivered rotten remaining perBox boxes : Nat) : Prop :=
  delivered = perCrate * crates ∧ delivered = rotten + remaining ∧ remaining = boxes * perBox
def Basketball (twoPointValue twoPointCount twoPointTotal threePointValue threePointCount threePointTotal score : Nat) : Prop :=
  twoPointTotal = twoPointValue * twoPointCount ∧ threePointTotal = threePointValue * threePointCount ∧
  score = twoPointTotal + threePointTotal
def Coins (dimes dimeCents quarters addedQuarters totalQuarters quarterCents nickels nickelCents totalCents : Nat) : Prop :=
  totalQuarters = quarters + addedQuarters ∧
  totalCents = dimes * dimeCents + totalQuarters * quarterCents + nickels * nickelCents
def Eggs (weeks daysPerWeek days eggsPerDay total : Nat) : Prop :=
  days = weeks * daysPerWeek ∧ total = days * eggsPerDay
def SwimTimes (free backExtra back butterflyExtra butterfly breastExtra breast total : Nat) : Prop :=
  back = free + backExtra ∧ butterfly = back + butterflyExtra ∧ breast = butterfly + breastExtra ∧
  total = free + back + butterfly + breast
def ShirtButtons (firstCount firstButtons firstTotal secondCount secondButtons secondTotal total : Nat) : Prop :=
  firstTotal = firstCount * firstButtons ∧ secondTotal = secondCount * secondButtons ∧ total = firstTotal + secondTotal
def FishRemaining (west east north westNumerator westDenominator westCaught westRemain eastNumerator eastDenominator eastCaught eastRemain total : Nat) : Prop :=
  westCaught * westDenominator = west * westNumerator ∧ west = westCaught + westRemain ∧
  eastCaught * eastDenominator = east * eastNumerator ∧ east = eastCaught + eastRemain ∧
  total = westRemain + eastRemain + north

end LemmaWeave.Problems.GSM8K.Sprint0921A01
