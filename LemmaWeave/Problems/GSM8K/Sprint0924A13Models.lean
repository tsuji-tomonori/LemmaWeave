import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0924A13

structure Grocery where
  snickers : ℕ
  mms : ℕ
  total : ℕ
  cash : ℕ
  change : ℕ
  hSnickers : snickers = 2 * 150
  hMms : mms = 3 * (2 * 150)
  hTotal : total = snickers + mms
  hCash : cash = 2 * 1000
  hChange : change + total = cash
theorem grocery_snickers (m : Grocery) : m.snickers = 300 := by omega
theorem grocery_mms (m : Grocery) : m.mms = 900 := by omega
theorem grocery_total (m : Grocery) : m.total = 1200 := by omega
theorem grocery_cash (m : Grocery) : m.cash = 2000 := by omega
theorem grocery_solution (m : Grocery) : m.change = 800 := by omega

structure Download where
  install : ℕ
  combined : ℕ
  tutorial : ℕ
  total : ℕ
  hInstall : 2 * install = 10
  hCombined : combined = 10 + install
  hTutorial : tutorial = 3 * combined
  hTotal : total = combined + tutorial
theorem download_install (m : Download) : m.install = 5 := by omega
theorem download_combined (m : Download) : m.combined = 15 := by omega
theorem download_tutorial (m : Download) : m.tutorial = 45 := by omega
theorem download_solution (m : Download) : m.total = 60 := by omega

structure Kona where
  withStop : ℕ
  directRound : ℕ
  extra : ℕ
  hWith : withStop = 9 + 24 + 27
  hDirect : directRound = 27 + 27
  hExtra : directRound + extra = withStop
theorem kona_with_stop (m : Kona) : m.withStop = 60 := by omega
theorem kona_direct (m : Kona) : m.directRound = 54 := by omega
theorem kona_solution (m : Kona) : m.extra = 6 := by omega

structure Coins where
  before : ℕ
  after : ℕ
  hBefore : before = 20 + 30 + 30 + 40
  hAfter : after + 20 = before
theorem coins_before (m : Coins) : m.before = 120 := by omega
theorem coins_solution (m : Coins) : m.after = 100 := by omega

structure Pages where
  miles : ℕ
  daphne : ℕ
  longest : ℕ
  hMiles : miles = 240 * 5
  hDaphne : daphne = 25 * 50
  hLongest : longest = daphne
theorem pages_miles (m : Pages) : m.miles = 1200 := by omega
theorem pages_daphne (m : Pages) : m.daphne = 1250 := by omega
theorem pages_compare (m : Pages) : m.daphne = m.miles + 50 := by omega
theorem pages_solution (m : Pages) : m.longest = 1250 := by omega

structure Cookies where
  total : ℕ
  children : ℕ
  each : ℕ
  hTotal : total = 3 * 25
  hChildren : children = 4 + 1
  hShare : total = children * each
theorem cookies_total (m : Cookies) : m.total = 75 := by omega
theorem cookies_children (m : Cookies) : m.children = 5 := by omega
theorem cookies_solution (m : Cookies) : m.each = 15 := by omega

structure Sales where
  first : ℕ
  second : ℕ
  third : ℕ
  fourth : ℕ
  total : ℕ
  hCommission : total * 25 = 175
  hSecond : second = 2 * first
  hThird : third = 0
  hFourth : fourth = 1
  hTotal : first + second + third + fourth = total
theorem sales_total (m : Sales) : m.total = 7 := by omega
theorem sales_relation (m : Sales) : m.second = 2 * m.first := m.hSecond
theorem sales_first (m : Sales) : m.first = 2 := by omega
theorem sales_solution (m : Sales) : m.second = 4 := by omega

structure Race where
  firstPace : ℕ
  secondPace : ℕ
  firstFive : ℕ
  secondFive : ℕ
  total : ℕ
  hFirstPace : 3 * firstPace = 21
  hSecondPace : 3 * secondPace = 24
  hFirstFive : firstFive = 5 * firstPace
  hSecondFive : secondFive = 5 * secondPace
  hTotal : total = firstFive + secondFive
theorem race_first_pace (m : Race) : m.firstPace = 7 := by omega
theorem race_second_pace (m : Race) : m.secondPace = 8 := by omega
theorem race_first_five (m : Race) : m.firstFive = 35 := by omega
theorem race_second_five (m : Race) : m.secondFive = 40 := by omega
theorem race_solution (m : Race) : m.total = 75 := by omega

/-- The overlap records businesses from which Brandon both quit and was fired. -/
structure Businesses where
  fired : ℕ
  quit : ℕ
  overlap : ℕ
  remaining : ℕ
  hFired : 2 * fired = 72
  hQuit : 3 * quit = 72
  hOverlapNonnegative : 0 ≤ overlap
  hOverlapBound : overlap ≤ quit
  hInclusionExclusion : remaining + fired + quit = 72 + overlap
