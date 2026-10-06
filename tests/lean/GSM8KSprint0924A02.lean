import LemmaWeave.Problems.GSM8K.Sprint0924A02Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0924A02
namespace P := LemmaWeave.Problems.GSM8K.Sprint0924A02

theorem lost_after_purchase (m : P.LostMoney) : m.afterPurchase = 9 := P.lost_after_purchase m
theorem lost_solution (m : P.LostMoney) : m.lost = 6 := P.lost_solution m
theorem orange_total (m : P.Oranges) : m.total = 300 := P.orange_total m
theorem orange_not_sold (m : P.Oranges) : m.notSold = 80 := P.orange_not_sold m
theorem orange_solution (m : P.Oranges) : m.sold = 220 := P.orange_solution m
theorem factory_hours (m : P.Factory) : m.hours = 80 := P.factory_hours m
theorem factory_solution (m : P.Factory) : m.days = 8 := P.factory_solution m
theorem paint_new (m : P.Paintings) : m.made = 60 := P.paint_new m
theorem paint_solution (m : P.Paintings) : m.total = 80 := P.paint_solution m
theorem commission_earned (m : P.Commission) : m.earned = 2880 := P.commission_earned m
theorem commission_personal (m : P.Commission) : m.personal = 1728 := P.commission_personal m
theorem commission_solution (m : P.Commission) : m.saved = 1152 := P.commission_solution m
theorem coffee_solution (m : P.Coffee) : m.total = 6 := P.coffee_solution m
theorem turtle_second (m : P.Turtles) : m.second = 16 := P.turtle_second m
theorem turtle_before_hail (m : P.Turtles) : m.beforeHail = 28 := P.turtle_before_hail m
theorem turtle_after_hail (m : P.Turtles) : m.afterHail = 25 := P.turtle_after_hail m
theorem turtle_added_fourth (m : P.Turtles) : m.addedFourth = 6 := P.turtle_added_fourth m
theorem turtle_solution (m : P.Turtles) : m.final = 31 := P.turtle_solution m
theorem clothes_bought (m : P.Clothes) : m.bought = 20 := P.clothes_bought m
theorem clothes_gross (m : P.Clothes) : m.gross = 50 := P.clothes_gross m
theorem clothes_pants (m : P.Clothes) : m.pants = 15 := P.clothes_pants m
theorem clothes_shorts (m : P.Clothes) : m.shorts = 15 := P.clothes_shorts m
theorem clothes_shirts_revenue (m : P.Clothes) : m.shirtsRevenue = 20 := P.clothes_shirts_revenue m
theorem clothes_solution (m : P.Clothes) : m.shirts = 5 := P.clothes_solution m
theorem dogs_tuesday (m : P.HotDogs) : m.tuesday = 12 := P.dogs_tuesday m
theorem dogs_wednesday (m : P.HotDogs) : m.wednesday = 14 := P.dogs_wednesday m
theorem dogs_solution (m : P.HotDogs) : m.total = 36 := P.dogs_solution m
theorem cats_paw (m : P.CatCafes) : m.paw = 10 := P.cats_paw m
theorem cats_meow (m : P.CatCafes) : m.meow = 30 := P.cats_meow m
theorem cats_solution (m : P.CatCafes) : m.combined = 40 := P.cats_solution m
theorem berries_after (m : P.Berries) : m.after = 25 := P.berries_after m
theorem berries_solution (m : P.Berries) : m.initial = 21 := P.berries_solution m
theorem pizza_eaten (m : P.Pizza) : m.eaten = 12 := P.pizza_eaten m
theorem pizza_solution (m : P.Pizza) : m.left = 4 := P.pizza_solution m
theorem startup_tax (m : P.Startup) : m.tax = 40000 := P.startup_tax m
theorem startup_after_tax (m : P.Startup) : m.afterTax = 360000 := P.startup_after_tax m
theorem startup_marketing (m : P.Startup) : m.marketing = 18000 := P.startup_marketing m
theorem startup_after_marketing (m : P.Startup) : m.afterMarketing = 342000 := P.startup_after_marketing m
theorem startup_operational (m : P.Startup) : m.operational = 68400 := P.startup_operational m
theorem startup_after_operational (m : P.Startup) : m.afterOperational = 273600 := P.startup_after_operational m
theorem startup_wages (m : P.Startup) : m.wages = 41040 := P.startup_wages m
theorem startup_solution (m : P.Startup) : m.each = 4104 := P.startup_solution m
theorem frog_smallest (m : P.Frogs) : m.smallest = 12 := P.frog_smallest m
theorem frog_solution (m : P.Frogs) : m.difference = 108 := P.frog_solution m
theorem spending_equation (m : P.Spending) : 6 * m.x = 120 := P.spending_equation m
theorem spending_solution (m : P.Spending) : m.x = 20 := P.spending_solution m

end LemmaWeave.Tests.GSM8KSprint0924A02

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A02.lost_solution to "work/gsm8k-sprint112-lost-money-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A02.orange_solution to "work/gsm8k-sprint112-oranges-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A02.factory_solution to "work/gsm8k-sprint112-factory-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A02.paint_solution to "work/gsm8k-sprint112-paintings-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A02.commission_solution to "work/gsm8k-sprint112-commission-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A02.coffee_solution to "work/gsm8k-sprint112-coffee-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A02.turtle_solution to "work/gsm8k-sprint112-turtles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A02.clothes_solution to "work/gsm8k-sprint112-clothes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A02.dogs_solution to "work/gsm8k-sprint112-hot-dogs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A02.cats_solution to "work/gsm8k-sprint112-cat-cafes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A02.berries_solution to "work/gsm8k-sprint112-berries-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A02.pizza_solution to "work/gsm8k-sprint112-pizza-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A02.startup_solution to "work/gsm8k-sprint112-startup-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A02.frog_solution to "work/gsm8k-sprint112-frogs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A02.spending_solution to "work/gsm8k-sprint112-spending-graph.json"
