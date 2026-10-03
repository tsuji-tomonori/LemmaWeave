import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0922A16

structure Interviews where
  second : ℕ
  first : ℕ
  total : ℕ
  hSecond : second = 2 * 10
  hFirst : first = 2 * (second + 10)
  hTotal : total = first + second + 10
theorem interviews_second (m : Interviews) : m.second = 20 := by rw [m.hSecond] <;> norm_num
theorem interviews_first (m : Interviews) : m.first = 60 := by rw [m.hFirst, interviews_second m] <;> norm_num
theorem interviews_solution (m : Interviews) : m.total = 90 := by rw [m.hTotal, interviews_first m, interviews_second m] <;> norm_num

structure PetShoes where
  dogs : ℕ
  cats : ℕ
  ferret : ℕ
  total : ℕ
  hDogs : dogs = 3 * 4
  hCats : cats = 2 * 4
  hFerret : ferret = 1 * 4
  hTotal : total = dogs + cats + ferret
theorem pet_shoes_dogs (m : PetShoes) : m.dogs = 12 := by rw [m.hDogs] <;> norm_num
theorem pet_shoes_cats (m : PetShoes) : m.cats = 8 := by rw [m.hCats] <;> norm_num
theorem pet_shoes_ferret (m : PetShoes) : m.ferret = 4 := by rw [m.hFerret] <;> norm_num
theorem pet_shoes_solution (m : PetShoes) : m.total = 24 := by rw [m.hTotal, pet_shoes_dogs m, pet_shoes_cats m, pet_shoes_ferret m] <;> norm_num

structure CarSpeed where
  minutes : ℕ
  perMinute : ℕ
  perHour : ℕ
  hMinutes : minutes = 2 * 60 + 20
  hPerMinute : perMinute * minutes = 280
  hPerHour : perHour = perMinute * 60
theorem car_speed_minutes (m : CarSpeed) : m.minutes = 140 := by rw [m.hMinutes] <;> norm_num
theorem car_speed_per_minute (m : CarSpeed) : m.perMinute = 2 := by
  have h := m.hPerMinute; rw [car_speed_minutes m] at h; omega
theorem car_speed_solution (m : CarSpeed) : m.perHour = 120 := by rw [m.hPerHour, car_speed_per_minute m] <;> norm_num

structure Smoking where
  smokers : ℕ
  hospitalized : ℕ
  notHospitalized : ℕ
  hSmokers : smokers * 100 = 300 * 40
  hHospitalized : hospitalized * 100 = smokers * 70
  hNot : notHospitalized + hospitalized = smokers
theorem smoking_students (m : Smoking) : m.smokers = 120 := by
  have h := m.hSmokers; omega
theorem smoking_hospitalized (m : Smoking) : m.hospitalized = 84 := by
  have h := m.hHospitalized; rw [smoking_students m] at h; omega
theorem smoking_solution (m : Smoking) : m.notHospitalized = 36 := by
  have h := m.hNot; rw [smoking_students m, smoking_hospitalized m] at h; omega

structure Sails where
  rectangle : ℕ
  boxOne : ℕ
  triangleOne : ℕ
  boxTwo : ℕ
  triangleTwo : ℕ
  total : ℕ
  hRectangle : rectangle = 5 * 8
  hBoxOne : boxOne = 3 * 4
  hTriangleOne : triangleOne * 2 = boxOne
  hBoxTwo : boxTwo = 4 * 6
  hTriangleTwo : triangleTwo * 2 = boxTwo
  hTotal : total = rectangle + triangleOne + triangleTwo
theorem sails_rectangle (m : Sails) : m.rectangle = 40 := by rw [m.hRectangle] <;> norm_num
theorem sails_triangle_one_box (m : Sails) : m.boxOne = 12 := by rw [m.hBoxOne] <;> norm_num
theorem sails_triangle_one (m : Sails) : m.triangleOne = 6 := by
  have h := m.hTriangleOne; rw [sails_triangle_one_box m] at h; omega
theorem sails_triangle_two_box (m : Sails) : m.boxTwo = 24 := by rw [m.hBoxTwo] <;> norm_num
theorem sails_triangle_two (m : Sails) : m.triangleTwo = 12 := by
  have h := m.hTriangleTwo; rw [sails_triangle_two_box m] at h; omega
theorem sails_solution (m : Sails) : m.total = 58 := by rw [m.hTotal, sails_rectangle m, sails_triangle_one m, sails_triangle_two m] <;> norm_num

structure TicketRevenue where
  matinee : ℕ
  evening : ℕ
  threeD : ℕ
  total : ℕ
  hMatinee : matinee = 200 * 5
  hEvening : evening = 300 * 12
  hThreeD : threeD = 100 * 20
  hTotal : total = matinee + evening + threeD
theorem tickets_revenue_matinee (m : TicketRevenue) : m.matinee = 1000 := by rw [m.hMatinee] <;> norm_num
theorem tickets_revenue_evening (m : TicketRevenue) : m.evening = 3600 := by rw [m.hEvening] <;> norm_num
theorem tickets_revenue_3d (m : TicketRevenue) : m.threeD = 2000 := by rw [m.hThreeD] <;> norm_num
theorem tickets_revenue_solution (m : TicketRevenue) : m.total = 6600 := by rw [m.hTotal, tickets_revenue_matinee m, tickets_revenue_evening m, tickets_revenue_3d m] <;> norm_num

structure Coffee where
  newCount : ℕ
  newPrice : ℕ
  newSpend : ℕ
  savings : ℕ
  hCount : newCount * 2 = 4
  hPrice : newPrice * 100 = 2 * 150
  hSpend : newSpend = newCount * newPrice
  hSavings : savings + newSpend = 4 * 2
