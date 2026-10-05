import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0930A18P1

structure TemperatureModel where
  sunday : ℕ
  monday : ℕ
  tuesday : ℕ
  wednesday : ℕ
  thursday : ℕ
  friday : ℕ
  saturday : ℕ
  total : ℕ
  average : ℕ
  hSunday : sunday = 40
  hMonday : monday = 50
  hTuesday : tuesday = 65
  hWednesday : wednesday = 36
  hThursday : thursday = 82
  hFriday : friday = 72
  hSaturday : saturday = 26
  hTotal : total = sunday + monday + tuesday + wednesday + thursday + friday + saturday
  hAverage : total = 7 * average

theorem temperature_total (m : TemperatureModel) : m.total = 371 := by
  cases m <;> simp_all at * <;> omega

theorem temperature_average (m : TemperatureModel) : m.average = 53 := by
  have h := temperature_total m
  cases m <;> simp_all at * <;> omega

structure KittensModel where
  firstBlue : ℕ
  firstBrown : ℕ
  secondBlue : ℕ
  secondBrown : ℕ
  blue : ℕ
  brown : ℕ
  total : ℕ
  bluePercent : ℕ
  hFirstBlue : firstBlue = 3
  hFirstBrown : firstBrown = 7
  hSecondBlue : secondBlue = 4
  hSecondBrown : secondBrown = 6
  hBlue : blue = firstBlue + secondBlue
  hBrown : brown = firstBrown + secondBrown
  hTotal : total = blue + brown
  hPercent : 100 * blue = bluePercent * total

theorem kittens_blue_total (m : KittensModel) : m.blue = 7 := by
  cases m <;> simp_all at * <;> omega

theorem kittens_brown_total (m : KittensModel) : m.brown = 13 := by
  cases m <;> simp_all at * <;> omega

theorem kittens_total (m : KittensModel) : m.total = 20 := by
  have hb := kittens_blue_total m
  have hr := kittens_brown_total m
  cases m <;> simp_all at * <;> omega

theorem kittens_blue_percent (m : KittensModel) : m.bluePercent = 35 := by
  have hb := kittens_blue_total m
  have ht := kittens_total m
  cases m <;> simp_all at * <;> omega

structure StampsModel where
  totalPages : ℕ
  firstPages : ℕ
  rowsPerFirstPage : ℕ
  stampsPerRow : ℕ
  firstPageStamps : ℕ
  firstSectionStamps : ℕ
  remainingPages : ℕ
  stampsPerRemainingPage : ℕ
  remainingStamps : ℕ
  totalStamps : ℕ
  hTotalPages : totalPages = 50
  hFirstPages : firstPages = 10
  hRows : rowsPerFirstPage = 5
  hPerRow : stampsPerRow = 30
  hFirstPage : firstPageStamps = rowsPerFirstPage * stampsPerRow
  hFirstSection : firstSectionStamps = firstPages * firstPageStamps
  hRemainingPages : totalPages = firstPages + remainingPages
  hRemainingPerPage : stampsPerRemainingPage = 50
  hRemaining : remainingStamps = remainingPages * stampsPerRemainingPage
  hTotal : totalStamps = firstSectionStamps + remainingStamps

theorem stamps_first_page (m : StampsModel) : m.firstPageStamps = 150 := by
  cases m <;> simp_all at * <;> omega

theorem stamps_first_section (m : StampsModel) : m.firstSectionStamps = 1500 := by
  have h := stamps_first_page m
  cases m <;> simp_all at * <;> omega

theorem stamps_remaining_pages (m : StampsModel) : m.remainingPages = 40 := by
  cases m <;> simp_all at * <;> omega

theorem stamps_remaining (m : StampsModel) : m.remainingStamps = 2000 := by
  have h := stamps_remaining_pages m
  cases m <;> simp_all at * <;> omega

theorem stamps_total (m : StampsModel) : m.totalStamps = 3500 := by
  have h1 := stamps_first_section m
  have h2 := stamps_remaining m
  cases m <;> simp_all at * <;> omega

structure SocksModel where
  redPairs : ℕ
  bluePairs : ℕ
  redPrice : ℕ
  bluePrice : ℕ
  totalCost : ℕ
  redCost : ℕ
  hRedPairs : redPairs = 4
  hBluePairs : bluePairs = 6
  hRedPrice : redPrice = 3
  hRedCost : redCost = redPairs * redPrice
  hTotal : totalCost = redCost + bluePairs * bluePrice
  hTotalCost : totalCost = 42

theorem socks_red_cost (m : SocksModel) : m.redCost = 12 := by
  cases m <;> simp_all at * <;> omega

theorem socks_blue_price (m : SocksModel) : m.bluePrice = 5 := by
  have h := socks_red_cost m
  cases m <;> simp_all at * <;> omega

structure FiguresModel where
  totalFigures : ℕ
  ordinaryFigures : ℕ
  ordinaryValueEach : ℕ
  premiumValue : ℕ
  discountEach : ℕ
  ordinaryValue : ℕ
  collectionValue : ℕ
  discountTotal : ℕ
  earnings : ℕ
  hTotalFigures : totalFigures = 5
  hOrdinaryFigures : ordinaryFigures = 4
  hOrdinaryValueEach : ordinaryValueEach = 15
  hPremiumValue : premiumValue = 20
  hDiscountEach : discountEach = 5
  hOrdinaryValue : ordinaryValue = ordinaryFigures * ordinaryValueEach
  hCollectionValue : collectionValue = ordinaryValue + premiumValue
  hDiscountTotal : discountTotal = totalFigures * discountEach
  hEarnings : collectionValue = earnings + discountTotal

theorem figures_ordinary_value (m : FiguresModel) : m.ordinaryValue = 60 := by
  cases m <;> simp_all at * <;> omega

theorem figures_collection_value (m : FiguresModel) : m.collectionValue = 80 := by
  have h := figures_ordinary_value m
  cases m <;> simp_all at * <;> omega

theorem figures_discount_total (m : FiguresModel) : m.discountTotal = 25 := by
  cases m <;> simp_all at * <;> omega

theorem figures_earnings (m : FiguresModel) : m.earnings = 55 := by
  have h1 := figures_collection_value m
  have h2 := figures_discount_total m
  cases m <;> simp_all at * <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0930A18P1
