import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0928A19

structure BellsModel where
  small big total : ℕ
  htotal : total = 52
  hsum : total = small + big
  hrelation : 3 * small = big + 12

theorem bells_counts (m : BellsModel) : m.small = 16 ∧ m.big = 36 := by omega
theorem bells_big (m : BellsModel) : m.big = 36 := by omega
theorem bells_solution (m : BellsModel) : m.big = 36 := bells_big m

structure HerbsModel where
  basil sage verbena total : ℕ
  hbasil : basil = 12
  htwice : basil = 2 * sage
  hverbena : verbena = sage + 5
  htotal : total = basil + sage + verbena

theorem herbs_sage (m : HerbsModel) : m.sage = 6 := by omega
theorem herbs_verbena (m : HerbsModel) : m.verbena = 11 := by omega
theorem herbs_total (m : HerbsModel) : m.total = 29 := by omega
theorem herbs_solution (m : HerbsModel) : m.total = 29 := herbs_total m

structure StampsModel where
  smallBooks smallPerBook largeBooks largePerBook smallTotal largeTotal total : ℕ
  hsmallBooks : smallBooks = 4
  hsmallPerBook : smallPerBook = 10
  hlargeBooks : largeBooks = 6
  hlargePerBook : largePerBook = 15
  hsmallTotal : smallTotal = 4 * 10
  hlargeTotal : largeTotal = 6 * 15
  htotal : total = smallTotal + largeTotal

theorem stamps_subtotals (m : StampsModel) : m.smallTotal = 40 ∧ m.largeTotal = 90 := by omega
theorem stamps_total (m : StampsModel) : m.total = 130 := by omega
theorem stamps_solution (m : StampsModel) : m.total = 130 := stamps_total m

structure BlueFlowersModel where
  total red white blue percent : ℕ
  htotal : total = 10
  hred : red = 4
  hwhite : white = 2
  hpartition : total = red + white + blue
  hpercent : 10 * percent = 100 * blue

theorem flowers_blue (m : BlueFlowersModel) : m.blue = 4 := by omega
theorem flowers_percent (m : BlueFlowersModel) : m.percent = 40 := by omega
theorem flowers_solution (m : BlueFlowersModel) : m.percent = 40 := flowers_percent m

structure ChairsModel where
  rows perRow total empty occupied : ℕ
  hrows : rows = 40
  hperRow : perRow = 20
  htotal : total = 40 * 20
  hempty : empty = 10
  hpartition : total = occupied + empty

theorem chairs_total (m : ChairsModel) : m.total = 800 := by omega
theorem chairs_occupied (m : ChairsModel) : m.occupied = 790 := by omega
theorem chairs_solution (m : ChairsModel) : m.occupied = 790 := chairs_occupied m

structure RaceModel where
  distance appleHours macHours fasterHours fasterMinutes : ℕ
  hdistance : distance = 24
  happle : distance = 3 * appleHours
  hmac : distance = 4 * macHours
  hdifference : appleHours = macHours + fasterHours
  hminutes : fasterMinutes = 60 * fasterHours

theorem race_times (m : RaceModel) : m.appleHours = 8 ∧ m.macHours = 6 := by omega
theorem race_difference (m : RaceModel) : m.fasterHours = 2 := by omega
theorem race_minutes (m : RaceModel) : m.fasterMinutes = 120 := by omega
theorem race_solution (m : RaceModel) : m.fasterMinutes = 120 := race_minutes m

structure ShoeSalesModel where
  currentMonthly months currentAnnual targetAnnual shortfall extraMonthly : ℕ
  hcurrentMonthly : currentMonthly = 4000
  hmonths : months = 12
  hcurrentAnnual : currentAnnual = 12 * currentMonthly
  htarget : targetAnnual = 60000
  hshortfall : targetAnnual = currentAnnual + shortfall
  hextra : shortfall = 12 * extraMonthly

theorem shoe_current_annual (m : ShoeSalesModel) : m.currentAnnual = 48000 := by omega
theorem shoe_shortfall (m : ShoeSalesModel) : m.shortfall = 12000 := by omega
theorem shoe_extra_monthly (m : ShoeSalesModel) : m.extraMonthly = 1000 := by omega
theorem shoe_solution (m : ShoeSalesModel) : m.extraMonthly = 1000 := shoe_extra_monthly m

structure SchoolModel where
  teachers principals classes studentsPerClass students people : ℕ
  hteachers : teachers = 48
  hprincipals : principals = 1
  hclasses : classes = 15
  hstudentsPerClass : studentsPerClass = 20
  hstudents : students = 15 * 20
  hpeople : people = teachers + principals + students

theorem school_students (m : SchoolModel) : m.students = 300 := by omega
theorem school_people (m : SchoolModel) : m.people = 349 := by omega
theorem school_solution (m : SchoolModel) : m.people = 349 := school_people m

structure BadgesModel where
  hermione luna celestia total : ℕ
  hhermione : hermione = 14
  hluna : luna = 17
  htotal : total = 83
  hsum : total = hermione + luna + celestia

theorem badges_known (m : BadgesModel) : m.hermione + m.luna = 31 := by omega
theorem badges_celestia (m : BadgesModel) : m.celestia = 52 := by omega
theorem badges_solution (m : BadgesModel) : m.celestia = 52 := badges_celestia m

structure AquaParkModel where
  admission tour touringPeople admissionOnlyPeople touringPrice touringRevenue admissionRevenue total : ℕ
  hadmission : admission = 12
  htour : tour = 6
  htouringPeople : touringPeople = 10
  hadmissionOnlyPeople : admissionOnlyPeople = 5
  htouringPrice : touringPrice = admission + tour
  htouringRevenue : touringRevenue = 10 * touringPrice
  hadmissionRevenue : admissionRevenue = 5 * admission
  htotal : total = touringRevenue + admissionRevenue

