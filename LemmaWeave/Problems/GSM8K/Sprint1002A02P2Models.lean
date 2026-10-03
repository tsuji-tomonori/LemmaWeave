import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint1002A02P2

structure BikeModel where
  outbound : ℕ
  home : ℕ
  daily : ℕ
  days : ℕ
  total : ℕ
  hOutbound : outbound = 6
  hHome : home = 7
  hDaily : daily = outbound + home
  hDays : days = 5
  hTotal : total = 5 * daily

theorem bike_daily_miles (m : BikeModel) : m.daily = 13 := by cases m <;> dsimp at * <;> omega
theorem bike_week_miles (m : BikeModel) : m.total = 65 := by
  have h := bike_daily_miles m
  cases m <;> dsimp at * <;> omega

structure IronModel where
  blouseMinutes : ℕ
  dressMinutes : ℕ
  blouses : ℕ
  dresses : ℕ
  total : ℕ
  hBlouseMinutes : blouseMinutes = 2 * 60
  hDressMinutes : dressMinutes = 3 * 60
  hBlouses : blouseMinutes = 15 * blouses
  hDresses : dressMinutes = 20 * dresses
  hTotal : total = blouses + dresses

theorem blouse_ironing_minutes (m : IronModel) : m.blouseMinutes = 120 := by cases m <;> dsimp at * <;> omega
theorem blouses_ironed (m : IronModel) : m.blouses = 8 := by
  have h := blouse_ironing_minutes m
  cases m <;> dsimp at * <;> omega
theorem dress_ironing_minutes (m : IronModel) : m.dressMinutes = 180 := by cases m <;> dsimp at * <;> omega
theorem dresses_ironed (m : IronModel) : m.dresses = 9 := by
  have h := dress_ironing_minutes m
  cases m <;> dsimp at * <;> omega
theorem clothes_ironed (m : IronModel) : m.total = 17 := by
  have h1 := blouses_ironed m
  have h2 := dresses_ironed m
  cases m <;> dsimp at * <;> omega

structure CandyModel where
  emily : ℕ
  jennifer : ℕ
  bob : ℕ
  hEmily : emily = 6
  hJenniferEmily : jennifer = 2 * emily
  hJenniferBob : jennifer = 3 * bob

theorem jennifer_candies (m : CandyModel) : m.jennifer = 12 := by cases m <;> dsimp at * <;> omega
theorem bob_candies (m : CandyModel) : m.bob = 4 := by
  have h := jennifer_candies m
  cases m <;> dsimp at * <;> omega

structure CookieModel where
  total : ℕ
  nutOnly : ℕ
  chipOnly : ℕ
  both : ℕ
  nutCookies : ℕ
  nuts : ℕ
  hTotal : total = 60
  hNutOnly : 4 * nutOnly = total
  hChipOnly : 100 * chipOnly = 40 * total
  hPartition : nutOnly + chipOnly + both = total
  hNutCookies : nutCookies = nutOnly + both
  hNuts : nuts = 2 * nutCookies

theorem nut_only_cookies (m : CookieModel) : m.nutOnly = 15 := by cases m <;> dsimp at * <;> omega
theorem chip_only_cookies (m : CookieModel) : m.chipOnly = 24 := by cases m <;> dsimp at * <;> omega
theorem both_cookies (m : CookieModel) : m.both = 21 := by
  have h1 := nut_only_cookies m
  have h2 := chip_only_cookies m
  cases m <;> dsimp at * <;> omega
theorem cookies_with_nuts (m : CookieModel) : m.nutCookies = 36 := by
  have h1 := nut_only_cookies m
  have h2 := both_cookies m
  cases m <;> dsimp at * <;> omega
theorem nuts_needed (m : CookieModel) : m.nuts = 72 := by
  have h := cookies_with_nuts m
  cases m <;> dsimp at * <;> omega

structure ApartmentModel where
  floors : ℕ
  fullFloors : ℕ
  partialFloors : ℕ
  fullApartments : ℕ
  partialApartments : ℕ
  filledApartments : ℕ
  people : ℕ
  hFloors : floors = 12
  hFullFloors : 2 * fullFloors = floors
  hFloorPartition : fullFloors + partialFloors = floors
  hFullApartments : fullApartments = 10 * fullFloors
  hPartialApartments : 2 * partialApartments = 10 * partialFloors
  hFilled : filledApartments = fullApartments + partialApartments
  hPeople : people = 4 * filledApartments

theorem full_floors (m : ApartmentModel) : m.fullFloors = 6 := by cases m <;> dsimp at * <;> omega
theorem full_floor_apartments (m : ApartmentModel) : m.fullApartments = 60 := by
  have h := full_floors m
  cases m <;> dsimp at * <;> omega
theorem half_capacity_floors (m : ApartmentModel) : m.partialFloors = 6 := by
  have h := full_floors m
  cases m <;> dsimp at * <;> omega
theorem half_capacity_apartments (m : ApartmentModel) : m.partialApartments = 30 := by
  have h := half_capacity_floors m
  cases m <;> dsimp at * <;> omega
theorem filled_apartments (m : ApartmentModel) : m.filledApartments = 90 := by
  have h1 := full_floor_apartments m
  have h2 := half_capacity_apartments m
  cases m <;> dsimp at * <;> omega
theorem building_people (m : ApartmentModel) : m.people = 360 := by
  have h := filled_apartments m
  cases m <;> dsimp at * <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1002A02P2
