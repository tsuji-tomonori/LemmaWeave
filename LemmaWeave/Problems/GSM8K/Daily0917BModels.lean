namespace LemmaWeave.Problems.GSM8K.Daily0917B

def NewscastAds
    (total national international sports weather accounted ads : Nat) : Prop :=
  total = 30 ∧ national = 12 ∧ international = 5 ∧ sports = 5 ∧ weather = 2 ∧
  accounted = national + international + sports + weather ∧ ads + accounted = total

def AmoebaGrowth
    (initial first second third fourth intervalDays stages totalDays : Nat) : Prop :=
  initial = 1 ∧ first = 2 * initial ∧ second = 2 * first ∧
  third = 2 * second ∧ fourth = 2 * third ∧ intervalDays = 2 ∧
  stages = 4 ∧ totalDays = stages * intervalDays

def AnnualSavings
    (mowing gifts games jobs income percentBase savePercent saved : Nat) : Prop :=
  mowing = 600 ∧ gifts = 250 ∧ games = 150 ∧ jobs = 150 ∧
  income = mowing + gifts + games + jobs ∧ percentBase = 100 ∧
  savePercent = 40 ∧ percentBase * saved = savePercent * income

def MathQuestions
    (fiona shirley pair kiana hourly hours total : Nat) : Prop :=
  fiona = 36 ∧ shirley = 2 * fiona ∧ pair = fiona + shirley ∧
  2 * kiana = pair ∧ hourly = pair + kiana ∧ hours = 2 ∧ total = hours * hourly

def ClassVotes (joey extra adjusted barry marcy : Nat) : Prop :=
  joey = 8 ∧ extra = 3 ∧ adjusted = joey + extra ∧
  barry = 2 * adjusted ∧ marcy = 3 * barry

/-- 参照解の読み方。「2/5 times less」を旧価格の2/5だけ値上がりしたと解釈する。 -/
def LawnmowerReference
    (old numerator denominator increase current count total : Nat) : Prop :=
  old = 1800 ∧ numerator = 2 ∧ denominator = 5 ∧
  denominator * increase = numerator * old ∧ current = old + increase ∧
  count = 4 ∧ total = count * current

/-- 通常の割合表現として「旧価格は現価格より2/5安い」と読む場合。 -/
def LawnmowerStandard (old current count total : Nat) : Prop :=
  old = 1800 ∧ 5 * old = 3 * current ∧ count = 4 ∧ total = count * current

def AnnualBonus
    (lastPay lastBonus percentBase percent thisPay thisBonus total : Nat) : Prop :=
  lastPay = 100000 ∧ lastBonus = 10000 ∧ percentBase = 100 ∧
  percent * lastPay = percentBase * lastBonus ∧ thisPay = 200000 ∧
  percentBase * thisBonus = percent * thisPay ∧ total = thisPay + thisBonus

def ManuscriptCost
    (pages copyCentsPerPage bindingCents copies copyEach unitEach totalCents : Nat) : Prop :=
  pages = 400 ∧ copyCentsPerPage = 5 ∧ bindingCents = 500 ∧ copies = 10 ∧
  copyEach = pages * copyCentsPerPage ∧ unitEach = copyEach + bindingCents ∧
  totalCents = copies * unitEach

def RopeSkips
    (robertoHourly minutesPerHour robertoMinute valerieMinute together duration total : Nat) : Prop :=
  robertoHourly = 4200 ∧ minutesPerHour = 60 ∧
  minutesPerHour * robertoMinute = robertoHourly ∧ valerieMinute = 80 ∧
  together = robertoMinute + valerieMinute ∧ duration = 15 ∧ total = together * duration

/-- 生地作りと焼成を重ねず、全工程を順番に行う追加条件。 -/
def PizzaSequential
    (pizzas perBatch batches doughMinutes doughTotal ovenCapacity loads
      cookMinutes ovenTotal totalMinutes hours : Nat) : Prop :=
  pizzas = 12 ∧ perBatch = 3 ∧ batches * perBatch = pizzas ∧ doughMinutes = 30 ∧
  doughTotal = batches * doughMinutes ∧ ovenCapacity = 2 ∧ loads * ovenCapacity = pizzas ∧
  cookMinutes = 30 ∧ ovenTotal = loads * cookMinutes ∧
  totalMinutes = doughTotal + ovenTotal ∧ 60 * hours = totalMinutes

/-- 最初の生地完成後、残りの生地作りを焼成と並行できる場合の実行例。 -/
def PizzaOverlapped
    (firstDoughMinutes loads cookMinutes ovenTotal totalMinutes : Nat) : Prop :=
  firstDoughMinutes = 30 ∧ loads = 6 ∧ cookMinutes = 30 ∧
  ovenTotal = loads * cookMinutes ∧ totalMinutes = firstDoughMinutes + ovenTotal

end LemmaWeave.Problems.GSM8K.Daily0917B
