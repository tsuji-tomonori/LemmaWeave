import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0922A03

structure Claws where
  wombatClaws : ℕ
  totalClaws : ℕ
  hWombat : wombatClaws = 9 * 4
  hTotal : totalClaws = wombatClaws + 3
theorem claws_wombats (m : Claws) : m.wombatClaws = 36 := by rw [m.hWombat] <;> norm_num
theorem claws_solution (m : Claws) : m.totalClaws = 39 := by
  calc m.totalClaws = m.wombatClaws + 3 := m.hTotal
    _ = 36 + 3 := by rw [claws_wombats m]
    _ = 39 := by norm_num

structure PartyGifts where
  boysGifts : ℕ
  boysWithout : ℕ
  girlsGifts : ℕ
  girlsWithout : ℕ
  totalWithout : ℕ
  hBoysGifts : 4 * boysGifts = 3 * 16
  hBoysWithout : boysWithout = 16 - boysGifts
  hGirlsGifts : 7 * girlsGifts = 6 * 14
  hGirlsWithout : girlsWithout = 14 - girlsGifts
  hTotal : totalWithout = boysWithout + girlsWithout
theorem gifts_boys (m : PartyGifts) : m.boysGifts = 12 := by have h := m.hBoysGifts; omega
theorem gifts_boys_without (m : PartyGifts) : m.boysWithout = 4 := by
  calc m.boysWithout = 16 - m.boysGifts := m.hBoysWithout
    _ = 16 - 12 := by rw [gifts_boys m]
    _ = 4 := by norm_num
theorem gifts_girls (m : PartyGifts) : m.girlsGifts = 12 := by have h := m.hGirlsGifts; omega
theorem gifts_girls_without (m : PartyGifts) : m.girlsWithout = 2 := by
  calc m.girlsWithout = 14 - m.girlsGifts := m.hGirlsWithout
    _ = 14 - 12 := by rw [gifts_girls m]
    _ = 2 := by norm_num
theorem gifts_solution (m : PartyGifts) : m.totalWithout = 6 := by
  calc m.totalWithout = m.boysWithout + m.girlsWithout := m.hTotal
    _ = 4 + 2 := by rw [gifts_boys_without m, gifts_girls_without m]
    _ = 6 := by norm_num

structure Toddlers where
  onceCounted : ℕ
  actual : ℕ
  hOnce : onceCounted = 26 - 8
  hActual : actual = onceCounted + 3
theorem toddlers_once (m : Toddlers) : m.onceCounted = 18 := by rw [m.hOnce] <;> norm_num
theorem toddlers_solution (m : Toddlers) : m.actual = 21 := by
  calc m.actual = m.onceCounted + 3 := m.hActual
    _ = 18 + 3 := by rw [toddlers_once m]
    _ = 21 := by norm_num

structure Shoes where
  increase : ℕ
  second : ℕ
  total : ℕ
  hIncrease : 100 * increase = 50 * 22
  hSecond : second = 22 + increase
  hTotal : total = 22 + second
theorem shoes_increase (m : Shoes) : m.increase = 11 := by have h := m.hIncrease; omega
theorem shoes_second (m : Shoes) : m.second = 33 := by
  calc m.second = 22 + m.increase := m.hSecond
    _ = 22 + 11 := by rw [shoes_increase m]
    _ = 33 := by norm_num
theorem shoes_solution (m : Shoes) : m.total = 55 := by
  calc m.total = 22 + m.second := m.hTotal
    _ = 22 + 33 := by rw [shoes_second m]
    _ = 55 := by norm_num

structure Running where
  halfWeeks : ℕ
  firstMiles : ℕ
  secondMiles : ℕ
  totalMiles : ℕ
  hHalf : 2 * halfWeeks = 52
  hFirst : firstMiles = 20 * halfWeeks
  hSecond : secondMiles = 30 * halfWeeks
  hTotal : totalMiles = firstMiles + secondMiles
theorem running_half_weeks (m : Running) : m.halfWeeks = 26 := by have h := m.hHalf; omega
theorem running_first (m : Running) : m.firstMiles = 520 := by
  calc m.firstMiles = 20 * m.halfWeeks := m.hFirst
    _ = 20 * 26 := by rw [running_half_weeks m]
    _ = 520 := by norm_num
theorem running_second (m : Running) : m.secondMiles = 780 := by
  calc m.secondMiles = 30 * m.halfWeeks := m.hSecond
    _ = 30 * 26 := by rw [running_half_weeks m]
    _ = 780 := by norm_num
theorem running_solution (m : Running) : m.totalMiles = 1300 := by
  calc m.totalMiles = m.firstMiles + m.secondMiles := m.hTotal
    _ = 520 + 780 := by rw [running_first m, running_second m]
    _ = 1300 := by norm_num

