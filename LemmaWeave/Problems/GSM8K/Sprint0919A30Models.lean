import Mathlib.Data.Rat.Defs

namespace LemmaWeave.Problems.GSM8K.Sprint0919A30

def JogDistance
    (dogRate soloRate minutesEach dogDistance soloDistance total : ℚ) : Prop :=
  dogRate = 6 ∧ soloRate = 4 ∧ minutesEach = 30 ∧
  dogDistance = dogRate * minutesEach / 60 ∧
  soloDistance = soloRate * minutesEach / 60 ∧ total = dogDistance + soloDistance

def BookLoss
    (monthlyCount unitPrice monthlyCost months yearlyCost resale loss : Nat) : Prop :=
  monthlyCount = 3 ∧ unitPrice = 20 ∧ monthlyCost = monthlyCount * unitPrice ∧
  months = 12 ∧ yearlyCost = monthlyCost * months ∧ resale = 500 ∧ yearlyCost = resale + loss

def ClothingRevenue
    (shirts shirtPrice shirtRevenue jeans jeanMultiplier jeanPrice jeanRevenue total : Nat) : Prop :=
  shirts = 20 ∧ shirtPrice = 10 ∧ shirtRevenue = shirts * shirtPrice ∧
  jeans = 10 ∧ jeanMultiplier = 2 ∧ jeanPrice = jeanMultiplier * shirtPrice ∧
  jeanRevenue = jeans * jeanPrice ∧ total = shirtRevenue + jeanRevenue

def TarantulaLegs (five oneLess sacs babiesPerSac babies legsEach totalLegs : Nat) : Prop :=
  five = 5 ∧ oneLess + 1 = five ∧ sacs = oneLess ∧
  babiesPerSac = 1000 ∧ babies = sacs * babiesPerSac ∧
  legsEach = 8 ∧ totalLegs = babies * legsEach

/-- Conditional model: “Paul” is corrected to “John”. -/
def SeashellCorrected
    (henry john subtotal initial leo divisor given remaining : Nat) : Prop :=
  henry = 11 ∧ john = 24 ∧ subtotal = henry + john ∧ initial = 59 ∧
  initial = subtotal + leo ∧ divisor = 4 ∧ given * divisor = leo ∧ initial = given + remaining

def AppleRevenue
    (sweetPct sourPct sweetCents sourCents averageCents revenueCents apples : Nat) : Prop :=
  sweetPct = 75 ∧ sourPct = 100 - sweetPct ∧ sweetCents = 50 ∧ sourCents = 10 ∧
  averageCents * 100 = sweetPct * sweetCents + sourPct * sourCents ∧
  revenueCents = 4000 ∧ revenueCents = apples * averageCents

def BoatSpeed (miles minutes minutesPerHour speed : Nat) : Prop :=
  miles = 5 ∧ minutes = 10 ∧ minutesPerHour = 60 ∧ speed * minutes = miles * minutesPerHour

/-- Conditional model: the stated 25% tip is included, but no unspecified tax is added. -/
def DelhiMeal
    (samosas samosaEach samosaCost pakoras pakoraEach pakoraCost lassi food
      tipPct tip preTaxTotal : Nat) : Prop :=
  samosas = 3 ∧ samosaEach = 2 ∧ samosaCost = samosas * samosaEach ∧
  pakoras = 4 ∧ pakoraEach = 3 ∧ pakoraCost = pakoras * pakoraEach ∧
  lassi = 2 ∧ food = samosaCost + pakoraCost + lassi ∧ tipPct = 25 ∧
  tip * 100 = food * tipPct ∧ preTaxTotal = food + tip

def Crayons (owned bought totalPacks centsPerPack totalCents : Nat) : Prop :=
  owned = 4 ∧ bought = 2 ∧ totalPacks = owned + bought ∧
  centsPerPack = 250 ∧ totalCents = totalPacks * centsPerPack

def Fence
    (initial ben afterBen billyDivisor billy afterBilly johnnyDivisor johnny remaining : Nat) : Prop :=
  initial = 100 ∧ ben = 10 ∧ initial = ben + afterBen ∧
  billyDivisor = 5 ∧ billy * billyDivisor = afterBen ∧ afterBen = billy + afterBilly ∧
  johnnyDivisor = 3 ∧ johnny * johnnyDivisor = afterBilly ∧ afterBilly = johnny + remaining

def Vampire
    (weeklyGallons days dailyGallons pintsPerGallon pintsPerPerson peoplePerDay : Nat) : Prop :=
  weeklyGallons = 7 ∧ days = 7 ∧ weeklyGallons = days * dailyGallons ∧
  pintsPerGallon = 8 ∧ pintsPerPerson = 2 ∧
  dailyGallons * pintsPerGallon = peoplePerDay * pintsPerPerson

def Pretzels (barry shellyDivisor shelly angieMultiplier angie : Nat) : Prop :=
  barry = 12 ∧ shellyDivisor = 2 ∧ shelly * shellyDivisor = barry ∧
  angieMultiplier = 3 ∧ angie = angieMultiplier * shelly

def CurrentAge (futureYears futureAngelina currentAngelina gap justin : Nat) : Prop :=
  futureYears = 5 ∧ futureAngelina = 40 ∧
  futureAngelina = currentAngelina + futureYears ∧ gap = 4 ∧ currentAngelina = justin + gap

def Grass (dailyBefore increasePct dailyAfter days weekly : Nat) : Prop :=
  dailyBefore = 8 ∧ increasePct = 50 ∧
  dailyAfter * 100 = dailyBefore * (100 + increasePct) ∧
  days = 7 ∧ weekly = dailyAfter * days

def JetFuel
    (basePerMile passengers crew people bagsEach bags personExtra bagExtra
      peopleFuel bagsFuel perMile miles total : Nat) : Prop :=
  basePerMile = 20 ∧ passengers = 30 ∧ crew = 5 ∧ people = passengers + crew ∧
  bagsEach = 2 ∧ bags = people * bagsEach ∧ personExtra = 3 ∧ bagExtra = 2 ∧
  peopleFuel = people * personExtra ∧ bagsFuel = bags * bagExtra ∧
  perMile = basePerMile + peopleFuel + bagsFuel ∧ miles = 400 ∧ total = perMile * miles

end LemmaWeave.Problems.GSM8K.Sprint0919A30
