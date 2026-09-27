import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A17

structure AxeSharpening where
  sharpenings : ℕ
  totalCost : ℕ
  trees : ℕ
  hCost : totalCost = 35
  hCostRate : totalCost = 5 * sharpenings
  hTrees : trees = 13 * sharpenings
theorem axe_sharpenings (m : AxeSharpening) : m.sharpenings = 7 := by cases m; omega
theorem axe_solution (m : AxeSharpening) : m.trees = 91 := by cases m; omega

structure BandGoal where
  tenDollarRevenue : ℕ
  fiveDollarRevenue : ℕ
  earned : ℕ
  remaining : ℕ
  hTen : tenDollarRevenue = 10 * 3
  hFive : fiveDollarRevenue = 5 * 15
  hEarned : earned = tenDollarRevenue + fiveDollarRevenue
  hGoal : earned + remaining = 150
theorem band_ten_revenue (m : BandGoal) : m.tenDollarRevenue = 30 := by cases m; omega
theorem band_five_revenue (m : BandGoal) : m.fiveDollarRevenue = 75 := by cases m; omega
theorem band_earned (m : BandGoal) : m.earned = 105 := by cases m; omega
theorem band_solution (m : BandGoal) : m.remaining = 45 := by cases m; omega

structure GrocerySplit where
  beefCost : ℕ
  nonChickenCost : ℕ
  chickenCost : ℕ
  eachShare : ℕ
  hBeef : beefCost = 4 * 3
  hNonChicken : nonChickenCost = beefCost + 1
  hTotal : chickenCost + nonChickenCost = 16
  hSplit : chickenCost = 3 * eachShare
theorem grocery_beef (m : GrocerySplit) : m.beefCost = 12 := by cases m; omega
theorem grocery_non_chicken (m : GrocerySplit) : m.nonChickenCost = 13 := by cases m; omega
theorem grocery_chicken (m : GrocerySplit) : m.chickenCost = 3 := by cases m; omega
theorem grocery_solution (m : GrocerySplit) : m.eachShare = 1 := by cases m; omega

structure AppleShare where
  remaining : ℕ
  eachShare : ℕ
  hRemaining : remaining + 10 = 55
  hSplit : remaining = 5 * eachShare
theorem apples_remaining (m : AppleShare) : m.remaining = 45 := by cases m; omega
theorem apples_solution (m : AppleShare) : m.eachShare = 9 := by cases m; omega

structure WallDecorations where
  sticky : ℕ
  afterNails : ℕ
  total : ℕ
  nails : ℕ
  hSticky : sticky = 15
  hStickyFraction : 3 * afterNails = 5 * sticky
  hAfterFraction : total = 3 * afterNails
  hNailsFraction : 3 * nails = 2 * total
theorem decorations_after_nails (m : WallDecorations) : m.afterNails = 25 := by cases m; omega
theorem decorations_total (m : WallDecorations) : m.total = 75 := by cases m; omega
theorem decorations_solution (m : WallDecorations) : m.nails = 50 := by cases m; omega

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
theorem tags_x (m : CardTags) : m.x = 100 := by cases m; omega
theorem tags_y (m : CardTags) : m.y = 300 := by cases m; omega
theorem tags_solution (m : CardTags) : m.total = 1000 := by cases m; omega

structure Doughnuts where
  total : ℕ
  left : ℕ
  hTotal : total = 2 * 12
  hLeft : left + 8 = total
theorem doughnuts_total (m : Doughnuts) : m.total = 24 := by cases m; omega
theorem doughnuts_solution (m : Doughnuts) : m.left = 16 := by cases m; omega

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
theorem stickers_andrew (m : StickerTransfers) : m.andrewReceived = 20 := by cases m; omega
theorem stickers_remaining (m : StickerTransfers) : m.remaining = 80 := by cases m; omega
theorem stickers_bill (m : StickerTransfers) : m.billReceived = 24 := by cases m; omega
theorem stickers_intended_solution (m : StickerTransfers) : m.intendedGivenAway = 44 := by cases m; omega

/-- With height 8, the triangle formula specializes to area = 4 * base. -/
structure TriangleBase where
  area : ℕ
  base : ℕ
  hArea : area = 24
  hSpecializedFormula : area = 4 * base
theorem triangle_solution (m : TriangleBase) : m.base = 6 := by cases m; omega

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
theorem oranges_total (m : OrangeSales) : m.total = 84 := by cases m; omega
theorem oranges_reserved (m : OrangeSales) : m.reserved = 21 := by cases m; omega
theorem oranges_sold (m : OrangeSales) : m.sold = 27 := by cases m; omega
theorem oranges_solution (m : OrangeSales) : m.sellable = 32 := by cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0927A17
