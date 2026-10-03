import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0928A14

structure PlayoffModel where
  played won remaining total required futureWins : ℕ
  hPlayed : played = 20
  hWon : won = 12
  hRemaining : remaining = 10
  hTotal : total = played + remaining
  hRequired : 3 * required = 2 * total
  hFuture : futureWins + won = required

theorem playoff_total (m : PlayoffModel) : m.total = 30 := by omega
theorem playoff_required (m : PlayoffModel) : m.required = 20 := by
  have h := playoff_total m
  omega
theorem playoff_future (m : PlayoffModel) : m.futureWins = 8 := by
  have h := playoff_required m
  omega
theorem playoff_solution (m : PlayoffModel) : m.futureWins = 8 := playoff_future m

structure DecorModel where
  curtainPairs curtainPrice printCount printPrice installation curtainCost printCost total : ℕ
  hCurtainPairs : curtainPairs = 2
  hCurtainPrice : curtainPrice = 30
  hPrintCount : printCount = 9
  hPrintPrice : printPrice = 15
  hInstallation : installation = 50
  hCurtainCost : curtainCost = curtainPairs * curtainPrice
  hPrintCost : printCost = printCount * printPrice
  hTotal : total = curtainCost + printCost + installation

theorem decor_item_costs (m : DecorModel) : m.curtainCost = 60 ∧ m.printCost = 135 := by omega
theorem decor_total (m : DecorModel) : m.total = 245 := by
  have h := decor_item_costs m
  omega
theorem decor_solution (m : DecorModel) : m.total = 245 := decor_total m

structure SolarModel where
  homes panelsPer required shortage available completed : ℕ
  hHomes : homes = 20
  hPanelsPer : panelsPer = 10
  hRequired : required = homes * panelsPer
  hShortage : shortage = 50
  hAvailable : available + shortage = required
  hCompleted : panelsPer * completed = available

theorem solar_required (m : SolarModel) : m.required = 200 := by omega
theorem solar_available (m : SolarModel) : m.available = 150 := by
  have h := solar_required m
  omega
theorem solar_completed (m : SolarModel) : m.completed = 15 := by
  have h := solar_available m
  omega
theorem solar_solution (m : SolarModel) : m.completed = 15 := solar_completed m

structure TurtleModel where
  kristen kris trey more : ℕ
  hKristen : kristen = 12
  hKris : 4 * kris = kristen
  hTrey : trey = 7 * kris
  hMore : kristen + more = trey

theorem turtle_kris (m : TurtleModel) : m.kris = 3 := by omega
theorem turtle_trey (m : TurtleModel) : m.trey = 21 := by
  have h := turtle_kris m
  omega
theorem turtle_more (m : TurtleModel) : m.more = 9 := by
  have h := turtle_trey m
  omega
theorem turtle_solution (m : TurtleModel) : m.more = 9 := turtle_more m

structure PeachModel where
  perBasket baskets delivered eaten remaining perBox boxes : ℕ
  hPerBasket : perBasket = 25
  hBaskets : baskets = 5
  hDelivered : delivered = perBasket * baskets
  hEaten : eaten = 5
  hRemaining : remaining + eaten = delivered
  hPerBox : perBox = 15
  hBoxes : perBox * boxes = remaining

theorem peach_delivered (m : PeachModel) : m.delivered = 125 := by omega
theorem peach_remaining (m : PeachModel) : m.remaining = 120 := by
  have h := peach_delivered m
  omega
theorem peach_boxes (m : PeachModel) : m.boxes = 8 := by
  have h := peach_remaining m
  omega
theorem peach_solution (m : PeachModel) : m.boxes = 8 := peach_boxes m

structure MiniseriesModel where
  episodes minutesPer totalMinutes hours : ℕ
  hEpisodes : episodes = 6
  hMinutesPer : minutesPer = 50
  hTotal : totalMinutes = episodes * minutesPer
  hHours : 60 * hours = totalMinutes

