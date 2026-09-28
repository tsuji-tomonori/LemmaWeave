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

end LemmaWeave.Problems.GSM8K.Sprint0929A01
