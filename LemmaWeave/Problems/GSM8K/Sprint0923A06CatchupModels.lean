import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0923A06Catchup

structure FishingSeason where first firstNinety remainingDays remainderCatch second difference : ℕ
  hFirst : first = 3 * 213
  hFirstNinety : firstNinety = 1 * 30 + 2 * 60
  hRemainingDays : remainingDays + 90 = 213
  hRemainderCatch : remainderCatch = 4 * remainingDays
  hSecond : second = firstNinety + remainderCatch
  hDifference : difference + first = second

theorem fishing_first (m : FishingSeason) : m.first = 639 := by rw [m.hFirst]
theorem fishing_first_ninety (m : FishingSeason) : m.firstNinety = 150 := by
  rw [m.hFirstNinety]
theorem fishing_remaining_days (m : FishingSeason) : m.remainingDays = 123 := by omega
theorem fishing_remainder_catch (m : FishingSeason) : m.remainderCatch = 492 := by
  rw [m.hRemainderCatch, fishing_remaining_days m]
theorem fishing_second (m : FishingSeason) : m.second = 642 := by
  rw [m.hSecond, fishing_first_ninety m, fishing_remainder_catch m]
theorem fishing_solution (m : FishingSeason) : m.difference = 3 := by
  have h := m.hDifference
  rw [fishing_first m, fishing_second m] at h
  omega

structure BirdWorms where daily needed mamaNet available more : ℕ
  hDaily : daily = 6 * 3
  hNeeded : needed = daily * 3
  hMamaNet : mamaNet + 2 = 13
  hAvailable : available = mamaNet + 9
  hMore : more + available = needed

theorem worms_daily (m : BirdWorms) : m.daily = 18 := by rw [m.hDaily]
theorem worms_needed (m : BirdWorms) : m.needed = 54 := by
  rw [m.hNeeded, worms_daily m]
theorem worms_mama_net (m : BirdWorms) : m.mamaNet = 11 := by omega
theorem worms_available (m : BirdWorms) : m.available = 20 := by
  rw [m.hAvailable, worms_mama_net m]
theorem worms_solution (m : BirdWorms) : m.more = 34 := by
  have h := m.hMore
  rw [worms_available m, worms_needed m] at h
  omega

structure NecklaceMachines where first second total : ℕ
  hFirst : first = 45
  hSecond : second * 10 = first * 24
  hTotal : total = first + second

theorem necklaces_first (m : NecklaceMachines) : m.first = 45 := m.hFirst
theorem necklaces_second (m : NecklaceMachines) : m.second = 108 := by
  have h := m.hSecond
  rw [necklaces_first m] at h
  omega
theorem necklaces_solution (m : NecklaceMachines) : m.total = 153 := by
  rw [m.hTotal, necklaces_first m, necklaces_second m]

structure ChiveGarden where reservedRows chiveRows chives : ℕ
  hReserved : reservedRows = 3 + 2
  hRows : chiveRows + reservedRows = 20
  hChives : chives = chiveRows * 10

theorem chives_reserved_rows (m : ChiveGarden) : m.reservedRows = 5 := by rw [m.hReserved]
theorem chives_rows (m : ChiveGarden) : m.chiveRows = 15 := by
  have h := m.hRows
  rw [chives_reserved_rows m] at h
  omega
theorem chives_solution (m : ChiveGarden) : m.chives = 150 := by
  rw [m.hChives, chives_rows m]

structure CatShelter where beforeAdoption adopted current : ℕ
  hBefore : beforeAdoption = 20 + 2 + 1
  hAdopted : adopted = 3 * 2
  hCurrent : current + adopted = beforeAdoption

theorem shelter_before_adoption (m : CatShelter) : m.beforeAdoption = 23 := by rw [m.hBefore]
theorem shelter_adopted (m : CatShelter) : m.adopted = 6 := by rw [m.hAdopted]
theorem shelter_solution (m : CatShelter) : m.current = 17 := by
  have h := m.hCurrent
  rw [shelter_before_adoption m, shelter_adopted m] at h
  omega

