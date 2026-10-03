import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0925A13

structure DigSites where third first second : ℕ
  hThird : 2 * third = 8400
  hFirst : third = first + 3700
  hSecond : second = first + 352
theorem dig_third (m : DigSites) : m.third = 4200 := by cases m; omega
theorem dig_first (m : DigSites) : m.first = 500 := by cases m; omega
theorem dig_solution (m : DigSites) : m.second = 852 := by cases m; omega

structure PhotoAlbum where first next usedPages usedPhotos leftPhotos leftPages each : ℕ
  hFirst : first = 10 * 3
  hNext : next = 10 * 4
  hUsedPages : usedPages = 10 + 10
  hUsedPhotos : usedPhotos = first + next
  hLeftPhotos : leftPhotos + usedPhotos = 100
  hLeftPages : leftPages + usedPages = 30
  hEach : leftPhotos = 10 * each
theorem album_first (m : PhotoAlbum) : m.first = 30 := by cases m; omega
theorem album_next (m : PhotoAlbum) : m.next = 40 := by cases m; omega
theorem album_used_pages (m : PhotoAlbum) : m.usedPages = 20 := by cases m; omega
theorem album_used_photos (m : PhotoAlbum) : m.usedPhotos = 70 := by cases m; omega
theorem album_left_photos (m : PhotoAlbum) : m.leftPhotos = 30 := by cases m; omega
theorem album_left_pages (m : PhotoAlbum) : m.leftPages = 10 := by cases m; omega
theorem album_solution (m : PhotoAlbum) : m.each = 3 := by cases m; omega

structure RestaurantMeals where lunchLeft dinner : ℕ
  hLunchLeft : lunchLeft + 12 = 17
  hDinner : dinner = lunchLeft + 5
theorem meals_left (m : RestaurantMeals) : m.lunchLeft = 5 := by cases m; omega
theorem meals_solution (m : RestaurantMeals) : m.dinner = 10 := by cases m; omega

structure Basketball where firstTotal average total : ℕ
  hFirstTotal : firstTotal = 10 + 14 + 6
  hAverage : 3 * average = firstTotal
  hTotal : total = firstTotal + average
theorem basketball_first_total (m : Basketball) : m.firstTotal = 30 := by cases m; omega
theorem basketball_average (m : Basketball) : m.average = 10 := by cases m; omega
theorem basketball_solution (m : Basketball) : m.total = 40 := by cases m; omega

structure CarriageRental where remaining individual total : ℕ
  hRemaining : remaining + 14 = 20
  hIndividual : individual = 50 * remaining
  hTotal : total = 500 + individual
theorem rental_remaining (m : CarriageRental) : m.remaining = 6 := by cases m; omega
theorem rental_individual (m : CarriageRental) : m.individual = 300 := by cases m; omega
theorem rental_solution (m : CarriageRental) : m.total = 800 := by cases m; omega

structure CatchCalories where squirrels rabbits difference : ℕ
  hSquirrels : squirrels = 6 * 300
  hRabbits : rabbits = 2 * 800
  hDifference : squirrels = rabbits + difference
theorem calories_squirrels (m : CatchCalories) : m.squirrels = 1800 := by cases m; omega
theorem calories_rabbits (m : CatchCalories) : m.rabbits = 1600 := by cases m; omega
theorem calories_solution (m : CatchCalories) : m.difference = 200 := by cases m; omega

structure BikeArea where width height area factor : ℕ
  hWidth : width = 3 + 2
  hHeight : height = 2 + 2
  hArea : area = 5 * 4
  hFactor : 80 = 20 * factor
theorem bike_width (m : BikeArea) : m.width = 5 := by cases m; omega
theorem bike_height (m : BikeArea) : m.height = 4 := by cases m; omega
theorem bike_area (m : BikeArea) : m.area = 20 := by cases m; omega
theorem bike_solution (m : BikeArea) : m.factor = 4 := by cases m; omega

structure Buffet where adults children seniorOne seniors total : ℕ
  hAdults : adults = 2 * 30
  hChildren : children = 3 * 15
  hSeniorOne : 10 * seniorOne = 9 * 30
  hSeniors : seniors = 2 * seniorOne
  hTotal : total = adults + children + seniors
