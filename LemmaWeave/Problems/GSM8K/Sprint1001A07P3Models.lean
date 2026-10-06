import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A07P3

structure JogModel where
  firstDays : ℕ
  secondDays : ℕ
  totalDays : ℕ
  minutesPerDay : ℕ
  totalMinutes : ℕ
  minutesPerHour : ℕ
  totalHours : ℕ
  hFirst : firstDays = 3
  hSecond : secondDays = 5
  hDays : totalDays = firstDays + secondDays
  hPerDay : minutesPerDay = 30
  hMinutes : totalMinutes = totalDays * minutesPerDay
  hPerHour : minutesPerHour = 60
  hHours : totalMinutes = totalHours * minutesPerHour

theorem jog_days (m : JogModel) : m.totalDays = 8 := by
  cases m <;> simp_all <;> omega

theorem jog_minutes (m : JogModel) : m.totalMinutes = 240 := by
  have h := jog_days m
  cases m <;> simp_all <;> omega

theorem jog_hours (m : JogModel) : m.totalHours = 4 := by
  have h := jog_minutes m
  cases m <;> simp_all <;> omega

structure ProfitModel where
  natasha : ℕ
  carla : ℕ
  cosima : ℕ
  capital : ℕ
  sale : ℕ
  profit : ℕ
  hNatasha : natasha = 60
  hCarla : natasha = 3 * carla
  hCosima : carla = 2 * cosima
  hCapital : capital = natasha + carla + cosima
  hSale : 5 * sale = 7 * capital
  hProfit : capital + profit = sale

theorem profit_carla (m : ProfitModel) : m.carla = 20 := by
  cases m <;> simp_all <;> omega

theorem profit_cosima (m : ProfitModel) : m.cosima = 10 := by
  have h := profit_carla m
  cases m <;> simp_all <;> omega

theorem profit_capital (m : ProfitModel) : m.capital = 90 := by
  have h1 := profit_carla m
  have h2 := profit_cosima m
  cases m <;> simp_all <;> omega

theorem profit_sale (m : ProfitModel) : m.sale = 126 := by
  have h := profit_capital m
  cases m <;> simp_all <;> omega

theorem profit_amount (m : ProfitModel) : m.profit = 36 := by
  have h1 := profit_capital m
  have h2 := profit_sale m
  cases m <;> simp_all <;> omega

structure ExperienceModel where
  bartenderYears : ℕ
  managerYears : ℕ
  managerExtraMonths : ℕ
  monthsPerYear : ℕ
  bartenderMonths : ℕ
  managerMonths : ℕ
  totalMonths : ℕ
  hBartenderYears : bartenderYears = 9
  hManagerYears : managerYears = 3
  hExtra : managerExtraMonths = 6
  hPerYear : monthsPerYear = 12
  hBartender : bartenderMonths = bartenderYears * monthsPerYear
  hManager : managerMonths = managerYears * monthsPerYear + managerExtraMonths
  hTotal : totalMonths = bartenderMonths + managerMonths

theorem experience_bartender (m : ExperienceModel) : m.bartenderMonths = 108 := by
  cases m <;> simp_all <;> omega

theorem experience_manager (m : ExperienceModel) : m.managerMonths = 42 := by
  cases m <;> simp_all <;> omega

theorem experience_total (m : ExperienceModel) : m.totalMonths = 150 := by
  have h1 := experience_bartender m
  have h2 := experience_manager m
  cases m <;> simp_all <;> omega

structure BirdhouseModel where
  pieces : ℕ
  centsPerPiece : ℕ
  cost : ℕ
  profit : ℕ
  price : ℕ
  count : ℕ
  total : ℕ
  hPieces : pieces = 7
  hPerPiece : centsPerPiece = 150
  hCost : cost = pieces * centsPerPiece
  hProfit : profit = 550
  hPrice : price = cost + profit
  hCount : count = 2
  hTotal : total = count * price

theorem birdhouse_cost (m : BirdhouseModel) : m.cost = 1050 := by
  cases m <;> simp_all <;> omega

theorem birdhouse_price (m : BirdhouseModel) : m.price = 1600 := by
  have h := birdhouse_cost m
  cases m <;> simp_all <;> omega

theorem birdhouse_total (m : BirdhouseModel) : m.total = 3200 := by
  have h := birdhouse_price m
  cases m <;> simp_all <;> omega

structure TankModel where
  capacity : ℕ
  minutes : ℕ
  secondsPerMinute : ℕ
  seconds : ℕ
  secondsPerGallon : ℕ
  poured : ℕ
  remaining : ℕ
  hCapacity : capacity = 50
  hMinutes : minutes = 6
  hSecondsPerMinute : secondsPerMinute = 60
  hSeconds : seconds = minutes * secondsPerMinute
  hSecondsPerGallon : secondsPerGallon = 20
  hPoured : seconds = poured * secondsPerGallon
  hRemaining : poured + remaining = capacity

theorem tank_seconds (m : TankModel) : m.seconds = 360 := by
  cases m <;> simp_all <;> omega

theorem tank_poured (m : TankModel) : m.poured = 18 := by
  have h := tank_seconds m
  cases m <;> simp_all <;> omega

theorem tank_remaining (m : TankModel) : m.remaining = 32 := by
  have h := tank_poured m
  cases m <;> simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A07P3
