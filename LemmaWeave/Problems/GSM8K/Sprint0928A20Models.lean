import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0928A20

structure CarsModel where
  total : ℕ
  blue : ℕ
  red : ℕ
  black : ℕ
  htotal : total = 516
  hblue : 3 * blue = total
  hred : 2 * red = total
  hpartition : total = blue + red + black

theorem cars_blue (m : CarsModel) : m.blue = 172 := by omega
theorem cars_red (m : CarsModel) : m.red = 258 := by omega
theorem cars_black (m : CarsModel) : m.black = 86 := by omega
theorem cars_solution (m : CarsModel) : m.black = 86 := cars_black m

structure LunchroomModel where
  monitors : ℕ
  students : ℕ
  girls : ℕ
  boys : ℕ
  girlCartons : ℕ
  boyCartons : ℕ
  totalCartons : ℕ
  hmonitors : monitors = 8
  hmonitorRatio : 15 * monitors = 2 * students
  hgirls : 5 * girls = 2 * students
  hpartition : students = girls + boys
  hgirlCartons : girlCartons = 2 * girls
  hboyCartons : boyCartons = boys
  htotal : totalCartons = girlCartons + boyCartons

theorem lunch_students (m : LunchroomModel) : m.students = 60 := by omega
theorem lunch_counts (m : LunchroomModel) : m.girls = 24 ∧ m.boys = 36 := by omega
theorem lunch_cartons (m : LunchroomModel) : m.girlCartons = 48 ∧ m.boyCartons = 36 := by omega
theorem lunch_total (m : LunchroomModel) : m.totalCartons = 84 := by omega
theorem lunch_reference_168_false (m : LunchroomModel) : m.totalCartons ≠ 168 := by omega
theorem lunch_solution (m : LunchroomModel) : m.totalCartons = 84 := lunch_total m

structure DownpaymentModel where
  salary : ℕ
  annualSavings : ℕ
  houseCost : ℕ
  downpayment : ℕ
  years : ℕ
  hsalary : salary = 150000
  hsavings : 10 * annualSavings = salary
  hhouse : houseCost = 450000
  hdownpayment : 5 * downpayment = houseCost
  hyears : downpayment = 15000 * years

theorem downpayment_annual_savings (m : DownpaymentModel) : m.annualSavings = 15000 := by omega
theorem downpayment_needed (m : DownpaymentModel) : m.downpayment = 90000 := by omega
theorem downpayment_years (m : DownpaymentModel) : m.years = 6 := by omega
theorem downpayment_solution (m : DownpaymentModel) : m.years = 6 := downpayment_years m

structure PebblesModel where
  candy : ℕ
  lance : ℕ
  difference : ℕ
  hcandy : candy = 4
  hlance : lance = 3 * candy
  hdifference : lance = candy + difference

theorem pebbles_lance (m : PebblesModel) : m.lance = 12 := by omega
theorem pebbles_difference (m : PebblesModel) : m.difference = 8 := by omega
theorem pebbles_solution (m : PebblesModel) : m.difference = 8 := pebbles_difference m

structure MountainModel where
  baseSpeed : ℕ
  ascentSpeed : ℕ
  descentSpeed : ℕ
  ascentDistance : ℕ
  descentDistance : ℕ
  ascentHours : ℕ
  descentHours : ℕ
  totalHours : ℕ
  hbase : baseSpeed = 30
  hascentSpeed : 2 * ascentSpeed = baseSpeed
  hdescentSpeed : 5 * descentSpeed = 6 * baseSpeed
  hascentDistance : ascentDistance = 60
  hdescentDistance : descentDistance = 72
  hascentTime : ascentDistance = ascentSpeed * ascentHours
  hdescentTime : descentDistance = descentSpeed * descentHours
  htotal : totalHours = ascentHours + descentHours

theorem mountain_speeds (m : MountainModel) : m.ascentSpeed = 15 ∧ m.descentSpeed = 36 := by omega
theorem mountain_ascent_time (m : MountainModel) : m.ascentHours = 4 := by
  have hs : m.ascentSpeed = 15 := (mountain_speeds m).1
  omega
theorem mountain_descent_time (m : MountainModel) : m.descentHours = 2 := by
  have hs : m.descentSpeed = 36 := (mountain_speeds m).2
  omega
theorem mountain_total (m : MountainModel) : m.totalHours = 6 := by
  rw [m.htotal, mountain_ascent_time m, mountain_descent_time m]
