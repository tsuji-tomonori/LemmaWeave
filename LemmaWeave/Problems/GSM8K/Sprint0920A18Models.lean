namespace LemmaWeave.Problems.GSM8K.Sprint0920A18

def WeeklyMilk (bess factor brownie extra daisy daily days weekly : Nat) : Prop :=
  brownie = factor * bess ∧ daisy = bess + extra ∧ daily = bess + brownie + daisy ∧ weekly = daily * days
def CoolerWater (gallons ouncesPerGallon initial rows chairsPerRow cups cupOunces used left : Nat) : Prop :=
  initial = gallons * ouncesPerGallon ∧ cups = rows * chairsPerRow ∧ used = cups * cupOunces ∧ initial = used + left
def Stadium (total girls boys boyDiv boysLeft girlDiv girlsLeft left remaining : Nat) : Prop :=
  total = girls + boys ∧ boys = boysLeft * boyDiv ∧ girls = girlsLeft * girlDiv ∧ left = boysLeft + girlsLeft ∧ total = left + remaining
def ChickenFlocks (susieRed susieGold britRed britGold britTotal susieTotal difference : Nat) : Prop :=
  britRed = 2 * susieRed ∧ susieGold = 2 * britGold ∧ britTotal = britRed + britGold ∧ susieTotal = susieRed + susieGold ∧ britTotal = susieTotal + difference
/-- Dance time is measured in half-hour units, so two sessions make one hour. -/
def DanceCalories (walkRate danceRate sessions halfHours totalHalfHours days daily weekly : Nat) : Prop :=
  danceRate = 2 * walkRate ∧ totalHalfHours = sessions * halfHours ∧ daily * 2 = danceRate * totalHalfHours ∧ weekly = daily * days
def Cheesecake (sugar creamPerSugar cream vanillaPerCream vanilla eggsPerVanilla eggs : Nat) : Prop :=
  cream = sugar * creamPerSugar ∧ cream = vanilla * vanillaPerCream ∧ eggs = vanilla * eggsPerVanilla
def TreePlanting (boys difference girls total percent result : Nat) : Prop :=
  girls = boys + difference ∧ total = boys + girls ∧ result * 100 = total * percent
def Markers (steve divisor austin factor alia : Nat) : Prop := steve = austin * divisor ∧ alia = factor * austin
def GamingPC (base sold bought extra total : Nat) : Prop := bought = sold + extra ∧ total = base + extra
def GardenPlants (seeds failed grown eaten afterEaten strangled afterWeeds kept final : Nat) : Prop :=
  seeds = failed + grown ∧ grown = eaten * 3 ∧ grown = eaten + afterEaten ∧ afterEaten = strangled * 3 ∧ afterEaten = strangled + afterWeeds ∧ final = afterWeeds + kept
def Apartments (total occupiedPercent occupied twoPercent two onlyOne : Nat) : Prop :=
  occupied * 100 = total * occupiedPercent ∧ two * 100 = total * twoPercent ∧ occupied = two + onlyOne
def FarmAnimals (goats chickens combined ducks pigs difference : Nat) : Prop :=
  chickens = 2 * goats ∧ combined = goats + chickens ∧ combined = 2 * ducks ∧ ducks = 3 * pigs ∧ goats = pigs + difference
def Vaccinated (total adultPercent adults children : Nat) : Prop :=
  adults * 100 = total * adultPercent ∧ total = adults + children
def CandySaving (weeks barsPerWeek received eatEvery eaten saved : Nat) : Prop :=
  received = weeks * barsPerWeek ∧ weeks = eaten * eatEvery ∧ received = eaten + saved
def FurnitureDiscount (couch sectional other subtotal percent discount paid : Nat) : Prop :=
  subtotal = couch + sectional + other ∧ discount * 100 = subtotal * percent ∧ subtotal = discount + paid

end LemmaWeave.Problems.GSM8K.Sprint0920A18
