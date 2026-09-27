import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A10

structure LemonadeProfit where
  gallons : ℕ
  glassesPerGallon : ℕ
  produced : ℕ
  drank : ℕ
  unsold : ℕ
  sold : ℕ
  costPerGallonCents : ℕ
  totalCostCents : ℕ
  pricePerGlassCents : ℕ
  revenueCents : ℕ
  profitCents : ℕ
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
  house : ℕ
  car : ℕ
  total : ℕ
  priceEach : ℕ
  totalCost : ℕ
  hHouse : house = 2
  hCar : car = 1
  hTotal : total = house + car
  hPrice : priceEach = 8
  hCost : totalCost = total * priceEach
theorem umbrellas_total (m : UmbrellaCost) : m.total = 3 := by cases m; omega
theorem umbrellas_solution (m : UmbrellaCost) : m.totalCost = 24 := by cases m; omega

structure RubberBands where
  harper : ℕ
  fewer : ℕ
  brother : ℕ
  total : ℕ
  hHarper : harper = 15
  hFewer : fewer = 6
  hBrother : harper = brother + fewer
  hTotal : total = harper + brother
theorem bands_brother (m : RubberBands) : m.brother = 9 := by cases m; omega
theorem bands_solution (m : RubberBands) : m.total = 24 := by cases m; omega

structure CrayonGifts where
  boxes : ℕ
  perBox : ℕ
  initial : ℕ
  mae : ℕ
  lea : ℕ
  remaining : ℕ
  moreForLea : ℕ
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
  oranges : ℕ
  piecesPerOrange : ℕ
  totalPieces : ℕ
  piecesPerFriend : ℕ
  friends : ℕ
  hOranges : oranges = 80
  hPiecesPerOrange : piecesPerOrange = 10
  hTotal : totalPieces = oranges * piecesPerOrange
  hPiecesPerFriend : piecesPerFriend = 4
  hFriends : totalPieces = friends * piecesPerFriend
theorem oranges_pieces (m : OrangePieces) : m.totalPieces = 800 := by cases m; omega
theorem oranges_solution (m : OrangePieces) : m.friends = 200 := by cases m; omega

structure StorePurchase where
  starting : ℕ
  baguettes : ℕ
  baguettePrice : ℕ
  baguetteCost : ℕ
  waters : ℕ
  waterPrice : ℕ
  waterCost : ℕ
  spent : ℕ
  left : ℕ
  hStarting : starting = 50
  hBaguettes : baguettes = 2
  hBaguettePrice : baguettePrice = 2
  hBaguetteCost : baguetteCost = baguettes * baguettePrice
  hWaters : waters = 2
  hWaterPrice : waterPrice = 1
  hWaterCost : waterCost = waters * waterPrice
  hSpent : spent = baguetteCost + waterCost
  hLeft : starting = spent + left
theorem store_baguettes (m : StorePurchase) : m.baguetteCost = 4 := by cases m; omega
theorem store_water (m : StorePurchase) : m.waterCost = 2 := by cases m; omega
theorem store_solution (m : StorePurchase) : m.left = 44 := by cases m; omega

structure ThreeGenerations where
  markus : ℕ
  son : ℕ
  grandson : ℕ
  total : ℕ
  hMarkus : markus = 2 * son
  hSon : son = 2 * grandson
  hTotal : total = 140
  hSum : total = markus + son + grandson
theorem ages_ratio_sum (m : ThreeGenerations) : 7 * m.grandson = 140 := by cases m; omega
theorem ages_solution (m : ThreeGenerations) : m.grandson = 20 := by cases m; omega

structure CourseEarnings where
  courses : ℕ
  weeklyHours : ℕ
  weeklyPerCourse : ℕ
  weeks : ℕ
  monthlyHours : ℕ
  hourlyRate : ℕ
  earnings : ℕ
  hCourses : courses = 4
  hWeeklyHours : weeklyHours = 48
  hWeeklyShare : weeklyHours = courses * weeklyPerCourse
  hWeeks : weeks = 4
  hMonthly : monthlyHours = weeklyPerCourse * weeks
  hRate : hourlyRate = 25
  hEarnings : earnings = monthlyHours * hourlyRate
theorem course_weekly (m : CourseEarnings) : m.weeklyPerCourse = 12 := by cases m; omega
theorem course_monthly (m : CourseEarnings) : m.monthlyHours = 48 := by cases m; omega
theorem course_solution (m : CourseEarnings) : m.earnings = 1200 := by cases m; omega

structure FlyerShare where
  total : ℕ
  ryan : ℕ
  alyssa : ℕ
  scott : ℕ
  friends : ℕ
  belinda : ℕ
  percent : ℕ
  hTotal : total = 200
  hRyan : ryan = 42
  hAlyssa : alyssa = 67
  hScott : scott = 51
  hFriends : friends = ryan + alyssa + scott
  hPartition : total = friends + belinda
  hPercent : percent * total = 100 * belinda
theorem flyers_friends (m : FlyerShare) : m.friends = 160 := by cases m; omega
theorem flyers_belinda (m : FlyerShare) : m.belinda = 40 := by cases m; omega
theorem flyers_solution (m : FlyerShare) : m.percent = 20 := by cases m; omega