theorem mountain_solution (m : MountainModel) : m.totalHours = 6 := mountain_total m

structure CommuteModel where
  daysPerWeek : ℕ
  absentDays : ℕ
  workDays : ℕ
  weeks : ℕ
  distancePerDay : ℕ
  totalDistance : ℕ
  hdays : daysPerWeek = 7
  habsent : absentDays = 3
  hworkDays : daysPerWeek = absentDays + workDays
  hweeks : weeks = 4
  hdistance : distancePerDay = 140
  htotal : totalDistance = 4 * 140 * workDays

theorem commute_work_days (m : CommuteModel) : m.workDays = 4 := by omega
theorem commute_weekly (m : CommuteModel) : m.distancePerDay * m.workDays = 560 := by omega
theorem commute_total (m : CommuteModel) : m.totalDistance = 2240 := by omega
theorem commute_solution (m : CommuteModel) : m.totalDistance = 2240 := commute_total m

structure TractorModel where
  monthlyPayment : ℕ
  monthsPerYear : ℕ
  years : ℕ
  months : ℕ
  financed : ℕ
  hmonthly : monthlyPayment = 150
  hmonthsPerYear : monthsPerYear = 12
  hyears : years = 5
  hmonths : months = 12 * 5
  hfinanced : financed = 150 * months

theorem tractor_months (m : TractorModel) : m.months = 60 := by omega
theorem tractor_financed (m : TractorModel) : m.financed = 9000 := by omega
theorem tractor_solution (m : TractorModel) : m.financed = 9000 := tractor_financed m

structure ThermostatModel where
  initial : ℕ
  doubled : ℕ
  afterFather : ℕ
  afterMother : ℕ
  final : ℕ
  hinitial : initial = 40
  hdoubled : doubled = 2 * initial
  hfather : doubled = afterFather + 30
  hmother : 10 * afterMother = 7 * afterFather
  hfinal : final = afterMother + 24

theorem thermostat_doubled (m : ThermostatModel) : m.doubled = 80 := by omega
theorem thermostat_after_father (m : ThermostatModel) : m.afterFather = 50 := by omega
theorem thermostat_after_mother (m : ThermostatModel) : m.afterMother = 35 := by omega
theorem thermostat_final (m : ThermostatModel) : m.final = 59 := by omega
theorem thermostat_solution (m : ThermostatModel) : m.final = 59 := thermostat_final m

structure RunningModel where
  kilometers : ℕ
  meters : ℕ
  hours : ℕ
  minutes : ℕ
  speedMetersPerMinute : ℕ
  hkilometers : kilometers = 3
  hmeters : meters = 1000 * kilometers
  hhours : hours = 2
  hminutes : minutes = 60 * hours
  hspeed : meters = speedMetersPerMinute * minutes

theorem running_meters (m : RunningModel) : m.meters = 3000 := by omega
theorem running_minutes (m : RunningModel) : m.minutes = 120 := by omega
theorem running_speed (m : RunningModel) : m.speedMetersPerMinute = 25 := by
  have hm : m.minutes = 120 := running_minutes m
  omega
theorem running_solution (m : RunningModel) : m.speedMetersPerMinute = 25 := running_speed m

structure ChessModel where
  totalMoves : ℕ
  movesEach : ℕ
  pollySecondsPerMove : ℕ
  peterSecondsPerMove : ℕ
  pollySeconds : ℕ
  peterSeconds : ℕ
  totalSeconds : ℕ
  minutes : ℕ
  htotalMoves : totalMoves = 30
  halternating : totalMoves = 2 * movesEach
  hpollyRate : pollySecondsPerMove = 28
  hpeterRate : peterSecondsPerMove = 40
  hpolly : pollySeconds = 28 * movesEach
  hpeter : peterSeconds = 40 * movesEach
  htotalSeconds : totalSeconds = pollySeconds + peterSeconds
  hminutes : totalSeconds = 60 * minutes

theorem chess_moves_each (m : ChessModel) : m.movesEach = 15 := by omega
theorem chess_polly_seconds (m : ChessModel) : m.pollySeconds = 420 := by omega
theorem chess_peter_seconds (m : ChessModel) : m.peterSeconds = 600 := by omega
theorem chess_total_seconds (m : ChessModel) : m.totalSeconds = 1020 := by omega
theorem chess_minutes (m : ChessModel) : m.minutes = 17 := by omega
theorem chess_solution (m : ChessModel) : m.minutes = 17 := chess_minutes m

