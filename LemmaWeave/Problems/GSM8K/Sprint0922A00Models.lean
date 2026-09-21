import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0922A00

structure ReadingPages where
  oliver lucy carter : ℕ
  hOliver : oliver = 40
  hLucy : lucy = oliver + 20
  hCarter : 2 * carter = lucy

theorem reading_oliver (m : ReadingPages) : m.oliver = 40 := m.hOliver
theorem reading_lucy (m : ReadingPages) : m.lucy = 60 := by
  calc m.lucy = m.oliver + 20 := m.hLucy
    _ = 40 + 20 := by rw [m.hOliver]
    _ = 60 := by norm_num
theorem reading_solution (m : ReadingPages) : m.carter = 30 := by
  have h : 2 * m.carter = 60 := by rw [m.hCarter, reading_lucy m]
  omega

structure Orchard where
  moonglow triple sunshine : ℕ
  hMoon : moonglow = 14
  hTriple : triple = 3 * moonglow
  hSun : sunshine = triple + 12

theorem orchard_triple (m : Orchard) : m.triple = 42 := by
  calc m.triple = 3 * m.moonglow := m.hTriple
    _ = 3 * 14 := by rw [m.hMoon]
    _ = 42 := by norm_num
theorem orchard_solution (m : Orchard) : m.sunshine = 54 := by
  calc m.sunshine = m.triple + 12 := m.hSun
    _ = 42 + 12 := by rw [orchard_triple m]
    _ = 54 := by norm_num

structure AnnieMoney where
  burgerCost shakeCost spent left initial : ℕ
  hBurger : burgerCost = 8 * 4
  hShake : shakeCost = 6 * 5
  hSpent : spent = burgerCost + shakeCost
  hLeft : left = 70
  hInitial : initial = spent + left

theorem annie_burgers (m : AnnieMoney) : m.burgerCost = 32 := by rw [m.hBurger]; norm_num
theorem annie_shakes (m : AnnieMoney) : m.shakeCost = 30 := by rw [m.hShake]; norm_num
theorem annie_spent (m : AnnieMoney) : m.spent = 62 := by
  calc m.spent = m.burgerCost + m.shakeCost := m.hSpent
    _ = 32 + 30 := by rw [annie_burgers m, annie_shakes m]
    _ = 62 := by norm_num
theorem annie_solution (m : AnnieMoney) : m.initial = 132 := by
  calc m.initial = m.spent + m.left := m.hInitial
    _ = 62 + 70 := by rw [annie_spent m, m.hLeft]
    _ = 132 := by norm_num

structure Gumballs where
  joannaBought joannaTotal jacquesBought jacquesTotal pooled each : ℕ
  hJoannaBought : joannaBought = 4 * 40
  hJoannaTotal : joannaTotal = 40 + joannaBought
  hJacquesBought : jacquesBought = 4 * 60
  hJacquesTotal : jacquesTotal = 60 + jacquesBought
  hPooled : pooled = joannaTotal + jacquesTotal
  hEach : 2 * each = pooled

theorem gumballs_joanna_bought (m : Gumballs) : m.joannaBought = 160 := by rw [m.hJoannaBought]; norm_num
theorem gumballs_joanna_total (m : Gumballs) : m.joannaTotal = 200 := by
  calc m.joannaTotal = 40 + m.joannaBought := m.hJoannaTotal
    _ = 40 + 160 := by rw [gumballs_joanna_bought m]
    _ = 200 := by norm_num
theorem gumballs_jacques_bought (m : Gumballs) : m.jacquesBought = 240 := by rw [m.hJacquesBought]; norm_num
theorem gumballs_jacques_total (m : Gumballs) : m.jacquesTotal = 300 := by
  calc m.jacquesTotal = 60 + m.jacquesBought := m.hJacquesTotal
    _ = 60 + 240 := by rw [gumballs_jacques_bought m]
    _ = 300 := by norm_num
theorem gumballs_pooled (m : Gumballs) : m.pooled = 500 := by
  calc m.pooled = m.joannaTotal + m.jacquesTotal := m.hPooled
    _ = 200 + 300 := by rw [gumballs_joanna_total m, gumballs_jacques_total m]
    _ = 500 := by norm_num
theorem gumballs_solution (m : Gumballs) : m.each = 250 := by
  have h : 2 * m.each = 500 := by rw [m.hEach, gumballs_pooled m]
  omega

