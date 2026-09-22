import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0922A18

structure BostonRoute where aRound bRound saved : ℕ
  hA : aRound = 5 * 2
  hB : bRound = 2 * 2
  hSaved : saved + bRound = aRound
theorem boston_route_a (m : BostonRoute) : m.aRound = 10 := by rw [m.hA]; norm_num
theorem boston_route_b (m : BostonRoute) : m.bRound = 4 := by rw [m.hB]; norm_num
theorem boston_route_solution (m : BostonRoute) : m.saved = 6 := by
  have h := m.hSaved
  rw [boston_route_a m, boston_route_b m] at h
  omega

structure Soap where months cost : ℕ
  hMonths : months = 12 * 2
  hCost : cost = 4 * months
theorem soap_months (m : Soap) : m.months = 24 := by rw [m.hMonths]; norm_num
theorem soap_solution (m : Soap) : m.cost = 96 := by rw [m.hCost, soap_months m]; norm_num

structure Study where tuesday weekdays remaining saturday : ℕ
  hTuesday : tuesday = 4 * 2
  hWeekdays : weekdays = 4 + tuesday + 3 + 3 + 3
  hRemaining : remaining + weekdays = 25
  hSaturday : saturday * 2 = remaining
theorem study_tuesday (m : Study) : m.tuesday = 8 := by rw [m.hTuesday]; norm_num
theorem study_weekdays (m : Study) : m.weekdays = 21 := by rw [m.hWeekdays, study_tuesday m]; norm_num
theorem study_remaining (m : Study) : m.remaining = 4 := by
  have h := m.hRemaining
  rw [study_weekdays m] at h
  omega
theorem study_solution (m : Study) : m.saturday = 2 := by
  have h := m.hSaturday
  rw [study_remaining m] at h
  omega

structure Sandwich where salePrice bread cost : ℕ
  hSale : salePrice = 150
  hBread : bread = 15 * 2
  hCost : cost = bread + 25 + 35
theorem sandwich_bread (m : Sandwich) : m.bread = 30 := by rw [m.hBread]; norm_num
theorem sandwich_solution (m : Sandwich) : m.cost = 90 := by rw [m.hCost, sandwich_bread m]; norm_num

structure Shoes where cheaper subtotal extra paid : ℕ
  hCheaper : cheaper * 2 = 40
  hSubtotal : subtotal = cheaper + 60
  hExtra : extra * 4 = subtotal
  hPaid : paid + extra = subtotal
theorem shoes_cheaper (m : Shoes) : m.cheaper = 20 := by
  have h := m.hCheaper
  omega
theorem shoes_subtotal (m : Shoes) : m.subtotal = 80 := by rw [m.hSubtotal, shoes_cheaper m]; norm_num
theorem shoes_extra_discount (m : Shoes) : m.extra = 20 := by
  have h := m.hExtra
  rw [shoes_subtotal m] at h
  omega
theorem shoes_solution (m : Shoes) : m.paid = 60 := by
  have h := m.hPaid
  rw [shoes_subtotal m, shoes_extra_discount m] at h
  omega

structure Wood where daily total : ℕ
  hDaily : daily = 3 * 2
  hTotal : total = daily * 5
theorem wood_daily (m : Wood) : m.daily = 6 := by rw [m.hDaily]; norm_num
theorem wood_solution (m : Wood) : m.total = 30 := by rw [m.hTotal, wood_daily m]; norm_num

structure PastaRacks where flour dough racks more : ℕ
  hFlour : flour = 3 * 8
  hDough : dough * 2 = flour
  hRacks : racks * 3 = dough
  hMore : more + 3 = racks
theorem pasta_racks_flour (m : PastaRacks) : m.flour = 24 := by rw [m.hFlour]; norm_num
theorem pasta_racks_dough (m : PastaRacks) : m.dough = 12 := by
  have h := m.hDough
  rw [pasta_racks_flour m] at h
  omega
theorem pasta_racks_needed (m : PastaRacks) : m.racks = 4 := by
  have h := m.hRacks
  rw [pasta_racks_dough m] at h
  omega
theorem pasta_racks_solution (m : PastaRacks) : m.more = 1 := by
  have h := m.hMore
  rw [pasta_racks_needed m] at h
  omega

structure BreakfastBacon where each total : ℕ
  hEach : each = 2 * 2
  hTotal : total = 14 * each
