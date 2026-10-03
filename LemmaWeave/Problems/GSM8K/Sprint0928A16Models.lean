import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0928A16

structure HillModel where
  riverbedToBase : ℕ
  riverbedToPeak : ℕ
  hillHeight : ℕ
  hbase : riverbedToBase = 300
  hquarter : riverbedToPeak = 4 * riverbedToBase
  hheight : riverbedToPeak = riverbedToBase + hillHeight

theorem hill_peak_distance (m : HillModel) : m.riverbedToPeak = 1200 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem hill_height (m : HillModel) : m.hillHeight = 900 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem hill_solution (m : HillModel) : m.hillHeight = 900 := hill_height m

structure SpeedModel where
  distance : ℕ
  hours : ℕ
  speed : ℕ
  limit : ℕ
  excess : ℕ
  hdistance : distance = 150
  hhours : hours = 2
  htravel : distance = speed * hours
  hlimit : limit = 60
  hexcess : speed = limit + excess

theorem speed_rate (m : SpeedModel) : m.speed = 75 := by
  have h := m.htravel
  rw [m.hdistance, m.hhours] at h
  omega

theorem speed_excess (m : SpeedModel) : m.excess = 15 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem speed_solution (m : SpeedModel) : m.excess = 15 := speed_excess m

structure SchoolStepsModel where
  oneWay : ℕ
  roundTrip : ℕ
  days : ℕ
  total : ℕ
  honeWay : oneWay = 150
  hroundTrip : roundTrip = 2 * oneWay
  hdays : days = 5
  htotal : total = roundTrip * days

theorem school_steps_daily (m : SchoolStepsModel) : m.roundTrip = 300 := by
  rw [m.hroundTrip, m.honeWay]

theorem school_steps_total (m : SchoolStepsModel) : m.total = 1500 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem school_steps_solution (m : SchoolStepsModel) : m.total = 1500 := school_steps_total m

structure SurveyModel where
  hours : ℕ
  hourly : ℕ
  earned : ℕ
  spent : ℕ
  left : ℕ
  hhours : hours = 8
  hhourly : hourly = 18
  hearned : earned = hours * hourly
  hhalf : earned = 2 * spent
  hleft : earned = spent + left

theorem survey_earned (m : SurveyModel) : m.earned = 144 := by
  rw [m.hearned, m.hhours, m.hhourly]

theorem survey_spent (m : SurveyModel) : m.spent = 72 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem survey_left (m : SurveyModel) : m.left = 72 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem survey_solution (m : SurveyModel) : m.left = 72 := survey_left m

structure JourneyModel where
  distance : ℕ
  speed : ℕ
  drivingHours : ℕ
  lunchMinutes : ℕ
  bathroomMinutes : ℕ
  breakMinutes : ℕ
  breakHours : ℕ
  totalHours : ℕ
  hdistance : distance = 480
  hspeed : speed = 60
  hdriving : distance = speed * drivingHours
  hlunch : lunchMinutes = 30
  hbathroom : bathroomMinutes = 2 * 15
  hbreakMinutes : breakMinutes = lunchMinutes + bathroomMinutes
  hbreakHours : breakMinutes = 60 * breakHours
  htotal : totalHours = drivingHours + breakHours

theorem journey_driving (m : JourneyModel) : m.drivingHours = 8 := by
  have h := m.hdriving
  rw [m.hdistance, m.hspeed] at h
  omega

theorem journey_break (m : JourneyModel) : m.breakMinutes = 60 ∧ m.breakHours = 1 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem journey_total (m : JourneyModel) : m.totalHours = 9 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem journey_solution (m : JourneyModel) : m.totalHours = 9 := journey_total m

structure LogModel where
  totalLength : ℕ
  pieces : ℕ
  pieceLength : ℕ
  poundsPerFoot : ℕ
  pieceWeight : ℕ
  htotalLength : totalLength = 20
  hpieces : pieces = 2
  hsplit : totalLength = pieces * pieceLength
  hpounds : poundsPerFoot = 150
  hweight : pieceWeight = pieceLength * poundsPerFoot

