namespace LemmaWeave.Problems.GSM8K.Sprint0920A01

/-- Three quoted plumbing jobs; all amounts are dollars. -/
def PlumberJobs (job1 job2 job3 best : Nat) : Prop :=
  job1 = 3 * 50 + 3 * 30 ∧
  job2 = 2 * 50 + 5 * 30 ∧
  job3 = 50 + 2 * 40 + 3 * 30 ∧
  best = job2 ∧ job1 ≤ best ∧ job3 ≤ best

def FruitBuckets (a b c total : Nat) : Prop :=
  c = 9 ∧ c + 3 = b ∧ b + 4 = a ∧ a + b + c = total

def WeekendHours (amber armand ella total : Nat) : Prop :=
  amber = 12 ∧ armand * 3 = amber ∧ ella = 2 * amber ∧
  amber + armand + ella = total

/-- Ticket costs are dollars; Ferris-wheel rides are counted for both people. -/
def CarnivalCost (bumper shuttle ferris total : Nat) : Prop :=
  bumper = 2 * 2 ∧ shuttle = 4 * 4 ∧ ferris = 2 * 3 * 5 ∧
  total = bumper + shuttle + ferris

/--
The wording does not say whether the second bicycle belongs to the original
3000-dollar purchase.  Both consistent scopes are retained.
-/
def ShoppingOutlay
    (refunds soldBikeCost resale toaster includedScope separateScope : Nat) : Prop :=
  refunds = 700 + 500 ∧ soldBikeCost = 500 * 120 / 100 ∧
  resale = soldBikeCost * 80 / 100 ∧ toaster = 100 ∧
  includedScope + refunds + resale = 3000 + toaster ∧
  separateScope = (3000 - refunds) + (soldBikeCost - resale) + toaster

def FlowerPlanting (flowers pot soil total : Nat) : Prop :=
  flowers = 9 ∧ pot = flowers + 20 ∧ soil + 2 = flowers ∧
  total = flowers + pot + soil

def FasterReading (base factor hours hourly pages : Nat) : Prop :=
  base = 12 ∧ factor = 3 ∧ hourly = base * factor ∧ hours = 2 ∧
  pages = hourly * hours

def CdPurchase (life day rescind copies lifeCost dayCost rescindCost total : Nat) : Prop :=
  life = 100 ∧ day = 50 ∧ rescind = 85 ∧ copies = 3 ∧
  lifeCost = copies * life ∧ dayCost = copies * day ∧
  rescindCost = copies * rescind ∧ total = lifeCost + dayCost + rescindCost

def DressWork (fabric perDress dresses hoursPerDress totalHours : Nat) : Prop :=
  fabric = 56 ∧ perDress = 4 ∧ fabric = dresses * perDress ∧
  hoursPerDress = 3 ∧ totalHours = dresses * hoursPerDress

def ZooDifference
    (parrots snakes monkeys elephants zebras difference : Nat) : Prop :=
  parrots = 8 ∧ snakes = 3 * parrots ∧ monkeys = 2 * snakes ∧
  elephants * 2 = parrots + snakes ∧ zebras + 3 = elephants ∧
  difference + zebras = monkeys

def PumpkinDifference (brad jessica betty difference : Nat) : Prop :=
  brad = 54 ∧ jessica * 2 = brad ∧ betty = 4 * jessica ∧
  difference + jessica = betty

def CoffeeCustomers (total numerator denominator coffee noCoffee : Nat) : Prop :=
  total = 25 ∧ numerator = 3 ∧ denominator = 5 ∧
  coffee * denominator = total * numerator ∧ noCoffee + coffee = total

/--
The reference work uses 52 weeks although the question asks about 12.
Both a whole 1200-page novel in the period and a uniform annual writing rate
require three whole 500-sheet reams (two pages per sheet).
-/
def PaperReams
    (weeks weeklyPages shortPages novelPages wholePages wholeSheets wholeReams
      proratedNumerator proratedDenominator twoReamPages threeReamPages
      proratedReams : Nat) : Prop :=
  weeks = 12 ∧ weeklyPages = 3 * 50 ∧ shortPages = weeks * weeklyPages ∧
  novelPages = 1200 ∧ wholePages = shortPages + novelPages ∧
  wholePages = wholeSheets * 2 ∧ wholeSheets = wholeReams * 500 ∧
  proratedNumerator = 27000 ∧ proratedDenominator = 13 ∧
  twoReamPages = 2 * 500 * 2 ∧
  twoReamPages * proratedDenominator < proratedNumerator ∧
  threeReamPages = 3 * 500 * 2 ∧
  proratedNumerator ≤ threeReamPages * proratedDenominator ∧
  proratedReams = 3

def SandCollection (eden mary iris buckets poundsPerBucket pounds : Nat) : Prop :=
  eden = 4 ∧ mary = eden + 3 ∧ iris + 1 = mary ∧
  buckets = eden + mary + iris ∧ poundsPerBucket = 2 ∧
  pounds = buckets * poundsPerBucket

/-- Monetary amounts are represented in cents. -/
def QuarterDifference
    (karenQuarters christopherQuarters centsPerQuarter karenCents
      christopherCents differenceCents : Nat) : Prop :=
  karenQuarters = 32 ∧ christopherQuarters = 64 ∧ centsPerQuarter = 25 ∧
  karenCents = karenQuarters * centsPerQuarter ∧
  christopherCents = christopherQuarters * centsPerQuarter ∧
  differenceCents + karenCents = christopherCents

end LemmaWeave.Problems.GSM8K.Sprint0920A01
