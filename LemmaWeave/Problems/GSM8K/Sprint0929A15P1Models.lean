import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A15P1

structure RetailModel where
  employees hoursPerDay days wagePerHour totalHours totalPay : ℕ
  hEmployees : employees = 50
  hHours : hoursPerDay = 8
  hDays : days = 5
  hWage : wagePerHour = 14
  hTotalHours : totalHours = employees * hoursPerDay * days
  hPay : totalPay = totalHours * wagePerHour

theorem retail_daily_hours (m : RetailModel) : m.employees * m.hoursPerDay = 400 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all

theorem retail_total_hours (m : RetailModel) : m.totalHours = 2000 := by
  have hPrev := retail_daily_hours m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all

theorem retail_solution (m : RetailModel) : m.totalPay = 28000 := by
  have hPrev := retail_total_hours m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all

structure ReadingModel where
  totalPages days sessionsPerDay pagesPerSession requiredPerDay plannedPerDay extraPerDay : ℕ
  hTotal : totalPages = 140
  hDays : days = 7
  hRequired : totalPages = days * requiredPerDay
  hSessions : sessionsPerDay = 3
  hPages : pagesPerSession = 6
  hPlanned : plannedPerDay = sessionsPerDay * pagesPerSession
  hExtra : requiredPerDay = plannedPerDay + extraPerDay

theorem reading_required (m : ReadingModel) : m.requiredPerDay = 20 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all <;> omega

theorem reading_planned (m : ReadingModel) : m.plannedPerDay = 18 := by
  have hPrev := reading_required m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all

theorem reading_solution (m : ReadingModel) : m.extraPerDay = 2 := by
  have hPrev := reading_planned m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all <;> omega

structure FuelModel where
  oneWayMiles tankLiters consumptionLiters milesPerTank roundTripMiles tankfuls refillsFromFull : ℕ
  hOneWay : oneWayMiles = 280
  hTank : tankLiters = 8
  hConsumption : consumptionLiters = 8
  hRange : milesPerTank = 40
  hRoundTrip : roundTripMiles = 2 * oneWayMiles
  hTankfuls : roundTripMiles = milesPerTank * tankfuls
  hRefillsFromFull : refillsFromFull + 1 = tankfuls

theorem fuel_round_trip (m : FuelModel) : m.roundTripMiles = 560 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all

theorem fuel_tankfuls (m : FuelModel) : m.tankfuls = 14 := by
  have hPrev := fuel_round_trip m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all <;> omega

theorem fuel_solution (m : FuelModel) : m.tankfuls = 14 ∧ m.refillsFromFull = 13 := by
  have hPrev := fuel_tankfuls m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all <;> omega

structure DonationModel where
  firstWeek laterFiveWeeks total : ℕ
  hLaterAggregate : laterFiveWeeks = 10 * firstWeek
  hTotal : total = firstWeek + laterFiveWeeks
  hKnown : total = 99

theorem donation_equation (m : DonationModel) : 11 * m.firstWeek = 99 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  simp_all <;> omega

theorem donation_solution (m : DonationModel) : m.firstWeek = 9 := by
  have hPrev := donation_equation m
  omega

theorem donation_per_week_reading_impossible :
    ¬ ∃ firstWeek : ℕ, firstWeek + 5 * (10 * firstWeek) = 99 := by
  omega

structure RobotModel where
  standard minimum maximum : ℕ
  hStandard : standard = 100
  hMinimumExact : minimum = standard + 5
  hMaximum : maximum = 2 * minimum

theorem robot_minimum (m : RobotModel) : m.minimum = 105 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  simp_all

theorem robot_solution (m : RobotModel) : m.maximum = 210 := by
  have hPrev := robot_minimum m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  simp_all

theorem robot_lower_bound_counterexample :
    ∃ minimum maximum : ℕ, 105 ≤ minimum ∧ maximum = 2 * minimum ∧ maximum ≠ 210 := by
  exact ⟨106, 212, by omega, by norm_num, by norm_num⟩

end LemmaWeave.Problems.GSM8K.Sprint0929A15P1
