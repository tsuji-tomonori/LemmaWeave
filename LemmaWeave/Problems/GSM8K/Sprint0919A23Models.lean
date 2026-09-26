namespace LemmaWeave.Problems.GSM8K.Sprint0919A23

def HatStripes
    (firstHats firstEach firstTotal secondHats secondEach secondTotal
      plainHats plainEach plainTotal lastHats lastEach lastTotal total : Nat) : Prop :=
  firstHats = 4 ∧ firstEach = 3 ∧ firstTotal = firstHats * firstEach ∧
  secondHats = 3 ∧ secondEach = 4 ∧ secondTotal = secondHats * secondEach ∧
  plainHats = 6 ∧ plainEach = 0 ∧ plainTotal = plainHats * plainEach ∧
  lastHats = 2 ∧ lastEach = 5 ∧ lastTotal = lastHats * lastEach ∧
  total = firstTotal + secondTotal + plainTotal + lastTotal

def Cheesecakes (display fridge total sold remaining : Nat) : Prop :=
  display = 10 ∧ fridge = 15 ∧ total = display + fridge ∧
  sold = 7 ∧ remaining + sold = total

def KeyboardHomework
    (sticky alreadyCleaned remainingKeys minutesEach cleaningMinutes
      assignmentMinutes totalMinutes : Nat) : Prop :=
  sticky = 15 ∧ alreadyCleaned = 1 ∧ remainingKeys + alreadyCleaned = sticky ∧
  minutesEach = 3 ∧ cleaningMinutes = remainingKeys * minutesEach ∧
  assignmentMinutes = 10 ∧ totalMinutes = cleaningMinutes + assignmentMinutes

def BrotherAge
    (jacob divisor tonyNow years tonyFuture : Nat) : Prop :=
  jacob = 24 ∧ divisor = 2 ∧ tonyNow * divisor = jacob ∧
  years = 6 ∧ tonyFuture = tonyNow + years

/--
The winners are partitioned into five-dollar winners, one grand-prize winner,
and seven remaining winners whose stated average prize is ten dollars.
-/
def LottoProfit
    (tickets costEach cost winnerPercent winners fivePercent fiveWinners fivePrize
      fiveRevenue grandTickets grandPrize otherWinners otherAverage otherRevenue
      revenue profit : Nat) : Prop :=
  tickets = 200 ∧ costEach = 2 ∧ cost = tickets * costEach ∧
  winnerPercent = 20 ∧ winners * 100 = tickets * winnerPercent ∧
  fivePercent = 80 ∧ fiveWinners * 100 = winners * fivePercent ∧
  fivePrize = 5 ∧ fiveRevenue = fiveWinners * fivePrize ∧
  grandTickets = 1 ∧ grandPrize = 5000 ∧
  fiveWinners + grandTickets + otherWinners = winners ∧
  otherAverage = 10 ∧ otherRevenue = otherWinners * otherAverage ∧
  revenue = fiveRevenue + grandTickets * grandPrize + otherRevenue ∧
  profit + cost = revenue

end LemmaWeave.Problems.GSM8K.Sprint0919A23
