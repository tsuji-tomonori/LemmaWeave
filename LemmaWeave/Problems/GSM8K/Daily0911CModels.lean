import Mathlib.Data.Nat.Basic

namespace LemmaWeave.Problems.GSM8K.Daily0911C

/-- 金額はすべてセント。硬貨は1枚の25セント硬貨、1枚の10セント硬貨、残りを5セント硬貨で渡す。 -/
def ChangeCoins
    (paid bread cheese change fixedCoins nickelCents nickelValue nickels : ℕ) : Prop :=
  paid = 700 ∧ bread = 420 ∧ cheese = 205 ∧
  paid = bread + cheese + change ∧ fixedCoins = 25 + 10 ∧
  change = fixedCoins + nickelCents ∧ nickelCents = nickels * nickelValue ∧
  nickelValue = 5

def ModelTrains
    (birthday christmas yearly firstFive gift total : ℕ) : Prop :=
  birthday = 1 ∧ christmas = 2 ∧ yearly = birthday + christmas ∧
  firstFive = 5 * yearly ∧ gift = 2 * firstFive ∧ total = firstFive + gift

def RemainingMoney
    (start motorcycle afterBike ticket afterTicket lost remaining : ℕ) : Prop :=
  start = 5000 ∧ motorcycle = 2800 ∧ start = motorcycle + afterBike ∧
  2 * ticket = afterBike ∧ afterTicket = ticket ∧
  4 * lost = afterTicket ∧ afterTicket = lost + remaining

def EggHunt
    (emmaSecond tankSecond secondPair tankFirst emmaFirst firstPair pairTotal others : ℕ) : Prop :=
  emmaSecond = 60 ∧ emmaSecond = 2 * tankSecond ∧
  secondPair = emmaSecond + tankSecond ∧ tankFirst = tankSecond + 20 ∧
  tankFirst = emmaFirst + 10 ∧ firstPair = tankFirst + emmaFirst ∧
  pairTotal = firstPair + secondPair ∧ 400 = pairTotal + others

def BakeSale
    (brownies lemonSquares earned needed cookiePrice cookies : ℕ) : Prop :=
  brownies = 4 * 3 ∧ lemonSquares = 5 * 2 ∧
  earned = brownies + lemonSquares ∧ 50 = earned + needed ∧
  needed = cookies * cookiePrice ∧ cookiePrice = 4

def PeanutWeek
    (ones fives tens twenties total spent price pounds days daily : ℕ) : Prop :=
  ones = 7 * 1 ∧ fives = 4 * 5 ∧ tens = 2 * 10 ∧ twenties = 1 * 20 ∧
  total = ones + fives + tens + twenties ∧ total = spent + 4 ∧
  spent = pounds * price ∧ price = 3 ∧ pounds = daily * days ∧ days = 7

def BouncyBalls (redPacks yellowPacks perPack red yellow difference : ℕ) : Prop :=
  redPacks = 7 ∧ yellowPacks = 6 ∧ perPack = 18 ∧
  red = redPacks * perPack ∧ yellow = yellowPacks * perPack ∧
  red = yellow + difference

def ComputerSales
    (total laptops netbooks nonDesktop desktops : ℕ) : Prop :=
  total = 72 ∧ 2 * laptops = total ∧ 3 * netbooks = total ∧
  nonDesktop = laptops + netbooks ∧ total = nonDesktop + desktops

/-- dozen と half-dozen を個数へ換算した後の、種類別の焼成数・譲渡数・手元数。 -/
def KeptCookies
    (oatBaked oatGiven oatKept sugarBaked sugarGiven sugarKept
     chocBaked chocGiven chocKept totalKept : ℕ) : Prop :=
  oatBaked = 3 * 12 ∧ oatGiven = 2 * 12 ∧ oatBaked = oatGiven + oatKept ∧
  sugarBaked = 2 * 12 ∧ sugarGiven = 3 * 6 ∧ sugarBaked = sugarGiven + sugarKept ∧
  chocBaked = 4 * 12 ∧ chocGiven = 5 * 6 ∧ chocBaked = chocGiven + chocKept ∧
  totalKept = oatKept + sugarKept + chocKept

def WorkHours
    (office meeting beforeFinal finalBlock total : ℕ) : Prop :=
  office = 11 - 8 ∧ meeting = 13 - 11 ∧ beforeFinal = office + meeting ∧
  finalBlock = 2 ∧ total = beforeFinal + finalBlock

end LemmaWeave.Problems.GSM8K.Daily0911C
