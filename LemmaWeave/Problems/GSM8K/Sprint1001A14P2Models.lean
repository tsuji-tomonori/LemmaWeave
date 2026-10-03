import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint1001A14P2

structure BubbleModel where
  coupleRooms : ℕ
  coupleCapacity : ℕ
  coupleGuests : ℕ
  singleRooms : ℕ
  guests : ℕ
  mlPerGuest : ℕ
  totalMl : ℕ
  hCoupleRooms : coupleRooms = 13
  hCapacity : coupleCapacity = 2
  hCoupleGuests : coupleGuests = coupleRooms * coupleCapacity
  hSingleRooms : singleRooms = 14
  hGuests : guests = coupleGuests + singleRooms
  hPerGuest : mlPerGuest = 10
  hTotal : totalMl = guests * mlPerGuest

theorem couple_guests (m : BubbleModel) : m.coupleGuests = 26 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem hotel_guests (m : BubbleModel) : m.guests = 40 := by
  have h := couple_guests m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem bubble_bath (m : BubbleModel) : m.totalMl = 400 := by
  have h := hotel_guests m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure RunningModel where
  andrew : ℕ
  peterExtra : ℕ
  peter : ℕ
  combined : ℕ
  days : ℕ
  total : ℕ
  hAndrew : andrew = 2
  hExtra : peterExtra = 3
  hPeter : peter = andrew + peterExtra
  hCombined : combined = peter + andrew
  hDays : days = 5
  hTotal : total = combined * days

theorem peter_daily_miles (m : RunningModel) : m.peter = 5 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem combined_daily_miles (m : RunningModel) : m.combined = 7 := by
  have h := peter_daily_miles m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem running_miles (m : RunningModel) : m.total = 35 := by
  have h := combined_daily_miles m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure ElectricityModel where
  oldWatts : ℕ
  newWatts : ℕ
  oldPrice : ℕ
  newPrice : ℕ
  hours : ℕ
  kiloWattHours : ℕ
  costCents : ℕ
  dollars : ℕ
  hOldWatts : oldWatts = 800
  hNewWatts : 2 * newWatts = 3 * oldWatts
  hOldPrice : oldPrice = 12
  hNewPrice : 4 * newPrice = 5 * oldPrice
  hHours : hours = 50
  hEnergy : 1000 * kiloWattHours = newWatts * hours
  hCost : costCents = kiloWattHours * newPrice
  hDollars : 100 * dollars = costCents

theorem new_computer_watts (m : ElectricityModel) : m.newWatts = 1200 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem new_electricity_price (m : ElectricityModel) : m.newPrice = 15 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem computer_energy (m : ElectricityModel) : m.kiloWattHours = 60 := by
  have h := new_computer_watts m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem computer_cost_cents (m : ElectricityModel) : m.costCents = 900 := by
  have h1 := new_electricity_price m
  have h2 := computer_energy m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem computer_electricity (m : ElectricityModel) : m.dollars = 9 := by
  have h := computer_cost_cents m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure SodaModel where
  ounces : ℕ
  canOunces : ℕ
  cans : ℕ
  centsPerCan : ℕ
  totalCents : ℕ
  dollars : ℕ
  hOunces : ounces = 80
  hCanOunces : canOunces = 8
  hCapacity : canOunces * cans = ounces
  hCentsPerCan : centsPerCan = 50
  hTotal : totalCents = cans * centsPerCan
  hDollars : 100 * dollars = totalCents

theorem soda_cans (m : SodaModel) : m.cans = 10 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem soda_cost_cents (m : SodaModel) : m.totalCents = 500 := by
  have h := soda_cans m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem soda_cost (m : SodaModel) : m.dollars = 5 := by
  have h := soda_cost_cents m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure RentalModel where
  weekdayDays : ℕ
  weekdayRate : ℕ
  weekday : ℕ
  weekendDays : ℕ
  weekendRate : ℕ
  weekend : ℕ
  total : ℕ
  people : ℕ
  each : ℕ
  hWeekdayDays : weekdayDays = 2
  hWeekdayRate : weekdayRate = 420
  hWeekday : weekday = weekdayDays * weekdayRate
  hWeekendDays : weekendDays = 2
  hWeekendRate : weekendRate = 540
  hWeekend : weekend = weekendDays * weekendRate
  hTotal : total = weekday + weekend
  hPeople : people = 6
  hShare : people * each = total

theorem weekday_rental (m : RentalModel) : m.weekday = 840 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem weekend_rental (m : RentalModel) : m.weekend = 1080 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem rental_total (m : RentalModel) : m.total = 1920 := by
  have h1 := weekday_rental m
  have h2 := weekend_rental m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem airbnb_share (m : RentalModel) : m.each = 320 := by
  have h := rental_total m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A14P2
