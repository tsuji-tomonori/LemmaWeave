import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0923A07

structure TreeTableProfit where
  planks : ℕ
  tables : ℕ
  revenue : ℕ
  profit : ℕ
  hPlanks : planks = 30 * 25
  hTables : tables * 15 = planks
  hRevenue : revenue = tables * 300
  hProfit : profit + 3000 = revenue

theorem trees_planks (m : TreeTableProfit) : m.planks = 750 := by rw [m.hPlanks]
theorem trees_tables (m : TreeTableProfit) : m.tables = 50 := by
  have h := m.hTables
  rw [trees_planks m] at h
  omega
theorem trees_revenue (m : TreeTableProfit) : m.revenue = 15000 := by
  rw [m.hRevenue, trees_tables m]
theorem trees_solution (m : TreeTableProfit) : m.profit = 12000 := by
  have h := m.hProfit
  rw [trees_revenue m] at h
  omega

structure CarSpending where
  samara : ℕ
  difference : ℕ
  hSamara : samara = 25 + 467 + 79
  hDifference : difference + samara = 2457

theorem car_samara (m : CarSpending) : m.samara = 571 := by rw [m.hSamara]
theorem car_solution (m : CarSpending) : m.difference = 1886 := by
  have h := m.hDifference
  rw [car_samara m] at h
  omega

structure SewerCapacity where
  hours : ℕ
  days : ℕ
  hHours : hours * 1000 = 240000
  hDays : days * 24 = hours

theorem sewer_hours (m : SewerCapacity) : m.hours = 240 := by cases m <;> omega
theorem sewer_solution (m : SewerCapacity) : m.days = 10 := by
  have h := m.hDays
  rw [sewer_hours m] at h
  omega

structure TestScores where
  maximum : ℕ
  lost : ℕ
  jose : ℕ
  meghan : ℕ
  alisson : ℕ
  total : ℕ
  hMaximum : maximum = 50 * 2
  hLost : lost = 5 * 2
  hJose : jose + lost = maximum
  hMeghan : meghan + 20 = jose
  hAlisson : alisson + 40 = jose
  hTotal : total = jose + meghan + alisson

theorem scores_maximum (m : TestScores) : m.maximum = 100 := by rw [m.hMaximum]
theorem scores_lost (m : TestScores) : m.lost = 10 := by rw [m.hLost]
theorem scores_jose (m : TestScores) : m.jose = 90 := by
  have h := m.hJose
  rw [scores_maximum m, scores_lost m] at h
  omega
theorem scores_meghan (m : TestScores) : m.meghan = 70 := by
  have h := m.hMeghan
  rw [scores_jose m] at h
  omega
theorem scores_alisson (m : TestScores) : m.alisson = 50 := by
  have h := m.hAlisson
  rw [scores_jose m] at h
  omega
theorem scores_solution (m : TestScores) : m.total = 210 := by
  rw [m.hTotal, scores_jose m, scores_meghan m, scores_alisson m]

structure SugarSubstitute where
  daily : ℕ
  packets : ℕ
  boxes : ℕ
  cost : ℕ
  hDaily : daily = 1 * 2
  hPackets : packets = 90 * daily
  hBoxes : boxes * 30 = packets
  hCost : cost = boxes * 4

theorem sugar_daily (m : SugarSubstitute) : m.daily = 2 := by rw [m.hDaily]
theorem sugar_packets (m : SugarSubstitute) : m.packets = 180 := by
  rw [m.hPackets, sugar_daily m]
theorem sugar_boxes (m : SugarSubstitute) : m.boxes = 6 := by
  have h := m.hBoxes
  rw [sugar_packets m] at h
  omega
theorem sugar_solution (m : SugarSubstitute) : m.cost = 24 := by
  rw [m.hCost, sugar_boxes m]

structure EmmaMoney where
  afterFurniture : ℕ
  given : ℕ
  left : ℕ
  hAfterFurniture : afterFurniture + 400 = 2000
  hGiven : given * 4 = afterFurniture * 3
  hLeft : left + given = afterFurniture

theorem emma_after_furniture (m : EmmaMoney) : m.afterFurniture = 1600 := by cases m <;> omega
theorem emma_given (m : EmmaMoney) : m.given = 1200 := by
  have h := m.hGiven
  rw [emma_after_furniture m] at h
  omega
