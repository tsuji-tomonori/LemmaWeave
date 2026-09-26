namespace LemmaWeave.Problems.GSM8K.Sprint0919A27

def ReadingRate (oldPages oldHours pagesPerHour newPages newHours : Nat) : Prop :=
  oldPages = 200 ∧ oldHours = 20 ∧ oldPages = pagesPerHour * oldHours ∧
  newPages = 250 ∧ newPages = pagesPerHour * newHours

def SoccerCamp (kids soccer morning afternoon : Nat) : Prop :=
  kids = 2 * soccer ∧ 4 * morning = soccer ∧ soccer = morning + afternoon ∧ afternoon = 750

def Cottage (hourly hours total friends each : Nat) : Prop :=
  hourly = 5 ∧ hours = 8 ∧ total = hourly * hours ∧ friends = 2 ∧ total = friends * each

def CupcakeCandles (cupcakes half oneCandles twoCandles total owned additional : Nat) : Prop :=
  cupcakes = 24 ∧ cupcakes = 2 * half ∧ oneCandles = half ∧ twoCandles = 2 * half ∧
  total = oneCandles + twoCandles ∧ owned = 30 ∧ total = owned + additional

def Tadpoles (caught releasedPercent released kept : Nat) : Prop :=
  caught = 180 ∧ releasedPercent = 75 ∧ released * 100 = caught * releasedPercent ∧
  caught = released + kept

def TaxiRide (uber uberExtra lyft lyftExtra taxi tipPercent tip total : Nat) : Prop :=
  uber = 22 ∧ uber = lyft + uberExtra ∧ uberExtra = 3 ∧
  lyft = taxi + lyftExtra ∧ lyftExtra = 4 ∧ tipPercent = 20 ∧
  tip * 100 = taxi * tipPercent ∧ total = taxi + tip

def Wine (imported domestic total consumedDenominator consumed remaining : Nat) : Prop :=
  imported = 2400 ∧ imported = 2 * domestic ∧ total = imported + domestic ∧
  consumedDenominator = 3 ∧ consumed * consumedDenominator = total ∧ total = consumed + remaining

/-- Minutes are measured from Monday 00:00 ET. The second departure is intentionally explicit. -/
def FlightConnection
    (londonDeparture firstDuration nyArrival capeArrival secondDeparture secondDuration : Nat) : Prop :=
  londonDeparture = 360 ∧ firstDuration = 1080 ∧
  nyArrival = londonDeparture + firstDuration ∧ capeArrival = 2040 ∧
  nyArrival ≤ secondDeparture ∧ secondDeparture + secondDuration = capeArrival

/-- The four-week convention is an extra parameter, not a fact entailed by “monthly salary”. -/
def SalaryFourWeek
    (monthly weeks weekly daysPerWeek daily hoursPerDay hourly : Nat) : Prop :=
  monthly = 576 ∧ weeks = 4 ∧ monthly = weeks * weekly ∧ daysPerWeek = 6 ∧
  weekly = daysPerWeek * daily ∧ hoursPerDay = 8 ∧ daily = hoursPerDay * hourly

def Roses (initial mother grandmother sister given kept : Nat) : Prop :=
  initial = 20 ∧ mother = 6 ∧ grandmother = 9 ∧ sister = 4 ∧
  given = mother + grandmother + sister ∧ initial = given + kept

def Engines (batches perBatch total defectiveDenominator defective good : Nat) : Prop :=
  batches = 5 ∧ perBatch = 80 ∧ total = batches * perBatch ∧
  defectiveDenominator = 4 ∧ defective * defectiveDenominator = total ∧ total = defective + good

def Smoothies (puree cream total servingMl servings : Nat) : Prop :=
  puree = 500 ∧ cream = 100 ∧ total = puree + cream ∧ servingMl = 150 ∧ total = servingMl * servings

def Apples (initial fell afterFall stolen remaining : Nat) : Prop :=
  initial = 79 ∧ fell = 26 ∧ initial = fell + afterFall ∧ remaining = 8 ∧ afterFall = stolen + remaining

def SatStudy
    (weekdayHours weekdayNights weekdayTotal weekendHours weekendDays weekendTotal weekly weeks total : Nat) : Prop :=
  weekdayHours = 2 ∧ weekdayNights = 5 ∧ weekdayTotal = weekdayHours * weekdayNights ∧
  weekendHours = 3 ∧ weekendDays = 2 ∧ weekendTotal = weekendHours * weekendDays ∧
  weekly = weekdayTotal + weekendTotal ∧ weeks = 6 ∧ total = weekly * weeks

def UsbDrive (capacity usedPercent used available : Nat) : Prop :=
  capacity = 16 ∧ usedPercent = 50 ∧ used * 100 = capacity * usedPercent ∧ capacity = used + available

end LemmaWeave.Problems.GSM8K.Sprint0919A27
