import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A13

structure ColoredHangers where
  pink green blue yellow total : ℕ
  hPink : pink = 7
  hGreen : green = 4
  hBlue : blue + 1 = green
  hYellow : yellow + 1 = blue
  hTotal : total = pink + green + blue + yellow
theorem hangers_blue (m : ColoredHangers) : m.blue = 3 := by cases m; omega
theorem hangers_yellow (m : ColoredHangers) : m.yellow = 2 := by cases m; omega
theorem hangers_solution (m : ColoredHangers) : m.total = 16 := by cases m; omega

structure JellyBeans where
  napoleon sedrich pairSum twiceSum mikey : ℕ
  hNapoleon : napoleon = 17
  hSedrich : sedrich = napoleon + 4
  hPair : pairSum = napoleon + sedrich
  hTwice : twiceSum = 2 * pairSum
  hMikey : twiceSum = 4 * mikey
theorem jelly_sedrich (m : JellyBeans) : m.sedrich = 21 := by cases m; omega
theorem jelly_pair (m : JellyBeans) : m.pairSum = 38 := by cases m; omega
theorem jelly_solution (m : JellyBeans) : m.mikey = 19 := by cases m; omega

structure TicketTrades where
  bluePerRed redPerYellow yellowNeeded ownedYellow ownedRed ownedBlue
    bluePerYellow targetBlue ownedValue neededBlue versesPerBlue : ℕ
  hBluePerRed : bluePerRed = 10
  hRedPerYellow : redPerYellow = 10
  hYellowNeeded : yellowNeeded = 10
  hOwnedYellow : ownedYellow = 8
  hOwnedRed : ownedRed = 3
  hOwnedBlue : ownedBlue = 7
  hBluePerYellow : bluePerYellow = bluePerRed * redPerYellow
  hTarget : targetBlue = yellowNeeded * bluePerYellow
  hOwnedValue : ownedValue = ownedYellow * bluePerYellow + ownedRed * bluePerRed + ownedBlue
  hNeeded : targetBlue = ownedValue + neededBlue
  hVerses : versesPerBlue = 2
theorem tickets_blue_per_yellow (m : TicketTrades) : m.bluePerYellow = 100 := by cases m; omega
theorem tickets_target (m : TicketTrades) : m.targetBlue = 1000 := by cases m; omega
theorem tickets_owned (m : TicketTrades) : m.ownedValue = 837 := by cases m; omega
theorem tickets_solution (m : TicketTrades) : m.neededBlue = 163 := by cases m; omega

structure DVDDiscount where
  percent discount original paid : ℕ
  hPercent : percent = 25
  hDiscount : discount = 40
  hRate : 100 * discount = percent * original
  hPaid : original = discount + paid
theorem dvd_original (m : DVDDiscount) : m.original = 160 := by cases m; omega
theorem dvd_solution (m : DVDDiscount) : m.paid = 120 := by cases m; omega

structure FriendsByGender where
  boyPercent girlPercent boys total girls : ℕ
  hBoyPercent : boyPercent = 55
  hGirlPercent : girlPercent + boyPercent = 100
  hBoys : boys = 33
  hRate : 100 * boys = boyPercent * total
  hSplit : total = boys + girls
theorem friends_total (m : FriendsByGender) : m.total = 60 := by cases m; omega
theorem friends_solution (m : FriendsByGender) : m.girls = 27 := by cases m; omega

/-- All money values are cents. -/
structure SlipperOrder where
  listPrice discountPercent discount salePrice shoes embroideryEach embroidery shipping total : ℕ
  hList : listPrice = 5000
  hPercent : discountPercent = 10
  hDiscount : 100 * discount = discountPercent * listPrice
  hSale : listPrice = discount + salePrice
  hShoes : shoes = 2
  hEmbroideryEach : embroideryEach = 550
  hEmbroidery : embroidery = shoes * embroideryEach
  hShipping : shipping = 1000
  hTotal : total = salePrice + embroidery + shipping