theorem log_piece_length (m : LogModel) : m.pieceLength = 10 := by
  have h := m.hsplit
  rw [m.htotalLength, m.hpieces] at h
  omega

theorem log_piece_weight (m : LogModel) : m.pieceWeight = 1500 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem log_solution (m : LogModel) : m.pieceWeight = 1500 := log_piece_weight m

structure SunscreenModel where
  months : ℕ
  bottles : ℕ
  price : ℕ
  subtotal : ℕ
  discount : ℕ
  finalCost : ℕ
  hmonths : months = 12
  hbottles : bottles = months
  hprice : price = 30
  hsubtotal : subtotal = bottles * price
  hdiscount : 10 * discount = 3 * subtotal
  hfinal : subtotal = discount + finalCost

theorem sunscreen_subtotal (m : SunscreenModel) : m.subtotal = 360 := by
  rw [m.hsubtotal, m.hbottles, m.hmonths, m.hprice]

theorem sunscreen_discount (m : SunscreenModel) : m.discount = 108 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem sunscreen_cost (m : SunscreenModel) : m.finalCost = 252 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem sunscreen_solution (m : SunscreenModel) : m.finalCost = 252 := sunscreen_cost m

structure ElevatorModel where
  totalFloors : ℕ
  firstFloors : ℕ
  nextFloors : ℕ
  finalFloors : ℕ
  firstMinutes : ℕ
  nextMinutes : ℕ
  finalMinutes : ℕ
  totalMinutes : ℕ
  hours : ℕ
  htotalFloors : totalFloors = 20
  hfirstFloors : 2 * firstFloors = totalFloors
  hnextFloors : nextFloors = 5
  hfinalFloors : finalFloors = 5
  hpartition : totalFloors = firstFloors + nextFloors + finalFloors
  hfirstMinutes : firstMinutes = 15
  hnextMinutes : nextMinutes = 5 * nextFloors
  hfinalMinutes : finalMinutes = 16 * finalFloors
  htotalMinutes : totalMinutes = firstMinutes + nextMinutes + finalMinutes
  hhours : totalMinutes = 60 * hours

theorem elevator_later_times (m : ElevatorModel) : m.nextMinutes = 25 ∧ m.finalMinutes = 80 := by
  constructor
  · rw [m.hnextMinutes, m.hnextFloors]
  · rw [m.hfinalMinutes, m.hfinalFloors]

theorem elevator_minutes (m : ElevatorModel) : m.totalMinutes = 120 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem elevator_hours (m : ElevatorModel) : m.hours = 2 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem elevator_solution (m : ElevatorModel) : m.hours = 2 := elevator_hours m

structure StoreModel where
  initial : ℕ
  half : ℕ
  third : ℕ
  firstExtra : ℕ
  secondExtra : ℕ
  hhalf : initial = 2 * half
  hthird : initial = 3 * third
  hfirstExtra : firstExtra = 14
  hsecondExtra : secondExtra = 16
  hallSpent : initial = half + firstExtra + third + secondExtra

theorem store_fraction_sum (m : StoreModel) : m.half + m.third = 150 := by
  have hh := m.hhalf
  have ht := m.hthird
  have hf := m.hfirstExtra
  have hs := m.hsecondExtra
  have ha := m.hallSpent
  omega

theorem store_initial (m : StoreModel) : m.initial = 180 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem store_solution (m : StoreModel) : m.initial = 180 := store_initial m

structure RaffleModel where
  winnings : ℕ
  donated : ℕ
  afterDonation : ℕ
  hotDog : ℕ
  left : ℕ
  hhalf : winnings = 2 * donated
  hafterDonation : afterDonation + donated = winnings
  hhotDog : hotDog = 2
  hleft : afterDonation = hotDog + left
  hleftValue : left = 55

theorem raffle_after_donation (m : RaffleModel) : m.afterDonation = 57 := by
  rw [m.hleft, m.hhotDog, m.hleftValue]

