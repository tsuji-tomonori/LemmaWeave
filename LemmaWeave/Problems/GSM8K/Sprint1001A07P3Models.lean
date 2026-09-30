import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A07P3

structure JogModel where
  firstDays secondDays totalDays minutesPerDay totalMinutes minutesPerHour totalHours : ℕ
  hFirst : firstDays = 3
  hSecond : secondDays = 5
  hDays : totalDays = firstDays + secondDays
  hPerDay : minutesPerDay = 30
  hMinutes : totalMinutes = totalDays * minutesPerDay
  hPerHour : minutesPerHour = 60
  hHours : totalMinutes = totalHours * minutesPerHour

theorem jog_days (m : JogModel) : m.totalDays = 8 := by
  cases m <;> omega

theorem jog_minutes (m : JogModel) : m.totalMinutes = 240 := by
  have h := jog_days m
  cases m <;> omega

theorem jog_hours (m : JogModel) : m.totalHours = 4 := by
  have h := jog_minutes m
  cases m <;> omega

structure ProfitModel where
  natasha carla cosima capital sale profit : ℕ
  hNatasha : natasha = 60
  hCarla : natasha = 3 * carla
  hCosima : carla = 2 * cosima
  hCapital : capital = natasha + carla + cosima
  hSale : 5 * sale = 7 * capital
  hProfit : capital + profit = sale

theorem profit_carla (m : ProfitModel) : m.carla = 20 := by
  cases m <;> omega

theorem profit_cosima (m : ProfitModel) : m.cosima = 10 := by
  have h := profit_carla m
  cases m <;> omega

theorem profit_capital (m : ProfitModel) : m.capital = 90 := by
  have h1 := profit_carla m
  have h2 := profit_cosima m
  cases m <;> omega

theorem profit_sale (m : ProfitModel) : m.sale = 126 := by
  have h := profit_capital m
  cases m <;> omega

theorem profit_amount (m : ProfitModel) : m.profit = 36 := by
  have h1 := profit_capital m
  have h2 := profit_sale m
  cases m <;> omega

structure ExperienceModel where
  bartenderYears managerYears managerExtraMonths monthsPerYear bartenderMonths managerMonths totalMonths : ℕ
  hBartenderYears : bartenderYears = 9
  hManagerYears : managerYears = 3
  hExtra : managerExtraMonths = 6
  hPerYear : monthsPerYear = 12
  hBartender : bartenderMonths = bartenderYears * monthsPerYear
  hManager : managerMonths = managerYears * monthsPerYear + managerExtraMonths
  hTotal : totalMonths = bartenderMonths + managerMonths

theorem experience_bartender (m : ExperienceModel) : m.bartenderMonths = 108 := by
  cases m <;> omega

theorem experience_manager (m : ExperienceModel) : m.managerMonths = 42 := by
  cases m <;> omega

theorem experience_total (m : ExperienceModel) : m.totalMonths = 150 := by
  have h1 := experience_bartender m
  have h2 := experience_manager m
  cases m <;> omega

structure BirdhouseModel where
  pieces centsPerPiece cost profit price count total : ℕ
  hPieces : pieces = 7
  hPerPiece : centsPerPiece = 150
  hCost : cost = pieces * centsPerPiece
  hProfit : profit = 550
  hPrice : price = cost + profit
  hCount : count = 2
  hTotal : total = count * price

theorem birdhouse_cost (m : BirdhouseModel) : m.cost = 1050 := by
  cases m <;> omega

theorem birdhouse_price (m : BirdhouseModel) : m.price = 1600 := by
  have h := birdhouse_cost m
  cases m <;> omega

theorem birdhouse_total (m : BirdhouseModel) : m.total = 3200 := by
  have h := birdhouse_price m
  cases m <;> omega

structure TankModel where
  capacity minutes secondsPerMinute seconds secondsPerGallon poured remaining : ℕ
  hCapacity : capacity = 50
  hMinutes : minutes = 6
  hSecondsPerMinute : secondsPerMinute = 60
  hSeconds : seconds = minutes * secondsPerMinute
  hSecondsPerGallon : secondsPerGallon = 20
  hPoured : seconds = poured * secondsPerGallon
  hRemaining : poured + remaining = capacity

theorem tank_seconds (m : TankModel) : m.seconds = 360 := by
  cases m <;> omega

theorem tank_poured (m : TankModel) : m.poured = 18 := by
  have h := tank_seconds m
  cases m <;> omega

theorem tank_remaining (m : TankModel) : m.remaining = 32 := by
  have h := tank_poured m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A07P3
