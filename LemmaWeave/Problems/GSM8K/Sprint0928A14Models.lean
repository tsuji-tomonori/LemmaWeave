import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0928A14

structure PlayoffModel where
  played : ℕ
  won : ℕ
  remaining : ℕ
  total : ℕ
  required : ℕ
  futureWins : ℕ
  hPlayed : played = 20
  hWon : won = 12
  hRemaining : remaining = 10
  hTotal : total = played + remaining
  hRequired : 3 * required = 2 * total
  hFuture : futureWins + won = required

theorem playoff_total (m : PlayoffModel) : m.total = 30 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem playoff_required (m : PlayoffModel) : m.required = 20 := by
  have h := m.hRequired
  rw [playoff_total m] at h
  omega

theorem playoff_future (m : PlayoffModel) : m.futureWins = 8 := by
  have h := m.hFuture
  rw [playoff_required m,m.hWon] at h
  omega

theorem playoff_solution (m : PlayoffModel) : m.futureWins = 8 := playoff_future m

structure DecorModel where
  curtainPairs : ℕ
  curtainPrice : ℕ
  printCount : ℕ
  printPrice : ℕ
  installation : ℕ
  curtainCost : ℕ
  printCost : ℕ
  total : ℕ
  hCurtainPairs : curtainPairs = 2
  hCurtainPrice : curtainPrice = 30
  hPrintCount : printCount = 9
  hPrintPrice : printPrice = 15
  hInstallation : installation = 50
  hCurtainCost : curtainCost = curtainPairs * curtainPrice
  hPrintCost : printCost = printCount * printPrice
  hTotal : total = curtainCost + printCost + installation

theorem decor_item_costs (m : DecorModel) : m.curtainCost = 60 ∧ m.printCost = 135 := by
  rw [m.hCurtainCost,m.hPrintCost,m.hCurtainPairs,m.hCurtainPrice,m.hPrintCount,m.hPrintPrice]
  norm_num

theorem decor_total (m : DecorModel) : m.total = 245 := by
  rcases decor_item_costs m with ⟨h1,h2⟩
  rw [m.hTotal,h1,h2,m.hInstallation]

theorem decor_solution (m : DecorModel) : m.total = 245 := decor_total m

structure SolarModel where
  homes : ℕ
  panelsPer : ℕ
  required : ℕ
  shortage : ℕ
  available : ℕ
  completed : ℕ
  hHomes : homes = 20
  hPanelsPer : panelsPer = 10
  hRequired : required = homes * panelsPer
  hShortage : shortage = 50
  hAvailable : available + shortage = required
  hCompleted : panelsPer * completed = available

theorem solar_required (m : SolarModel) : m.required = 200 := by
  rw [m.hRequired,m.hHomes,m.hPanelsPer]

theorem solar_available (m : SolarModel) : m.available = 150 := by
  have h := m.hAvailable
  rw [solar_required m,m.hShortage] at h
  omega

theorem solar_completed (m : SolarModel) : m.completed = 15 := by
  have h := m.hCompleted
  rw [m.hPanelsPer,solar_available m] at h
  omega

theorem solar_solution (m : SolarModel) : m.completed = 15 := solar_completed m

structure TurtleModel where
  kristen : ℕ
  kris : ℕ
  trey : ℕ
  more : ℕ
  hKristen : kristen = 12
  hKris : 4 * kris = kristen
  hTrey : trey = 7 * kris
  hMore : kristen + more = trey

theorem turtle_kris (m : TurtleModel) : m.kris = 3 := by
  have h := m.hKris
  rw [m.hKristen] at h
  omega

theorem turtle_trey (m : TurtleModel) : m.trey = 21 := by
  rw [m.hTrey,turtle_kris m]

theorem turtle_more (m : TurtleModel) : m.more = 9 := by
  have h := m.hMore
  rw [m.hKristen,turtle_trey m] at h
  omega

theorem turtle_solution (m : TurtleModel) : m.more = 9 := turtle_more m

structure PeachModel where
  perBasket : ℕ
  baskets : ℕ
  delivered : ℕ
  eaten : ℕ
  remaining : ℕ
  perBox : ℕ
  boxes : ℕ
  hPerBasket : perBasket = 25
  hBaskets : baskets = 5
  hDelivered : delivered = perBasket * baskets
  hEaten : eaten = 5
  hRemaining : remaining + eaten = delivered
  hPerBox : perBox = 15
  hBoxes : perBox * boxes = remaining

theorem peach_delivered (m : PeachModel) : m.delivered = 125 := by
  rw [m.hDelivered,m.hPerBasket,m.hBaskets]

theorem peach_remaining (m : PeachModel) : m.remaining = 120 := by
  have h := m.hRemaining
  rw [m.hEaten,peach_delivered m] at h
  omega

theorem peach_boxes (m : PeachModel) : m.boxes = 8 := by
  have h := m.hBoxes
  rw [m.hPerBox,peach_remaining m] at h
  omega