theorem raffle_winnings (m : RaffleModel) : m.winnings = 114 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem raffle_solution (m : RaffleModel) : m.winnings = 114 := raffle_winnings m

structure CatWalkModel where
  resisting : ℕ
  distance : ℕ
  rate : ℕ
  walking : ℕ
  total : ℕ
  hresisting : resisting = 20
  hdistance : distance = 64
  hrate : rate = 8
  hwalking : distance = rate * walking
  htotal : total = resisting + walking

theorem cat_walking (m : CatWalkModel) : m.walking = 8 := by
  have h := m.hwalking
  rw [m.hdistance, m.hrate] at h
  omega

theorem cat_total (m : CatWalkModel) : m.total = 28 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem cat_solution (m : CatWalkModel) : m.total = 28 := cat_total m

structure FlowersModel where
  daughters : ℕ
  each : ℕ
  initial : ℕ
  newFlowers : ℕ
  died : ℕ
  remaining : ℕ
  baskets : ℕ
  perBasket : ℕ
  hdaughters : daughters = 2
  heach : each = 5
  hinitial : initial = daughters * each
  hnew : newFlowers = 20
  hdied : died = 10
  hremaining : initial + newFlowers = died + remaining
  hbaskets : baskets = 5
  hsplit : remaining = baskets * perBasket

theorem flowers_initial (m : FlowersModel) : m.initial = 10 := by
  rw [m.hinitial, m.hdaughters, m.heach]

theorem flowers_remaining (m : FlowersModel) : m.remaining = 20 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem flowers_each_basket (m : FlowersModel) : m.perBasket = 4 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem flowers_solution (m : FlowersModel) : m.perBasket = 4 := flowers_each_basket m

structure SiblingAgeModel where
  lexie : ℕ
  brother : ℕ
  sister : ℕ
  difference : ℕ
  hlexie : lexie = 8
  hbrother : lexie = brother + 6
  hsister : sister = 2 * lexie
  hdifference : sister = brother + difference

theorem sibling_ages (m : SiblingAgeModel) : m.brother = 2 ∧ m.sister = 16 := by
  have hb := m.hbrother
  have hs := m.hsister
  rw [m.hlexie] at hb hs
  omega

theorem sibling_difference (m : SiblingAgeModel) : m.difference = 14 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem sibling_solution (m : SiblingAgeModel) : m.difference = 14 := sibling_difference m

structure MechanicModel where
  totalDollars : ℕ
  partPrice : ℕ
  parts : ℕ
  partsCost : ℕ
  laborDollars : ℕ
  minutes : ℕ
  hours : ℕ
  htotal : totalDollars = 220
  hpartPrice : partPrice = 20
  hparts : parts = 2
  hpartsCost : partsCost = partPrice * parts
  hlabor : totalDollars = partsCost + laborDollars
  hrate : minutes = 2 * laborDollars
  hhours : minutes = 60 * hours

theorem mechanic_parts (m : MechanicModel) : m.partsCost = 40 := by
  rw [m.hpartsCost, m.hpartPrice, m.hparts]

theorem mechanic_labor (m : MechanicModel) : m.laborDollars = 180 ∧ m.minutes = 360 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem mechanic_hours (m : MechanicModel) : m.hours = 6 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem mechanic_solution (m : MechanicModel) : m.hours = 6 := mechanic_hours m

structure StationeryModel where
  rubber : ℕ
  pen : ℕ
  pencil : ℕ
  total : ℕ
  hpencil : pencil = 12
  hpenShorter : pen + 2 = pencil
  hpenLonger : rubber + 3 = pen
  htotal : total = rubber + pen + pencil

theorem stationery_lengths (m : StationeryModel) : m.pen = 10 ∧ m.rubber = 7 := by
  have hp := m.hpencil
  have hs := m.hpenShorter
  have hl := m.hpenLonger
  omega

theorem stationery_total (m : StationeryModel) : m.total = 29 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem stationery_solution (m : StationeryModel) : m.total = 29 := stationery_total m

end LemmaWeave.Problems.GSM8K.Sprint0928A16
