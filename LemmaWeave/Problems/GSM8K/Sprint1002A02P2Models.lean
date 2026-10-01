import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1002A02P2

structure BikeModel where
  outbound home daily days total : ℕ
  hOutbound : outbound = 6
  hHome : home = 7
  hDaily : daily = outbound + home
  hDays : days = 5
  hTotal : total = 5 * daily

theorem bike_daily_miles (m : BikeModel) : m.daily = 13 := by cases m <;> omega
theorem bike_week_miles (m : BikeModel) : m.total = 65 := by
  have h := bike_daily_miles m
  cases m <;> omega

structure IronModel where
  blouseMinutes dressMinutes blouses dresses total : ℕ
  hBlouseMinutes : blouseMinutes = 2 * 60
  hDressMinutes : dressMinutes = 3 * 60
  hBlouses : blouseMinutes = 15 * blouses
  hDresses : dressMinutes = 20 * dresses
  hTotal : total = blouses + dresses

theorem blouse_ironing_minutes (m : IronModel) : m.blouseMinutes = 120 := by cases m <;> omega
theorem blouses_ironed (m : IronModel) : m.blouses = 8 := by
  have h := blouse_ironing_minutes m
  cases m <;> omega
theorem dress_ironing_minutes (m : IronModel) : m.dressMinutes = 180 := by cases m <;> omega
theorem dresses_ironed (m : IronModel) : m.dresses = 9 := by
  have h := dress_ironing_minutes m
  cases m <;> omega
theorem clothes_ironed (m : IronModel) : m.total = 17 := by
  have h1 := blouses_ironed m
  have h2 := dresses_ironed m
  cases m <;> omega

structure CandyModel where
  emily jennifer bob : ℕ
  hEmily : emily = 6
  hJenniferEmily : jennifer = 2 * emily
  hJenniferBob : jennifer = 3 * bob

theorem jennifer_candies (m : CandyModel) : m.jennifer = 12 := by cases m <;> omega
theorem bob_candies (m : CandyModel) : m.bob = 4 := by
  have h := jennifer_candies m
  cases m <;> omega

structure CookieModel where
  total nutOnly chipOnly both nutCookies nuts : ℕ
  hTotal : total = 60
  hNutOnly : 4 * nutOnly = total
  hChipOnly : 100 * chipOnly = 40 * total
  hPartition : nutOnly + chipOnly + both = total
  hNutCookies : nutCookies = nutOnly + both
  hNuts : nuts = 2 * nutCookies

theorem nut_only_cookies (m : CookieModel) : m.nutOnly = 15 := by cases m <;> omega
theorem chip_only_cookies (m : CookieModel) : m.chipOnly = 24 := by cases m <;> omega
theorem both_cookies (m : CookieModel) : m.both = 21 := by
  have h1 := nut_only_cookies m
  have h2 := chip_only_cookies m
  cases m <;> omega
theorem cookies_with_nuts (m : CookieModel) : m.nutCookies = 36 := by
  have h1 := nut_only_cookies m
  have h2 := both_cookies m
  cases m <;> omega
theorem nuts_needed (m : CookieModel) : m.nuts = 72 := by
  have h := cookies_with_nuts m
  cases m <;> omega

structure ApartmentModel where
  floors fullFloors partialFloors fullApartments partialApartments filledApartments people : ℕ
  hFloors : floors = 12
  hFullFloors : 2 * fullFloors = floors
  hFloorPartition : fullFloors + partialFloors = floors
  hFullApartments : fullApartments = 10 * fullFloors
  hPartialApartments : 2 * partialApartments = 10 * partialFloors
  hFilled : filledApartments = fullApartments + partialApartments
  hPeople : people = 4 * filledApartments

theorem full_floors (m : ApartmentModel) : m.fullFloors = 6 := by cases m <;> omega
theorem full_floor_apartments (m : ApartmentModel) : m.fullApartments = 60 := by
  have h := full_floors m
  cases m <;> omega
theorem half_capacity_floors (m : ApartmentModel) : m.partialFloors = 6 := by
  have h := full_floors m
  cases m <;> omega
theorem half_capacity_apartments (m : ApartmentModel) : m.partialApartments = 30 := by
  have h := half_capacity_floors m
  cases m <;> omega
theorem filled_apartments (m : ApartmentModel) : m.filledApartments = 90 := by
  have h1 := full_floor_apartments m
  have h2 := half_capacity_apartments m
  cases m <;> omega
theorem building_people (m : ApartmentModel) : m.people = 360 := by
  have h := filled_apartments m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1002A02P2
