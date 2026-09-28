import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A04

structure WalkingModel where
  jackieTenths : ℕ
  jessieTenths : ℕ
  dailyDifferenceTenths : ℕ
  sixDayDifferenceTenths : ℕ
  answerMiles : ℕ
  hJackie : jackieTenths = 20
  hJessie : jessieTenths = 15
  hDaily : dailyDifferenceTenths + jessieTenths = jackieTenths
  hSixDays : sixDayDifferenceTenths = 6 * dailyDifferenceTenths
  hMiles : sixDayDifferenceTenths = 10 * answerMiles

theorem walking_daily_difference (m : WalkingModel) : m.dailyDifferenceTenths = 5 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  omega
theorem walking_six_day_difference (m : WalkingModel) : m.sixDayDifferenceTenths = 30 := by
  have hPrev := walking_daily_difference m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  omega
theorem walking_solution (m : WalkingModel) : m.answerMiles = 3 := by
  have hPrev := walking_six_day_difference m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  omega

structure GiftsModel where
  teachers : ℕ
  costPerGift : ℕ
  hTeachers : teachers = 3 + 4
  hCost : teachers * costPerGift = 70

theorem gifts_teachers (m : GiftsModel) : m.teachers = 7 := by
  rcases m with ⟨a,b,h1,h2⟩
  omega
theorem gifts_solution (m : GiftsModel) : m.costPerGift = 10 := by
  have hPrev := gifts_teachers m
  rcases m with ⟨a,b,h1,h2⟩
  omega

structure TankModel where
  dailyMl : ℕ
  capacityMl : ℕ
  days : ℕ
  hDaily : dailyMl = 800 + 1700
  hCapacity : capacityMl = 50 * 1000
  hFill : days * dailyMl = capacityMl

theorem tank_daily (m : TankModel) : m.dailyMl = 2500 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem tank_capacity (m : TankModel) : m.capacityMl = 50000 := by
  have hPrev := tank_daily m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem tank_solution (m : TankModel) : m.days = 20 := by
  have hPrev := tank_capacity m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega

structure BottlesModel where
  packed : ℕ
  unpacked : ℕ
  hPacked : packed = 10 * 12
  hTotal : packed + unpacked = 130

theorem bottles_packed (m : BottlesModel) : m.packed = 120 := by
  rcases m with ⟨a,b,h1,h2⟩
  omega
theorem bottles_solution (m : BottlesModel) : m.unpacked = 10 := by
  have hPrev := bottles_packed m
  rcases m with ⟨a,b,h1,h2⟩
  omega

structure BurgersModel where
  halfGuests : ℕ
  doubleGroupBurgers : ℕ
  totalBurgers : ℕ
  batches : ℕ
  minutesPerBatch : ℕ
  totalMinutes : ℕ
  hHalf : 2 * halfGuests = 30
  hDouble : doubleGroupBurgers = 2 * halfGuests
  hTotal : totalBurgers = doubleGroupBurgers + halfGuests
  hBatches : totalBurgers = 5 * batches
  hBatchTime : minutesPerBatch = 2 * 4
  hTime : totalMinutes = batches * minutesPerBatch

theorem burgers_half_guests (m : BurgersModel) : m.halfGuests = 15 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega
theorem burgers_total (m : BurgersModel) : m.totalBurgers = 45 := by
  have hPrev := burgers_half_guests m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega
theorem burgers_batches (m : BurgersModel) : m.batches = 9 := by
  have hPrev := burgers_total m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega
theorem burgers_solution (m : BurgersModel) : m.totalMinutes = 72 := by
  have hPrev := burgers_batches m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega

end LemmaWeave.Problems.GSM8K.Sprint0929A04
