namespace LemmaWeave.Problems.GSM8K.Sprint0919A31

def CatchUp
    (bikeMph carMph leadMinutes catchMinutes : Nat) : Prop :=
  bikeMph = 20 ∧ carMph = 40 ∧ leadMinutes = 15 ∧
  carMph * catchMinutes = bikeMph * (catchMinutes + leadMinutes)

/-- Monetary values are represented in cents until the final dollar conversion. -/
def VegetableSales
    (customers lettuceHeads lettuceCents tomatoCount tomatoCents customerCents
      totalCents centsPerDollar totalDollars : Nat) : Prop :=
  customers = 500 ∧ lettuceHeads = 2 ∧ lettuceCents = 100 ∧
  tomatoCount = 4 ∧ tomatoCents = 50 ∧
  customerCents = lettuceHeads * lettuceCents + tomatoCount * tomatoCents ∧
  totalCents = customers * customerCents ∧ centsPerDollar = 100 ∧
  totalCents = totalDollars * centsPerDollar

def CousinShare
    (sandraParts amyParts ruthParts amyDollars unitDollars sandraDollars : Nat) : Prop :=
  sandraParts = 2 ∧ amyParts = 1 ∧ ruthParts = 3 ∧ amyDollars = 50 ∧
  amyDollars = amyParts * unitDollars ∧ sandraDollars = sandraParts * unitDollars

def RocketHeight
    (first multiplier second combined : Nat) : Prop :=
  first = 500 ∧ multiplier = 2 ∧ second = multiplier * first ∧
  combined = first + second

def JewelrySavings
    (saved earrings necklace spent left : Nat) : Prop :=
  saved = 80 ∧ earrings = 23 ∧ necklace = 48 ∧ spent = earrings + necklace ∧
  left + spent = saved

def EraserDifference
    (andrea multiplier anya difference : Nat) : Prop :=
  andrea = 4 ∧ multiplier = 4 ∧ anya = multiplier * andrea ∧
  difference + andrea = anya

def CrayonCost
    (halfDozens halfDozenSize crayons centsEach totalCents centsPerDollar
      totalDollars : Nat) : Prop :=
  halfDozens = 4 ∧ halfDozenSize = 6 ∧ crayons = halfDozens * halfDozenSize ∧
  centsEach = 200 ∧ totalCents = crayons * centsEach ∧ centsPerDollar = 100 ∧
  totalCents = totalDollars * centsPerDollar

def FridaySpeed
    (monday tuesdayPercent tuesdayExtra tuesday fridayPercent fridayExtra friday : Nat) : Prop :=
  monday = 10 ∧ tuesdayPercent = 50 ∧
  tuesdayExtra * 100 = monday * tuesdayPercent ∧ tuesday = monday + tuesdayExtra ∧
  fridayPercent = 60 ∧ fridayExtra * 100 = tuesday * fridayPercent ∧
  friday = tuesday + fridayExtra

def RectangleLength (width length area : Nat) : Prop :=
  0 < width ∧ length = 4 * width ∧ area = 100 ∧ area = length * width

def PotatoWeight
    (morning afternoon bags kgEach totalKg : Nat) : Prop :=
  morning = 29 ∧ afternoon = 17 ∧ bags = morning + afternoon ∧
  kgEach = 7 ∧ totalKg = bags * kgEach

/-- Prices are represented in cents. -/
def SundaeBill
    (alicia brant josh yvette subtotal tipPercent tip total : Nat) : Prop :=
  alicia = 750 ∧ brant = 1000 ∧ josh = 850 ∧ yvette = 900 ∧
  subtotal = alicia + brant + josh + yvette ∧ tipPercent = 20 ∧
  tip * 100 = subtotal * tipPercent ∧ total = subtotal + tip

def SwimRun
    (swimHours swimMph swimMiles timeDivisor runHours speedMultiplier runMph
      runMiles totalMiles : Nat) : Prop :=
  swimHours = 2 ∧ swimMph = 2 ∧ swimMiles = swimHours * swimMph ∧
  timeDivisor = 2 ∧ swimHours = timeDivisor * runHours ∧
  speedMultiplier = 4 ∧ runMph = speedMultiplier * swimMph ∧
  runMiles = runHours * runMph ∧ totalMiles = swimMiles + runMiles

def StampTrade
    (anna alison jeff divisor received beforeTrade given receivedBack final : Nat) : Prop :=
  anna = 37 ∧ alison = 28 ∧ jeff = 31 ∧ divisor = 2 ∧
  alison = divisor * received ∧ beforeTrade = anna + received ∧
  given = 2 ∧ receivedBack = 1 ∧ final + given = beforeTrade + receivedBack

def KibbleRemaining
    (bag maryMorning maryEvening frankAfternoon multiplier frankEvening maryTotal
      frankTotal fed remaining : Nat) : Prop :=
  bag = 12 ∧ maryMorning = 1 ∧ maryEvening = 1 ∧ frankAfternoon = 1 ∧
  multiplier = 2 ∧ frankEvening = multiplier * frankAfternoon ∧
  maryTotal = maryMorning + maryEvening ∧
  frankTotal = frankAfternoon + frankEvening ∧ fed = maryTotal + frankTotal ∧
  remaining + fed = bag

def BakeryChange
    (flour stand cost bills billValue billTotal coins paid change : Nat) : Prop :=
  flour = 5 ∧ stand = 28 ∧ cost = flour + stand ∧ bills = 2 ∧
  billValue = 20 ∧ billTotal = bills * billValue ∧ coins = 3 ∧
  paid = billTotal + coins ∧ change + cost = paid

end LemmaWeave.Problems.GSM8K.Sprint0919A31