structure CupcakeProfit where
  made burnt eaten remaining revenueCents costCents profitCents : ℕ
  hMade : made = 6 * 12
  hBurnt : burnt = 2 * 12
  hEaten : eaten = 5 + 4
  hRemaining : remaining = made - burnt - eaten
  hRevenue : revenueCents = remaining * 200
  hCost : costCents = made * 75
  hProfit : profitCents = revenueCents - costCents

theorem cupcake_made (m : CupcakeProfit) : m.made = 72 := by rw [m.hMade]; norm_num
theorem cupcake_burnt (m : CupcakeProfit) : m.burnt = 24 := by rw [m.hBurnt]; norm_num
theorem cupcake_eaten (m : CupcakeProfit) : m.eaten = 9 := by rw [m.hEaten]; norm_num
theorem cupcake_remaining (m : CupcakeProfit) : m.remaining = 39 := by
  calc m.remaining = m.made - m.burnt - m.eaten := m.hRemaining
    _ = 72 - 24 - 9 := by rw [cupcake_made m, cupcake_burnt m, cupcake_eaten m]
    _ = 39 := by norm_num
theorem cupcake_revenue (m : CupcakeProfit) : m.revenueCents = 7800 := by
  calc m.revenueCents = m.remaining * 200 := m.hRevenue
    _ = 39 * 200 := by rw [cupcake_remaining m]
    _ = 7800 := by norm_num
theorem cupcake_cost (m : CupcakeProfit) : m.costCents = 5400 := by
  calc m.costCents = m.made * 75 := m.hCost
    _ = 72 * 75 := by rw [cupcake_made m]
    _ = 5400 := by norm_num
theorem cupcake_solution (m : CupcakeProfit) : m.profitCents = 2400 := by
  calc m.profitCents = m.revenueCents - m.costCents := m.hProfit
    _ = 7800 - 5400 := by rw [cupcake_revenue m, cupcake_cost m]
    _ = 2400 := by norm_num

structure CollegeCost where
  tuition books facilities total : ℕ
  hTuition : tuition = 14 * 450
  hBooks : books = 5 * 120
  hFacilities : facilities = 200
  hTotal : total = tuition + books + facilities

theorem college_tuition (m : CollegeCost) : m.tuition = 6300 := by rw [m.hTuition]; norm_num
theorem college_books (m : CollegeCost) : m.books = 600 := by rw [m.hBooks]; norm_num
theorem college_solution (m : CollegeCost) : m.total = 7100 := by
  calc m.total = m.tuition + m.books + m.facilities := m.hTotal
    _ = 6300 + 600 + 200 := by rw [college_tuition m, college_books m, m.hFacilities]
    _ = 7100 := by norm_num

structure DriveStorage where
  capacityHalfKB usedHalfKB remainingHalfKB videoCount : ℕ
  hCapacity : capacityHalfKB = 2000 * 3
  hUsed : usedHalfKB = 400 * 3
  hRemaining : remainingHalfKB = capacityHalfKB - usedHalfKB
  hVideos : videoCount * 400 = remainingHalfKB

theorem drive_capacity (m : DriveStorage) : m.capacityHalfKB = 6000 := by rw [m.hCapacity]; norm_num
theorem drive_used (m : DriveStorage) : m.usedHalfKB = 1200 := by rw [m.hUsed]; norm_num
theorem drive_remaining (m : DriveStorage) : m.remainingHalfKB = 4800 := by
  calc m.remainingHalfKB = m.capacityHalfKB - m.usedHalfKB := m.hRemaining
    _ = 6000 - 1200 := by rw [drive_capacity m, drive_used m]
    _ = 4800 := by norm_num
theorem drive_solution (m : DriveStorage) : m.videoCount = 12 := by
  have h : m.videoCount * 400 = 4800 := by rw [m.hVideos, drive_remaining m]
  omega

structure IvyCupcakes where
  afternoon total : ℕ
  hAfternoon : afternoon = 20 + 15
  hTotal : total = 20 + afternoon

theorem ivy_afternoon (m : IvyCupcakes) : m.afternoon = 35 := by rw [m.hAfternoon]; norm_num
theorem ivy_solution (m : IvyCupcakes) : m.total = 55 := by
  calc m.total = 20 + m.afternoon := m.hTotal
    _ = 20 + 35 := by rw [ivy_afternoon m]
    _ = 55 := by norm_num

structure Crowdfunding where
  low second high : ℕ
  hSecond : second = 10 * low
  hHigh : high = 10 * second
  hRaised : 2 * high + 3 * second + 10 * low = 12000