/-- Favorite-color categories are treated as mutually exclusive and exhaustive. -/
structure FavoriteColors where green pink yellow : ℕ
  hGreen : green * 2 = 30
  hPink : pink * 3 = 18
  hTotal : yellow + green + pink = 30

theorem colors_green (m : FavoriteColors) : m.green = 15 := by omega
theorem colors_pink (m : FavoriteColors) : m.pink = 6 := by omega
theorem colors_solution (m : FavoriteColors) : m.yellow = 9 := by
  have h := m.hTotal
  rw [colors_green m, colors_pink m] at h
  omega

structure EssaySections where conclusion bodyTotal eachBody : ℕ
  hConclusion : conclusion = 3 * 450
  hBodyTotal : bodyTotal + 450 + conclusion = 5000
  hEachBody : eachBody * 4 = bodyTotal

theorem essay_conclusion (m : EssaySections) : m.conclusion = 1350 := by
  rw [m.hConclusion]
theorem essay_body_total (m : EssaySections) : m.bodyTotal = 3200 := by
  have h := m.hBodyTotal
  rw [essay_conclusion m] at h
  omega
theorem essay_solution (m : EssaySections) : m.eachBody = 800 := by
  have h := m.hEachBody
  rw [essay_body_total m] at h
  omega

/-- Costs are represented in cents. -/
structure BakeryPurchase where cupcakes doughnuts pie cookies totalCents : ℕ
  hCupcakes : cupcakes = 5 * 200
  hDoughnuts : doughnuts = 6 * 100
  hPie : pie = 4 * 200
  hCookies : cookies = 15 * 60
  hTotal : totalCents = cupcakes + doughnuts + pie + cookies

theorem bakery_cupcakes (m : BakeryPurchase) : m.cupcakes = 1000 := by rw [m.hCupcakes]
theorem bakery_doughnuts (m : BakeryPurchase) : m.doughnuts = 600 := by rw [m.hDoughnuts]
theorem bakery_pie (m : BakeryPurchase) : m.pie = 800 := by rw [m.hPie]
theorem bakery_cookies (m : BakeryPurchase) : m.cookies = 900 := by rw [m.hCookies]
theorem bakery_solution (m : BakeryPurchase) : m.totalCents = 3300 := by
  rw [m.hTotal, bakery_cupcakes m, bakery_doughnuts m, bakery_pie m, bakery_cookies m]

structure RoadTrip where distance hours : ℕ
  hDistance : distance = 55 + 95
  hHours : hours * 25 = distance

theorem trip_distance (m : RoadTrip) : m.distance = 150 := by rw [m.hDistance]
theorem trip_solution (m : RoadTrip) : m.hours = 6 := by
  have h := m.hHours
  rw [trip_distance m] at h
  omega

structure WrappingPaper where firstTwo third : ℕ
  hFirstTwo : firstTwo = 3 + 5
  hThird : third + firstTwo = 12

theorem wrapping_first_two (m : WrappingPaper) : m.firstTwo = 8 := by rw [m.hFirstTwo]
theorem wrapping_solution (m : WrappingPaper) : m.third = 4 := by
  have h := m.hThird
  rw [wrapping_first_two m] at h
  omega

structure PieSamples where perPie total : ℕ
  hPerPie : perPie = 2 * 5
  hTotal : total = 13 * perPie

theorem pie_samples_per_pie (m : PieSamples) : m.perPie = 10 := by rw [m.hPerPie]
theorem pie_samples_solution (m : PieSamples) : m.total = 130 := by
  rw [m.hTotal, pie_samples_per_pie m]

structure SquirrelCounts where extra second total : ℕ
  hExtra : extra * 3 = 12
  hSecond : second = 12 + extra
  hTotal : total = 12 + second

theorem squirrels_extra (m : SquirrelCounts) : m.extra = 4 := by omega
theorem squirrels_second (m : SquirrelCounts) : m.second = 16 := by
  rw [m.hSecond, squirrels_extra m]
theorem squirrels_solution (m : SquirrelCounts) : m.total = 28 := by
  rw [m.hTotal, squirrels_second m]

