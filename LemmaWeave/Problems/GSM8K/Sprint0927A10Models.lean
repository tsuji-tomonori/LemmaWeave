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

structure StorePurchase where
  starting baguettes baguettePrice baguetteCost waters waterPrice waterCost spent left : ℕ
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
  markus son grandson total : ℕ
  hMarkus : markus = 2 * son
  hSon : son = 2 * grandson
  hTotal : total = 140
  hSum : total = markus + son + grandson
theorem ages_ratio_sum (m : ThreeGenerations) : 7 * m.grandson = 140 := by cases m; omega
theorem ages_solution (m : ThreeGenerations) : m.grandson = 20 := by cases m; omega

structure CourseEarnings where
  courses weeklyHours weeklyPerCourse weeks monthlyHours hourlyRate earnings : ℕ
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
  total ryan alyssa scott friends belinda percent : ℕ
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
  fullPrice firstPercent firstDiscount firstPrice secondPercent secondDiscount finalPrice : ℕ
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

end LemmaWeave.Problems.GSM8K.Sprint0927A10
