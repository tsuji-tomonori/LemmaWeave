import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0924A12
structure Chips where blue nongreen green : ℕ; hB:6*blue=60; hN:nongreen=blue+34; hG:green+nongreen=60
theorem chips_blue (m:Chips) : m.blue=10 := by omega
theorem chips_nongreen (m:Chips) : m.nongreen=44 := by omega
theorem chips_solution (m:Chips) : m.green=16 := by omega
structure Peas where corn peas : ℕ; hP:peas=35; hR:peas=2*corn+15
theorem peas_equation (m:Peas) : m.peas=2*m.corn+15 := m.hR
theorem peas_solution (m:Peas) : m.corn=10 := by omega
structure Wallets where nada ali john : ℕ; hA:ali+5=nada; hJ:john=4*nada; hT:nada+ali+john=67
theorem wallets_nada (m:Wallets) : m.nada=12 := by omega
theorem wallets_solution (m:Wallets) : m.john=48 := by omega
theorem wallets_literal_impossible : ¬ ∃ (n a j : ℕ), a+5=n ∧ j=5*n ∧ n+a+j=67 := by omega
structure Farm where daily weekly boxes : ℕ; hD:daily=270; hW:weekly=daily*7; hB:6*boxes=weekly
theorem farm_daily (m:Farm) : m.daily=270 := by omega
theorem farm_weekly_eggs (m:Farm) : m.weekly=1890 := by omega
theorem farm_solution (m:Farm) : m.boxes=315 := by omega
structure Books where laura stu : ℕ; hL:3*laura=24; hS:2*stu=laura
theorem books_laura (m:Books) : m.laura=8 := by omega
theorem books_solution (m:Books) : m.stu=4 := by omega
structure Snacks where pizza juice spent change : ℕ; hP:pizza=2*12; hJ:juice=2*2; hS:spent=pizza+juice; hC:change+spent=50
theorem snacks_pizza (m:Snacks) : m.pizza=24 := by omega
theorem snacks_juice (m:Snacks) : m.juice=4 := by omega
theorem snacks_spent (m:Snacks) : m.spent=28 := by omega
theorem snacks_solution (m:Snacks) : m.change=22 := by omega
structure Pizza where people slices pizzas : ℕ; hP:people=1+9; hS:slices=2*people; hZ:4*pizzas=slices
theorem pizza_people (m:Pizza) : m.people=10 := by omega
theorem pizza_slices (m:Pizza) : m.slices=20 := by omega
theorem pizza_solution (m:Pizza) : m.pizzas=5 := by omega
structure Salary where tax insurance afterDeductions utilities final : ℕ; hT:5*tax=2000; hI:20*insurance=2000; hA:afterDeductions+tax+insurance=2000; hU:4*utilities=afterDeductions; hF:final+utilities=afterDeductions
theorem salary_tax (m:Salary) : m.tax=400 := by omega
theorem salary_insurance (m:Salary) : m.insurance=100 := by omega
theorem salary_after_deductions (m:Salary) : m.afterDeductions=1500 := by omega
theorem salary_utilities (m:Salary) : m.utilities=375 := by omega
theorem salary_solution (m:Salary) : m.final=1125 := by omega
structure Sandbox where area bags pounds : ℕ; hA:area=40*40; hB:80*bags=area; hP:pounds=30*bags
theorem sandbox_area (m:Sandbox) : m.area=1600 := by omega
theorem sandbox_bags (m:Sandbox) : m.bags=20 := by omega
theorem sandbox_solution (m:Sandbox) : m.pounds=600 := by omega
structure Omelets where peppers onions cheese cooking total : ℕ; hP:peppers=4*3; hO:onions=2*4; hC:cheese=5*1; hK:cooking=5*5; hT:total=peppers+onions+cheese+cooking
theorem omelets_peppers (m:Omelets) : m.peppers=12 := by omega
theorem omelets_onions (m:Omelets) : m.onions=8 := by omega
theorem omelets_cheese (m:Omelets) : m.cheese=5 := by omega
theorem omelets_cook (m:Omelets) : m.cooking=25 := by omega
theorem omelets_solution (m:Omelets) : m.total=50 := by omega
structure Dance where paid total : ℕ; hP:paid+2=10; hT:total=paid*10
theorem dance_paid_lessons (m:Dance) : m.paid=8 := by omega
theorem dance_solution (m:Dance) : m.total=80 := by omega
structure Homes where felipe emilio combinedMonths : ℕ; hC:combinedMonths=90; hR:emilio=2*felipe; hT:felipe+emilio=combinedMonths
theorem homes_combined_months (m:Homes) : m.combinedMonths=90 := by omega
theorem homes_relation (m:Homes) : m.emilio=2*m.felipe := m.hR
theorem homes_solution (m:Homes) : m.felipe=30 := by omega
structure Rent where tax afterTax twoMonths monthly : ℕ; hT:10*tax=5000; hA:afterTax+tax=5000; h2:5*twoMonths=3*afterTax; hM:2*monthly=twoMonths
theorem rent_tax (m:Rent) : m.tax=500 := by omega
theorem rent_after_tax (m:Rent) : m.afterTax=4500 := by omega
theorem rent_two_months (m:Rent) : m.twoMonths=2700 := by omega
theorem rent_solution (m:Rent) : m.monthly=1350 := by omega
structure Apples where tuesday wednesday total : ℕ; hT:tuesday=3*15; hW:wednesday=4*tuesday; hA:total=15+tuesday+wednesday
theorem apples_tuesday (m:Apples) : m.tuesday=45 := by omega
theorem apples_wednesday (m:Apples) : m.wednesday=180 := by omega
theorem apples_solution (m:Apples) : m.total=240 := by omega
structure Volcanoes where firstErupted afterFirst secondErupted afterSecond final : ℕ; hF:5*firstErupted=200; hA:afterFirst+firstErupted=200; hS:5*secondErupted=2*afterFirst; hB:afterSecond+secondErupted=afterFirst; hL:2*final=afterSecond
theorem volcanoes_first (m:Volcanoes) : m.firstErupted=40 ∧ m.afterFirst=160 := by omega
theorem volcanoes_second (m:Volcanoes) : m.secondErupted=64 ∧ m.afterSecond=96 := by omega
theorem volcanoes_solution (m:Volcanoes) : m.final=48 := by omega
end LemmaWeave.Problems.GSM8K.Sprint0924A12