theorem slippers_discount (m : SlipperOrder) : m.discount = 500 := by cases m; omega
theorem slippers_sale (m : SlipperOrder) : m.salePrice = 4500 := by cases m; omega
theorem slippers_embroidery (m : SlipperOrder) : m.embroidery = 1100 := by cases m; omega
theorem slippers_solution (m : SlipperOrder) : m.total = 6600 := by cases m; omega

structure BlockPyramid where
  row1 row2 row3 row4 row5 total : ℕ
  hRow1 : row1 = 9
  hRow2 : row2 + 2 = row1
  hRow3 : row3 + 2 = row2
  hRow4 : row4 + 2 = row3
  hRow5 : row5 + 2 = row4
  hTotal : total = row1 + row2 + row3 + row4 + row5
theorem pyramid_row2 (m : BlockPyramid) : m.row2 = 7 := by cases m; omega
theorem pyramid_row3 (m : BlockPyramid) : m.row3 = 5 := by cases m; omega
theorem pyramid_row4 (m : BlockPyramid) : m.row4 = 3 := by cases m; omega
theorem pyramid_row5 (m : BlockPyramid) : m.row5 = 1 := by cases m; omega
theorem pyramid_solution (m : BlockPyramid) : m.total = 25 := by cases m; omega

structure BirdPurchase where
  grandparents dollarsEach totalMoney birdPrice birds wingsEach totalWings : ℕ
  hGrandparents : grandparents = 4
  hDollarsEach : dollarsEach = 50
  hMoney : totalMoney = grandparents * dollarsEach
  hBirdPrice : birdPrice = 20
  hBirds : totalMoney = birds * birdPrice
  hWingsEach : wingsEach = 2
  hWings : totalWings = birds * wingsEach
theorem birds_money (m : BirdPurchase) : m.totalMoney = 200 := by cases m; omega
theorem birds_count (m : BirdPurchase) : m.birds = 10 := by cases m; omega
theorem birds_solution (m : BirdPurchase) : m.totalWings = 20 := by cases m; omega

structure GuessingScores where
  hajar difference farah total : ℕ
  hHajar : hajar = 24
  hDifference : difference = 21
  hFarahHigher : farah = hajar + difference
  hTotal : total = hajar + farah
theorem scores_farah (m : GuessingScores) : m.farah = 45 := by cases m; omega
theorem scores_solution (m : GuessingScores) : m.total = 69 := by cases m; omega

/-- Times are minutes. The two stretch-stop counts expose the endpoint ambiguity. -/
structure RoadTripStops where
  drivingMinutes includedStretch excludedStretch food gas stopMinutes
    includedStops excludedStops includedTotal excludedTotal : ℕ
  hDriving : drivingMinutes = 14 * 60
  hIncludedStretch : includedStretch = 7
  hExcludedStretch : excludedStretch = 6
  hFood : food = 2
  hGas : gas = 3
  hStopMinutes : stopMinutes = 20
  hIncludedStops : includedStops = includedStretch + food + gas
  hExcludedStops : excludedStops = excludedStretch + food + gas
  hIncludedTotal : includedTotal = drivingMinutes + includedStops * stopMinutes
  hExcludedTotal : excludedTotal = drivingMinutes + excludedStops * stopMinutes
theorem road_included_stops (m : RoadTripStops) : m.includedStops = 12 := by cases m; omega
theorem road_included_solution (m : RoadTripStops) : m.includedTotal = 1080 := by cases m; omega
theorem road_excluded_solution (m : RoadTripStops) : m.excludedTotal = 1060 := by cases m; omega
theorem road_nonunique (m : RoadTripStops) : m.includedTotal ≠ m.excludedTotal := by cases m; omega

