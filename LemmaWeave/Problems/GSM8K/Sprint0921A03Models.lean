namespace LemmaWeave.Problems.GSM8K.Sprint0921A03

def Sprinkles (start half less remaining : Nat) : Prop :=
  start = half * 2 ∧ half = remaining + less
def ClassStudents (initial joined afterJoin left final : Nat) : Prop :=
  afterJoin = initial + joined ∧ afterJoin = left + final
def MineralWater (halfBottlesPerDay bottlesPerCase daysPerCase days cases price spent : Nat) : Prop :=
  bottlesPerCase * 2 = daysPerCase * halfBottlesPerDay ∧ days = cases * daysPerCase ∧ spent = cases * price
def PolkaBlankets (total before gift after : Nat) : Prop :=
  total = before * 3 ∧ after = before + gift
def Thumbtacks (cans boards eachBoard used remainingEach remaining total : Nat) : Prop :=
  eachBoard = cans ∧ used = boards * eachBoard ∧ remaining = cans * remainingEach ∧ total = used + remaining
def Koolaid (powder water evaporated remainingWater multiplier refilled total percent : Nat) : Prop :=
  water = evaporated + remainingWater ∧ refilled = remainingWater * multiplier ∧ total = refilled + powder ∧ powder * 100 = total * percent
def Cycles (ignatiusBikes ignatiusTires tireMultiplier friendTires unicycleTires tricycleTires bicycleTires friendBikes : Nat) : Prop :=
  ignatiusTires = ignatiusBikes * 2 ∧ friendTires = ignatiusTires * tireMultiplier ∧
  friendTires = unicycleTires + tricycleTires + bicycleTires ∧ bicycleTires = friendBikes * 2
def Jellybeans (gigi extra rory both multiplier eaten : Nat) : Prop :=
  rory = gigi + extra ∧ both = rory + gigi ∧ eaten = multiplier * both
def Cookies (total wifePercent wife afterWife daughter afterDaughter javier uneaten : Nat) : Prop :=
  wife * 100 = total * wifePercent ∧ total = wife + afterWife ∧ afterWife = daughter + afterDaughter ∧
  afterDaughter = javier * 2 ∧ afterDaughter = javier + uneaten
def Watermelons (total eats gives weekly weeks : Nat) : Prop :=
  weekly = eats + gives ∧ total = weeks * weekly
def HotDogs (perHour price hourlySales goal hours : Nat) : Prop :=
  hourlySales = perHour * price ∧ goal = hours * hourlySales
def Stickers (initial front perPage pages otherUsed totalUsed remaining : Nat) : Prop :=
  otherUsed = perPage * pages ∧ totalUsed = front + otherUsed ∧ initial = totalUsed + remaining
def Ages (beckett youngerOlaf olaf youngerShannen shannen jackExtra jack total : Nat) : Prop :=
  olaf = beckett + youngerOlaf ∧ olaf = shannen + youngerShannen ∧ jack = 2 * shannen + jackExtra ∧
  total = beckett + olaf + shannen + jack
def Counting (tiles tileRepeats tileCounts books bookRepeats bookCounts total : Nat) : Prop :=
  tileCounts = tiles * tileRepeats ∧ bookCounts = books * bookRepeats ∧ total = tileCounts + bookCounts
def Centerpieces (count budget price totalFlowers perCenterpiece roses orchidMultiplier orchids lilies : Nat) : Prop :=
  budget = totalFlowers * price ∧ totalFlowers = count * perCenterpiece ∧ orchids = roses * orchidMultiplier ∧
  perCenterpiece = roses + orchids + lilies

end LemmaWeave.Problems.GSM8K.Sprint0921A03