theorem peach_solution (m : PeachModel) : m.boxes = 8 := peach_boxes m

structure MiniseriesModel where
  episodes : ℕ
  minutesPer : ℕ
  totalMinutes : ℕ
  hours : ℕ
  hEpisodes : episodes = 6
  hMinutesPer : minutesPer = 50
  hTotal : totalMinutes = episodes * minutesPer
  hHours : 60 * hours = totalMinutes

theorem miniseries_minutes (m : MiniseriesModel) : m.totalMinutes = 300 := by
  rw [m.hTotal,m.hEpisodes,m.hMinutesPer]

theorem miniseries_hours (m : MiniseriesModel) : m.hours = 5 := by
  have h := m.hHours
  rw [miniseries_minutes m] at h
  omega

theorem miniseries_solution (m : MiniseriesModel) : m.hours = 5 := miniseries_hours m

structure MarathonModel where
  deanHours : ℕ
  micahHalfHours : ℕ
  jakeHalfHours : ℕ
  totalHalfHours : ℕ
  referenceMicahHours : ℕ
  referenceJakeHours : ℕ
  referenceTotalHours : ℕ
  hDean : deanHours = 9
  hSpeedReading : 2 * micahHalfHours = 3 * (2 * deanHours)
  hJakeReading : 3 * jakeHalfHours = 4 * micahHalfHours
  hTotal : totalHalfHours = 2 * deanHours + micahHalfHours + jakeHalfHours
  hReferenceMicah : 3 * referenceMicahHours = 2 * deanHours
  hReferenceJake : 3 * referenceJakeHours = 4 * referenceMicahHours
  hReferenceTotal : referenceTotalHours = deanHours + referenceMicahHours + referenceJakeHours

theorem marathon_speed_reading_times (m : MarathonModel) :
    m.micahHalfHours = 27 ∧ m.jakeHalfHours = 36 := by
  have h1 := m.hSpeedReading
  have h2 := m.hJakeReading
  rw [m.hDean] at h1
  omega

theorem marathon_speed_reading_total (m : MarathonModel) : m.totalHalfHours = 81 := by
  rcases marathon_speed_reading_times m with ⟨h1,h2⟩
  rw [m.hTotal,m.hDean,h1,h2]

theorem marathon_reference_reading_times (m : MarathonModel) :
    m.referenceMicahHours = 6 ∧ m.referenceJakeHours = 8 := by
  have h1 := m.hReferenceMicah
  have h2 := m.hReferenceJake
  rw [m.hDean] at h1
  omega

theorem marathon_reference_reading_total (m : MarathonModel) : m.referenceTotalHours = 23 := by
  rcases marathon_reference_reading_times m with ⟨h1,h2⟩
  rw [m.hReferenceTotal,m.hDean,h1,h2]

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
  red : ℕ
  black : ℕ
  blue : ℕ
  total : ℕ
  hRed : red = 8
  hBlack : black = red + 10
  hBlue : blue = red + 7
  hTotal : total = red + black + blue

theorem pen_colors (m : PenModel) : m.black = 18 ∧ m.blue = 15 := by
  rw [m.hBlack,m.hBlue,m.hRed]
  norm_num

theorem pen_total (m : PenModel) : m.total = 41 := by
  rcases pen_colors m with ⟨h1,h2⟩
  rw [m.hTotal,m.hRed,h1,h2]

theorem pen_solution (m : PenModel) : m.total = 41 := pen_total m

structure PaperModel where
  total : ℕ
  percent : ℕ
  science : ℕ
  math : ℕ
  remaining : ℕ
  hTotal : total = 120
  hPercent : percent = 25
  hScience : 100 * science = percent * total
  hMath : math = 10
  hRemaining : remaining + science + math = total

theorem paper_science (m : PaperModel) : m.science = 30 := by
  have h := m.hScience
  rw [m.hPercent,m.hTotal] at h
  omega

theorem paper_remaining (m : PaperModel) : m.remaining = 80 := by
  have h := m.hRemaining
  rw [paper_science m,m.hMath,m.hTotal] at h
  omega

theorem paper_solution (m : PaperModel) : m.remaining = 80 := paper_remaining m

structure RoseModel where
  money : ℕ
  price : ℕ
  total : ℕ
  jenna : ℕ
  imma : ℕ
  friends : ℕ
  hMoney : money = 300
  hPrice : price = 2
  hTotal : price * total = money
  hJenna : 3 * jenna = total
  hImma : 2 * imma = total
  hFriends : friends = jenna + imma

theorem rose_total (m : RoseModel) : m.total = 150 := by
  have h := m.hTotal
  rw [m.hPrice,m.hMoney] at h
  omega

theorem rose_allocations (m : RoseModel) : m.jenna = 50 ∧ m.imma = 75 := by
  have h1 := m.hJenna
  have h2 := m.hImma
  rw [rose_total m] at h1 h2
  omega

theorem rose_friends (m : RoseModel) : m.friends = 125 := by
  rcases rose_allocations m with ⟨h1,h2⟩
  rw [m.hFriends,h1,h2]