theorem aqua_prices (m : AquaParkModel) :
    m.touringPrice = 18 ∧ m.touringRevenue = 180 ∧ m.admissionRevenue = 60 := by omega
theorem aqua_total (m : AquaParkModel) : m.total = 240 := by omega
theorem aqua_solution (m : AquaParkModel) : m.total = 240 := aqua_total m

/-- Reading used by the reference answer: every one of the 500 tables has
    two-fifths as many books as there are tables, hence 200 books per table. -/
structure TableBooksPerTableModel where
  tables booksPerTable totalBooks : ℕ
  htables : tables = 500
  hratio : 5 * booksPerTable = 2 * tables
  htotal : totalBooks = 500 * booksPerTable

theorem table_books_per_table (m : TableBooksPerTableModel) : m.booksPerTable = 200 := by omega
theorem table_books_total (m : TableBooksPerTableModel) : m.totalBooks = 100000 := by omega
theorem table_books_solution (m : TableBooksPerTableModel) : m.totalBooks = 100000 :=
  table_books_total m

/-- Alternative grammatical reading: the class has two-fifths as many books
    in total as tables. -/
structure TableBooksTotalReadingModel where
  tables totalBooks : ℕ
  htables : tables = 500
  hratio : 5 * totalBooks = 2 * tables

theorem table_books_alternative_solution (m : TableBooksTotalReadingModel) :
    m.totalBooks = 200 := by omega

structure MultiToolModel where
  walmartScrewdrivers walmartKnives walmartOther walmartTotal
    targetScrewdrivers targetKnives targetFiles targetScissors targetTotal difference : ℕ
  hwScrewdrivers : walmartScrewdrivers = 1
  hwKnives : walmartKnives = 3
  hwOther : walmartOther = 2
  hwTotal : walmartTotal = walmartScrewdrivers + walmartKnives + walmartOther
  htScrewdrivers : targetScrewdrivers = 1
  htKnives : targetKnives = 2 * walmartKnives
  htFiles : targetFiles = 3
  htScissors : targetScissors = 1
  htTotal : targetTotal = targetScrewdrivers + targetKnives + targetFiles + targetScissors
  hdifference : targetTotal = walmartTotal + difference

theorem multitool_walmart (m : MultiToolModel) : m.walmartTotal = 6 := by omega
theorem multitool_target (m : MultiToolModel) : m.targetKnives = 6 ∧ m.targetTotal = 11 := by omega
theorem multitool_difference (m : MultiToolModel) : m.difference = 5 := by omega
theorem multitool_solution (m : MultiToolModel) : m.difference = 5 := multitool_difference m

structure LibraryModel where
  initial tuesdayLeft returned thursdayTotal fridayTaken current : ℕ
  hinitial : initial = 235
  htuesday : initial = 227 + tuesdayLeft
  hreturned : returned = 56
  hthursday : thursdayTotal = tuesdayLeft + returned
  hfriday : fridayTaken = 35
  hcurrent : thursdayTotal = fridayTaken + current

theorem library_tuesday (m : LibraryModel) : m.tuesdayLeft = 8 := by omega
theorem library_thursday (m : LibraryModel) : m.thursdayTotal = 64 := by omega
theorem library_current (m : LibraryModel) : m.current = 29 := by omega
theorem library_solution (m : LibraryModel) : m.current = 29 := library_current m

/-- Reference-answer reading: “buy 2 times more” means buy twice the
    on-hand amount in addition to the original eight screws. -/
structure ScrewsAdditionalModel where
  onHand bought total piles perPile : ℕ
  honHand : onHand = 8
  hbought : bought = 2 * onHand
  htotal : total = onHand + bought
  hpiles : piles = 4
  hsplit : total = 4 * perPile

theorem screws_bought (m : ScrewsAdditionalModel) : m.bought = 16 ∧ m.total = 24 := by omega
theorem screws_per_pile (m : ScrewsAdditionalModel) : m.perPile = 6 := by omega
theorem screws_solution (m : ScrewsAdditionalModel) : m.perPile = 6 := screws_per_pile m

/-- Alternative colloquial reading: “2 times more” denotes twice as many in
    total, giving sixteen screws and four per pile. -/
structure ScrewsTotalReadingModel where
  onHand total perPile : ℕ
  honHand : onHand = 8
  htotal : total = 2 * onHand
  hsplit : total = 4 * perPile

theorem screws_alternative_solution (m : ScrewsTotalReadingModel) : m.perPile = 4 := by omega

structure ToyStoreModel where
  initialCents cars carPriceCents carsCostCents trackCostCents totalCostCents remainingCents : ℕ
  hinitial : initialCents = 1780
  hcars : cars = 4
  hcarPrice : carPriceCents = 95
  hcarsCost : carsCostCents = 4 * 95
  htrack : trackCostCents = 600
  htotal : totalCostCents = carsCostCents + trackCostCents
  hremaining : initialCents = totalCostCents + remainingCents

theorem toy_store_car_cost (m : ToyStoreModel) : m.carsCostCents = 380 := by omega
theorem toy_store_total_cost (m : ToyStoreModel) : m.totalCostCents = 980 := by omega
theorem toy_store_remaining (m : ToyStoreModel) : m.remainingCents = 800 := by omega
theorem toy_store_solution (m : ToyStoreModel) : m.remainingCents = 800 :=
  toy_store_remaining m

end LemmaWeave.Problems.GSM8K.Sprint0928A19
