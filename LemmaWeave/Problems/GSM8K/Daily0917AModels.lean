namespace LemmaWeave.Problems.GSM8K.Daily0917A

def BasketballContest
    (layups freeThrows longShots layupPoints freeThrowPoints longShotPoints
      reggie brotherLongShots brother loss : Nat) : Prop :=
  layups = 3 ∧ freeThrows = 2 ∧ longShots = 1 ∧ layupPoints = 1 ∧
  freeThrowPoints = 2 ∧ longShotPoints = 3 ∧
  reggie = layups * layupPoints + freeThrows * freeThrowPoints + longShots * longShotPoints ∧
  brotherLongShots = 4 ∧ brother = brotherLongShots * longShotPoints ∧ reggie + loss = brother

def CandyClearance
    (priceCents discountPercent percentBase discountCents saleCents bags totalCents : Nat) : Prop :=
  priceCents = 600 ∧ discountPercent = 75 ∧ percentBase = 100 ∧
  percentBase * discountCents = priceCents * discountPercent ∧
  saleCents + discountCents = priceCents ∧ bags = 2 ∧ totalCents = bags * saleCents

def ClassroomBooks (children booksEach initial added total : Nat) : Prop :=
  children = 10 ∧ booksEach = 7 ∧ initial = children * booksEach ∧
  added = 8 ∧ total = initial + added

def ReadingBooks
    (megan divisor kelcie twiceKelcie extra greg total : Nat) : Prop :=
  megan = 32 ∧ divisor = 4 ∧ divisor * kelcie = megan ∧
  twiceKelcie = 2 * kelcie ∧ extra = 9 ∧ greg = twiceKelcie + extra ∧
  total = megan + kelcie + greg

def MarbleJars (jarA extra jarB multiplier jarC total : Nat) : Prop :=
  jarA = 28 ∧ extra = 12 ∧ jarB = jarA + extra ∧ multiplier = 2 ∧
  jarC = multiplier * jarB ∧ total = jarA + jarB + jarC

def SpiderLegs (legsPerSpider half count extra totalLegs : Nat) : Prop :=
  legsPerSpider = 8 ∧ 2 * half = legsPerSpider ∧ extra = 10 ∧
  count = half + extra ∧ totalLegs = count * legsPerSpider

def MilkRequirement
    (weeks daysPerWeek days totalGallons currentDaily requiredDaily moreDaily : Nat) : Prop :=
  weeks = 3 ∧ daysPerWeek = 7 ∧ days = weeks * daysPerWeek ∧ totalGallons = 105 ∧
  requiredDaily * days = totalGallons ∧ currentDaily = 3 ∧
  currentDaily + moreDaily = requiredDaily

def LightBulbs (box used afterUse divisor given left : Nat) : Prop :=
  box = 40 ∧ used = 16 ∧ afterUse + used = box ∧ divisor = 2 ∧
  divisor * given = afterUse ∧ left + given = afterUse

def EmilyMarbles
    (initial multiplier received newTotal divisor half returned extra left : Nat) : Prop :=
  initial = 6 ∧ multiplier = 2 ∧ received = multiplier * initial ∧
  newTotal = initial + received ∧ divisor = 2 ∧ divisor * half = newTotal ∧
  extra = 1 ∧ returned = half + extra ∧ left + returned = newTotal

def SharedShells (jillian savannah clayton total friends each : Nat) : Prop :=
  jillian = 29 ∧ savannah = 17 ∧ clayton = 8 ∧
  total = jillian + savannah + clayton ∧ friends = 2 ∧ friends * each = total

end LemmaWeave.Problems.GSM8K.Daily0917A