structure ExamScore where previousCount previousSum targetTotal william : ℕ
  hCount : previousCount + 1 = 30
  hPrevious : previousSum = previousCount * 74
  hTarget : targetTotal = 30 * 75
  hEnough : targetTotal ≤ previousSum + william
  hMinimal : ∀ s : ℕ, targetTotal ≤ previousSum + s → william ≤ s

theorem exam_previous_count (m : ExamScore) : m.previousCount = 29 := by omega
theorem exam_previous_sum (m : ExamScore) : m.previousSum = 2146 := by
  rw [m.hPrevious, exam_previous_count m]
theorem exam_target_total (m : ExamScore) : m.targetTotal = 2250 := by rw [m.hTarget]
theorem exam_94_enough (m : ExamScore) : m.targetTotal ≤ m.previousSum + 94 := by
  rw [exam_target_total m, exam_previous_sum m]
theorem exam_lower_bound (m : ExamScore) : 94 ≤ m.william := by
  have h := m.hEnough
  rw [exam_target_total m, exam_previous_sum m] at h
  omega
theorem exam_solution (m : ExamScore) : m.william = 94 := by
  apply Nat.le_antisymm
  · exact m.hMinimal 94 (exam_94_enough m)
  · exact exam_lower_bound m

/-- Reading A: 300 is the post-discard count that the class must organize. -/
structure DonationsToOrganize where damaged usableFloats other standalone included totalBalls : ℕ
  hDamaged : damaged * 4 = 120
  hUsable : usableFloats + damaged = 120
  hOther : other = 60 + usableFloats + 50 + 40
  hStandalone : standalone + other = 300
  hIncluded : included * 2 = 60
  hTotalBalls : totalBalls = standalone + included

theorem donations_organize_damaged (m : DonationsToOrganize) : m.damaged = 30 := by omega
theorem donations_organize_usable (m : DonationsToOrganize) : m.usableFloats = 90 := by
  have h := m.hUsable
  rw [donations_organize_damaged m] at h
  omega
theorem donations_organize_other (m : DonationsToOrganize) : m.other = 240 := by
  rw [m.hOther, donations_organize_usable m]
theorem donations_organize_standalone (m : DonationsToOrganize) : m.standalone = 60 := by
  have h := m.hStandalone
  rw [donations_organize_other m] at h
  omega
theorem donations_included (m : DonationsToOrganize) : m.included = 30 := by omega
theorem donations_organize_solution (m : DonationsToOrganize) : m.totalBalls = 90 := by
  rw [m.hTotalBalls, donations_organize_standalone m, donations_included m]

/-- Reading B: 300 is the original donation count before damaged floats are discarded. -/
structure DonationsOriginallyGiven where other standalone included totalBalls : ℕ
  hOther : other = 60 + 120 + 50 + 40
  hStandalone : standalone + other = 300
  hIncluded : included * 2 = 60
  hTotalBalls : totalBalls = standalone + included

theorem donations_original_other (m : DonationsOriginallyGiven) : m.other = 270 := by rw [m.hOther]
theorem donations_original_standalone (m : DonationsOriginallyGiven) : m.standalone = 30 := by
  have h := m.hStandalone
  rw [donations_original_other m] at h
  omega
theorem donations_original_included (m : DonationsOriginallyGiven) : m.included = 30 := by omega
theorem donations_original_solution (m : DonationsOriginallyGiven) : m.totalBalls = 60 := by
  rw [m.hTotalBalls, donations_original_standalone m, donations_original_included m]
theorem donations_two_readings_differ : (90 : ℕ) ≠ 60 := by norm_num

structure DoughnutProfit where revenue profit : ℕ
  hRevenue : revenue = 25 * 3
  hProfit : profit + 53 = revenue

theorem doughnuts_revenue (m : DoughnutProfit) : m.revenue = 75 := by rw [m.hRevenue]
theorem doughnuts_solution (m : DoughnutProfit) : m.profit = 22 := by
  have h := m.hProfit
  rw [doughnuts_revenue m] at h
  omega

end LemmaWeave.Problems.GSM8K.Sprint0923A06Catchup
