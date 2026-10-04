namespace LemmaWeave.Problems.GSM8K.Sprint0920A16

def ClassFund
    (raised students contribution studentTotal fund costPerStudent tripCost left : Nat) : Prop :=
  studentTotal = students * contribution ∧ fund = raised + studentTotal ∧
  tripCost = students * costPerStudent ∧ fund = tripCost + left

def HeatingPad (price usesPerWeek weeks uses costPerUse : Nat) : Prop :=
  uses = usesPerWeek * weeks ∧ price = costPerUse * uses

def PlantSales
    (orchids orchidPrice orchidRevenue moneyPlants moneyPrice moneyRevenue earnings
      workers workerPay workerTotal pots expenses left : Nat) : Prop :=
  orchidRevenue = orchids * orchidPrice ∧ moneyRevenue = moneyPlants * moneyPrice ∧
  earnings = orchidRevenue + moneyRevenue ∧ workerTotal = workers * workerPay ∧
  expenses = workerTotal + pots ∧ earnings = expenses + left

def ThreePeopleMoney
    (patricia multiple jethro factor carmenShort carmen total : Nat) : Prop :=
  patricia = multiple * jethro ∧ factor * jethro = carmen + carmenShort ∧
  total = patricia + jethro + carmen

def GolfEntry
    (electricity phoneExtra phone percent extra entry : Nat) : Prop :=
  phone = electricity + phoneExtra ∧ extra * 100 = phone * percent ∧ entry = phone + extra

/-- Only the first worker's rate is supplied by the source; the second rate remains explicit. -/
def RenovationCost
    (workers hoursPerDay days firstRate secondRate firstCost secondCost total : Nat) : Prop :=
  workers = 2 ∧ firstCost = hoursPerDay * days * firstRate ∧
  secondCost = hoursPerDay * days * secondRate ∧ total = firstCost + secondCost

def DiscountShirts (friends price percent salePrice total : Nat) : Prop :=
  salePrice * 100 = price * percent ∧ total = friends * salePrice

def ParentAge (childAge dadFactor dadAge momYounger momAge momAtBirth : Nat) : Prop :=
  dadAge = dadFactor * childAge ∧ dadAge = momAge + momYounger ∧
  momAge = momAtBirth + childAge

def WalkingDistance (hiro rajesh factor less together : Nat) : Prop :=
  factor * hiro = rajesh + less ∧ together = hiro + rajesh

def MuffinGoal (goal morning afternoon sold left : Nat) : Prop :=
  sold = morning + afternoon ∧ goal = sold + left

def Alligators
    (adultPercent adultFemales femaleTotal maleTotal total : Nat) : Prop :=
  adultFemales * 100 = femaleTotal * adultPercent ∧ total = femaleTotal + maleTotal ∧
  femaleTotal = maleTotal

def SoupService
    (ouncesPerBowl bowlsPerMinute ouncesPerMinute gallons ouncesPerGallon ounces
      roundedMinutes lowerRemainder upperRemainder : Nat) : Prop :=
  ouncesPerMinute = ouncesPerBowl * bowlsPerMinute ∧ ounces = gallons * ouncesPerGallon ∧
  ounces = roundedMinutes * ouncesPerMinute + lowerRemainder ∧
  (roundedMinutes + 1) * ouncesPerMinute = ounces + upperRemainder ∧
  lowerRemainder < upperRemainder

def Woodblocks
    (needed initialLogs blocksPerLog initialBlocks missingBlocks moreLogs : Nat) : Prop :=
  initialBlocks = initialLogs * blocksPerLog ∧ needed = initialBlocks + missingBlocks ∧
  missingBlocks = moreLogs * blocksPerLog

def Commission
    (sale1 sale2 sale3 sales percent commission : Nat) : Prop :=
  sales = sale1 + sale2 + sale3 ∧ commission * 100 = sales * percent

def Jerseys
    (longCount longPrice longCost total stripedPrice stripedCost stripedCount : Nat) : Prop :=
  longCost = longCount * longPrice ∧ total = longCost + stripedCost ∧
  stripedCost = stripedCount * stripedPrice

end LemmaWeave.Problems.GSM8K.Sprint0920A16
