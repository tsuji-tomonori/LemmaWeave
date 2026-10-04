import LemmaWeave.Problems.GSM8K.Sprint0923A01CatchupModels
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A01Catchup
namespace P := LemmaWeave.Problems.GSM8K.Sprint0923A01Catchup

theorem baylor_first (m : P.BaylorAdditive) : m.first = 2000 := P.baylor_first m
theorem baylor_second_additive (m : P.BaylorAdditive) : m.second = 2800 := P.baylor_second_additive m
theorem baylor_pair_additive (m : P.BaylorAdditive) : m.pair = 4800 := P.baylor_pair_additive m
theorem baylor_third_additive (m : P.BaylorAdditive) : m.third = 9600 := P.baylor_third_additive m
theorem baylor_solution_additive (m : P.BaylorAdditive) : m.final = 18400 := P.baylor_solution_additive m
theorem baylor_first_multiplicative (m : P.BaylorMultiplicative) : m.first = 2000 := P.baylor_first_multiplicative m
theorem baylor_second_multiplicative (m : P.BaylorMultiplicative) : m.second = 800 := P.baylor_second_multiplicative m
theorem baylor_pair_multiplicative (m : P.BaylorMultiplicative) : m.pair = 2800 := P.baylor_pair_multiplicative m
theorem baylor_third_multiplicative (m : P.BaylorMultiplicative) : m.third = 5600 := P.baylor_third_multiplicative m
theorem baylor_solution_multiplicative (m : P.BaylorMultiplicative) : m.final = 12400 := P.baylor_solution_multiplicative m
theorem rain_monday (m : P.Rain) : m.mondayHalfCm = 21 := P.rain_monday m
theorem rain_tuesday (m : P.Rain) : m.tuesdayHalfCm = 45 := P.rain_tuesday m
theorem rain_difference_half (m : P.Rain) : m.differenceHalfCm = 24 := P.rain_difference_half m
theorem rain_solution (m : P.Rain) : m.differenceCm = 12 := P.rain_solution m
theorem fruit_total (m : P.FruitBowl) : m.total = 9 := P.fruit_total m
theorem fruit_solution (m : P.FruitBowl) : m.left = 6 := P.fruit_solution m
theorem sue_first_leg (m : P.SueTravel) : m.firstLeg = 18 := P.sue_first_leg m
theorem sue_solution (m : P.SueTravel) : m.total = 58 := P.sue_solution m
theorem ages_eden (m : P.AgesAverage) : m.eden = 24 := P.ages_eden m
theorem ages_mother (m : P.AgesAverage) : m.mother = 48 := P.ages_mother m
theorem ages_sum (m : P.AgesAverage) : m.sum = 84 := P.ages_sum m
theorem ages_solution (m : P.AgesAverage) : m.average = 28 := P.ages_solution m
theorem warehouse_perimeter (m : P.WarehousePatrol) : m.perimeter = 2000 := P.warehouse_perimeter m
theorem warehouse_actual (m : P.WarehousePatrol) : m.actual = 8 := P.warehouse_actual m
theorem warehouse_solution (m : P.WarehousePatrol) : m.distance = 16000 := P.warehouse_solution m
theorem tara_first_year (m : P.TaraGames) : m.firstYear = 18 := P.tara_first_year m
theorem tara_solution (m : P.TaraGames) : m.secondYear = 14 := P.tara_solution m
theorem dinner_silas (m : P.DinnerBill) : m.silas = 75 := P.dinner_silas m
theorem dinner_tip (m : P.DinnerBill) : m.tip = 15 := P.dinner_tip m
theorem dinner_others_total (m : P.DinnerBill) : m.othersTotal = 90 := P.dinner_others_total m
theorem dinner_solution (m : P.DinnerBill) : m.each = 18 := P.dinner_solution m
theorem cookie_martha (m : P.CookieJar) : m.martha = 3 := P.cookie_martha m
theorem cookie_spent (m : P.CookieJar) : m.spent = 9 := P.cookie_spent m
theorem cookie_solution (m : P.CookieJar) : m.left = 12 := P.cookie_solution m
theorem clothes_white (m : P.Clothes) : m.white = 16 := P.clothes_white m
theorem clothes_colored (m : P.Clothes) : m.colored = 13 := P.clothes_colored m
theorem clothes_shorts (m : P.Clothes) : m.shorts = 17 := P.clothes_shorts m
theorem clothes_pants (m : P.Clothes) : m.pants = 12 := P.clothes_pants m
theorem clothes_solution (m : P.Clothes) : m.total = 58 := P.clothes_solution m
theorem flowers_red (m : P.GardenFlowers) : m.red = 20 := P.flowers_red m
theorem flowers_yellow (m : P.GardenFlowers) : m.yellow = 15 := P.flowers_yellow m
theorem flowers_known (m : P.GardenFlowers) : m.known = 45 := P.flowers_known m
theorem flowers_pair (m : P.GardenFlowers) : m.pair = 60 := P.flowers_pair m
theorem flowers_solution (m : P.GardenFlowers) : m.each = 30 := P.flowers_solution m
theorem car_interest (m : P.CarLoan) : m.interest = 3000 := P.car_interest m
theorem car_solution (m : P.CarLoan) : m.total = 38000 := P.car_solution m
theorem pies_sauce (m : P.ApplePies) : m.sauce = 60 := P.pies_sauce m
theorem pies_remaining (m : P.ApplePies) : m.remaining = 60 := P.pies_remaining m
theorem pies_solution (m : P.ApplePies) : m.pies = 15 := P.pies_solution m
theorem gender_male (m : P.GenderParty) : m.male = 40 := P.gender_male m
theorem gender_solution (m : P.GenderParty) : m.female = 20 := P.gender_solution m
theorem coach_a (m : P.CoachSpending) : m.coachA = 29000 := P.coach_a m
theorem coach_baseballs (m : P.CoachSpending) : m.baseballs = 3500 := P.coach_baseballs m
theorem coach_b (m : P.CoachSpending) : m.coachB = 5300 := P.coach_b m
theorem coach_difference_cents (m : P.CoachSpending) : m.differenceCents = 23700 := P.coach_difference_cents m
theorem coach_solution (m : P.CoachSpending) : m.differenceDollars = 237 := P.coach_solution m