theorem rose_solution (m : RoseModel) : m.friends = 125 := rose_friends m

structure CabinModel where
  cash : ℕ
  cypressCount : ℕ
  cypressPrice : ℕ
  pineCount : ℕ
  pinePrice : ℕ
  mapleCount : ℕ
  maplePrice : ℕ
  cypressRevenue : ℕ
  pineRevenue : ℕ
  mapleRevenue : ℕ
  funds : ℕ
  cabinCost : ℕ
  left : ℕ
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
    m.cypressRevenue = 2000 ∧ m.pineRevenue = 120000 ∧ m.mapleRevenue = 7200 := by
  rw [m.hCypressRevenue,m.hPineRevenue,m.hMapleRevenue,m.hCypressCount,m.hCypressPrice,m.hPineCount,m.hPinePrice,m.hMapleCount,m.hMaplePrice]
  norm_num

theorem cabin_funds (m : CabinModel) : m.funds = 129350 := by
  rcases cabin_tree_revenues m with ⟨h1,h2,h3⟩
  rw [m.hFunds,m.hCash,h1,h2,h3]

theorem cabin_left (m : CabinModel) : m.left = 350 := by
  have h := m.hLeft
  rw [cabin_funds m,m.hCabinCost] at h
  omega

theorem cabin_solution (m : CabinModel) : m.left = 350 := cabin_left m

structure CookieModel where
  students : ℕ
  percent : ℕ
  wanting : ℕ
  cookiesPer : ℕ
  cookies : ℕ
  hStudents : students = 40
  hPercent : percent = 10
  hWanting : 100 * wanting = percent * students
  hCookiesPer : cookiesPer = 2
  hCookies : cookies = wanting * cookiesPer

theorem cookie_wanting (m : CookieModel) : m.wanting = 4 := by
  have h := m.hWanting
  rw [m.hPercent,m.hStudents] at h
  omega

theorem cookie_count (m : CookieModel) : m.cookies = 8 := by
  rw [m.hCookies,cookie_wanting m,m.hCookiesPer]

theorem cookie_solution (m : CookieModel) : m.cookies = 8 := cookie_count m

structure NewbornModel where
  total : ℕ
  toddlers : ℕ
  factor : ℕ
  teenagers : ℕ
  newborns : ℕ
  hTotal : total = 40
  hToddlers : toddlers = 6
  hFactor : factor = 5
  hTeenagers : teenagers = factor * toddlers
  hPartition : total = teenagers + toddlers + newborns

theorem newborn_teenagers (m : NewbornModel) : m.teenagers = 30 := by
  rw [m.hTeenagers,m.hFactor,m.hToddlers]

theorem newborn_count (m : NewbornModel) : m.newborns = 4 := by
  have h := m.hPartition
  rw [newborn_teenagers m,m.hTotal,m.hToddlers] at h
  omega

theorem newborn_solution (m : NewbornModel) : m.newborns = 4 := newborn_count m

structure TextModel where
  monday : ℕ
  tuesday : ℕ
  otherDaily : ℕ
  otherDays : ℕ
  otherTotal : ℕ
  total : ℕ
  days : ℕ
  average : ℕ
  hMonday : monday = 220
  hTuesday : 2 * tuesday = monday
  hOtherDaily : otherDaily = 50
  hOtherDays : otherDays = 3
  hOtherTotal : otherTotal = otherDaily * otherDays
  hTotal : total = monday + tuesday + otherTotal
  hDays : days = 5
  hAverage : days * average = total

theorem text_parts (m : TextModel) : m.tuesday = 110 ∧ m.otherTotal = 150 := by
  have h := m.hTuesday
  rw [m.hMonday] at h
  constructor
  · omega
  · rw [m.hOtherTotal,m.hOtherDaily,m.hOtherDays]

theorem text_total (m : TextModel) : m.total = 480 := by
  rcases text_parts m with ⟨h1,h2⟩
  rw [m.hTotal,m.hMonday,h1,h2]

theorem text_average (m : TextModel) : m.average = 96 := by
  have h := m.hAverage
  rw [m.hDays,text_total m] at h
  omega

theorem text_solution (m : TextModel) : m.average = 96 := text_average m

structure RoadModel where
  kenDawn : ℕ
  maryDawn : ℕ
  route : ℕ
  hKenDawn : kenDawn = 4
  hTwice : kenDawn = 2 * maryDawn
  hRoute : route = kenDawn + maryDawn + maryDawn + kenDawn

theorem road_mary_dawn (m : RoadModel) : m.maryDawn = 2 := by
  have h := m.hTwice
  rw [m.hKenDawn] at h
  omega

theorem road_route (m : RoadModel) : m.route = 12 := by
  rw [m.hRoute,road_mary_dawn m,m.hKenDawn]

theorem road_solution (m : RoadModel) : m.route = 12 := road_route m

end LemmaWeave.Problems.GSM8K.Sprint0928A14
