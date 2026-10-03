import Mathlib.Data.Nat.Basic

namespace LemmaWeave.Problems.GSM8K.Daily0911B

/-- 各巻は直前の巻の年齢にその半分を加えた年齢である。 -/
def ScrollAges (first second third fourth fifth : ℕ) : Prop :=
  first = 4080 ∧ second = first + first / 2 ∧
  third = second + second / 2 ∧ fourth = third + third / 2 ∧
  fifth = fourth + fourth / 2

def WashWater
    (heavyRate regularRate lightRate heavyLoads regularLoads lightLoads bleachedLoads
     heavyWater regularWater lightWater bleachWater totalWater : ℕ) : Prop :=
  heavyRate = 20 ∧ regularRate = 10 ∧ lightRate = 2 ∧
  heavyLoads = 2 ∧ regularLoads = 3 ∧ lightLoads = 1 ∧ bleachedLoads = 2 ∧
  heavyWater = heavyRate * heavyLoads ∧ regularWater = regularRate * regularLoads ∧
  lightWater = lightRate * lightLoads ∧ bleachWater = lightRate * bleachedLoads ∧
  totalWater = heavyWater + regularWater + lightWater + bleachWater

def HallChairs
    (tables twoChairTables threeChairTables fourChairTables
     twoChairs threeChairs fourChairs totalChairs : ℕ) : Prop :=
  tables = 32 ∧ twoChairTables = tables / 2 ∧ threeChairTables = 5 ∧
  tables = twoChairTables + threeChairTables + fourChairTables ∧
  twoChairs = twoChairTables * 2 ∧ threeChairs = threeChairTables * 3 ∧
  fourChairs = fourChairTables * 4 ∧
  totalChairs = twoChairs + threeChairs + fourChairs

def LotteryDebts
    (start colin helen benedict totalPaid remaining : ℕ) : Prop :=
  start = 100 ∧ colin = 20 ∧ helen = 2 * colin ∧
  benedict = helen / 2 ∧ totalPaid = colin + helen + benedict ∧
  start = totalPaid + remaining

def CommuteCounts
    (employees drivePercent percentBase drivers nonDrivers transit difference : ℕ) : Prop :=
  employees = 200 ∧ drivePercent = 60 ∧ percentBase = 100 ∧
  percentBase * drivers = drivePercent * employees ∧
  employees = drivers + nonDrivers ∧ 2 * transit = nonDrivers ∧
  drivers = transit + difference

/-- 「25-foot section」を個数で数え、手元の長さも併記する。 -/
def CableSections
    (feet sectionFeet sections given remaining storage onHand onHandFeet : ℕ) : Prop :=
  feet = 1000 ∧ sectionFeet = 25 ∧ feet = sections * sectionFeet ∧
  4 * given = sections ∧ sections = given + remaining ∧
  2 * storage = remaining ∧ remaining = storage + onHand ∧
  onHandFeet = onHand * sectionFeet

/-- 代名詞 her がEmeryを指すという参照解の読み。 -/
def ReadingDaysEmery
    (emeryDays serenaDays averageDays : ℕ) : Prop :=
  emeryDays = 20 ∧ serenaDays = 5 * emeryDays ∧
  2 * averageDays = emeryDays + serenaDays

/-- 代名詞 her がSerenaを指す場合の、原文と両立する別モデル。 -/
def ReadingDaysSerena
    (emeryDays serenaDays averageDays : ℕ) : Prop :=
  serenaDays = 20 ∧ 5 * emeryDays = serenaDays ∧
  2 * averageDays = emeryDays + serenaDays

def BeakerTests
    (dropsPerTest dropsUsed tested copper nonCopper : ℕ) : Prop :=
  dropsPerTest = 3 ∧ dropsUsed = 45 ∧
  dropsUsed = tested * dropsPerTest ∧ copper = 8 ∧
  tested = copper + nonCopper

def FourthChildAge
    (firstAge secondGap thirdGap fourthGap fourthAge : ℕ) : Prop :=
  firstAge = 15 ∧ secondGap = 1 ∧ thirdGap = 4 ∧ fourthGap = 2 ∧
  firstAge = secondGap + thirdGap + fourthGap + fourthAge

def PushupTotal
    (sets targetPerSet planned shortfall completed : ℕ) : Prop :=
  sets = 3 ∧ targetPerSet = 15 ∧ planned = sets * targetPerSet ∧
  shortfall = 5 ∧ planned = completed + shortfall

end LemmaWeave.Problems.GSM8K.Daily0911B
