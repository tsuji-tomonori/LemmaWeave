import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A04
structure Balloons where
  oldRed : ℕ
  oldBlue : ℕ
  newRed : ℕ
  newBlue : ℕ
  red : ℕ
  total : ℕ
  percent : ℕ
  hOldRed : oldRed = 2
  hOldBlue : oldBlue = 4
  hNewRed : newRed = 2
  hNewBlue : newBlue = 2
  hRed : red = oldRed + newRed
  hTotal : total = oldRed + oldBlue + newRed + newBlue
  hPercent : red * 100 = percent * total
theorem balloons_red (m : Balloons) : m.red = 4 := by cases m; omega
theorem balloons_total (m : Balloons) : m.total = 10 := by cases m; omega
theorem balloons_solution (m : Balloons) : m.percent = 40 := by cases m; omega
structure HouseSale where
  original : ℕ
  profit : ℕ
  salePrice : ℕ
  commission : ℕ
  receipts : ℕ
  hOriginal : original = 80000
  hProfit : 5 * profit = original
  hSale : salePrice = original + profit
  hCommission : 20 * commission = original
  hReceipts : receipts = salePrice + commission
theorem house_profit (m : HouseSale) : m.profit = 16000 := by cases m; omega
theorem house_sale_price (m : HouseSale) : m.salePrice = 96000 := by cases m; omega
theorem house_commission (m : HouseSale) : m.commission = 4000 := by cases m; omega
theorem house_receipts (m : HouseSale) : m.receipts = 100000 := by cases m; omega
theorem house_solution (m : HouseSale) :
    m.salePrice = 96000 ∧ m.receipts = 100000 ∧ m.salePrice ≠ m.receipts := by
  cases m
  omega
structure MobileData where
  initial : ℕ
  afterVideo : ℕ
  facebook : ℕ
  remaining : ℕ
  hInitial : initial = 500
  hAfterVideo : afterVideo + 300 = initial
  hFacebook : 5 * facebook = 2 * afterVideo
  hRemaining : remaining + facebook = afterVideo
theorem mobile_after_video (m : MobileData) : m.afterVideo = 200 := by cases m; omega
theorem mobile_facebook (m : MobileData) : m.facebook = 80 := by cases m; omega
theorem mobile_solution (m : MobileData) : m.remaining = 120 := by cases m; omega
structure Figures where
  saved : ℕ
  shoeCost : ℕ
  remaining : ℕ
  neededBefore : ℕ
  salesRevenue : ℕ
  figures : ℕ
  priceEach : ℕ
  hSaved : saved = 15
  hShoe : shoeCost = 90
  hRemaining : remaining = 25
  hNeeded : neededBefore = shoeCost + remaining
  hRevenue : salesRevenue + saved = neededBefore
  hFigures : figures = 10
  hEach : salesRevenue = figures * priceEach
theorem figures_needed (m : Figures) : m.neededBefore = 115 := by cases m; omega
theorem figures_revenue (m : Figures) : m.salesRevenue = 100 := by cases m; omega
theorem figures_solution (m : Figures) : m.priceEach = 10 := by cases m; omega
structure Supplies where
  grenadaTotal : ℕ
  kinds : ℕ
  each : ℕ
  guns : ℕ
  tractors : ℕ
  uniforms : ℕ
  total : ℕ
  hGrenada : grenadaTotal = 6000
  hKinds : kinds = 3
  hEqualSplit : grenadaTotal = kinds * each
  hGuns : guns = 3000 + 2 * each
  hTractors : tractors + 400 = 3 * each
  hUniforms : uniforms = 30 * each
  hTotal : total = guns + tractors + uniforms
theorem supplies_each (m : Supplies) : m.each = 2000 := by cases m; omega
theorem supplies_guns (m : Supplies) : m.guns = 7000 := by cases m; omega
theorem supplies_tractors (m : Supplies) : m.tractors = 5600 := by cases m; omega
theorem supplies_uniforms (m : Supplies) : m.uniforms = 60000 := by cases m; omega
theorem supplies_solution (m : Supplies) : m.total = 72600 := by cases m; omega
structure Cards where
  mara : ℕ
  janet : ℕ
  brenda : ℕ
  total : ℕ
  hMara : mara + 40 = 150
  hTwice : mara = 2 * janet
  hMore : janet = brenda + 9
  hTotal : total = mara + janet + brenda
theorem cards_mara (m : Cards) : m.mara = 110 := by cases m; omega
theorem cards_janet (m : Cards) : m.janet = 55 := by cases m; omega
theorem cards_brenda (m : Cards) : m.brenda = 46 := by cases m; omega
theorem cards_solution (m : Cards) : m.total = 211 := by cases m; omega
structure Puzzles where
  large : ℕ
  small : ℕ
  bundle : ℕ
  total : ℕ
  hLarge : large = 15
  hBundle : bundle = 23
  hTogether : small + large = bundle
  hTotal : total = large + 3 * small
theorem puzzles_small (m : Puzzles) : m.small = 8 := by cases m; omega
theorem puzzles_solution (m : Puzzles) : m.total = 39 := by cases m; omega
structure Rings where
  firstCost : ℕ
  secondCost : ℕ
  resale : ℕ
  outOfPocket : ℕ
  hFirst : firstCost = 10000
  hSecond : secondCost = 2 * firstCost
  hResale : 2 * resale = firstCost
  hOut : outOfPocket + resale = firstCost + secondCost