theorem businesses_fired (m : Businesses) : m.fired = 36 := by omega
theorem businesses_quit (m : Businesses) : m.quit = 24 := by omega
theorem businesses_formula (m : Businesses) : m.remaining = 12 + m.overlap := by omega
theorem businesses_solution (m : Businesses) : 12 ≤ m.remaining ∧ m.remaining ≤ 36 := by
  constructor <;> omega
theorem businesses_disjoint_solution (m : Businesses) (h : m.overlap = 0) :
    m.remaining = 12 := by omega
theorem businesses_overlap_counterexample (m : Businesses) (h : m.overlap = 24) :
    m.remaining = 36 := by omega

structure Oranges where
  original : ℕ
  left : ℕ
  now : ℕ
  fewer : ℕ
  hOriginal : 12 * original = 108
  hLeft : left = 108 - 36
  hNow : 12 * now = left
  hFewer : now + fewer = original
theorem oranges_original (m : Oranges) : m.original = 9 := by omega
theorem oranges_left (m : Oranges) : m.left = 72 := by omega
theorem oranges_now (m : Oranges) : m.now = 6 := by omega
theorem oranges_solution (m : Oranges) : m.fewer = 3 := by omega

structure Bowling where
  richardFirst : ℕ
  patrickSecond : ℕ
  richardSecond : ℕ
  patrickTotal : ℕ
  richardTotal : ℕ
  difference : ℕ
  hRichardFirst : richardFirst = 70 + 15
  hPatrickSecond : patrickSecond = 2 * richardFirst
  hRichardSecond : richardSecond + 3 = patrickSecond
  hPatrickTotal : patrickTotal = 70 + patrickSecond
  hRichardTotal : richardTotal = richardFirst + richardSecond
  hDifference : patrickTotal + difference = richardTotal
theorem bowling_richard_first (m : Bowling) : m.richardFirst = 85 := by omega
theorem bowling_patrick_second (m : Bowling) : m.patrickSecond = 170 := by omega
theorem bowling_richard_second (m : Bowling) : m.richardSecond = 167 := by omega
theorem bowling_patrick_total (m : Bowling) : m.patrickTotal = 240 := by omega
theorem bowling_richard_total (m : Bowling) : m.richardTotal = 252 := by omega
theorem bowling_solution (m : Bowling) : m.difference = 12 := by omega

structure Almond where
  almondJar : ℕ
  almondHalf : ℕ
  peanutHalf : ℕ
  difference : ℕ
  hJar : almondJar = 3 * 300
  hAlmondHalf : 2 * almondHalf = almondJar
  hPeanutHalf : 2 * peanutHalf = 300
  hDifference : peanutHalf + difference = almondHalf
theorem almond_jar (m : Almond) : m.almondJar = 900 := by omega
theorem almond_half (m : Almond) : m.almondHalf = 450 := by omega
theorem almond_peanut_half (m : Almond) : m.peanutHalf = 150 := by omega
theorem almond_solution (m : Almond) : m.difference = 300 := by omega

structure Salon where
  customerCans : ℕ
  perCustomer : ℕ
  customers : ℕ
  hCustomerCans : customerCans + 5 = 33
  hPerCustomer : perCustomer = 1 + 1
  hCustomers : customerCans = customers * perCustomer
theorem salon_customer_cans (m : Salon) : m.customerCans = 28 := by omega
theorem salon_per_customer (m : Salon) : m.perCustomer = 2 := by omega
theorem salon_solution (m : Salon) : m.customers = 14 := by omega

structure Bags where
  crayons : ℕ
  books : ℕ
  calculators : ℕ
  change : ℕ
  bags : ℕ
  hCrayons : crayons = 5 * 5
  hBooks : books = 10 * 5
  hCalculators : calculators = 3 * 5
  hChange : crayons + books + calculators + change = 200
  hBags : change = bags * 10
theorem bags_crayons (m : Bags) : m.crayons = 25 := by omega
theorem bags_books (m : Bags) : m.books = 50 := by omega
theorem bags_calculators (m : Bags) : m.calculators = 15 := by omega
theorem bags_change (m : Bags) : m.change = 110 := by omega
theorem bags_solution (m : Bags) : m.bags = 11 := by omega

structure Allowance where
  saved : ℕ
  afterGame : ℕ
  book : ℕ
  left : ℕ
  hSaved : saved = 10 * 4
  hGame : 2 * afterGame = saved
  hBook : 4 * book = afterGame
  hLeft : left + book = afterGame
theorem allowance_saved (m : Allowance) : m.saved = 40 := by omega
theorem allowance_after_game (m : Allowance) : m.afterGame = 20 := by omega
theorem allowance_book (m : Allowance) : m.book = 5 := by omega
theorem allowance_solution (m : Allowance) : m.left = 15 := by omega

end LemmaWeave.Problems.GSM8K.Sprint0924A13
