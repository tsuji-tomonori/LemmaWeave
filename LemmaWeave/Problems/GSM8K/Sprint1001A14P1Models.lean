import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A14P1

structure NotebookModel where
  gerald : ℕ
  extra : ℕ
  initial : ℕ
  toPaula : ℕ
  afterPaula : ℕ
  toMike : ℕ
  left : ℕ
  hGerald : gerald = 8
  hExtra : extra = 13
  hInitial : initial = gerald + extra
  hPaula : toPaula = 5
  hAfterPaula : afterPaula + toPaula = initial
  hMike : toMike = 6
  hLeft : left + toMike = afterPaula

theorem jack_initial_notebooks (m : NotebookModel) : m.initial = 21 := by
  cases m <;> simp_all at * <;> omega

theorem after_paula_notebooks (m : NotebookModel) : m.afterPaula = 16 := by
  have h := jack_initial_notebooks m
  cases m <;> simp_all at * <;> omega

theorem notebooks_left (m : NotebookModel) : m.left = 10 := by
  have h := after_paula_notebooks m
  cases m <;> simp_all at * <;> omega

structure MovieDealModel where
  ticket : ℕ
  popcorn : ℕ
  drink : ℕ
  candy : ℕ
  normal : ℕ
  deal : ℕ
  savings : ℕ
  hTicket : ticket = 8
  hPopcorn : popcorn + 3 = ticket
  hDrink : drink = popcorn + 1
  hCandy : 2 * candy = drink
  hNormal : normal = ticket + popcorn + drink + candy
  hDeal : deal = 20
  hSavings : savings + deal = normal

theorem popcorn_price (m : MovieDealModel) : m.popcorn = 5 := by
  cases m <;> simp_all at * <;> omega

theorem drink_price (m : MovieDealModel) : m.drink = 6 := by
  have h := popcorn_price m
  cases m <;> simp_all at * <;> omega

theorem candy_price (m : MovieDealModel) : m.candy = 3 := by
  have h := drink_price m
  cases m <;> simp_all at * <;> omega

theorem normal_movie_total (m : MovieDealModel) : m.normal = 22 := by
  have h1 := popcorn_price m
  have h2 := drink_price m
  have h3 := candy_price m
  cases m <;> simp_all at * <;> omega

theorem movie_deal_savings (m : MovieDealModel) : m.savings = 2 := by
  have h := normal_movie_total m
  cases m <;> simp_all at * <;> omega

structure AgeModel where
  willPast : ℕ
  yearsSince : ℕ
  willNow : ℕ
  dianeNow : ℕ
  yearsAhead : ℕ
  willFuture : ℕ
  dianeFuture : ℕ
  totalFuture : ℕ
  hWillPast : willPast = 4
  hYearsSince : yearsSince = 3
  hWillNow : willNow = willPast + yearsSince
  hDianeNow : dianeNow = 2 * willNow
  hYearsAhead : yearsAhead = 5
  hWillFuture : willFuture = willNow + yearsAhead
  hDianeFuture : dianeFuture = dianeNow + yearsAhead
  hTotal : totalFuture = willFuture + dianeFuture

theorem will_now_age (m : AgeModel) : m.willNow = 7 := by
  cases m <;> simp_all at * <;> omega

theorem diane_now_age (m : AgeModel) : m.dianeNow = 14 := by
  have h := will_now_age m
  cases m <;> simp_all at * <;> omega

theorem will_future_age (m : AgeModel) : m.willFuture = 12 := by
  have h := will_now_age m
  cases m <;> simp_all at * <;> omega

theorem future_age_sum (m : AgeModel) : m.totalFuture = 31 := by
  have h1 := diane_now_age m
  have h2 := will_future_age m
  cases m <;> simp_all at * <;> omega

structure MeetingModel where
  seatedStudents : ℕ
  seatedTeachers : ℕ
  seated : ℕ
  standingStudents : ℕ
  total : ℕ
  hStudents : seatedStudents = 300
  hTeachers : seatedTeachers = 30
  hSeated : seated = seatedStudents + seatedTeachers
  hStanding : standingStudents = 25
  hTotal : total = seated + standingStudents

theorem seated_attendance (m : MeetingModel) : m.seated = 330 := by
  cases m <;> simp_all at * <;> omega

theorem meeting_attendance (m : MeetingModel) : m.total = 355 := by
  have h := seated_attendance m
  cases m <;> simp_all at * <;> omega

structure TailoringModel where
  shirts : ℕ
  shirtMinutes : ℕ
  shirtTotal : ℕ
  pants : ℕ
  pantsMinutes : ℕ
  pantsTotal : ℕ
  totalMinutes : ℕ
  hourlyRate : ℕ
  cost : ℕ
  hShirts : shirts = 10
  hShirtMinutes : shirtMinutes = 90
  hShirtTotal : shirtTotal = shirts * shirtMinutes
  hPants : pants = 12
  hPantsMinutes : pantsMinutes = 2 * shirtMinutes
  hPantsTotal : pantsTotal = pants * pantsMinutes
  hTotal : totalMinutes = shirtTotal + pantsTotal
  hRate : hourlyRate = 30
  hCost : 60 * cost = totalMinutes * hourlyRate

theorem shirt_minutes (m : TailoringModel) : m.shirtTotal = 900 := by
  cases m <;> simp_all at * <;> omega

theorem pants_minutes (m : TailoringModel) : m.pantsTotal = 2160 := by
  cases m <;> simp_all at * <;> omega

theorem tailoring_minutes (m : TailoringModel) : m.totalMinutes = 3060 := by
  have h1 := shirt_minutes m
  have h2 := pants_minutes m
  cases m <;> simp_all at * <;> omega

theorem tailoring_cost (m : TailoringModel) : m.cost = 1530 := by
  have h := tailoring_minutes m
  cases m <;> simp_all at * <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A14P1
