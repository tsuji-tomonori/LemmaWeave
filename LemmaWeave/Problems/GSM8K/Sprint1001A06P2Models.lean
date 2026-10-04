import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint1001A06P2

structure TextsModel where
  oldDaily : ℕ
  newDaily : ℕ
  unintendedDaily : ℕ
  days : ℕ
  unintendedWeekly : ℕ
  hOld : oldDaily = 20
  hNew : newDaily = 55
  hUnintended : oldDaily + unintendedDaily = newDaily
  hDays : days = 7
  hWeekly : unintendedWeekly = unintendedDaily * days

theorem texts_unintended_daily (m : TextsModel) : m.unintendedDaily = 35 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem texts_unintended_weekly (m : TextsModel) : m.unintendedWeekly = 245 := by
  have h := texts_unintended_daily m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure LaborModel where
  workerRate : ℕ
  workers : ℕ
  construction : ℕ
  electrician : ℕ
  plumber : ℕ
  total : ℕ
  hRate : workerRate = 100
  hWorkers : workers = 2
  hConstruction : construction = workers * workerRate
  hElectrician : electrician = 2 * workerRate
  hPlumber : 2 * plumber = 5 * workerRate
  hTotal : total = construction + electrician + plumber

theorem labor_construction (m : LaborModel) : m.construction = 200 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem labor_electrician (m : LaborModel) : m.electrician = 200 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem labor_plumber (m : LaborModel) : m.plumber = 250 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem labor_total (m : LaborModel) : m.total = 650 := by
  have h1 := labor_construction m
  have h2 := labor_electrician m
  have h3 := labor_plumber m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure TelevisionModel where
  weekdayMinutes : ℕ
  weekdayDays : ℕ
  weekendHours : ℕ
  minutesPerHour : ℕ
  weeklyMinutes : ℕ
  weeks : ℕ
  yearlyMinutes : ℕ
  yearlyHours : ℕ
  hWeekdayMinutes : weekdayMinutes = 30
  hWeekdayDays : weekdayDays = 5
  hWeekendHours : weekendHours = 2
  hMinutesPerHour : minutesPerHour = 60
  hWeekly : weeklyMinutes = weekdayMinutes * weekdayDays + weekendHours * minutesPerHour
  hWeeks : weeks = 52
  hYearlyMinutes : yearlyMinutes = weeklyMinutes * weeks
  hYearlyHours : yearlyMinutes = yearlyHours * minutesPerHour

theorem television_weekly_minutes (m : TelevisionModel) : m.weeklyMinutes = 270 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem television_yearly_minutes (m : TelevisionModel) : m.yearlyMinutes = 14040 := by
  have h := television_weekly_minutes m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem television_yearly_hours (m : TelevisionModel) : m.yearlyHours = 234 := by
  have h := television_yearly_minutes m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure HotelModel where
  floors1 : ℕ
  halls1 : ℕ
  roomsPerHall1 : ℕ
  rooms1 : ℕ
  floors2 : ℕ
  halls2 : ℕ
  roomsPerHall2 : ℕ
  rooms2 : ℕ
  total : ℕ
  hFloors1 : floors1 = 9
  hHalls1 : halls1 = 6
  hPer1 : roomsPerHall1 = 32
  hRooms1 : rooms1 = floors1 * halls1 * roomsPerHall1
  hFloors2 : floors2 = 7
  hHalls2 : halls2 = 9
  hPer2 : roomsPerHall2 = 40
  hRooms2 : rooms2 = floors2 * halls2 * roomsPerHall2
  hTotal : total = rooms1 + rooms2

theorem hotel_first_wing (m : HotelModel) : m.rooms1 = 1728 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem hotel_second_wing (m : HotelModel) : m.rooms2 = 2520 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem hotel_total (m : HotelModel) : m.total = 4248 := by
  have h1 := hotel_first_wing m
  have h2 := hotel_second_wing m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure PugsModel where
  firstPugs : ℕ
  firstMinutes : ℕ
  work : ℕ
  targetPugs : ℕ
  targetMinutes : ℕ
  hFirstPugs : firstPugs = 4
  hFirstMinutes : firstMinutes = 45
  hWork : work = firstPugs * firstMinutes
  hTargetPugs : targetPugs = 15
  hTarget : targetPugs * targetMinutes = work

theorem pugs_work (m : PugsModel) : m.work = 180 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem pugs_minutes (m : PugsModel) : m.targetMinutes = 12 := by
  have h := pugs_work m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A06P2
