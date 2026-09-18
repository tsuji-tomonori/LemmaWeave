namespace LemmaWeave.Problems.GSM8K.Daily0918A

def HouseExpansion
    (small large originalTotal newTotal expansion : Nat) : Prop :=
  small = 5200 ∧ large = 7300 ∧ originalTotal = small + large ∧
  newTotal = 16000 ∧ expansion + originalTotal = newTotal

def SnackPacks
    (pretzels multiplier goldfish suckers total children perBag : Nat) : Prop :=
  pretzels = 64 ∧ multiplier = 4 ∧ goldfish = multiplier * pretzels ∧
  suckers = 32 ∧ total = pretzels + goldfish + suckers ∧
  children = 16 ∧ children * perBag = total

def MatchstickModels
    (houses perHouse used original : Nat) : Prop :=
  houses = 30 ∧ perHouse = 10 ∧ used = houses * perHouse ∧ original = 2 * used

def BasketballPay
    (p1 p2 p3 p4 p5 total games average threshold highPay lowPay pay : Nat) : Prop :=
  p1 = 30 ∧ p2 = 28 ∧ p3 = 32 ∧ p4 = 34 ∧ p5 = 26 ∧
  total = p1 + p2 + p3 + p4 + p5 ∧ games = 5 ∧ games * average = total ∧
  threshold = 30 ∧ highPay = 10000 ∧ lowPay = 8000 ∧
  pay = if threshold ≤ average then highPay else lowPay

def LuggageCapacity
    (people bagsEach weightEach currentBags currentWeight capacity remainingWeight additionalBags : Nat) : Prop :=
  people = 6 ∧ bagsEach = 5 ∧ weightEach = 50 ∧
  currentBags = people * bagsEach ∧ currentWeight = currentBags * weightEach ∧
  capacity = 6000 ∧ remainingWeight + currentWeight = capacity ∧
  weightEach * additionalBags = remainingWeight

def CombinedEarnings
    (salvadore santo total : Nat) : Prop :=
  salvadore = 1956 ∧ 2 * santo = salvadore ∧ total = salvadore + santo

def CatchCounts
    (joe derek derekThird tammy : Nat) : Prop :=
  joe = 23 ∧ derek + 4 = 2 * joe ∧ 3 * derekThird = derek ∧
  tammy = derekThird + 16

/-- 参考解答に合わせ、床腕立てに至る前の壁・高所・低所の3段階を、
    それぞれ15回の訓練日で終えるという追加条件を明示する。 -/
def PushupProgress
    (preFloorStages daysPerStage trainingDays daysPerWeek weeks : Nat) : Prop :=
  preFloorStages = 3 ∧ daysPerStage = 15 ∧
  trainingDays = preFloorStages * daysPerStage ∧ daysPerWeek = 5 ∧
  daysPerWeek * weeks = trainingDays

def GarageSale
    (magnet stuffedCount stuffedPair singleStuffed : Nat) : Prop :=
  magnet = 3 ∧ stuffedPair = 4 * magnet ∧ stuffedCount = 2 ∧
  stuffedCount * singleStuffed = stuffedPair

def ReadingPlan
    (firstPages secondPages totalPages weeks days dailyPages : Nat) : Prop :=
  firstPages = 180 ∧ secondPages = 100 ∧ totalPages = firstPages + secondPages ∧
  weeks = 2 ∧ days = 7 * weeks ∧ days * dailyPages = totalPages

end LemmaWeave.Problems.GSM8K.Daily0918A
