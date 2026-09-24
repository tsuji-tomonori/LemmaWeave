import LemmaWeave.Problems.GSM8K.Sprint0924A12Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0924A12
namespace P := LemmaWeave.Problems.GSM8K.Sprint0924A12

theorem chips_blue : m.blue=10 := P.chips_blue
theorem chips_nongreen : m.nongreen=44 := P.chips_nongreen
theorem chips_solution : m.green=16 := P.chips_solution
theorem peas_equation : m.peas=2*m.corn+15 := P.peas_equation
theorem peas_solution : m.corn=10 := P.peas_solution
theorem wallets_nada : m.nada=12 := P.wallets_nada
theorem wallets_solution : m.john=48 := P.wallets_solution
theorem wallets_literal_impossible : ¬ ∃ (n a j : ℕ), a+5=n ∧ j=5*n ∧ n+a+j=67 := P.wallets_literal_impossible
theorem farm_daily : m.daily=270 := P.farm_daily
theorem farm_weekly_eggs : m.weekly=1890 := P.farm_weekly_eggs
theorem farm_solution : m.boxes=315 := P.farm_solution
theorem books_laura : m.laura=8 := P.books_laura
theorem books_solution : m.stu=4 := P.books_solution
theorem snacks_pizza : m.pizza=24 := P.snacks_pizza
theorem snacks_juice : m.juice=4 := P.snacks_juice
theorem snacks_spent : m.spent=28 := P.snacks_spent
theorem snacks_solution : m.change=22 := P.snacks_solution
theorem pizza_people : m.people=10 := P.pizza_people
theorem pizza_slices : m.slices=20 := P.pizza_slices
theorem pizza_solution : m.pizzas=5 := P.pizza_solution
theorem salary_tax : m.tax=400 := P.salary_tax
theorem salary_insurance : m.insurance=100 := P.salary_insurance
theorem salary_after_deductions : m.afterDeductions=1500 := P.salary_after_deductions
theorem salary_utilities : m.utilities=375 := P.salary_utilities
theorem salary_solution : m.final=1125 := P.salary_solution
theorem sandbox_area : m.area=1600 := P.sandbox_area
theorem sandbox_bags : m.bags=20 := P.sandbox_bags
theorem sandbox_solution : m.pounds=600 := P.sandbox_solution
theorem omelets_peppers : m.peppers=12 := P.omelets_peppers
theorem omelets_onions : m.onions=8 := P.omelets_onions
theorem omelets_cheese : m.cheese=5 := P.omelets_cheese
theorem omelets_cook : m.cooking=25 := P.omelets_cook
theorem omelets_solution : m.total=50 := P.omelets_solution
theorem dance_paid_lessons : m.paid=8 := P.dance_paid_lessons
theorem dance_solution : m.total=80 := P.dance_solution
theorem homes_combined_months : m.combinedMonths=90 := P.homes_combined_months
theorem homes_relation : m.emilio=2*m.felipe := P.homes_relation
theorem homes_solution : m.felipe=30 := P.homes_solution
theorem rent_tax : m.tax=500 := P.rent_tax
theorem rent_after_tax : m.afterTax=4500 := P.rent_after_tax
theorem rent_two_months : m.twoMonths=2700 := P.rent_two_months
theorem rent_solution : m.monthly=1350 := P.rent_solution
theorem apples_tuesday : m.tuesday=45 := P.apples_tuesday
theorem apples_wednesday : m.wednesday=180 := P.apples_wednesday
theorem apples_solution : m.total=240 := P.apples_solution
theorem volcanoes_first : m.firstErupted=40 ∧ m.afterFirst=160 := P.volcanoes_first
theorem volcanoes_second : m.secondErupted=64 ∧ m.afterSecond=96 := P.volcanoes_second
theorem volcanoes_solution : m.final=48 := P.volcanoes_solution

end LemmaWeave.Tests.GSM8KSprint0924A12

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A12.chips_solution to "work/gsm8k-sprint121-chips-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A12.peas_solution to "work/gsm8k-sprint121-peas-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A12.wallets_literal_impossible to "work/gsm8k-sprint121-wallets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A12.farm_solution to "work/gsm8k-sprint121-farm-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A12.books_solution to "work/gsm8k-sprint121-books-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A12.snacks_solution to "work/gsm8k-sprint121-snacks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A12.pizza_solution to "work/gsm8k-sprint121-pizza-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A12.salary_solution to "work/gsm8k-sprint121-salary-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A12.sandbox_solution to "work/gsm8k-sprint121-sandbox-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A12.omelets_solution to "work/gsm8k-sprint121-omelets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A12.dance_solution to "work/gsm8k-sprint121-dance-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A12.homes_solution to "work/gsm8k-sprint121-homes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A12.rent_solution to "work/gsm8k-sprint121-rent-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A12.apples_solution to "work/gsm8k-sprint121-apples-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A12.volcanoes_solution to "work/gsm8k-sprint121-volcanoes-graph.json"