theorem buffet_adults (m : Buffet) : m.adults = 60 := by cases m; omega
theorem buffet_children (m : Buffet) : m.children = 45 := by cases m; omega
theorem buffet_senior_one (m : Buffet) : m.seniorOne = 27 := by cases m; omega
theorem buffet_seniors (m : Buffet) : m.seniors = 54 := by cases m; omega
theorem buffet_solution (m : Buffet) : m.total = 159 := by cases m; omega

structure BusRiders where children adults : ℕ
  hChildren : 4 * children = 60
  hAdults : adults + children = 60
theorem bus_children (m : BusRiders) : m.children = 15 := by cases m; omega
theorem bus_solution (m : BusRiders) : m.adults = 45 := by cases m; omega

structure FactoryShift where low mid highCount high hourly total : ℕ
  hLow : low = 200 * 12
  hMid : mid = 40 * 14
  hHighCount : highCount + 200 + 40 = 300
  hHigh : high = 17 * highCount
  hHourly : hourly = low + mid + high
  hTotal : total = 8 * hourly
theorem factory_low (m : FactoryShift) : m.low = 2400 := by cases m; omega
theorem factory_mid (m : FactoryShift) : m.mid = 560 := by cases m; omega
theorem factory_high_count (m : FactoryShift) : m.highCount = 60 := by cases m; omega
theorem factory_high (m : FactoryShift) : m.high = 1020 := by cases m; omega
theorem factory_hourly (m : FactoryShift) : m.hourly = 3980 := by cases m; omega
theorem factory_solution (m : FactoryShift) : m.total = 31840 := by cases m; omega

structure Envelopes where yellow total : ℕ
  hYellow : yellow + 4 = 10
  hTotal : total = 10 + yellow
theorem envelopes_yellow (m : Envelopes) : m.yellow = 6 := by cases m; omega
theorem envelopes_solution (m : Envelopes) : m.total = 16 := by cases m; omega

structure Dessert where iceCream syrup total : ℕ
  hIceCream : iceCream = 2 * 100
  hSyrup : syrup = 2 * 50
  hTotal : total = 250 + iceCream + syrup + 150
theorem dessert_ice_cream (m : Dessert) : m.iceCream = 200 := by cases m; omega
theorem dessert_syrup (m : Dessert) : m.syrup = 100 := by cases m; omega
theorem dessert_solution (m : Dessert) : m.total = 700 := by cases m; omega

structure PlayTickets where students adults total : ℕ
  hStudents : students = 20 * 6
  hAdults : adults = 12 * 8
  hTotal : total = students + adults
theorem tickets_students (m : PlayTickets) : m.students = 120 := by cases m; omega
theorem tickets_adults (m : PlayTickets) : m.adults = 96 := by cases m; omega
theorem tickets_solution (m : PlayTickets) : m.total = 216 := by cases m; omega

structure ToyPurchase where lego swords dough total : ℕ
  hLego : lego = 3 * 250
  hSwords : swords = 7 * 120
  hDough : dough = 10 * 35
  hTotal : total = lego + swords + dough
theorem toys_lego (m : ToyPurchase) : m.lego = 750 := by cases m; omega
theorem toys_swords (m : ToyPurchase) : m.swords = 840 := by cases m; omega
theorem toys_dough (m : ToyPurchase) : m.dough = 350 := by cases m; omega
theorem toys_solution (m : ToyPurchase) : m.total = 1940 := by cases m; omega

structure AnimalWater where pigs horseOne horses total : ℕ
  hPigs : pigs = 8 * 3
  hHorseOne : horseOne = 2 * 3
  hHorses : horses = 10 * horseOne
  hTotal : total = pigs + horses + 30
theorem water_pigs (m : AnimalWater) : m.pigs = 24 := by cases m; omega
theorem water_horse_one (m : AnimalWater) : m.horseOne = 6 := by cases m; omega
theorem water_horses (m : AnimalWater) : m.horses = 60 := by cases m; omega
theorem water_solution (m : AnimalWater) : m.total = 114 := by cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0925A13
