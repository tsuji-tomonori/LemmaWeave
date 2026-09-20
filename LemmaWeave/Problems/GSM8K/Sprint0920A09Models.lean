namespace LemmaWeave.Problems.GSM8K.Sprint0920A09

def PennsylvaniaQuarters
    (total stateNumerator stateDenominator state pennsylvania : Nat) : Prop :=
  state * stateDenominator = total * stateNumerator ∧ pennsylvania * 2 = state

def HousePaint
    (living bedrooms bedroomArea bedroomTotal totalArea coverage gallons : Nat) : Prop :=
  bedroomTotal = bedrooms * bedroomArea ∧ totalArea = living + bedroomTotal ∧
  totalArea = gallons * coverage

def ContestPoints
    (easyCorrect easyPoints easyTotal averageCorrect averagePoints averageTotal
      hardCorrect hardPoints hardTotal total : Nat) : Prop :=
  easyTotal = easyCorrect * easyPoints ∧ averageTotal = averageCorrect * averagePoints ∧
  hardTotal = hardCorrect * hardPoints ∧ total = easyTotal + averageTotal + hardTotal

def ScreenHeight (side perimeter difference height : Nat) : Prop :=
  perimeter = 4 * side ∧ height = perimeter + difference

def JoinedRope
    (rope8 rope20 shortCount shortLength rope7 pieces total knots lossTenthsEach
      totalLossTenths finalTenths : Nat) : Prop :=
  pieces = 1 + 1 + shortCount + 1 ∧
  total = rope8 + rope20 + shortCount * shortLength + rope7 ∧
  knots + 1 = pieces ∧ totalLossTenths = knots * lossTenthsEach ∧
  finalTenths + totalLossTenths = total * 10

def RockingChairs (hoursPerDay days totalHours hoursPerChair chairs : Nat) : Prop :=
  totalHours = hoursPerDay * days ∧ totalHours = chairs * hoursPerChair

def SquirrelNuts
    (busyCount busyEach busyTotal sleepy daily days total : Nat) : Prop :=
  busyTotal = busyCount * busyEach ∧ daily = busyTotal + sleepy ∧ total = daily * days

/-- The referent of “Sandi's total” is retained under both readings. -/
def MarketSpendingAmbiguous
    (sandiInitial sandiSpent divisor extra multiplier gillianSpentReading
      gillianInitialReading : Nat) : Prop :=
  sandiSpent * divisor = sandiInitial ∧
  gillianSpentReading = multiplier * sandiSpent + extra ∧
  gillianInitialReading = multiplier * sandiInitial + extra ∧
  gillianSpentReading ≠ gillianInitialReading

/-- Literal equality over-allocates the 300 straws; 6 follows only after replacing it by “the rest”. -/
def StrawWordingConflict
    (total adult literalPiglets literalRequired rest piglets each : Nat) : Prop :=
  adult * 5 = total * 3 ∧ literalPiglets = adult ∧
  literalRequired = adult + literalPiglets ∧ total < literalRequired ∧
  adult + rest = total ∧ rest = piglets * each

def LendingCollection
    (friendDaily brotherDaily cousinDaily days friendTotal brotherTotal cousinTotal total : Nat) : Prop :=
  friendTotal = friendDaily * days ∧ brotherTotal = brotherDaily * days ∧
  cousinTotal = cousinDaily * days ∧ total = friendTotal + brotherTotal + cousinTotal

def KeyLimes
    (tablespoonsPerCup recipeTablespoons doubledTablespoons tablespoonsPerLime limes : Nat) : Prop :=
  recipeTablespoons * 4 = tablespoonsPerCup ∧
  doubledTablespoons = 2 * recipeTablespoons ∧
  doubledTablespoons = limes * tablespoonsPerLime

def SodaCans
    (hours halfHoursPerHour periods cansPerPeriod total : Nat) : Prop :=
  periods = hours * halfHoursPerHour ∧ total = periods * cansPerPeriod

def BusPassengers
    (first secondOff secondOn afterSecond thirdOff thirdOn afterThird : Nat) : Prop :=
  first + secondOn = afterSecond + secondOff ∧
  afterSecond + thirdOn = afterThird + thirdOff

def PaperPallets
    (total towels tissues plates cups : Nat) : Prop :=
  towels * 2 = total ∧ tissues * 4 = total ∧ plates * 5 = total ∧
  total = towels + tissues + plates + cups

def Telethon
    (firstHours baseRate firstTotal percent increase increasedRate remainingHours
      remainingTotal total : Nat) : Prop :=
  firstTotal = firstHours * baseRate ∧ increase * 100 = baseRate * percent ∧
  increasedRate = baseRate + increase ∧ remainingTotal = remainingHours * increasedRate ∧
  total = firstTotal + remainingTotal

end LemmaWeave.Problems.GSM8K.Sprint0920A09
