namespace LemmaWeave.Problems.GSM8K.Sprint0919A14

def LibraryTables
    (rectTables rectSeats rectCapacity target squareSeats uncovered squareTables : Nat) : Prop :=
  rectTables = 7 ∧ rectSeats = 10 ∧ rectCapacity = rectTables * rectSeats ∧
  target = 90 ∧ squareSeats = 4 ∧ uncovered + rectCapacity = target ∧
  squareTables * squareSeats = uncovered

def ChocolateShare
    (types barsPerType total percentEach : Nat) : Prop :=
  types = 4 ∧ barsPerType = 25 ∧ total = types * barsPerType ∧
  percentEach * total = barsPerType * 100

def CherryPitting
    (pounds cherriesPerPound cherries batchSize batches minutesPerBatch totalMinutes
      minutesPerHour hours : Nat) : Prop :=
  pounds = 3 ∧ cherriesPerPound = 80 ∧ cherries = pounds * cherriesPerPound ∧
  batchSize = 20 ∧ batches * batchSize = cherries ∧ minutesPerBatch = 10 ∧
  totalMinutes = batches * minutesPerBatch ∧ minutesPerHour = 60 ∧
  hours * minutesPerHour = totalMinutes

def FuelTrips
    (litersPerKm firstKm secondKm firstFuel secondFuel totalFuel : Nat) : Prop :=
  litersPerKm = 5 ∧ firstKm = 30 ∧ secondKm = 20 ∧
  firstFuel = litersPerKm * firstKm ∧ secondFuel = litersPerKm * secondKm ∧
  totalFuel = firstFuel + secondFuel

def Snowdrift
    (firstDay afterMelt day3 day4 finalDepth laterSnow : Nat) : Prop :=
  firstDay = 2 * afterMelt ∧ day3 = 6 ∧ day4 = 18 ∧
  laterSnow = day3 + day4 ∧ finalDepth = afterMelt + laterSnow ∧ finalDepth = 34

end LemmaWeave.Problems.GSM8K.Sprint0919A14
