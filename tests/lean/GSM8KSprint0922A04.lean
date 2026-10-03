import LemmaWeave.Problems.GSM8K.Sprint0922A04Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0922A04
open LemmaWeave.Problems.GSM8K.Sprint0922A04

theorem arvin_day_two (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.ArvinRun) : m.d2 = 3 := LemmaWeave.Problems.GSM8K.Sprint0922A04.arvin_day_two m
theorem arvin_day_three (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.ArvinRun) : m.d3 = 4 := LemmaWeave.Problems.GSM8K.Sprint0922A04.arvin_day_three m
theorem arvin_day_four (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.ArvinRun) : m.d4 = 5 := LemmaWeave.Problems.GSM8K.Sprint0922A04.arvin_day_four m
theorem arvin_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.ArvinRun) : m.d5 = 6 := LemmaWeave.Problems.GSM8K.Sprint0922A04.arvin_solution m
theorem carla_total_equation (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.CarlaWater) : m.water + m.soda = 54 := LemmaWeave.Problems.GSM8K.Sprint0922A04.carla_total_equation m
theorem carla_soda_equation (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.CarlaWater) : m.soda + 6 = 3 * m.water := LemmaWeave.Problems.GSM8K.Sprint0922A04.carla_soda_equation m
theorem carla_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.CarlaWater) : m.water = 15 := LemmaWeave.Problems.GSM8K.Sprint0922A04.carla_solution m
theorem plates_owned (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.PaperPlates) : m.owned = 49 := LemmaWeave.Problems.GSM8K.Sprint0922A04.plates_owned m
theorem plates_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.PaperPlates) : m.buy = 35 := LemmaWeave.Problems.GSM8K.Sprint0922A04.plates_solution m
theorem accidents_seconds (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Accidents) : m.seconds = 240 := LemmaWeave.Problems.GSM8K.Sprint0922A04.accidents_seconds m
theorem accidents_big (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Accidents) : m.big = 12 := LemmaWeave.Problems.GSM8K.Sprint0922A04.accidents_big m
theorem accidents_collisions (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Accidents) : m.collisions = 24 := LemmaWeave.Problems.GSM8K.Sprint0922A04.accidents_collisions m
theorem accidents_disjoint (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Accidents) : m.disjointTotal = 36 := LemmaWeave.Problems.GSM8K.Sprint0922A04.accidents_disjoint m
theorem accidents_overlap (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Accidents) : m.overlapTotal = 24 := LemmaWeave.Problems.GSM8K.Sprint0922A04.accidents_overlap m
theorem accidents_nonunique (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Accidents) : m.disjointTotal ≠ m.overlapTotal := LemmaWeave.Problems.GSM8K.Sprint0922A04.accidents_nonunique m
theorem countries_joseph (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Countries) : m.joseph = 3 := LemmaWeave.Problems.GSM8K.Sprint0922A04.countries_joseph m
theorem countries_patrick (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Countries) : m.patrick = 9 := LemmaWeave.Problems.GSM8K.Sprint0922A04.countries_patrick m
theorem countries_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Countries) : m.zack = 18 := LemmaWeave.Problems.GSM8K.Sprint0922A04.countries_solution m
theorem perfume_christian_earned (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Perfume) : m.christianEarned = 20 := LemmaWeave.Problems.GSM8K.Sprint0922A04.perfume_christian_earned m
theorem perfume_sue_earned (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Perfume) : m.sueEarned = 12 := LemmaWeave.Problems.GSM8K.Sprint0922A04.perfume_sue_earned m
theorem perfume_saved (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Perfume) : m.saved = 44 := LemmaWeave.Problems.GSM8K.Sprint0922A04.perfume_saved m
theorem perfume_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Perfume) : m.needed = 6 := LemmaWeave.Problems.GSM8K.Sprint0922A04.perfume_solution m
theorem cupcakes_dora (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Cupcakes) : m.dora = 40 := LemmaWeave.Problems.GSM8K.Sprint0922A04.cupcakes_dora m
theorem cupcakes_betty_hours (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Cupcakes) : m.bettyHours = 3 := LemmaWeave.Problems.GSM8K.Sprint0922A04.cupcakes_betty_hours m
theorem cupcakes_betty (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Cupcakes) : m.betty = 30 := LemmaWeave.Problems.GSM8K.Sprint0922A04.cupcakes_betty m
theorem cupcakes_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Cupcakes) : m.difference = 10 := LemmaWeave.Problems.GSM8K.Sprint0922A04.cupcakes_solution m
theorem clerks_capacity (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Clerks) : m.perClerk = 200 := LemmaWeave.Problems.GSM8K.Sprint0922A04.clerks_capacity m
theorem clerks_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Clerks) : m.clerks = 12 := LemmaWeave.Problems.GSM8K.Sprint0922A04.clerks_solution m
theorem dogs_after_arrival (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.RescueDogs) : m.afterArrival = 300 := LemmaWeave.Problems.GSM8K.Sprint0922A04.dogs_after_arrival m
theorem dogs_after_first (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.RescueDogs) : m.afterFirst = 260 := LemmaWeave.Problems.GSM8K.Sprint0922A04.dogs_after_first m
theorem dogs_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.RescueDogs) : m.remaining = 200 := LemmaWeave.Problems.GSM8K.Sprint0922A04.dogs_solution m
theorem figurines_basswood (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Figurines) : m.basswood = 45 := LemmaWeave.Problems.GSM8K.Sprint0922A04.figurines_basswood m
theorem figurines_aspen_rate (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Figurines) : m.aspenRate = 6 := LemmaWeave.Problems.GSM8K.Sprint0922A04.figurines_aspen_rate m
theorem figurines_aspen (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Figurines) : m.aspen = 120 := LemmaWeave.Problems.GSM8K.Sprint0922A04.figurines_aspen m
theorem figurines_butternut (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Figurines) : m.butternut = 80 := LemmaWeave.Problems.GSM8K.Sprint0922A04.figurines_butternut m
theorem figurines_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Figurines) : m.total = 245 := LemmaWeave.Problems.GSM8K.Sprint0922A04.figurines_solution m
theorem phones_profit (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Phones) : m.profit = 1000 := LemmaWeave.Problems.GSM8K.Sprint0922A04.phones_profit m
theorem phones_cost_each (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Phones) : m.costEach = 15 := LemmaWeave.Problems.GSM8K.Sprint0922A04.phones_cost_each m
theorem phones_profit_each (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Phones) : m.profitEach = 5 := LemmaWeave.Problems.GSM8K.Sprint0922A04.phones_profit_each m
theorem phones_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Phones) : m.price = 20 := LemmaWeave.Problems.GSM8K.Sprint0922A04.phones_solution m
theorem parents_total (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Parents) : m.total = 75 := LemmaWeave.Problems.GSM8K.Sprint0922A04.parents_total m
theorem parents_children (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Parents) : m.children = 25 := LemmaWeave.Problems.GSM8K.Sprint0922A04.parents_children m
theorem parents_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Parents) : m.parents = 50 := LemmaWeave.Problems.GSM8K.Sprint0922A04.parents_solution m
theorem driving_speed (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Driving) : m.speed = 40 := LemmaWeave.Problems.GSM8K.Sprint0922A04.driving_speed m
theorem driving_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.Driving) : m.hours = 5 := LemmaWeave.Problems.GSM8K.Sprint0922A04.driving_solution m
theorem used_car_equation (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.UsedCar) : 40 * m.original = 100 * 15000 := LemmaWeave.Problems.GSM8K.Sprint0922A04.used_car_equation m
theorem used_car_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.UsedCar) : m.original = 37500 := LemmaWeave.Problems.GSM8K.Sprint0922A04.used_car_solution m
theorem home_runs_equation (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.HomeRuns) : 2 * m.dave = 930 := LemmaWeave.Problems.GSM8K.Sprint0922A04.home_runs_equation m
theorem home_runs_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A04.HomeRuns) : m.dave = 465 := LemmaWeave.Problems.GSM8K.Sprint0922A04.home_runs_solution m

