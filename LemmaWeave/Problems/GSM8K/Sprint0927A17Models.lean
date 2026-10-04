import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A17

structure AxeSharpening where
  sharpenings : ℕ
  totalCost : ℕ
  trees : ℕ
  hCost : totalCost = 35
  hCostRate : totalCost = 5 * sharpenings
  hTrees : trees = 13 * sharpenings
theorem axe_sharpenings (m : AxeSharpening) : m.sharpenings = 7 := by
  have hCost := m.hCost
  have hCostRate := m.hCostRate
  have hTrees := m.hTrees
  omega
theorem axe_solution (m : AxeSharpening) : m.trees = 91 := by
  have hCost := m.hCost
  have hCostRate := m.hCostRate
  have hTrees := m.hTrees
  omega

structure BandGoal where
  tenDollarRevenue : ℕ
  fiveDollarRevenue : ℕ
  earned : ℕ
  remaining : ℕ
  hTen : tenDollarRevenue = 10 * 3
  hFive : fiveDollarRevenue = 5 * 15
  hEarned : earned = tenDollarRevenue + fiveDollarRevenue
  hGoal : earned + remaining = 150
theorem band_ten_revenue (m : BandGoal) : m.tenDollarRevenue = 30 := by
  have hTen := m.hTen
  have hFive := m.hFive
  have hEarned := m.hEarned
  have hGoal := m.hGoal
  omega
theorem band_five_revenue (m : BandGoal) : m.fiveDollarRevenue = 75 := by
  have hTen := m.hTen
  have hFive := m.hFive
  have hEarned := m.hEarned
  have hGoal := m.hGoal
  omega
theorem band_earned (m : BandGoal) : m.earned = 105 := by
  have hTen := m.hTen
  have hFive := m.hFive
  have hEarned := m.hEarned
  have hGoal := m.hGoal
  omega
theorem band_solution (m : BandGoal) : m.remaining = 45 := by
  have hTen := m.hTen
  have hFive := m.hFive
  have hEarned := m.hEarned
  have hGoal := m.hGoal
  omega

structure GrocerySplit where
  beefCost : ℕ
  nonChickenCost : ℕ
  chickenCost : ℕ
  eachShare : ℕ
  hBeef : beefCost = 4 * 3
  hNonChicken : nonChickenCost = beefCost + 1
  hTotal : chickenCost + nonChickenCost = 16
  hSplit : chickenCost = 3 * eachShare
theorem grocery_beef (m : GrocerySplit) : m.beefCost = 12 := by
  have hBeef := m.hBeef
  have hNonChicken := m.hNonChicken
  have hTotal := m.hTotal
  have hSplit := m.hSplit
  omega
theorem grocery_non_chicken (m : GrocerySplit) : m.nonChickenCost = 13 := by
  have hBeef := m.hBeef
  have hNonChicken := m.hNonChicken
  have hTotal := m.hTotal
  have hSplit := m.hSplit
  omega
theorem grocery_chicken (m : GrocerySplit) : m.chickenCost = 3 := by
  have hBeef := m.hBeef
  have hNonChicken := m.hNonChicken
  have hTotal := m.hTotal
  have hSplit := m.hSplit
  omega
theorem grocery_solution (m : GrocerySplit) : m.eachShare = 1 := by
  have hBeef := m.hBeef
  have hNonChicken := m.hNonChicken
  have hTotal := m.hTotal
  have hSplit := m.hSplit
  omega

structure AppleShare where
  remaining : ℕ
  eachShare : ℕ
  hRemaining : remaining + 10 = 55
  hSplit : remaining = 5 * eachShare
theorem apples_remaining (m : AppleShare) : m.remaining = 45 := by
  have hRemaining := m.hRemaining
  have hSplit := m.hSplit
  omega
theorem apples_solution (m : AppleShare) : m.eachShare = 9 := by
  have hRemaining := m.hRemaining
  have hSplit := m.hSplit
  omega

structure WallDecorations where
  sticky : ℕ
  afterNails : ℕ
  total : ℕ
  nails : ℕ
  hSticky : sticky = 15
  hStickyFraction : 3 * afterNails = 5 * sticky
  hAfterFraction : total = 3 * afterNails
  hNailsFraction : 3 * nails = 2 * total
