namespace LemmaWeave.Problems.GSM8K.Sprint0920A14

def LakeFrogs (lassie reductionPercent reduction crystal total : Nat) : Prop :=
  reduction * 100 = lassie * reductionPercent ∧ lassie = crystal + reduction ∧
  total = lassie + crystal

def CertifiedMail (total friends each friendsTotal johann : Nat) : Prop :=
  friendsTotal = friends * each ∧ total = friendsTotal + johann

def Allowance (total divisor junk sweets afterJunk saved : Nat) : Prop :=
  total = junk * divisor ∧ total = junk + afterJunk ∧ afterJunk = sweets + saved

def ElevatorTrip (start down afterDown firstUp afterFirstUp secondUp top : Nat) : Prop :=
  start = afterDown + down ∧ afterFirstUp = afterDown + firstUp ∧
  top = afterFirstUp + secondUp

def ShopSales (total creditNumerator creditDenominator credit cash : Nat) : Prop :=
  credit * creditDenominator = total * creditNumerator ∧ total = credit + cash

def MuffinShare (friends self people total each : Nat) : Prop :=
  people = friends + self ∧ total = people * each

/-- The source uses “gets” but supplies a hit rate; we record attempts and made shots separately. -/
def FreeThrows
    (games playPercent played foulsPerGame fouls shotsPerFoul attempts hitPercent made : Nat) : Prop :=
  played * 100 = games * playPercent ∧ fouls = played * foulsPerGame ∧
  attempts = fouls * shotsPerFoul ∧ made * 100 = attempts * hitPercent

def WeeklySalary
    (fullDays daily halfDivisor halfPay halfDays fullPay weekendPay total : Nat) : Prop :=
  fullPay = fullDays * daily ∧ daily = halfPay * halfDivisor ∧
  weekendPay = halfDays * halfPay ∧ total = fullPay + weekendPay

def VehicleWheels (trucks cars vehicles wheelsPerVehicle total : Nat) : Prop :=
  vehicles = trucks + cars ∧ total = vehicles * wheelsPerVehicle

def WorkerAnts
    (total workerDivisor workers malePercent male female : Nat) : Prop :=
  total = workers * workerDivisor ∧ male * 100 = workers * malePercent ∧
  workers = male + female

/-- `kyleFactor = 2` is the intended “twice as far” reading; the literal 200%-farther reading is separate. -/
def FootballThrows
    (parker grantPercent grantExtra grant kyleFactor kyle difference : Nat) : Prop :=
  grantExtra * 100 = parker * grantPercent ∧ grant = parker + grantExtra ∧
  kyle = kyleFactor * grant ∧ kyle = parker + difference

def CornCobs (rowsFirst rowsSecond rowsTotal perRow total : Nat) : Prop :=
  rowsTotal = rowsFirst + rowsSecond ∧ total = rowsTotal * perRow

def ShoeStripes
    (olgaPerShoe rickLess rickPerShoe hortenseFactor hortensePerShoe shoesEach total : Nat) : Prop :=
  olgaPerShoe = rickPerShoe + rickLess ∧ hortensePerShoe = hortenseFactor * olgaPerShoe ∧
  total = shoesEach * (olgaPerShoe + rickPerShoe + hortensePerShoe)

def CookieBaking
    (traysPerDay cookiesPerTray perDay days baked frankPerDay frankAte tedAte left : Nat) : Prop :=
  perDay = traysPerDay * cookiesPerTray ∧ baked = perDay * days ∧
  frankAte = frankPerDay * days ∧ baked = frankAte + tedAte + left

def HeightFeet
    (dogInches carterFactor carterInches shorter bettyInches inchesPerFoot feet : Nat) : Prop :=
  carterInches = carterFactor * dogInches ∧ carterInches = bettyInches + shorter ∧
  bettyInches = feet * inchesPerFoot

end LemmaWeave.Problems.GSM8K.Sprint0920A14
