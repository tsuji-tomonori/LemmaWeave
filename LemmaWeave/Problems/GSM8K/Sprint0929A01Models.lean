import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A01

structure LemonadeModel where
  glasses priceCents plainCents strawberryCents differenceCents : ℕ
  hglasses : glasses = 36
  hprice : priceCents = 75
  hplain : plainCents = 36 * 75
  hstrawberry : strawberryCents = 1600
  hdifference : plainCents = strawberryCents + differenceCents

theorem lemonade_plain (m : LemonadeModel) : m.plainCents = 2700 := by omega
theorem lemonade_strawberry (m : LemonadeModel) : m.strawberryCents = 1600 := by omega
theorem lemonade_difference (m : LemonadeModel) : m.differenceCents = 1100 := by omega
theorem lemonade_solution (m : LemonadeModel) : m.differenceCents = 1100 := lemonade_difference m

structure LollipopsModel where
  first later totalPeople lollipops : ℕ
  hfirst : first = 45
  hlater : later = 15
  htotal : totalPeople = first + later
  hratio : totalPeople = 5 * lollipops

theorem lollipops_total_people (m : LollipopsModel) : m.totalPeople = 60 := by omega
theorem lollipops_groups (m : LollipopsModel) : m.lollipops = 12 := by omega
theorem lollipops_solution (m : LollipopsModel) : m.lollipops = 12 := lollipops_groups m

structure PiesModel where
  adam bill sierra total : ℕ
  hsierra : sierra = 12
  htwice : sierra = 2 * bill
  hadam : adam = bill + 3
  htotal : total = adam + bill + sierra

theorem pies_bill (m : PiesModel) : m.bill = 6 := by omega
theorem pies_adam (m : PiesModel) : m.adam = 9 := by omega
theorem pies_total (m : PiesModel) : m.total = 27 := by omega
theorem pies_solution (m : PiesModel) : m.total = 27 := pies_total m

structure ParkingSectionsModel where
  total first second third : ℕ
  htotal : total = 1000
  hfirst : first = 320
  hsecond : second = third + 200
  hpartition : total = first + second + third

theorem parking_remaining (m : ParkingSectionsModel) : m.second + m.third = 680 := by omega
theorem parking_third (m : ParkingSectionsModel) : m.third = 240 := by omega
theorem parking_second (m : ParkingSectionsModel) : m.second = 440 := by omega
theorem parking_sections_solution (m : ParkingSectionsModel) : m.second = 440 := parking_second m

structure ValentinesModel where
  students recipients price spent budget percent : ℕ
  hstudents : students = 30
  hrecipients : 5 * recipients = 3 * students
  hprice : price = 2
  hspent : spent = 2 * recipients
  hbudget : budget = 40
  hpercent : 40 * percent = 100 * spent

theorem valentines_recipients (m : ValentinesModel) : m.recipients = 18 := by omega
theorem valentines_spent (m : ValentinesModel) : m.spent = 36 := by omega
theorem valentines_percent (m : ValentinesModel) : m.percent = 90 := by omega
theorem valentines_solution (m : ValentinesModel) : m.percent = 90 := valentines_percent m

structure BasketballModel where
  attempted made missed : ℕ
  hattempted : attempted = 20
  hmade : 5 * made = 4 * attempted
  hpartition : attempted = made + missed

theorem basketball_made (m : BasketballModel) : m.made = 16 := by omega
theorem basketball_missed (m : BasketballModel) : m.missed = 4 := by omega
theorem basketball_solution (m : BasketballModel) : m.missed = 4 := basketball_missed m

structure SleepModel where
  weekdayHours weekdayDays otherHours otherDays weekdayTotal otherTotal total : ℕ
  hweekdayHours : weekdayHours = 6
  hweekdayDays : weekdayDays = 5
  hotherHours : otherHours = 10
  hotherDays : otherDays = 2
  hweekdayTotal : weekdayTotal = 6 * 5
  hotherTotal : otherTotal = 10 * 2
  htotal : total = weekdayTotal + otherTotal

theorem sleep_weekday (m : SleepModel) : m.weekdayTotal = 30 := by omega
theorem sleep_other (m : SleepModel) : m.otherTotal = 20 := by omega
theorem sleep_total (m : SleepModel) : m.total = 50 := by omega
theorem sleep_solution (m : SleepModel) : m.total = 50 := sleep_total m

structure HomesModel where
  total white nonwhite fireplace noFireplace : ℕ
  htotal : total = 400
  hwhite : 4 * white = total
  hnonwhite : total = white + nonwhite
  hfireplace : 5 * fireplace = nonwhite
  hpartition : nonwhite = fireplace + noFireplace

end LemmaWeave.Problems.GSM8K.Sprint0929A01
