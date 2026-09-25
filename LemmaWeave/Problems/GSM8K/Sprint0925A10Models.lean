import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0925A10

structure PizzaOrder where toppingCost eachPizza subtotal tip total : ℕ
  hTopping : toppingCost = 3 * 2
  hEach : eachPizza = 14 + toppingCost
  hSubtotal : subtotal = 2 * eachPizza
  hTip : 4 * tip = subtotal
  hTotal : total = subtotal + tip
theorem pizza_toppings (m : PizzaOrder) : m.toppingCost = 6 := by cases m; omega
theorem pizza_each (m : PizzaOrder) : m.eachPizza = 20 := by cases m; omega
theorem pizza_subtotal (m : PizzaOrder) : m.subtotal = 40 := by cases m; omega
theorem pizza_tip (m : PizzaOrder) : m.tip = 10 := by cases m; omega
theorem pizza_solution (m : PizzaOrder) : m.total = 50 := by cases m; omega

structure BusTrip where outbound total : ℕ
  hOutbound : outbound = 5 + 20
  hTotal : total = 2 * outbound
theorem bus_outbound (m : BusTrip) : m.outbound = 25 := by cases m; omega
theorem bus_solution (m : BusTrip) : m.total = 50 := by cases m; omega

structure TouchdownAverage where current target needed games average : ℕ
  hCurrent : current = 14 * 6
  hTarget : target = 89 + 1
  hNeeded : current + needed = target
  hGames : games = 16 - 14
  hAverage : needed = average * games
theorem touchdowns_current (m : TouchdownAverage) : m.current = 84 := by cases m; omega
theorem touchdowns_target (m : TouchdownAverage) : m.target = 90 := by cases m; omega
theorem touchdowns_needed (m : TouchdownAverage) : m.needed = 6 := by cases m; omega
theorem touchdowns_games (m : TouchdownAverage) : m.games = 2 := by cases m; omega
theorem touchdowns_solution (m : TouchdownAverage) : m.average = 3 := by cases m; omega

structure ThankYouCards where rsvp attended giftGivers : ℕ
  hRsvp : 10 * rsvp = 9 * 200
  hAttended : 10 * attended = 8 * rsvp
  hGifts : giftGivers + 10 = attended
theorem cards_rsvp (m : ThankYouCards) : m.rsvp = 180 := by cases m; omega
theorem cards_attended (m : ThankYouCards) : m.attended = 144 := by cases m; omega
theorem cards_solution (m : ThankYouCards) : m.giftGivers = 134 := by cases m; omega

structure Babysitting where daily weekly total : ℕ
  hDaily : daily = 5 * 5
  hWeekly : weekly = daily * 6
  hTotal : total = weekly * 7
theorem babysitting_daily (m : Babysitting) : m.daily = 25 := by cases m; omega
theorem babysitting_weekly (m : Babysitting) : m.weekly = 150 := by cases m; omega
theorem babysitting_solution (m : Babysitting) : m.total = 1050 := by cases m; omega

structure ToySale where carRevenue legoPrice : ℕ
  hCars : carRevenue = 3 * 5
  hTotal : carRevenue + legoPrice = 45
theorem toys_cars (m : ToySale) : m.carRevenue = 15 := by cases m; omega
theorem toys_solution (m : ToySale) : m.legoPrice = 30 := by cases m; omega

structure FlowerGarden where peterBefore peterAfter : ℕ
  hBefore : peterBefore = 3 * 20
  hAfter : peterAfter + 15 = peterBefore
theorem flowers_before (m : FlowerGarden) : m.peterBefore = 60 := by cases m; omega
theorem flowers_solution (m : FlowerGarden) : m.peterAfter = 45 := by cases m; omega

structure SeeingEyeDog where training insurancePaid certificationOut total : ℕ
  hTraining : training = 12 * 250
  hInsurance : 10 * insurancePaid = 9 * 3000
  hCertification : certificationOut + insurancePaid = 3000
  hTotal : total = 150 + training + certificationOut
theorem dog_training (m : SeeingEyeDog) : m.training = 3000 := by cases m; omega
theorem dog_insurance (m : SeeingEyeDog) : m.insurancePaid = 2700 := by cases m; omega
theorem dog_certification (m : SeeingEyeDog) : m.certificationOut = 300 := by cases m; omega
theorem dog_solution (m : SeeingEyeDog) : m.total = 3450 := by cases m; omega

structure DiscountedShoes where paid original : ℕ
  hPaid : paid = 51
  hQuarterPrice : original = 4 * paid
theorem shoes_paid_quarter (m : DiscountedShoes) : 4 * m.paid = m.original := by cases m; omega
theorem shoes_solution (m : DiscountedShoes) : m.original = 204 := by cases m; omega

structure Antibiotics where daily total : ℕ
  hDaily : daily = 3 * 3
  hTotal : total = daily * 7
theorem antibiotics_daily (m : Antibiotics) : m.daily = 9 := by cases m; omega
theorem antibiotics_solution (m : Antibiotics) : m.total = 63 := by cases m; omega

structure Mural where area minutes hours charge : ℕ
  hArea : area = 20 * 15
  hMinutes : minutes = area * 20
  hHours : minutes = 60 * hours
  hCharge : charge = hours * 150
theorem mural_area (m : Mural) : m.area = 300 := by cases m; omega
theorem mural_minutes (m : Mural) : m.minutes = 6000 := by cases m; omega
theorem mural_hours (m : Mural) : m.hours = 100 := by cases m; omega
theorem mural_solution (m : Mural) : m.charge = 15000 := by cases m; omega

structure ReadingTime where totalHalfHours movieHalfHours readHalfHours readMinutes words : ℕ
  hTotal : totalHalfHours = 8 * 2
  hMovies : movieHalfHours = 7 + 3
  hReadHalfHours : readHalfHours + movieHalfHours = totalHalfHours
  hMinutes : readMinutes = readHalfHours * 30
  hWords : words = readMinutes * 10
theorem reading_movie_half_hours (m : ReadingTime) : m.movieHalfHours = 10 := by cases m; omega
theorem reading_half_hours (m : ReadingTime) : m.readHalfHours = 6 := by cases m; omega
theorem reading_minutes (m : ReadingTime) : m.readMinutes = 180 := by cases m; omega
theorem reading_solution (m : ReadingTime) : m.words = 1800 := by cases m; omega

structure AshCloud where diameter radius : ℕ
  hDiameter : diameter = 18 * 300
  hRadius : diameter = 2 * radius
theorem ash_diameter (m : AshCloud) : m.diameter = 5400 := by cases m; omega
theorem ash_solution (m : AshCloud) : m.radius = 2700 := by cases m; omega

structure EggDozens where eggs dozens : ℕ
  hEggs : eggs = 6 * 16
  hDozens : eggs = 12 * dozens
theorem eggs_count (m : EggDozens) : m.eggs = 96 := by cases m; omega
theorem eggs_solution (m : EggDozens) : m.dozens = 8 := by cases m; omega

structure FishTanks where first second third : ℕ
  hFirst : first = 7 + 8
  hSecond : second = 2 * first
  hThird : second = 3 * third
theorem tanks_first (m : FishTanks) : m.first = 15 := by cases m; omega
theorem tanks_second (m : FishTanks) : m.second = 30 := by cases m; omega
theorem tanks_solution (m : FishTanks) : m.third = 10 := by cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0925A10