theorem rings_second (m : Rings) : m.secondCost = 20000 := by cases m; omega
theorem rings_resale (m : Rings) : m.resale = 5000 := by cases m; omega
theorem rings_solution (m : Rings) : m.outOfPocket = 25000 := by cases m; omega
structure Helium where
  balloons : ℕ
  helium : ℕ
  perBalloon : ℕ
  floating : ℕ
  air : ℕ
  difference : ℕ
  hBalloons : balloons = 50
  hHelium : helium = 1800
  hPer : perBalloon = 50
  hFloating : helium = perBalloon * floating
  hAir : balloons = floating + air
  hDifference : floating = air + difference
theorem helium_floating (m : Helium) : m.floating = 36 := by cases m; omega
theorem helium_air (m : Helium) : m.air = 14 := by cases m; omega
theorem helium_solution (m : Helium) : m.difference = 22 := by cases m; omega
structure Crayons where
  red : ℕ
  blue : ℕ
  yellow : ℕ
  hRed : red = 14
  hBlue : blue = red + 5
  hYellow : yellow + 6 = 2 * blue
theorem crayons_blue (m : Crayons) : m.blue = 19 := by cases m; omega
theorem crayons_solution (m : Crayons) : m.yellow = 32 := by cases m; omega
structure Running where
  fieldLength : ℕ
  fields : ℕ
  firstLeg : ℕ
  secondLeg : ℕ
  total : ℕ
  hField : fieldLength = 168
  hFields : fields = 4
  hFirst : firstLeg = fields * fieldLength
  hSecond : secondLeg = 500
  hTotal : total = firstLeg + secondLeg
theorem running_first (m : Running) : m.firstLeg = 672 := by cases m; omega
theorem running_solution (m : Running) : m.total = 1172 := by cases m; omega
structure Chairs where
  indoorTables : ℕ
  outdoorTables : ℕ
  indoorChairs : ℕ
  outdoorChairs : ℕ
  total : ℕ
  hIndoorTables : indoorTables = 9
  hOutdoorTables : outdoorTables = 11
  hIndoor : indoorChairs = indoorTables * 10
  hOutdoor : outdoorChairs = outdoorTables * 3
  hTotal : total = indoorChairs + outdoorChairs
theorem chairs_indoor (m : Chairs) : m.indoorChairs = 90 := by cases m; omega
theorem chairs_outdoor (m : Chairs) : m.outdoorChairs = 33 := by cases m; omega
theorem chairs_solution (m : Chairs) : m.total = 123 := by cases m; omega
structure Areas where
  rectangle : ℕ
  square : ℕ
  difference : ℕ
  hRectangle : rectangle = 3 * 6
  hSquare : square = 5 * 5
  hDifference : square = rectangle + difference
theorem areas_rectangle (m : Areas) : m.rectangle = 18 := by cases m; omega
theorem areas_square (m : Areas) : m.square = 25 := by cases m; omega
theorem areas_solution (m : Areas) : m.difference = 7 := by cases m; omega
structure HotdogsConventional where
  firstRate : ℕ
  secondRate : ℕ
  thirdRate : ℕ
  minutes : ℕ
  total : ℕ
  hFirst : firstRate = 10
  hSecond : secondRate = 3 * firstRate
  hThird : thirdRate = 2 * secondRate
  hMinutes : minutes = 5
  hTotal : total = thirdRate * minutes
theorem hotdogs_conventional_second (m : HotdogsConventional) : m.secondRate = 30 := by cases m; omega
theorem hotdogs_conventional_solution (m : HotdogsConventional) : m.total = 300 := by cases m; omega

structure HotdogsLiteral where
  firstRate : ℕ
  secondRate : ℕ
  thirdRate : ℕ
  minutes : ℕ
  total : ℕ
  hFirst : firstRate = 10
  hSecond : secondRate = firstRate + 3 * firstRate
  hThird : thirdRate = 2 * secondRate
  hMinutes : minutes = 5
  hTotal : total = thirdRate * minutes
theorem hotdogs_literal_second (m : HotdogsLiteral) : m.secondRate = 40 := by cases m; omega
theorem hotdogs_literal_solution (m : HotdogsLiteral) : m.total = 400 := by cases m; omega
theorem hotdogs_solution (c : HotdogsConventional) (l : HotdogsLiteral) :
    c.total = 300 ∧ l.total = 400 ∧ c.total ≠ l.total := by
  cases c
  cases l
  omega
structure Coffee where
  dozens : ℕ
  donuts : ℕ
  ouncesPerDonut : ℕ
  ounces : ℕ
  ouncesPerPot : ℕ
  pots : ℕ
  costPerPot : ℕ
  cost : ℕ
  hDozens : dozens = 3
  hDonuts : donuts = dozens * 12
  hPerDonut : ouncesPerDonut = 2
  hOunces : ounces = donuts * ouncesPerDonut
  hPerPot : ouncesPerPot = 12
  hPots : ounces = pots * ouncesPerPot
  hCostPerPot : costPerPot = 3
  hCost : cost = pots * costPerPot
theorem coffee_donuts (m : Coffee) : m.donuts = 36 := by cases m; omega
theorem coffee_ounces (m : Coffee) : m.ounces = 72 := by cases m; omega
theorem coffee_pots (m : Coffee) : m.pots = 6 := by cases m; omega
theorem coffee_solution (m : Coffee) : m.cost = 18 := by cases m; omega
end LemmaWeave.Problems.GSM8K.Sprint0927A04