theorem decorations_after_nails (m : WallDecorations) : m.afterNails = 25 := by
  have hSticky := m.hSticky
  have hStickyFraction := m.hStickyFraction
  have hAfterFraction := m.hAfterFraction
  have hNailsFraction := m.hNailsFraction
  omega
theorem decorations_total (m : WallDecorations) : m.total = 75 := by
  have hSticky := m.hSticky
  have hStickyFraction := m.hStickyFraction
  have hAfterFraction := m.hAfterFraction
  have hNailsFraction := m.hNailsFraction
  omega
theorem decorations_solution (m : WallDecorations) : m.nails = 50 := by
  have hSticky := m.hSticky
  have hStickyFraction := m.hStickyFraction
  have hAfterFraction := m.hAfterFraction
  have hNailsFraction := m.hNailsFraction
  omega

structure CardTags where
  w : ℕ
  x : ℕ
  y : ℕ
  z : ℕ
  total : ℕ
  hW : w = 200
  hHalf : 2 * x = w
  hY : y = w + x
  hZ : z = 400
  hTotal : total = w + x + y + z
theorem tags_x (m : CardTags) : m.x = 100 := by
  have hW := m.hW
  have hHalf := m.hHalf
  have hY := m.hY
  have hZ := m.hZ
  have hTotal := m.hTotal
  omega
theorem tags_y (m : CardTags) : m.y = 300 := by
  have hW := m.hW
  have hHalf := m.hHalf
  have hY := m.hY
  have hZ := m.hZ
  have hTotal := m.hTotal
  omega
theorem tags_solution (m : CardTags) : m.total = 1000 := by
  have hW := m.hW
  have hHalf := m.hHalf
  have hY := m.hY
  have hZ := m.hZ
  have hTotal := m.hTotal
  omega

structure Doughnuts where
  total : ℕ
  left : ℕ
  hTotal : total = 2 * 12
  hLeft : left + 8 = total
theorem doughnuts_total (m : Doughnuts) : m.total = 24 := by
  have hTotal := m.hTotal
  have hLeft := m.hLeft
  omega
theorem doughnuts_solution (m : Doughnuts) : m.left = 16 := by
  have hTotal := m.hTotal
  have hLeft := m.hLeft
  omega

/-- The original final sentence says Andrew gave stickers; the modeled quantity is the intended total Zander gave to Andrew and Bill. -/
structure StickerTransfers where
  andrewReceived : ℕ
  remaining : ℕ
  billReceived : ℕ
  intendedGivenAway : ℕ
  hAndrew : 5 * andrewReceived = 100
  hRemaining : remaining + andrewReceived = 100
  hBill : 10 * billReceived = 3 * remaining
  hGiven : intendedGivenAway = andrewReceived + billReceived
theorem stickers_andrew (m : StickerTransfers) : m.andrewReceived = 20 := by
  have hAndrew := m.hAndrew
  have hRemaining := m.hRemaining
  have hBill := m.hBill
  have hGiven := m.hGiven
  omega
theorem stickers_remaining (m : StickerTransfers) : m.remaining = 80 := by
  have hAndrew := m.hAndrew
  have hRemaining := m.hRemaining
  have hBill := m.hBill
  have hGiven := m.hGiven
  omega
theorem stickers_bill (m : StickerTransfers) : m.billReceived = 24 := by
  have hAndrew := m.hAndrew
  have hRemaining := m.hRemaining
  have hBill := m.hBill
  have hGiven := m.hGiven
  omega
theorem stickers_intended_solution (m : StickerTransfers) : m.intendedGivenAway = 44 := by
  have hAndrew := m.hAndrew
  have hRemaining := m.hRemaining
  have hBill := m.hBill
  have hGiven := m.hGiven
  omega

/-- With height 8, the triangle formula specializes to area = 4 * base. -/
structure TriangleBase where
  area : ℕ
  base : ℕ
  hArea : area = 24
  hSpecializedFormula : area = 4 * base
theorem triangle_solution (m : TriangleBase) : m.base = 6 := by
  have hArea := m.hArea
  have hSpecializedFormula := m.hSpecializedFormula
  omega

structure OrangeSales where
  total : ℕ
  reserved : ℕ
  afterReserve : ℕ
  sold : ℕ
  leftBeforeRot : ℕ
  sellable : ℕ
  hTotal : total = 7 * 12
  hReserved : 4 * reserved = total
  hAfterReserve : afterReserve + reserved = total
  hSold : 7 * sold = 3 * afterReserve
  hLeft : leftBeforeRot + sold = afterReserve
  hSellable : sellable + 4 = leftBeforeRot