theorem miniseries_minutes (m : MiniseriesModel) : m.totalMinutes = 300 := by omega
theorem miniseries_hours (m : MiniseriesModel) : m.hours = 5 := by
  have h := miniseries_minutes m
  omega
theorem miniseries_solution (m : MiniseriesModel) : m.hours = 5 := miniseries_hours m

structure MarathonModel where
  deanHours micahHalfHours jakeHalfHours totalHalfHours : ℕ
  referenceMicahHours referenceJakeHours referenceTotalHours : ℕ
  hDean : deanHours = 9
  hSpeedReading : 2 * micahHalfHours = 3 * (2 * deanHours)
  hJakeReading : 3 * jakeHalfHours = 4 * micahHalfHours
  hTotal : totalHalfHours = 2 * deanHours + micahHalfHours + jakeHalfHours
  hReferenceMicah : 3 * referenceMicahHours = 2 * deanHours
  hReferenceJake : 3 * referenceJakeHours = 4 * referenceMicahHours
  hReferenceTotal : referenceTotalHours = deanHours + referenceMicahHours + referenceJakeHours

theorem marathon_speed_reading_times (m : MarathonModel) :
    m.micahHalfHours = 27 ∧ m.jakeHalfHours = 36 := by omega
theorem marathon_speed_reading_total (m : MarathonModel) : m.totalHalfHours = 81 := by
  have h := marathon_speed_reading_times m
  omega
theorem marathon_reference_reading_times (m : MarathonModel) :
    m.referenceMicahHours = 6 ∧ m.referenceJakeHours = 8 := by omega
theorem marathon_reference_reading_total (m : MarathonModel) : m.referenceTotalHours = 23 := by
  have h := marathon_reference_reading_times m
  omega
theorem marathon_readings_disagree (m : MarathonModel) :
    m.totalHalfHours ≠ 2 * m.referenceTotalHours := by
  have h₁ := marathon_speed_reading_total m
  have h₂ := marathon_reference_reading_total m
  omega
theorem marathon_solution (m : MarathonModel) :
    m.totalHalfHours = 81 ∧ m.referenceTotalHours = 23 ∧
      m.totalHalfHours ≠ 2 * m.referenceTotalHours := by
  exact ⟨marathon_speed_reading_total m, marathon_reference_reading_total m,
    marathon_readings_disagree m⟩

structure PenModel where
  red black blue total : ℕ
  hRed : red = 8
  hBlack : black = red + 10
  hBlue : blue = red + 7
  hTotal : total = red + black + blue

theorem pen_colors (m : PenModel) : m.black = 18 ∧ m.blue = 15 := by omega
theorem pen_total (m : PenModel) : m.total = 41 := by
  have h := pen_colors m
  omega
theorem pen_solution (m : PenModel) : m.total = 41 := pen_total m

structure PaperModel where
  total percent science math remaining : ℕ
  hTotal : total = 120
  hPercent : percent = 25
  hScience : 100 * science = percent * total
  hMath : math = 10
  hRemaining : remaining + science + math = total

theorem paper_science (m : PaperModel) : m.science = 30 := by omega
theorem paper_remaining (m : PaperModel) : m.remaining = 80 := by
  have h := paper_science m
  omega
theorem paper_solution (m : PaperModel) : m.remaining = 80 := paper_remaining m

structure RoseModel where
  money price total jenna imma friends : ℕ
  hMoney : money = 300
  hPrice : price = 2
  hTotal : price * total = money
  hJenna : 3 * jenna = total
  hImma : 2 * imma = total
  hFriends : friends = jenna + imma

theorem rose_total (m : RoseModel) : m.total = 150 := by omega
theorem rose_allocations (m : RoseModel) : m.jenna = 50 ∧ m.imma = 75 := by
  have h := rose_total m
  omega
theorem rose_friends (m : RoseModel) : m.friends = 125 := by
  have h := rose_allocations m
  omega
theorem rose_solution (m : RoseModel) : m.friends = 125 := rose_friends m