theorem emma_solution (m : EmmaMoney) : m.left = 400 := by
  have h := m.hLeft
  rw [emma_after_furniture m, emma_given m] at h
  omega

structure DetourTrip where
  speed : ℕ
  detour : ℕ
  extraTime : ℕ
  totalTime : ℕ
  hSpeed : speed * 3 = 150
  hDetour : detour = 2 * 50
  hExtraTime : extraTime * speed = detour
  hTotalTime : totalTime = 3 + extraTime

theorem detour_speed (m : DetourTrip) : m.speed = 50 := by cases m <;> omega
theorem detour_distance (m : DetourTrip) : m.detour = 100 := by rw [m.hDetour]
theorem detour_extra_time (m : DetourTrip) : m.extraTime = 2 := by
  have h := m.hExtraTime
  rw [detour_speed m, detour_distance m] at h
  omega
theorem detour_solution (m : DetourTrip) : m.totalTime = 5 := by
  rw [m.hTotalTime, detour_extra_time m]

structure MonthlyHours where
  totalNeed : ℕ
  hours : ℕ
  hTotalNeed : totalNeed = 1200 + 400 + 200 + 60 + 200
  hEnough : totalNeed ≤ hours * 15
  hMinimal : ∀ n : ℕ, totalNeed ≤ n * 15 → hours ≤ n

theorem hours_total_need (m : MonthlyHours) : m.totalNeed = 2060 := by rw [m.hTotalNeed]
theorem hours_138_enough (m : MonthlyHours) : m.totalNeed ≤ 138 * 15 := by
  rw [hours_total_need m]
theorem hours_lower_bound (m : MonthlyHours) : 138 ≤ m.hours := by
  have h := m.hEnough
  rw [hours_total_need m] at h
  omega
theorem hours_solution (m : MonthlyHours) : m.hours = 138 := by
  apply Nat.le_antisymm
  · exact m.hMinimal 138 (hours_138_enough m)
  · exact hours_lower_bound m

structure SummerReading where
  firstBook : ℕ
  secondBook : ℕ
  totalRead : ℕ
  remaining : ℕ
  hFirstBook : firstBook * 100 = 500 * 80
  hSecondBook : secondBook * 5 = 1000
  hTotalRead : totalRead = firstBook + secondBook
  hRemaining : remaining + totalRead = 800

theorem reading_first_book (m : SummerReading) : m.firstBook = 400 := by cases m <;> omega
theorem reading_second_book (m : SummerReading) : m.secondBook = 200 := by cases m <;> omega
theorem reading_total (m : SummerReading) : m.totalRead = 600 := by
  rw [m.hTotalRead, reading_first_book m, reading_second_book m]
theorem reading_solution (m : SummerReading) : m.remaining = 200 := by
  have h := m.hRemaining
  rw [reading_total m] at h
  omega

structure VolleyballScore where
  nathalie : ℕ
  pair : ℕ
  aimee : ℕ
  named : ℕ
  teammates : ℕ
  hNathalie : nathalie = 4 + 3
  hPair : pair = 4 + nathalie
  hAimee : aimee = 2 * pair
  hNamed : named = pair + aimee
  hTeammates : teammates + named = 50

theorem volleyball_nathalie (m : VolleyballScore) : m.nathalie = 7 := by rw [m.hNathalie]
theorem volleyball_pair (m : VolleyballScore) : m.pair = 11 := by
  rw [m.hPair, volleyball_nathalie m]
theorem volleyball_aimee (m : VolleyballScore) : m.aimee = 22 := by
  rw [m.hAimee, volleyball_pair m]
theorem volleyball_named (m : VolleyballScore) : m.named = 33 := by
  rw [m.hNamed, volleyball_pair m, volleyball_aimee m]
theorem volleyball_solution (m : VolleyballScore) : m.teammates = 17 := by
  have h := m.hTeammates
  rw [volleyball_named m] at h
  omega

structure CommuteDistance where
  extra : ℕ
  secondThird : ℕ
  total : ℕ
  hExtra : extra * 3 = 6 * 2
  hSecondThird : secondThird = 6 + extra
  hTotal : total = 4 + 6 + secondThird + 4