end LemmaWeave.Tests.GSM8KSprint0922A04

#print axioms LemmaWeave.Tests.GSM8KSprint0922A04.accidents_nonunique
#print axioms LemmaWeave.Tests.GSM8KSprint0922A04.arvin_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A04.carla_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A04.clerks_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A04.countries_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A04.cupcakes_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A04.driving_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A04.figurines_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A04.home_runs_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A04.plates_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A04.parents_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A04.perfume_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A04.phones_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A04.dogs_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A04.used_car_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A04.accidents_nonunique to "work/gsm8k-sprint76-accidents-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A04.arvin_solution to "work/gsm8k-sprint76-arvin_run-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A04.carla_solution to "work/gsm8k-sprint76-carla_water-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A04.clerks_solution to "work/gsm8k-sprint76-clerks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A04.countries_solution to "work/gsm8k-sprint76-countries-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A04.cupcakes_solution to "work/gsm8k-sprint76-cupcakes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A04.driving_solution to "work/gsm8k-sprint76-driving-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A04.figurines_solution to "work/gsm8k-sprint76-figurines-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A04.home_runs_solution to "work/gsm8k-sprint76-home_runs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A04.plates_solution to "work/gsm8k-sprint76-paper_plates-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A04.parents_solution to "work/gsm8k-sprint76-parents-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A04.perfume_solution to "work/gsm8k-sprint76-perfume-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A04.phones_solution to "work/gsm8k-sprint76-phones-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A04.dogs_solution to "work/gsm8k-sprint76-rescue_dogs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A04.used_car_solution to "work/gsm8k-sprint76-used_car-graph.json"