structure TailoringFabric where
  shirts shirtYards shirtDaily pants pantYards pantDaily daily days total : ℕ
  hShirts : shirts = 3
  hShirtYards : shirtYards = 2
  hShirtDaily : shirtDaily = shirts * shirtYards
  hPants : pants = 5
  hPantYards : pantYards = 5
  hPantDaily : pantDaily = pants * pantYards
  hDaily : daily = shirtDaily + pantDaily
  hDays : days = 3
  hTotal : total = daily * days
theorem fabric_shirts (m : TailoringFabric) : m.shirtDaily = 6 := by cases m; omega
theorem fabric_pants (m : TailoringFabric) : m.pantDaily = 25 := by cases m; omega
theorem fabric_solution (m : TailoringFabric) : m.total = 93 := by cases m; omega

structure SwimTransport where
  cars vans carRiders vanRiders carCapacity vanCapacity current capacity additional : ℕ
  hCars : cars = 2
  hVans : vans = 3
  hCarRiders : carRiders = 5
  hVanRiders : vanRiders = 3
  hCarCapacity : carCapacity = 6
  hVanCapacity : vanCapacity = 8
  hCurrent : current = cars * carRiders + vans * vanRiders
  hCapacity : capacity = cars * carCapacity + vans * vanCapacity
  hAdditional : capacity = current + additional
theorem swim_current (m : SwimTransport) : m.current = 19 := by cases m; omega
theorem swim_capacity (m : SwimTransport) : m.capacity = 36 := by cases m; omega
theorem swim_solution (m : SwimTransport) : m.additional = 17 := by cases m; omega

structure BirdWatching where
  monday tuesday wednesday total : ℕ
  hMonday : monday = 70
  hTuesday : monday = 2 * tuesday
  hWednesday : wednesday = tuesday + 8
  hTotal : total = monday + tuesday + wednesday
theorem watching_tuesday (m : BirdWatching) : m.tuesday = 35 := by cases m; omega
theorem watching_wednesday (m : BirdWatching) : m.wednesday = 43 := by cases m; omega
theorem watching_solution (m : BirdWatching) : m.total = 148 := by cases m; omega

structure TextbookSavings where
  schoolPrice discountPercent savingEach outsidePrice books schoolTotal outsideTotal totalSaving : ℕ
  hSchoolPrice : schoolPrice = 45
  hPercent : discountPercent = 20
  hSavingEach : 100 * savingEach = discountPercent * schoolPrice
  hOutside : schoolPrice = savingEach + outsidePrice
  hBooks : books = 3
  hSchoolTotal : schoolTotal = books * schoolPrice
  hOutsideTotal : outsideTotal = books * outsidePrice
  hSaving : schoolTotal = outsideTotal + totalSaving
theorem textbook_each_saving (m : TextbookSavings) : m.savingEach = 9 := by cases m; omega
theorem textbook_outside_price (m : TextbookSavings) : m.outsidePrice = 36 := by cases m; omega
theorem textbook_solution (m : TextbookSavings) : m.totalSaving = 27 := by cases m; omega

structure ApartmentSplit where
  oldMonthly increasePercent newMonthly people shareMonthly months oldAnnual shareAnnual annualSaving : ℕ
  hOld : oldMonthly = 1200
  hIncrease : increasePercent = 40
  hNew : 100 * newMonthly = (100 + increasePercent) * oldMonthly
  hPeople : people = 3
  hShare : newMonthly = people * shareMonthly
  hMonths : months = 12
  hOldAnnual : oldAnnual = oldMonthly * months
  hShareAnnual : shareAnnual = shareMonthly * months
  hSaving : oldAnnual = shareAnnual + annualSaving
theorem apartment_new_monthly (m : ApartmentSplit) : m.newMonthly = 1680 := by cases m; omega
theorem apartment_share_monthly (m : ApartmentSplit) : m.shareMonthly = 560 := by cases m; omega
theorem apartment_share_annual (m : ApartmentSplit) : m.shareAnnual = 6720 := by cases m; omega
theorem apartment_solution (m : ApartmentSplit) : m.annualSaving = 7680 := by cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0927A13