structure ReadingCoupons where
  books : ℕ
  coupons : ℕ
  hBooks : books = 2 * 10
  hCoupons : 5 * coupons = books
theorem reading_books (m : ReadingCoupons) : m.books = 20 := by rw [m.hBooks] <;> norm_num
theorem reading_solution (m : ReadingCoupons) : m.coupons = 4 := by
  have h := m.hCoupons
  rw [reading_books m] at h
  omega

structure Onions where
  brittneyRate : ℕ
  carlRate : ℕ
  brittneyThirty : ℕ
  carlThirty : ℕ
  difference : ℕ
  hBrittneyRate : 5 * brittneyRate = 15
  hCarlRate : 5 * carlRate = 20
  hBrittneyThirty : brittneyThirty = 30 * brittneyRate
  hCarlThirty : carlThirty = 30 * carlRate
  hDifference : difference = carlThirty - brittneyThirty
theorem onions_brittney_rate (m : Onions) : m.brittneyRate = 3 := by have h := m.hBrittneyRate; omega
theorem onions_carl_rate (m : Onions) : m.carlRate = 4 := by have h := m.hCarlRate; omega
theorem onions_brittney (m : Onions) : m.brittneyThirty = 90 := by
  calc m.brittneyThirty = 30 * m.brittneyRate := m.hBrittneyThirty
    _ = 30 * 3 := by rw [onions_brittney_rate m]
    _ = 90 := by norm_num
theorem onions_carl (m : Onions) : m.carlThirty = 120 := by
  calc m.carlThirty = 30 * m.carlRate := m.hCarlThirty
    _ = 30 * 4 := by rw [onions_carl_rate m]
    _ = 120 := by norm_num
theorem onions_solution (m : Onions) : m.difference = 30 := by
  calc m.difference = m.carlThirty - m.brittneyThirty := m.hDifference
    _ = 120 - 90 := by rw [onions_carl m, onions_brittney m]
    _ = 30 := by norm_num

structure WritingNameAmbiguity where
  halfPageLines : ℕ
  lucasLines : ℕ
  lucasWords : ℕ
  intendedLeft : ℕ
  literalLeft : ℕ
  hHalf : halfPageLines = 20 / 2
  hLucasLines : lucasLines = 20 + halfPageLines
  hLucasWords : lucasWords = lucasLines * 10
  hIntended : intendedLeft = 400 - lucasWords
  hLiteral : literalLeft = 400 - 0
theorem writing_half_page (m : WritingNameAmbiguity) : m.halfPageLines = 10 := by rw [m.hHalf] <;> norm_num
theorem writing_lucas_lines (m : WritingNameAmbiguity) : m.lucasLines = 30 := by
  calc m.lucasLines = 20 + m.halfPageLines := m.hLucasLines
    _ = 20 + 10 := by rw [writing_half_page m]
    _ = 30 := by norm_num
theorem writing_lucas_words (m : WritingNameAmbiguity) : m.lucasWords = 300 := by
  calc m.lucasWords = m.lucasLines * 10 := m.hLucasWords
    _ = 30 * 10 := by rw [writing_lucas_lines m]
    _ = 300 := by norm_num
theorem writing_intended (m : WritingNameAmbiguity) : m.intendedLeft = 100 := by
  calc m.intendedLeft = 400 - m.lucasWords := m.hIntended
    _ = 400 - 300 := by rw [writing_lucas_words m]
    _ = 100 := by norm_num
theorem writing_literal (m : WritingNameAmbiguity) : m.literalLeft = 400 := by rw [m.hLiteral] <;> norm_num
theorem writing_nonunique (m : WritingNameAmbiguity) : m.intendedLeft ≠ m.literalLeft := by
  rw [writing_intended m, writing_literal m]
  norm_num

structure DuckSnails where
  first : ℕ
  next : ℕ
  groups : ℕ
  motherThree : ℕ
  eachThree : ℕ
  totalThree : ℕ
  motherTwo : ℕ
  eachTwo : ℕ
  totalTwo : ℕ
  hFirst : first = 3 * 5
  hNext : next = 3 * 9
  hGroups : groups = first + next
  hMotherThree : motherThree = 3 * groups
  hEachThree : 2 * eachThree = motherThree
  hTotalThree : totalThree = groups + motherThree + 2 * eachThree
  hMotherTwo : motherTwo = 2 * groups
  hEachTwo : 2 * eachTwo = motherTwo
  hTotalTwo : totalTwo = groups + motherTwo + 2 * eachTwo
theorem snails_first (m : DuckSnails) : m.first = 15 := by rw [m.hFirst] <;> norm_num
theorem snails_next (m : DuckSnails) : m.next = 27 := by rw [m.hNext] <;> norm_num
theorem snails_groups (m : DuckSnails) : m.groups = 42 := by
  calc m.groups = m.first + m.next := m.hGroups
    _ = 15 + 27 := by rw [snails_first m, snails_next m]
    _ = 42 := by norm_num