theorem oranges_total (m : OrangeSales) : m.total = 84 := by
  have hTotal := m.hTotal
  have hReserved := m.hReserved
  have hAfterReserve := m.hAfterReserve
  have hSold := m.hSold
  have hLeft := m.hLeft
  have hSellable := m.hSellable
  omega
theorem oranges_reserved (m : OrangeSales) : m.reserved = 21 := by
  have hTotal := m.hTotal
  have hReserved := m.hReserved
  have hAfterReserve := m.hAfterReserve
  have hSold := m.hSold
  have hLeft := m.hLeft
  have hSellable := m.hSellable
  omega
theorem oranges_sold (m : OrangeSales) : m.sold = 27 := by
  have hTotal := m.hTotal
  have hReserved := m.hReserved
  have hAfterReserve := m.hAfterReserve
  have hSold := m.hSold
  have hLeft := m.hLeft
  have hSellable := m.hSellable
  omega
theorem oranges_solution (m : OrangeSales) : m.sellable = 32 := by
  have hTotal := m.hTotal
  have hReserved := m.hReserved
  have hAfterReserve := m.hAfterReserve
  have hSold := m.hSold
  have hLeft := m.hLeft
  have hSellable := m.hSellable
  omega

structure CerealPurchase where
  unitPrice : ℕ
  totalPrice : ℕ
  hUnit : unitPrice + 24 = 104
  hTotal : totalPrice = 20 * unitPrice
theorem cereal_unit (m : CerealPurchase) : m.unitPrice = 80 := by
  have hUnit := m.hUnit
  have hTotal := m.hTotal
  omega
theorem cereal_solution (m : CerealPurchase) : m.totalPrice = 1600 := by
  have hUnit := m.hUnit
  have hTotal := m.hTotal
  omega

structure JournalPages where
  weeklyPages : ℕ
  totalPages : ℕ
  hWeekly : weeklyPages = 3 * 4
  hTotal : totalPages = 6 * weeklyPages
theorem journal_weekly (m : JournalPages) : m.weeklyPages = 12 := by
  have hWeekly := m.hWeekly
  have hTotal := m.hTotal
  omega
theorem journal_solution (m : JournalPages) : m.totalPages = 72 := by
  have hWeekly := m.hWeekly
  have hTotal := m.hTotal
  omega

structure CardTrade where
  givenValue : ℕ
  receivedValue : ℕ
  profit : ℕ
  hGiven : givenValue = 2 * 8
  hReceived : receivedValue = 21
  hProfit : givenValue + profit = receivedValue
theorem trade_given (m : CardTrade) : m.givenValue = 16 := by
  have hGiven := m.hGiven
  have hReceived := m.hReceived
  have hProfit := m.hProfit
  omega
theorem trade_solution (m : CardTrade) : m.profit = 5 := by
  have hGiven := m.hGiven
  have hReceived := m.hReceived
  have hProfit := m.hProfit
  omega

structure PizzaSlices where
  total : ℕ
  left : ℕ
  hTotal : total = 4 * 12
  hLeft : left + 39 = total
theorem pizza_total (m : PizzaSlices) : m.total = 48 := by
  have hTotal := m.hTotal
  have hLeft := m.hLeft
  omega
theorem pizza_solution (m : PizzaSlices) : m.left = 9 := by
  have hTotal := m.hTotal
  have hLeft := m.hLeft
  omega

structure FishingRate where
  hours : ℕ
  twoHourPeriods : ℕ
  fish : ℕ
  hHours : hours = 12
  hPeriods : 2 * twoHourPeriods = hours
  hFish : fish = 5 * twoHourPeriods
theorem fishing_periods (m : FishingRate) : m.twoHourPeriods = 6 := by
  have hours := m.hours
  have hHours := m.hHours
  have hPeriods := m.hPeriods
  have hFish := m.hFish
  omega
theorem fishing_solution (m : FishingRate) : m.fish = 30 := by
  have hours := m.hours
  have hHours := m.hHours
  have hPeriods := m.hPeriods
  have hFish := m.hFish
  omega

end LemmaWeave.Problems.GSM8K.Sprint0927A17
