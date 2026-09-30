import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A08P1

structure PorterModel where
  sale comparison conventionalPrevious literalPrevious : ℕ
  hSale : sale = 44000
  hComparison : comparison = sale + 1000
  hConventional : comparison = 5 * conventionalPrevious
  hLiteral : comparison = 6 * literalPrevious

theorem porter_comparison (m : PorterModel) : m.comparison = 45000 := by
  cases m <;> omega

theorem porter_conventional (m : PorterModel) : m.conventionalPrevious = 9000 := by
  have h := porter_comparison m
  cases m <;> omega

theorem porter_literal (m : PorterModel) : m.literalPrevious = 7500 := by
  have h := porter_comparison m
  cases m <;> omega

theorem porter_nonunique (m : PorterModel) : m.conventionalPrevious ≠ m.literalPrevious := by
  have h1 := porter_conventional m
  have h2 := porter_literal m
  omega

structure TvPayModel where
  minorCount minorPay minorTotal mainCount mainPay mainTotal total : ℕ
  hMinorCount : minorCount = 4
  hMinorPay : minorPay = 15000
  hMinorTotal : minorTotal = minorCount * minorPay
  hMainCount : mainCount = 5
  hMainPay : mainPay = 3 * minorPay
  hMainTotal : mainTotal = mainCount * mainPay
  hTotal : total = minorTotal + mainTotal

theorem tv_minor_total (m : TvPayModel) : m.minorTotal = 60000 := by
  cases m <;> omega

theorem tv_main_pay (m : TvPayModel) : m.mainPay = 45000 := by
  cases m <;> omega

theorem tv_main_total (m : TvPayModel) : m.mainTotal = 225000 := by
  have h := tv_main_pay m
  cases m <;> omega

theorem tv_total (m : TvPayModel) : m.total = 285000 := by
  have h1 := tv_minor_total m
  have h2 := tv_main_total m
  cases m <;> omega

structure TeaModel where
  boxOunces fifthsPerOunce dailyFifths days daysPerWeek weeks : ℕ
  hBox : boxOunces = 28
  hFifths : fifthsPerOunce = 5
  hDaily : dailyFifths = 1
  hDays : days * dailyFifths = boxOunces * fifthsPerOunce
  hDaysPerWeek : daysPerWeek = 7
  hWeeks : days = weeks * daysPerWeek

theorem tea_days (m : TeaModel) : m.days = 140 := by
  cases m <;> omega

theorem tea_weeks (m : TeaModel) : m.weeks = 20 := by
  have h := tea_days m
  cases m <;> omega

structure PaperModel where
  sheetsPerReam pricePerReam neededSheets reams cost : ℕ
  hSheetsPerReam : sheetsPerReam = 500
  hPrice : pricePerReam = 27
  hNeeded : neededSheets = 5000
  hReams : neededSheets = reams * sheetsPerReam
  hCost : cost = reams * pricePerReam

theorem paper_reams (m : PaperModel) : m.reams = 10 := by
  cases m <;> omega

theorem paper_cost (m : PaperModel) : m.cost = 270 := by
  have h := paper_reams m
  cases m <;> omega

structure FactoryModel where
  planned shortageCut afterShortage pandemicPercent afterPandemic doorsPerCar doors : ℕ
  hPlanned : planned = 200
  hShortageCut : shortageCut = 50
  hAfterShortage : afterShortage + shortageCut = planned
  hPandemicPercent : pandemicPercent = 50
  hAfterPandemic : 100 * afterPandemic = pandemicPercent * afterShortage
  hDoorsPerCar : doorsPerCar = 5
  hDoors : doors = afterPandemic * doorsPerCar

theorem factory_after_shortage (m : FactoryModel) : m.afterShortage = 150 := by
  cases m <;> omega

theorem factory_after_pandemic (m : FactoryModel) : m.afterPandemic = 75 := by
  have h := factory_after_shortage m
  cases m <;> omega

theorem factory_doors (m : FactoryModel) : m.doors = 375 := by
  have h := factory_after_pandemic m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A08P1
