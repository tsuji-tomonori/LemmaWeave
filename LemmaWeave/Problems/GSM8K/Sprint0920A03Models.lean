namespace LemmaWeave.Problems.GSM8K.Sprint0920A03

def PandaBabies (pandas couples pregnant babies : Nat) : Prop :=
  couples * 2 = pandas ∧ pregnant * 4 = couples ∧ babies = pregnant

def MovieShows (screens hours duration perScreen total : Nat) : Prop :=
  perScreen * duration = hours ∧ total = screens * perScreen

def VasePurchase (original discount sale tax total : Nat) : Prop :=
  discount * 4 = original ∧ sale + discount = original ∧
  tax * 10 = sale ∧ total = sale + tax

def BrotherAges (david yuan : Nat) : Prop :=
  yuan = david + 7 ∧ yuan = 2 * david

def ClassAttendance
    (restroom absent rows desks occupied total : Nat) : Prop :=
  absent + 1 = 3 * restroom ∧ occupied * 3 = rows * desks * 2 ∧
  total = occupied + restroom + absent

/-- Distances are represented in half-miles. -/
def DailyWalkHalfMiles
    (morning evening days totalHalf totalMiles : Nat) : Prop :=
  morning = 3 ∧ evening = 3 ∧ totalHalf = days * (morning + evening) ∧
  totalMiles * 2 = totalHalf

def CDCollection
    (initial given remaining bought total : Nat) : Prop :=
  given * 3 = initial ∧ remaining + given = initial ∧ total = remaining + bought

def FishStock
    (initial sold afterSale spoiled usable delivery total : Nat) : Prop :=
  afterSale + sold = initial ∧ spoiled * 3 = afterSale ∧
  usable + spoiled = afterSale ∧ total = usable + delivery

def ParadeCandy (tabitha stan julie carlos total : Nat) : Prop :=
  julie * 2 = tabitha ∧ carlos = 2 * stan ∧
  total = tabitha + stan + julie + carlos

/-- Savings compare two discount visits with the one normal visit they replace. -/
def ClinicSavings
    (normal discountVisit visits discountTotal saved : Nat) : Prop :=
  discountVisit * 10 = normal * 3 ∧ discountTotal = visits * discountVisit ∧
  saved + discountTotal = normal

/-- Monetary amounts are represented in cents. -/
def BakerySpend
    (flavored lattes plain focaccia total : Nat) : Prop :=
  flavored = 2 * 450 ∧ lattes = 2 * 250 ∧
  total = flavored + lattes + plain + focaccia

def BraceletFlow
    (start kelly gift beforeGiven given remaining : Nat) : Prop :=
  gift * 4 = kelly ∧ beforeGiven = start + gift ∧
  given * 3 = beforeGiven ∧ remaining + given = beforeGiven

def WeeklyPlates
    (soloDays familyDays soloDaily familyDaily total : Nat) : Prop :=
  soloDays + familyDays = 7 ∧ soloDaily = 2 ∧ familyDaily = 4 * 2 ∧
  total = soloDays * soloDaily + familyDays * familyDaily

/-- Coffee-bean amounts are represented in half-ounces. -/
def WeeklyCoffee
    (cupsPerDay halfOzPerCup days beansHalf bagHalf bags beanCost milkCost total : Nat) : Prop :=
  beansHalf = cupsPerDay * halfOzPerCup * days ∧ bagHalf = 21 ∧
  beansHalf = bags * bagHalf ∧ beanCost = bags * 8 ∧
  milkCost = 2 ∧ total = beanCost + milkCost

def ChoreTime (clean shower dinner tasks minutes hours : Nat) : Prop :=
  tasks = clean + shower + dinner ∧ minutes = tasks * 10 ∧ hours * 60 = minutes

end LemmaWeave.Problems.GSM8K.Sprint0920A03
