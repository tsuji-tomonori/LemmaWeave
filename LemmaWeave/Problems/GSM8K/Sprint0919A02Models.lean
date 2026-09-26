namespace LemmaWeave.Problems.GSM8K.Sprint0919A02

/-- Ticket prices are represented in cents.  The last conjunct states minimality. -/
def PassRides (oneWay passCost rides : Nat) : Prop :=
  oneWay = 200 ∧ passCost = 5000 ∧ passCost < oneWay * rides ∧
  ∀ n : Nat, passCost < oneWay * n → rides ≤ n

def PicnicDesserts
    (cookies candy brownies people cookiesEach candyEach browniesEach totalEach : Nat) : Prop :=
  cookies = 42 ∧ candy = 63 ∧ brownies = 21 ∧ people = 7 ∧
  cookies = people * cookiesEach ∧ candy = people * candyEach ∧
  brownies = people * browniesEach ∧
  totalEach = cookiesEach + candyEach + browniesEach

/-- Total time is additive: the five recoveries are performed sequentially. -/
def AnimalRecovery
    (lions rhinos animals hoursEach totalHours : Nat) : Prop :=
  lions = 3 ∧ rhinos = 2 ∧ animals = lions + rhinos ∧ hoursEach = 2 ∧
  totalHours = animals * hoursEach

/-- The quoted three-dozen price is retained although it is irrelevant to the count. -/
def GolfBalls
    (danDozens gusDozens chrisBalls dozenSize threeDozenPrice
      danBalls gusBalls totalBalls : Nat) : Prop :=
  danDozens = 5 ∧ gusDozens = 2 ∧ chrisBalls = 48 ∧ dozenSize = 12 ∧
  threeDozenPrice = 3000 ∧ danBalls = danDozens * dozenSize ∧
  gusBalls = gusDozens * dozenSize ∧ totalBalls = danBalls + gusBalls + chrisBalls

/-- The percentage equation avoids truncating division and records exact 80 percent. -/
def JellyBeans
    (initial children allowedPercent allowedChildren beansEach taken remaining : Nat) : Prop :=
  initial = 100 ∧ children = 40 ∧ allowedPercent = 80 ∧
  children * allowedPercent = allowedChildren * 100 ∧ beansEach = 2 ∧
  taken = allowedChildren * beansEach ∧ remaining + taken = initial

end LemmaWeave.Problems.GSM8K.Sprint0919A02