theorem snails_mother_three (m : DuckSnails) : m.motherThree = 126 := by
  calc m.motherThree = 3 * m.groups := m.hMotherThree
    _ = 3 * 42 := by rw [snails_groups m]
    _ = 126 := by norm_num
theorem snails_each_three (m : DuckSnails) : m.eachThree = 63 := by
  have h := m.hEachThree
  rw [snails_mother_three m] at h
  omega
theorem snails_three_solution (m : DuckSnails) : m.totalThree = 294 := by
  calc m.totalThree = m.groups + m.motherThree + 2 * m.eachThree := m.hTotalThree
    _ = 42 + 126 + 2 * 63 := by rw [snails_groups m, snails_mother_three m, snails_each_three m]
    _ = 294 := by norm_num
theorem snails_two_solution (m : DuckSnails) : m.totalTwo = 210 := by
  have hm : m.motherTwo = 84 := by
    calc m.motherTwo = 2 * m.groups := m.hMotherTwo
      _ = 2 * 42 := by rw [snails_groups m]
      _ = 84 := by norm_num
  have he : m.eachTwo = 42 := by
    have h := m.hEachTwo
    rw [hm] at h
    omega
  calc m.totalTwo = m.groups + m.motherTwo + 2 * m.eachTwo := m.hTotalTwo
    _ = 42 + 84 + 2 * 42 := by rw [snails_groups m, hm, he]
    _ = 210 := by norm_num
theorem snails_nonunique (m : DuckSnails) : m.totalThree ≠ m.totalTwo := by
  rw [snails_three_solution m, snails_two_solution m]
  norm_num

structure FlowerSales where
  dayTwoTulips : ℕ
  dayTwoRoses : ℕ
  dayThreeTulips : ℕ
  totalTulips : ℕ
  totalRoses : ℕ
  tulipRevenue : ℕ
  roseRevenue : ℕ
  totalRevenue : ℕ
  hDayTwoTulips : dayTwoTulips = 2 * 30
  hDayTwoRoses : dayTwoRoses = 2 * 20
  hDayThreeTulips : 100 * dayThreeTulips = 10 * dayTwoTulips
  hTotalTulips : totalTulips = 30 + dayTwoTulips + dayThreeTulips
  hTotalRoses : totalRoses = 20 + dayTwoRoses + 16
  hTulipRevenue : tulipRevenue = 2 * totalTulips
  hRoseRevenue : roseRevenue = 3 * totalRoses
  hTotalRevenue : totalRevenue = tulipRevenue + roseRevenue
theorem flowers_day_two_tulips (m : FlowerSales) : m.dayTwoTulips = 60 := by rw [m.hDayTwoTulips] <;> norm_num
theorem flowers_day_two_roses (m : FlowerSales) : m.dayTwoRoses = 40 := by rw [m.hDayTwoRoses] <;> norm_num
theorem flowers_day_three_tulips (m : FlowerSales) : m.dayThreeTulips = 6 := by
  have h := m.hDayThreeTulips
  rw [flowers_day_two_tulips m] at h
  omega
theorem flowers_total_tulips (m : FlowerSales) : m.totalTulips = 96 := by
  calc m.totalTulips = 30 + m.dayTwoTulips + m.dayThreeTulips := m.hTotalTulips
    _ = 30 + 60 + 6 := by rw [flowers_day_two_tulips m, flowers_day_three_tulips m]
    _ = 96 := by norm_num
theorem flowers_total_roses (m : FlowerSales) : m.totalRoses = 76 := by
  calc m.totalRoses = 20 + m.dayTwoRoses + 16 := m.hTotalRoses
    _ = 20 + 40 + 16 := by rw [flowers_day_two_roses m]
    _ = 76 := by norm_num
theorem flowers_tulip_revenue (m : FlowerSales) : m.tulipRevenue = 192 := by
  calc m.tulipRevenue = 2 * m.totalTulips := m.hTulipRevenue
    _ = 2 * 96 := by rw [flowers_total_tulips m]
    _ = 192 := by norm_num
theorem flowers_rose_revenue (m : FlowerSales) : m.roseRevenue = 228 := by
  calc m.roseRevenue = 3 * m.totalRoses := m.hRoseRevenue
    _ = 3 * 76 := by rw [flowers_total_roses m]
    _ = 228 := by norm_num
theorem flowers_solution (m : FlowerSales) : m.totalRevenue = 420 := by
  calc m.totalRevenue = m.tulipRevenue + m.roseRevenue := m.hTotalRevenue
    _ = 192 + 228 := by rw [flowers_tulip_revenue m, flowers_rose_revenue m]
    _ = 420 := by norm_num

