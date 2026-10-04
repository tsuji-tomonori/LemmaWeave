namespace LemmaWeave.Problems.GSM8K.Sprint0921A18

def TrainTravel (firstMiles firstHours rate additionalMiles additionalHours : Nat) : Prop :=
  firstMiles = rate * firstHours ∧ additionalMiles = rate * additionalHours

def PieBatches (perBatch batches baked dropped remaining : Nat) : Prop :=
  baked = perBatch * batches ∧ baked = dropped + remaining

def PizzaSlices (pizzas slicesPerPizza total numerator denominator eaten : Nat) : Prop :=
  total = pizzas * slicesPerPizza ∧ total * numerator = eaten * denominator

def RaceAverage
    (carlosMinutes secondsPerMinute carlosSeconds diegoHalfSeconds diegoSeconds
      totalSeconds racers averageSeconds : Nat) : Prop :=
  carlosSeconds = carlosMinutes * secondsPerMinute ∧ diegoSeconds = diegoHalfSeconds * 2 ∧
  totalSeconds = carlosSeconds + diegoSeconds ∧ totalSeconds = averageSeconds * racers

def HeightChain
    (janet charleneMultiplier charlene pabloTaller pablo rubyShorter ruby : Nat) : Prop :=
  charlene = janet * charleneMultiplier ∧ pablo = charlene + pabloTaller ∧
  pablo = ruby + rubyShorter

def PartyBill
    (people oysterDozens oysterPrice oysterCost shrimpPounds shrimpPrice shrimpCost
      clamPounds clamPrice clamCost total perPerson : Nat) : Prop :=
  oysterCost = oysterDozens * oysterPrice ∧ shrimpCost = shrimpPounds * shrimpPrice ∧
  clamCost = clamPounds * clamPrice ∧ total = oysterCost + shrimpCost + clamCost ∧
  total = perPerson * people

def HairIncome
    (haircuts haircutRate haircutIncome styles styleRate styleIncome total : Nat) : Prop :=
  haircutIncome = haircuts * haircutRate ∧ styleIncome = styles * styleRate ∧
  total = haircutIncome + styleIncome

def SalesTax (subtotal percent tax total : Nat) : Prop :=
  subtotal * percent = tax * 100 ∧ total = subtotal + tax

def TheaterCost
    (seats squareFeetPerSeat squareFeet landRate land constructionMultiplier construction
      total partnerPercent partnerShare tomShare : Nat) : Prop :=
  squareFeet = seats * squareFeetPerSeat ∧ land = squareFeet * landRate ∧
  construction = land * constructionMultiplier ∧ total = land + construction ∧
  total * partnerPercent = partnerShare * 100 ∧ total = partnerShare + tomShare

def SquareQuilt (width length area side : Nat) : Prop :=
  area = width * length ∧ area = side * side

def LunchTotal
    (jose rick adamNumerator adamDenominator adam total : Nat) : Prop :=
  rick = jose ∧ rick * adamNumerator = adam * adamDenominator ∧
  total = adam + rick + jose

def TwoMonthPay (lastMonth raisePercent raiseAmount thisMonth total : Nat) : Prop :=
  lastMonth * raisePercent = raiseAmount * 100 ∧ thisMonth = lastMonth + raiseAmount ∧
  total = lastMonth + thisMonth

def TirePrice (tires salePrice totalSavings savingsPerTire originalPrice : Nat) : Prop :=
  totalSavings = savingsPerTire * tires ∧ originalPrice = salePrice + savingsPerTire

def GolfDistance
    (first secondDivisor second firstTwo beyondHole teeToHole : Nat) : Prop :=
  first = second * secondDivisor ∧ firstTwo = first + second ∧
  firstTwo = teeToHole + beyondHole

def FabricRevenue
    (monday tuesdayMultiplier tuesday wednesdayDivisor wednesday total fabricPrice revenue : Nat) : Prop :=
  tuesday = monday * tuesdayMultiplier ∧ tuesday = wednesday * wednesdayDivisor ∧
  total = monday + tuesday + wednesday ∧ revenue = total * fabricPrice

end LemmaWeave.Problems.GSM8K.Sprint0921A18