theorem commute_extra (m : CommuteDistance) : m.extra = 4 := by cases m <;> omega
theorem commute_second_third (m : CommuteDistance) : m.secondThird = 10 := by
  rw [m.hSecondThird, commute_extra m]
theorem commute_solution (m : CommuteDistance) : m.total = 24 := by
  rw [m.hTotal, commute_second_third m]

/-- All losses are measured in half-pound units until the final conversion. -/
structure WeightLoss where
  aleesiaHalf : ℕ
  alexeiHalf : ℕ
  totalHalf : ℕ
  totalPounds : ℕ
  hAleesia : aleesiaHalf = 3 * 10
  hAlexei : alexeiHalf = 5 * 8
  hTotalHalf : totalHalf = aleesiaHalf + alexeiHalf
  hPounds : totalHalf = totalPounds * 2

theorem weight_aleesia (m : WeightLoss) : m.aleesiaHalf = 30 := by rw [m.hAleesia]
theorem weight_alexei (m : WeightLoss) : m.alexeiHalf = 40 := by rw [m.hAlexei]
theorem weight_total_half (m : WeightLoss) : m.totalHalf = 70 := by
  rw [m.hTotalHalf, weight_aleesia m, weight_alexei m]
theorem weight_solution (m : WeightLoss) : m.totalPounds = 35 := by
  have h := m.hPounds
  rw [weight_total_half m] at h
  omega

structure FruitCrates where
  known : ℕ
  passion : ℕ
  hKnown : known = 13 + 20
  hPassion : passion + known = 50

theorem fruit_known (m : FruitCrates) : m.known = 33 := by rw [m.hKnown]
theorem fruit_solution (m : FruitCrates) : m.passion = 17 := by
  have h := m.hPassion
  rw [fruit_known m] at h
  omega

/-- `overlap` counts cars that have both a valid ticket and a permanent pass. -/
structure ParkingCounts where
  tickets : ℕ
  passes : ℕ
  overlap : ℕ
  unpaid : ℕ
  hTickets : tickets * 100 = 300 * 75
  hPasses : passes * 5 = tickets
  hOverlapTickets : overlap ≤ tickets
  hOverlapPasses : overlap ≤ passes
  hInclusionExclusion : unpaid + tickets + passes = 300 + overlap

theorem parking_tickets (m : ParkingCounts) : m.tickets = 225 := by cases m <;> omega
theorem parking_passes (m : ParkingCounts) : m.passes = 45 := by
  have h := m.hPasses
  rw [parking_tickets m] at h
  omega
theorem parking_range (m : ParkingCounts) : 30 ≤ m.unpaid ∧ m.unpaid ≤ 75 := by
  have ht := parking_tickets m
  have hp := parking_passes m
  have ho := m.hOverlapPasses
  have hu := m.hInclusionExclusion
  omega
theorem parking_two_possible_values :
    (∃ m : ParkingCounts, m.unpaid = 30) ∧ (∃ m : ParkingCounts, m.unpaid = 75) := by
  constructor
  · refine ⟨{
      tickets := 225, passes := 45, overlap := 0, unpaid := 30,
      hTickets := by norm_num, hPasses := by norm_num,
      hOverlapTickets := by norm_num, hOverlapPasses := by norm_num,
      hInclusionExclusion := by norm_num }, rfl⟩
  · refine ⟨{
      tickets := 225, passes := 45, overlap := 45, unpaid := 75,
      hTickets := by norm_num, hPasses := by norm_num,
      hOverlapTickets := by norm_num, hOverlapPasses := by norm_num,
      hInclusionExclusion := by norm_num }, rfl⟩
theorem parking_disjoint_solution (m : ParkingCounts) (hDisjoint : m.overlap = 0) :
    m.unpaid = 30 := by
  have ht := parking_tickets m
  have hp := parking_passes m
  have hu := m.hInclusionExclusion
  omega

structure SchoolTime where
  used : ℕ
  remaining : ℕ
  hUsed : used = 15 + 6
  hRemaining : remaining + used = 30

theorem school_time_used (m : SchoolTime) : m.used = 21 := by rw [m.hUsed]
theorem school_time_solution (m : SchoolTime) : m.remaining = 9 := by
  have h := m.hRemaining
  rw [school_time_used m] at h
  omega

end LemmaWeave.Problems.GSM8K.Sprint0923A07