structure FleaMedicine where
  cashback : ℕ
  totalDiscount : ℕ
  netCost : ℕ
  hCashback : 100 * cashback = 10 * 150
  hDiscount : totalDiscount = cashback + 25
  hNet : netCost = 150 - totalDiscount
theorem flea_cashback (m : FleaMedicine) : m.cashback = 15 := by have h := m.hCashback; omega
theorem flea_discount (m : FleaMedicine) : m.totalDiscount = 40 := by
  calc m.totalDiscount = m.cashback + 25 := m.hDiscount
    _ = 15 + 25 := by rw [flea_cashback m]
    _ = 40 := by norm_num
theorem flea_solution (m : FleaMedicine) : m.netCost = 110 := by
  calc m.netCost = 150 - m.totalDiscount := m.hNet
    _ = 150 - 40 := by rw [flea_discount m]
    _ = 110 := by norm_num

structure Cheesecake where
  slices : ℕ
  revenue : ℕ
  hSlices : slices = 7 * 6
  hRevenue : revenue = slices * 7
theorem cheesecake_slices (m : Cheesecake) : m.slices = 42 := by rw [m.hSlices] <;> norm_num
theorem cheesecake_solution (m : Cheesecake) : m.revenue = 294 := by
  calc m.revenue = m.slices * 7 := m.hRevenue
    _ = 42 * 7 := by rw [cheesecake_slices m]
    _ = 294 := by norm_num

structure TypingTeam where
  total : ℕ
  average : ℕ
  hTotal : total = 64 + 76 + 91 + 80 + 89
  hAverage : 5 * average = total
theorem team_total (m : TypingTeam) : m.total = 400 := by rw [m.hTotal] <;> norm_num
theorem team_solution (m : TypingTeam) : m.average = 80 := by
  have h := m.hAverage
  rw [team_total m] at h
  omega

structure MarioAge where
  maria : ℕ
  mario : ℕ
  hOlder : mario = maria + 1
  hSum : mario + maria = 7
theorem ages_maria (m : MarioAge) : m.maria = 3 := by
  have ho := m.hOlder
  have hs := m.hSum
  omega
theorem ages_solution (m : MarioAge) : m.mario = 4 := by
  calc m.mario = m.maria + 1 := m.hOlder
    _ = 3 + 1 := by rw [ages_maria m]
    _ = 4 := by norm_num

structure PaintingAmbiguity where
  conventionalCanvas : ℕ
  paintFive : ℕ
  conventionalProfit : ℕ
  additiveCanvas : ℕ
  additiveProfit : ℕ
  paintSix : ℕ
  extraLiterProfit : ℕ
  hConventionalCanvas : conventionalCanvas = 3 * 20
  hPaintFive : paintFive = 8 * 5
  hConventionalProfit : conventionalProfit = 200 - 20 - conventionalCanvas - paintFive
  hAdditiveCanvas : additiveCanvas = 20 + 3 * 20
  hAdditiveProfit : additiveProfit = 200 - 20 - additiveCanvas - paintFive
  hPaintSix : paintSix = 8 * 6
  hExtraLiterProfit : extraLiterProfit = 200 - 20 - conventionalCanvas - paintSix
theorem painting_canvas_conventional (m : PaintingAmbiguity) : m.conventionalCanvas = 60 := by rw [m.hConventionalCanvas] <;> norm_num
theorem painting_five_liters (m : PaintingAmbiguity) : m.paintFive = 40 := by rw [m.hPaintFive] <;> norm_num
theorem painting_reference (m : PaintingAmbiguity) : m.conventionalProfit = 80 := by
  rw [m.hConventionalProfit, painting_canvas_conventional m, painting_five_liters m]
  norm_num
theorem painting_canvas_additive (m : PaintingAmbiguity) : m.additiveCanvas = 80 := by rw [m.hAdditiveCanvas] <;> norm_num
theorem painting_additive (m : PaintingAmbiguity) : m.additiveProfit = 60 := by
  rw [m.hAdditiveProfit, painting_canvas_additive m, painting_five_liters m]
  norm_num
theorem painting_six_liters (m : PaintingAmbiguity) : m.paintSix = 48 := by rw [m.hPaintSix] <;> norm_num
theorem painting_extra_liter (m : PaintingAmbiguity) : m.extraLiterProfit = 72 := by
  rw [m.hExtraLiterProfit, painting_canvas_conventional m, painting_six_liters m]
  norm_num
theorem painting_nonunique (m : PaintingAmbiguity) :
    m.conventionalProfit ≠ m.additiveProfit ∧ m.conventionalProfit ≠ m.extraLiterProfit := by
  rw [painting_reference m, painting_additive m, painting_extra_liter m]
  norm_num

end LemmaWeave.Problems.GSM8K.Sprint0922A03