structure CabinModel where
  cash cypressCount cypressPrice pineCount pinePrice mapleCount maplePrice : ℕ
  cypressRevenue pineRevenue mapleRevenue funds cabinCost left : ℕ
  hCash : cash = 150
  hCypressCount : cypressCount = 20
  hCypressPrice : cypressPrice = 100
  hPineCount : pineCount = 600
  hPinePrice : pinePrice = 200
  hMapleCount : mapleCount = 24
  hMaplePrice : maplePrice = 300
  hCypressRevenue : cypressRevenue = cypressCount * cypressPrice
  hPineRevenue : pineRevenue = pineCount * pinePrice
  hMapleRevenue : mapleRevenue = mapleCount * maplePrice
  hFunds : funds = cash + cypressRevenue + pineRevenue + mapleRevenue
  hCabinCost : cabinCost = 129000
  hLeft : left + cabinCost = funds

theorem cabin_tree_revenues (m : CabinModel) :
    m.cypressRevenue = 2000 ∧ m.pineRevenue = 120000 ∧ m.mapleRevenue = 7200 := by omega
theorem cabin_funds (m : CabinModel) : m.funds = 129350 := by
  have h := cabin_tree_revenues m
  omega
theorem cabin_left (m : CabinModel) : m.left = 350 := by
  have h := cabin_funds m
  omega
theorem cabin_solution (m : CabinModel) : m.left = 350 := cabin_left m

structure CookieModel where
  students percent wanting cookiesPer cookies : ℕ
  hStudents : students = 40
  hPercent : percent = 10
  hWanting : 100 * wanting = percent * students
  hCookiesPer : cookiesPer = 2
  hCookies : cookies = wanting * cookiesPer

theorem cookie_wanting (m : CookieModel) : m.wanting = 4 := by omega
theorem cookie_count (m : CookieModel) : m.cookies = 8 := by
  have h := cookie_wanting m
  omega
theorem cookie_solution (m : CookieModel) : m.cookies = 8 := cookie_count m

structure NewbornModel where
  total toddlers factor teenagers newborns : ℕ
  hTotal : total = 40
  hToddlers : toddlers = 6
  hFactor : factor = 5
  hTeenagers : teenagers = factor * toddlers
  hPartition : total = teenagers + toddlers + newborns

theorem newborn_teenagers (m : NewbornModel) : m.teenagers = 30 := by omega
theorem newborn_count (m : NewbornModel) : m.newborns = 4 := by
  have h := newborn_teenagers m
  omega
theorem newborn_solution (m : NewbornModel) : m.newborns = 4 := newborn_count m

structure TextModel where
  monday tuesday otherDaily otherDays otherTotal total days average : ℕ
  hMonday : monday = 220
  hTuesday : 2 * tuesday = monday
  hOtherDaily : otherDaily = 50
  hOtherDays : otherDays = 3
  hOtherTotal : otherTotal = otherDaily * otherDays
  hTotal : total = monday + tuesday + otherTotal
  hDays : days = 5
  hAverage : days * average = total

theorem text_parts (m : TextModel) : m.tuesday = 110 ∧ m.otherTotal = 150 := by omega
theorem text_total (m : TextModel) : m.total = 480 := by
  have h := text_parts m
  omega
theorem text_average (m : TextModel) : m.average = 96 := by
  have h := text_total m
  omega
theorem text_solution (m : TextModel) : m.average = 96 := text_average m

structure RoadModel where
  kenDawn maryDawn route : ℕ
  hKenDawn : kenDawn = 4
  hTwice : kenDawn = 2 * maryDawn
  hRoute : route = kenDawn + maryDawn + maryDawn + kenDawn

theorem road_mary_dawn (m : RoadModel) : m.maryDawn = 2 := by omega
theorem road_route (m : RoadModel) : m.route = 12 := by
  have h := road_mary_dawn m
  omega
theorem road_solution (m : RoadModel) : m.route = 12 := road_route m

end LemmaWeave.Problems.GSM8K.Sprint0928A14
