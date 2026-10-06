namespace LemmaWeave.Problems.GSM8K.Sprint0921A05

def PhoneWeek (d1 d2 d3 d4 d5 total : Nat) : Prop :=
  d2 = d1 * 2 ∧ d3 = d2 * 2 ∧ d4 = d3 * 2 ∧ d5 = d4 * 2 ∧
  total = d1 + d2 + d3 + d4 + d5

def Brochures
    (single doubleSpreads doublePages spreadPages adBlocks ads adPages totalPages
     pagesPerBrochure brochures : Nat) : Prop :=
  doubleSpreads = single * 2 ∧ doublePages = doubleSpreads * 2 ∧
  spreadPages = single + doublePages ∧ spreadPages = adBlocks * 4 ∧
  ads = adBlocks * 4 ∧ ads = adPages * 4 ∧ totalPages = spreadPages + adPages ∧
  totalPages = pagesPerBrochure * brochures

def PenAge (alicePens claraPens penDifference aliceAge claraAge years claraFuture : Nat) : Prop :=
  claraPens * 5 = alicePens * 2 ∧ alicePens = claraPens + penDifference ∧
  claraAge = aliceAge + penDifference ∧ claraFuture = claraAge + years

def Running (oldDays extraDays days morning evening daily weekly : Nat) : Prop :=
  days = oldDays + extraDays ∧ daily = morning + evening ∧ weekly = days * daily

def Watch (found evanInitial available price needed : Nat) : Prop :=
  available = found + evanInitial ∧ price = available + needed

def Laundry
    (blouses blousePercent blouseHamper skirts skirtPercent skirtHamper
     slacks slackPercent slackHamper total : Nat) : Prop :=
  blouseHamper * 100 = blouses * blousePercent ∧
  skirtHamper * 100 = skirts * skirtPercent ∧
  slackHamper * 100 = slacks * slackPercent ∧
  total = blouseHamper + skirtHamper + slackHamper

def Kitchen
    (angelaPots angelaPlates angelaCutlery sharonPots sharonPlates sharonCutlery total : Nat) : Prop :=
  angelaPlates = 3 * angelaPots + 6 ∧ angelaPlates = angelaCutlery * 2 ∧
  angelaPots = sharonPots * 2 ∧ sharonPlates + 20 = 3 * angelaPlates ∧
  sharonCutlery = 2 * angelaCutlery ∧ total = sharonPots + sharonPlates + sharonCutlery

def ReferenceBridge (typeA typeB total other : Nat) : Prop :=
  typeA = 40 ∧ typeB * 2 = typeA ∧ total = typeA + typeB + other

def GeneralBridge (typeA typeB total other : Nat) : Prop :=
  40 ≤ typeA ∧ typeB * 2 = typeA ∧ total = typeA + typeB + other

def Attic (useful total junk : Nat) : Prop :=
  useful * 100 = total * 20 ∧ junk * 100 = total * 70

def Mushrooms (gilled spotted total : Nat) : Prop :=
  spotted = gilled * 9 ∧ total = gilled + spotted

def Bells (first second third total : Nat) : Prop :=
  second = first * 2 ∧ third = second * 4 ∧ total = first + second + third

def Courier
    (daily weeklyMax maxDays maxPackages otherTwo oneSeventh lastTwo delivered couldAdd : Nat) : Prop :=
  weeklyMax = daily * 7 ∧ maxPackages = daily * maxDays ∧ oneSeventh * 7 = daily ∧
  lastTwo * 5 = daily * 4 ∧ delivered = maxPackages + otherTwo + oneSeventh + lastTwo ∧
  weeklyMax = delivered + couldAdd

def TiresHalfDollars (tires repairHalf taxHalf perTireHalf totalHalf totalDollars : Nat) : Prop :=
  perTireHalf = repairHalf + taxHalf ∧ totalHalf = tires * perTireHalf ∧
  totalHalf = totalDollars * 2

def Factory (initial percent hired total : Nat) : Prop :=
  hired * 100 = initial * percent ∧ total = initial + hired

def BalloonsHalfDollars
    (balloons ouncesEach ouncesTotal bottleOunces bottles bottlePriceHalf costHalf
     bills billValue dollarsAvailable changeDollars : Nat) : Prop :=
  ouncesTotal = balloons * ouncesEach ∧ ouncesTotal = bottles * bottleOunces ∧
  costHalf = bottles * bottlePriceHalf ∧ dollarsAvailable = bills * billValue ∧
  dollarsAvailable * 2 = costHalf + changeDollars * 2

end LemmaWeave.Problems.GSM8K.Sprint0921A05