structure MoviesModel where
  people : ℕ
  ticketPrice : ℕ
  brought : ℕ
  spent : ℕ
  change : ℕ
  hpeople : people = 2
  hprice : ticketPrice = 8
  hbrought : brought = 25
  hspent : spent = 2 * 8
  hchange : brought = spent + change

theorem movies_spent (m : MoviesModel) : m.spent = 16 := by omega
theorem movies_change (m : MoviesModel) : m.change = 9 := by omega
theorem movies_solution (m : MoviesModel) : m.change = 9 := movies_change m

structure RabbitsModel where
  whitePerMinute : ℕ
  brownPerMinute : ℕ
  combinedPerMinute : ℕ
  minutes : ℕ
  totalDistance : ℕ
  hwhite : whitePerMinute = 15
  hbrown : brownPerMinute = 12
  hcombined : combinedPerMinute = whitePerMinute + brownPerMinute
  hminutes : minutes = 5
  htotal : totalDistance = 5 * combinedPerMinute

theorem rabbits_combined_rate (m : RabbitsModel) : m.combinedPerMinute = 27 := by omega
theorem rabbits_total (m : RabbitsModel) : m.totalDistance = 135 := by omega
theorem rabbits_solution (m : RabbitsModel) : m.totalDistance = 135 := rabbits_total m

structure LegoFilledModel where
  bottomSide : ℕ
  middleSide : ℕ
  topSide : ℕ
  bottom : ℕ
  middle : ℕ
  top : ℕ
  total : ℕ
  hbottomSide : bottomSide = 7
  hmiddleSide : middleSide = 6
  htopSide : topSide = 5
  hbottom : bottom = 7 * 7
  hmiddle : middle = 6 * 6
  htop : top = 5 * 5
  htotal : total = bottom + middle + top

theorem lego_filled_levels (m : LegoFilledModel) : m.bottom = 49 ∧ m.middle = 36 ∧ m.top = 25 := by omega
theorem lego_filled_total (m : LegoFilledModel) : m.total = 110 := by omega
theorem lego_solution (m : LegoFilledModel) : m.total = 110 := lego_filled_total m

structure LegoBoundaryModel where
  bottom : ℕ
  middle : ℕ
  top : ℕ
  total : ℕ
  hbottom : bottom = 4 * 7 - 4
  hmiddle : middle = 4 * 6 - 4
  htop : top = 4 * 5 - 4
  htotal : total = bottom + middle + top

theorem lego_boundary_levels (m : LegoBoundaryModel) : m.bottom = 24 ∧ m.middle = 20 ∧ m.top = 16 := by omega
theorem lego_boundary_total (m : LegoBoundaryModel) : m.total = 60 := by omega
theorem lego_readings_differ (mf : LegoFilledModel) (mb : LegoBoundaryModel) : mf.total ≠ mb.total := by
  rw [lego_filled_total mf, lego_boundary_total mb]
  decide

structure BathroomModel where
  available : ℕ
  oldest : ℕ
  youngest : ℕ
  husband : ℕ
  familyUsed : ℕ
  remaining : ℕ
  havailable : available = 150
  holdest : oldest = 45
  hyoungest : youngest = 30
  hhusband : husband = 20
  hfamily : familyUsed = oldest + youngest + husband
  hremaining : available = familyUsed + remaining

theorem bathroom_available (m : BathroomModel) : m.available = 150 := by omega
theorem bathroom_family_used (m : BathroomModel) : m.familyUsed = 95 := by omega
theorem bathroom_remaining (m : BathroomModel) : m.remaining = 55 := by omega
theorem bathroom_solution (m : BathroomModel) : m.remaining = 55 := bathroom_remaining m

structure ParkingLevelsModel where
  first : ℕ
  second : ℕ
  third : ℕ
  fourth : ℕ
  total : ℕ
  hfirst : first = 4
  hsecond : second = first + 7
  hthird : third = second + 6
  hfourth : fourth = 14
  htotal : total = first + second + third + fourth

theorem parking_second (m : ParkingLevelsModel) : m.second = 11 := by omega
theorem parking_third (m : ParkingLevelsModel) : m.third = 17 := by omega
theorem parking_total (m : ParkingLevelsModel) : m.total = 46 := by omega
theorem parking_solution (m : ParkingLevelsModel) : m.total = 46 := parking_total m

end LemmaWeave.Problems.GSM8K.Sprint0928A20
