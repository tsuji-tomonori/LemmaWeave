namespace LemmaWeave.Problems.GSM8K.Sprint0919A32

/-- All monetary amounts are represented in cents. -/
def DoughProfit
    (flourPounds bagPounds bags bagPrice flourCost saltPounds saltPrice saltCost
      promotion ticketPrice tickets revenue totalCost profit centsPerDollar
      profitDollars : Nat) : Prop :=
  flourPounds = 500 ∧ bagPounds = 50 ∧ flourPounds = bags * bagPounds ∧
  bagPrice = 2000 ∧ flourCost = bags * bagPrice ∧ saltPounds = 10 ∧
  saltPrice = 20 ∧ saltCost = saltPounds * saltPrice ∧ promotion = 100000 ∧
  ticketPrice = 2000 ∧ tickets = 500 ∧ revenue = ticketPrice * tickets ∧
  totalCost = promotion + flourCost + saltCost ∧ revenue = profit + totalCost ∧
  centsPerDollar = 100 ∧ profit = profitDollars * centsPerDollar

/-- Food costs are represented in cents. -/
def PartyFood
    (guests servingsPerBatch batches potatoesPerBatch potatoes potatoPrice potatoCost
      saltPerBatch saltTeaspoons teaspoonsPerContainer saltContainers containerPrice
      saltCost totalCost : Nat) : Prop :=
  guests = 30 ∧ servingsPerBatch = 2 ∧ guests = batches * servingsPerBatch ∧
  potatoesPerBatch = 4 ∧ potatoes = batches * potatoesPerBatch ∧ potatoPrice = 10 ∧
  potatoCost = potatoes * potatoPrice ∧ saltPerBatch = 1 ∧
  saltTeaspoons = batches * saltPerBatch ∧ teaspoonsPerContainer = 5 ∧
  saltTeaspoons = saltContainers * teaspoonsPerContainer ∧ containerPrice = 200 ∧
  saltCost = saltContainers * containerPrice ∧ totalCost = potatoCost + saltCost

def GroceryApples
    (budget hummusCount hummusPrice hummusCost chicken bacon vegetables fixedCost
      remaining applePrice apples : Nat) : Prop :=
  budget = 60 ∧ hummusCount = 2 ∧ hummusPrice = 5 ∧
  hummusCost = hummusCount * hummusPrice ∧ chicken = 20 ∧ bacon = 10 ∧
  vegetables = 10 ∧ fixedCost = hummusCost + chicken + bacon + vegetables ∧
  budget = remaining + fixedCost ∧ applePrice = 2 ∧ remaining = apples * applePrice

def PenGiving
    (boxes perBox total friendPercent friendGiven afterFriends classDivisor
      classGiven remaining : Nat) : Prop :=
  boxes = 20 ∧ perBox = 5 ∧ total = boxes * perBox ∧ friendPercent = 40 ∧
  friendGiven * 100 = total * friendPercent ∧ afterFriends + friendGiven = total ∧
  classDivisor = 4 ∧ classGiven * classDivisor = afterFriends ∧
  remaining + classGiven = afterFriends

def RibbonLeft (initial gifts perGift used remaining : Nat) : Prop :=
  initial = 18 ∧ gifts = 6 ∧ perGift = 2 ∧ used = gifts * perGift ∧
  remaining + used = initial

end LemmaWeave.Problems.GSM8K.Sprint0919A32