structure DutyShoes where
  fullPrice : ℕ
  firstPercent : ℕ
  firstDiscount : ℕ
  firstPrice : ℕ
  secondPercent : ℕ
  secondDiscount : ℕ
  finalPrice : ℕ
  hFull : fullPrice = 85
  hFirstPercent : firstPercent = 20
  hFirstDiscount : 100 * firstDiscount = firstPercent * fullPrice
  hFirstPrice : fullPrice = firstDiscount + firstPrice
  hSecondPercent : secondPercent = 25
  hSecondDiscount : 100 * secondDiscount = secondPercent * firstPrice
  hFinal : firstPrice = secondDiscount + finalPrice
theorem shoes_first_discount (m : DutyShoes) : m.firstDiscount = 17 := by cases m; omega
theorem shoes_first_price (m : DutyShoes) : m.firstPrice = 68 := by cases m; omega
theorem shoes_second_discount (m : DutyShoes) : m.secondDiscount = 17 := by cases m; omega
theorem shoes_solution (m : DutyShoes) : m.finalPrice = 51 := by cases m; omega

structure PilotFishSpeed where
  initial : ℕ
  sharkSpeed : ℕ
  sharkIncrease : ℕ
  fishIncrease : ℕ
  fishSpeed : ℕ
  hInitial : initial = 20
  hSharkSpeed : sharkSpeed = 2 * initial
  hSharkIncrease : sharkSpeed = initial + sharkIncrease
  hHalfIncrease : sharkIncrease = 2 * fishIncrease
  hFishSpeed : fishSpeed = initial + fishIncrease
theorem speed_shark (m : PilotFishSpeed) : m.sharkSpeed = 40 := by cases m; omega
theorem speed_fish_increase (m : PilotFishSpeed) : m.fishIncrease = 10 := by cases m; omega
theorem speed_solution (m : PilotFishSpeed) : m.fishSpeed = 30 := by cases m; omega

structure RockyMiles where
  day1 : ℕ
  day2 : ℕ
  day3 : ℕ
  total : ℕ
  hDay1 : day1 = 4
  hDay2 : day2 = 2 * day1
  hDay3 : day3 = 3 * day2
  hTotal : total = day1 + day2 + day3
theorem rocky_day2 (m : RockyMiles) : m.day2 = 8 := by cases m; omega
theorem rocky_day3 (m : RockyMiles) : m.day3 = 24 := by cases m; omega
theorem rocky_solution (m : RockyMiles) : m.total = 36 := by cases m; omega

structure DoorReplacement where
  bedroomDoors : ℕ
  outsideDoors : ℕ
  outsideEach : ℕ
  outsideCost : ℕ
  bedroomEach : ℕ
  bedroomCost : ℕ
  total : ℕ
  hBedroomDoors : bedroomDoors = 3
  hOutsideDoors : outsideDoors = 2
  hOutsideEach : outsideEach = 20
  hOutsideCost : outsideCost = outsideDoors * outsideEach
  hHalf : outsideEach = 2 * bedroomEach
  hBedroomCost : bedroomCost = bedroomDoors * bedroomEach
  hTotal : total = outsideCost + bedroomCost
theorem doors_outside (m : DoorReplacement) : m.outsideCost = 40 := by cases m; omega
theorem doors_bedroom_each (m : DoorReplacement) : m.bedroomEach = 10 := by cases m; omega
theorem doors_bedroom_cost (m : DoorReplacement) : m.bedroomCost = 30 := by cases m; omega
theorem doors_solution (m : DoorReplacement) : m.total = 70 := by cases m; omega

structure AppleFamily where
  apples : ℕ
  children : ℕ
  applesPerChild : ℕ
  childrenApples : ℕ
  adultApples : ℕ
  applesPerAdult : ℕ
  adults : ℕ
  hApples : apples = 450
  hChildren : children = 33
  hPerChild : applesPerChild = 10
  hChildrenApples : childrenApples = children * applesPerChild
  hPartition : apples = childrenApples + adultApples
  hPerAdult : applesPerAdult = 3
  hAdults : adultApples = adults * applesPerAdult
theorem apples_children (m : AppleFamily) : m.childrenApples = 330 := by cases m; omega
theorem apples_adults_share (m : AppleFamily) : m.adultApples = 120 := by cases m; omega
theorem apples_solution (m : AppleFamily) : m.adults = 40 := by cases m; omega

structure DisplayCupboards where
  tall : ℕ
  wide : ℕ
  narrowCapacity : ℕ
  shelves : ℕ
  perShelf : ℕ
  remainingShelves : ℕ
  narrowDisplayed : ℕ
  total : ℕ
  hTall : tall = 20
  hWide : wide = 2 * tall
  hNarrowCapacity : narrowCapacity = 15
  hShelves : shelves = 3
  hPerShelf : narrowCapacity = shelves * perShelf
  hRemaining : shelves = remainingShelves + 1
  hNarrowDisplayed : narrowDisplayed = remainingShelves * perShelf
  hTotal : total = tall + wide + narrowDisplayed
theorem cupboards_wide (m : DisplayCupboards) : m.wide = 40 := by cases m; omega
theorem cupboards_per_shelf (m : DisplayCupboards) : m.perShelf = 5 := by cases m; omega
theorem cupboards_narrow (m : DisplayCupboards) : m.narrowDisplayed = 10 := by cases m; omega
theorem cupboards_solution (m : DisplayCupboards) : m.total = 70 := by cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0927A10