theorem breakfast_bacon_each (m : BreakfastBacon) : m.each = 4 := by rw [m.hEach]; norm_num
theorem breakfast_bacon_solution (m : BreakfastBacon) : m.total = 56 := by rw [m.hTotal, breakfast_bacon_each m]; norm_num

structure Lemons where juice lemons : ℕ
  hJuice : juice = 12 * 3
  hLemons : lemons * 4 = juice
theorem lemons_juice (m : Lemons) : m.juice = 36 := by rw [m.hJuice]; norm_num
theorem lemons_solution (m : Lemons) : m.lemons = 9 := by
  have h := m.hLemons
  rw [lemons_juice m] at h
  omega

structure Party where marriedWomen men people : ℕ
  hMarriedWomen : marriedWomen * 4 = 60 * 3
  hMen : marriedWomen * 4 = men
  hPeople : people = 60 + men
theorem party_married_women (m : Party) : m.marriedWomen = 45 := by
  have h := m.hMarriedWomen
  omega
theorem party_men (m : Party) : m.men = 180 := by rw [← m.hMen, party_married_women m]; norm_num
theorem party_solution (m : Party) : m.people = 240 := by rw [m.hPeople, party_men m]; norm_num

structure Meat where chickenPrice chickenTotal total : ℕ
  hChickenPrice : chickenPrice + 2 = 6
  hChickenTotal : chickenTotal = chickenPrice * 3
  hTotal : total = chickenTotal + 6
theorem meat_chicken_price (m : Meat) : m.chickenPrice = 4 := by
  have h := m.hChickenPrice
  omega
theorem meat_chicken_total (m : Meat) : m.chickenTotal = 12 := by rw [m.hChickenTotal, meat_chicken_price m]; norm_num
theorem meat_solution (m : Meat) : m.total = 18 := by rw [m.hTotal, meat_chicken_total m]; norm_num

structure MovieTicket where discount newPrice : ℕ
  hDiscount : discount * 100 = 100 * 20
  hNew : newPrice + discount = 100
theorem movie_ticket_discount (m : MovieTicket) : m.discount = 20 := by
  have h := m.hDiscount
  omega
theorem movie_ticket_solution (m : MovieTicket) : m.newPrice = 80 := by
  have h := m.hNew
  rw [movie_ticket_discount m] at h
  omega

structure Bills where fives total : ℕ
  hFives : fives = 7 * 5
  hTotal : total = fives + 10
theorem bills_fives (m : Bills) : m.fives = 35 := by rw [m.hFives]; norm_num
theorem bills_solution (m : Bills) : m.total = 45 := by rw [m.hTotal, bills_fives m]; norm_num

structure Pool where first combinedRate second capacity : ℕ
  hFirst : first = 50 * 3
  hRate : combinedRate = 50 + 70
  hSecond : second = combinedRate * 2
  hCapacity : capacity = first + second
theorem pool_first (m : Pool) : m.first = 150 := by rw [m.hFirst]; norm_num
theorem pool_combined_rate (m : Pool) : m.combinedRate = 120 := by rw [m.hRate]; norm_num
theorem pool_second (m : Pool) : m.second = 240 := by rw [m.hSecond, pool_combined_rate m]; norm_num
theorem pool_solution (m : Pool) : m.capacity = 390 := by rw [m.hCapacity, pool_first m, pool_second m]; norm_num

structure Pizza where treshawnSixths michaelSixths totalSixths pizzas : ℕ
  hTreShawn : treshawnSixths = 3
  hMichael : michaelSixths = 2
  hTotal : totalSixths = treshawnSixths + michaelSixths + 1
  hPizzas : pizzas * 6 = totalSixths
theorem pizza_treshawn (m : Pizza) : m.treshawnSixths = 3 := m.hTreShawn
theorem pizza_michael (m : Pizza) : m.michaelSixths = 2 := m.hMichael
theorem pizza_total_sixths (m : Pizza) : m.totalSixths = 6 := by rw [m.hTotal, pizza_treshawn m, pizza_michael m]; norm_num
theorem pizza_solution (m : Pizza) : m.pizzas = 1 := by
  have h := m.hPizzas
  rw [pizza_total_sixths m] at h
  omega

end LemmaWeave.Problems.GSM8K.Sprint0922A18
