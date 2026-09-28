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

end LemmaWeave.Problems.GSM8K.Sprint0929A01