end LemmaWeave.Tests.GSM8KSprint0923A01Catchup

#print axioms LemmaWeave.Tests.GSM8KSprint0923A01Catchup.baylor_solution_additive
#print axioms LemmaWeave.Tests.GSM8KSprint0923A01Catchup.baylor_solution_multiplicative
#print axioms LemmaWeave.Tests.GSM8KSprint0923A01Catchup.rain_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A01Catchup.fruit_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A01Catchup.sue_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A01Catchup.ages_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A01Catchup.warehouse_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A01Catchup.tara_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A01Catchup.dinner_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A01Catchup.cookie_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A01Catchup.clothes_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A01Catchup.flowers_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A01Catchup.car_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A01Catchup.pies_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A01Catchup.gender_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A01Catchup.coach_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A01Catchup.baylor_solution_additive to "work/gsm8k-sprint94-baylor-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A01Catchup.rain_solution to "work/gsm8k-sprint94-rain-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A01Catchup.fruit_solution to "work/gsm8k-sprint94-fruit-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A01Catchup.sue_solution to "work/gsm8k-sprint94-sue-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A01Catchup.ages_solution to "work/gsm8k-sprint94-ages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A01Catchup.warehouse_solution to "work/gsm8k-sprint94-warehouse-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A01Catchup.tara_solution to "work/gsm8k-sprint94-tara-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A01Catchup.dinner_solution to "work/gsm8k-sprint94-dinner-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A01Catchup.cookie_solution to "work/gsm8k-sprint94-cookie-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A01Catchup.clothes_solution to "work/gsm8k-sprint94-clothes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A01Catchup.flowers_solution to "work/gsm8k-sprint94-flowers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A01Catchup.car_solution to "work/gsm8k-sprint94-car-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A01Catchup.pies_solution to "work/gsm8k-sprint94-pies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A01Catchup.gender_solution to "work/gsm8k-sprint94-gender-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A01Catchup.coach_solution to "work/gsm8k-sprint94-coach-graph.json"