theorem coffee_new_count (m : Coffee) : m.newCount = 2 := by have h:=m.hCount; omega
theorem coffee_new_price (m : Coffee) : m.newPrice = 3 := by have h:=m.hPrice; omega
theorem coffee_new_spend (m : Coffee) : m.newSpend = 6 := by rw [m.hSpend, coffee_new_count m, coffee_new_price m] <;> norm_num
theorem coffee_solution (m : Coffee) : m.savings = 2 := by have h:=m.hSavings; rw [coffee_new_spend m] at h; omega

structure Balloons where
  black : ℕ
  total : ℕ
  each : ℕ
  hBlack : black = 3414 + 1762
  hTotal : total = 3414 + black
  hEach : each * 10 = total
theorem balloons_black (m : Balloons) : m.black = 5176 := by rw [m.hBlack] <;> norm_num
theorem balloons_total (m : Balloons) : m.total = 8590 := by rw [m.hTotal, balloons_black m] <;> norm_num
theorem balloons_solution (m : Balloons) : m.each = 859 := by have h:=m.hEach; rw [balloons_total m] at h; omega

theorem books_extra : 5 * 4 = 20 := by norm_num
theorem books_sister_additive : 20 + 5 = 25 := by norm_num
theorem books_counterexample : 20 + 20 / 4 = 25 := by norm_num
theorem books_solution : 20 + 25 = 45 := by norm_num

theorem paperclips_yun : 20 - 12 = 8 := by norm_num
theorem paperclips_quarter : 8 / 4 = 2 := by norm_num
theorem paperclips_reference : 8 / 4 + 7 = 9 := by norm_num
theorem paperclips_solution : 8 + 8 / 4 + 7 = 17 := by norm_num

structure Oranges where
  cassandra : ℕ
  eaten : ℕ
  remaining : ℕ
  hCassandra : cassandra = 2 * 20
  hEaten : eaten = 20 + cassandra
  hRemaining : remaining + eaten = 90
theorem oranges_cassandra (m : Oranges) : m.cassandra = 40 := by rw [m.hCassandra] <;> norm_num
theorem oranges_eaten (m : Oranges) : m.eaten = 60 := by rw [m.hEaten, oranges_cassandra m] <;> norm_num
theorem oranges_solution (m : Oranges) : m.remaining = 30 := by have h:=m.hRemaining; rw [oranges_eaten m] at h; omega

structure Basketball where
  firefliesAdded : ℕ
  firefliesFinal : ℕ
  hornetsAdded : ℕ
  hornetsFinal : ℕ
  difference : ℕ
  hFA : firefliesAdded = 7 * 3
  hFF : firefliesFinal = 74 + firefliesAdded
  hHA : hornetsAdded = 2 * 2
  hHF : hornetsFinal = 86 + hornetsAdded
  hDiff : difference + hornetsFinal = firefliesFinal
theorem basketball_fireflies_added (m : Basketball) : m.firefliesAdded = 21 := by rw [m.hFA] <;> norm_num
theorem basketball_fireflies_final (m : Basketball) : m.firefliesFinal = 95 := by rw [m.hFF, basketball_fireflies_added m] <;> norm_num
theorem basketball_hornets_added (m : Basketball) : m.hornetsAdded = 4 := by rw [m.hHA] <;> norm_num
theorem basketball_hornets_final (m : Basketball) : m.hornetsFinal = 90 := by rw [m.hHF, basketball_hornets_added m] <;> norm_num
theorem basketball_solution (m : Basketball) : m.difference = 5 := by have h:=m.hDiff; rw [basketball_fireflies_final m, basketball_hornets_final m] at h; omega

structure Travel where
  double : ℕ
  monthsEach : ℕ
  regularTotal : ℕ
  doubleTotal : ℕ
  total : ℕ
  hDouble : double = 2 * 400
  hMonths : monthsEach * 2 = 24
  hRegular : regularTotal = 400 * monthsEach
  hDoubleTotal : doubleTotal = double * monthsEach
  hTotal : total = regularTotal + doubleTotal
theorem travel_double (m : Travel) : m.double = 800 := by rw [m.hDouble] <;> norm_num
theorem travel_months_each (m : Travel) : m.monthsEach = 12 := by have h:=m.hMonths; omega
theorem travel_regular_total (m : Travel) : m.regularTotal = 4800 := by rw [m.hRegular, travel_months_each m] <;> norm_num
theorem travel_double_total (m : Travel) : m.doubleTotal = 9600 := by rw [m.hDoubleTotal, travel_double m, travel_months_each m] <;> norm_num
theorem travel_solution (m : Travel) : m.total = 14400 := by rw [m.hTotal, travel_regular_total m, travel_double_total m] <;> norm_num

structure Leis where
  each : ℕ
  total : ℕ
  hEach : each * 2 = 5 * 12
  hTotal : total = each * 4
theorem leis_each (m : Leis) : m.each = 30 := by have h:=m.hEach; omega
theorem leis_solution (m : Leis) : m.total = 120 := by rw [m.hTotal, leis_each m] <;> norm_num

structure Pyramid where
  height : ℕ
  width : ℕ
  total : ℕ
  hHeight : height = 500 + 20
  hWidth : width = height + 234
  hTotal : total = height + width
theorem pyramid_height (m : Pyramid) : m.height = 520 := by rw [m.hHeight] <;> norm_num
theorem pyramid_width (m : Pyramid) : m.width = 754 := by rw [m.hWidth, pyramid_height m] <;> norm_num
theorem pyramid_solution (m : Pyramid) : m.total = 1274 := by rw [m.hTotal, pyramid_height m, pyramid_width m] <;> norm_num

end LemmaWeave.Problems.GSM8K.Sprint0922A16