theorem crowdfunding_low (m : Crowdfunding) : m.low = 50 := by
  have hs := m.hSecond
  have hh := m.hHigh
  have hr := m.hRaised
  omega
theorem crowdfunding_second (m : Crowdfunding) : m.second = 500 := by
  calc m.second = 10 * m.low := m.hSecond
    _ = 10 * 50 := by rw [crowdfunding_low m]
    _ = 500 := by norm_num
theorem crowdfunding_solution (m : Crowdfunding) : m.high = 5000 := by
  calc m.high = 10 * m.second := m.hHigh
    _ = 10 * 500 := by rw [crowdfunding_second m]
    _ = 5000 := by norm_num

structure Heights where
  kim tamara : ℕ
  hRelation : tamara + 4 = 3 * kim
  hSum : kim + tamara = 92

theorem heights_kim (m : Heights) : m.kim = 24 := by
  have hr := m.hRelation
  have hs := m.hSum
  omega
theorem heights_solution (m : Heights) : m.tamara = 68 := by
  have hs := m.hSum
  rw [heights_kim m] at hs
  omega

structure Bowling where
  first second third : ℕ
  hFirst : 3 * first = second
  hSecond : second = 3 * third
  hTotal : first + second + third = 810

theorem bowling_first_equals_third (m : Bowling) : m.first = m.third := by
  have hf := m.hFirst
  have hs := m.hSecond
  omega
theorem bowling_second (m : Bowling) : m.second = 486 := by
  have hf := m.hFirst
  have hs := m.hSecond
  have ht := m.hTotal
  omega
theorem bowling_solution (m : Bowling) : m.third = 162 := by
  have hs := m.hSecond
  rw [bowling_second m] at hs
  omega

structure DuctTape where
  combined minutes : ℕ
  hCombined : combined = 8 + 3
  hTime : minutes * combined = 22

theorem tape_combined (m : DuctTape) : m.combined = 11 := by rw [m.hCombined]; norm_num
theorem tape_solution (m : DuctTape) : m.minutes = 2 := by
  have h : m.minutes * 11 = 22 := by rw [m.hTime, tape_combined m]
  omega

structure Inheritance where
  natalie remaining rick lucy : ℕ
  hNatalie : natalie = 5000
  hRemaining : remaining = 10000 - natalie
  hRick : 100 * rick = 60 * remaining
  hLucy : lucy = remaining - rick

theorem inheritance_natalie (m : Inheritance) : m.natalie = 5000 := m.hNatalie
theorem inheritance_remaining (m : Inheritance) : m.remaining = 5000 := by
  calc m.remaining = 10000 - m.natalie := m.hRemaining
    _ = 10000 - 5000 := by rw [inheritance_natalie m]
    _ = 5000 := by norm_num
theorem inheritance_rick (m : Inheritance) : m.rick = 3000 := by
  have h : 100 * m.rick = 60 * 5000 := by rw [m.hRick, inheritance_remaining m]
  omega
theorem inheritance_solution (m : Inheritance) : m.lucy = 2000 := by
  calc m.lucy = m.remaining - m.rick := m.hLucy
    _ = 5000 - 3000 := by rw [inheritance_remaining m, inheritance_rick m]
    _ = 2000 := by norm_num

structure Typing where
  micahHour isaiahHour difference : ℕ
  hMicah : micahHour = 20 * 60
  hIsaiah : isaiahHour = 40 * 60
  hDifference : difference = isaiahHour - micahHour

theorem typing_micah (m : Typing) : m.micahHour = 1200 := by rw [m.hMicah]; norm_num
theorem typing_isaiah (m : Typing) : m.isaiahHour = 2400 := by rw [m.hIsaiah]; norm_num
theorem typing_solution (m : Typing) : m.difference = 1200 := by
  calc m.difference = m.isaiahHour - m.micahHour := m.hDifference
    _ = 2400 - 1200 := by rw [typing_isaiah m, typing_micah m]
    _ = 1200 := by norm_num

structure LandShare where
  people share : ℕ
  hPeople : people = 1 + 4
  hShare : share * 5 = 20000

theorem land_people (m : LandShare) : m.people = 5 := by rw [m.hPeople]; norm_num
theorem land_solution (m : LandShare) : m.share = 4000 := by
  have h := m.hShare
  omega

end LemmaWeave.Problems.GSM8K.Sprint0922A00
