import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A10

structure LemonadeProfit where
  gallons glassesPerGallon produced drank unsold sold : ℕ
  costPerGallonCents totalCostCents pricePerGlassCents revenueCents profitCents : ℕ
  hGallons : gallons = 2
  hYield : glassesPerGallon = 16
  hProduced : produced = gallons * glassesPerGallon
  hDrank : drank = 5
  hUnsold : unsold = 6
  hPartition : produced = sold + drank + unsold
  hCostEach : costPerGallonCents = 350
  hCost : totalCostCents = gallons * costPerGallonCents
  hPrice : pricePerGlassCents = 100
  hRevenue : revenueCents = sold * pricePerGlassCents
  hProfit : revenueCents = totalCostCents + profitCents
theorem lemonade_produced (m : LemonadeProfit) : m.produced = 32 := by cases m; omega
theorem lemonade_sold (m : LemonadeProfit) : m.sold = 21 := by cases m; omega
theorem lemonade_revenue (m : LemonadeProfit) : m.revenueCents = 2100 := by cases m; omega
theorem lemonade_solution (m : LemonadeProfit) : m.profitCents = 1400 := by cases m; omega

structure UmbrellaCost where
  house car total priceEach totalCost : ℕ
  hHouse : house = 2
  hCar : car = 1
  hTotal : total = house + car
  hPrice : priceEach = 8
  hCost : totalCost = total * priceEach
theorem umbrellas_total (m : UmbrellaCost) : m.total = 3 := by cases m; omega
theorem umbrellas_solution (m : UmbrellaCost) : m.totalCost = 24 := by cases m; omega

structure RubberBands where
  harper fewer brother total : ℕ
  hHarper : harper = 15
  hFewer : fewer = 6
  hBrother : harper = brother + fewer
  hTotal : total = harper + brother
theorem bands_brother (m : RubberBands) : m.brother = 9 := by cases m; omega
theorem bands_solution (m : RubberBands) : m.total = 24 := by cases m; omega

structure CrayonGifts where
  boxes perBox initial mae lea remaining moreForLea : ℕ
  hBoxes : boxes = 4
  hPerBox : perBox = 8
  hInitial : initial = boxes * perBox
  hMae : mae = 5
  hRemaining : remaining = 15
  hPartition : initial = mae + lea + remaining
  hMore : lea = mae + moreForLea
theorem crayons_initial (m : CrayonGifts) : m.initial = 32 := by cases m; omega
theorem crayons_lea (m : CrayonGifts) : m.lea = 12 := by cases m; omega
theorem crayons_solution (m : CrayonGifts) : m.moreForLea = 7 := by cases m; omega

structure OrangePieces where
  oranges piecesPerOrange totalPieces piecesPerFriend friends : ℕ
  hOranges : oranges = 80
  hPiecesPerOrange : piecesPerOrange = 10
  hTotal : totalPieces = oranges * piecesPerOrange
  hPiecesPerFriend : piecesPerFriend = 4
  hFriends : totalPieces = friends * piecesPerFriend
theorem oranges_pieces (m : OrangePieces) : m.totalPieces = 800 := by cases m; omega
theorem oranges_solution (m : OrangePieces) : m.friends = 200 := by cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0927A10
