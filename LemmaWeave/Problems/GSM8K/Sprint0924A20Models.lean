import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0924A20

structure Legs where chickens sheep total : ℕ
  hChickens : chickens = 7 * 2
  hSheep : sheep = 5 * 4
  hTotal : total = chickens + sheep
theorem legs_chickens (m : Legs) : m.chickens = 14 := by cases m; omega
theorem legs_sheep (m : Legs) : m.sheep = 20 := by cases m; omega
theorem legs_solution (m : Legs) : m.total = 34 := by
  have h₁ := legs_chickens m
  have h₂ := legs_sheep m
  cases m; omega

structure Roses where yesterday today total : ℕ
  hYesterday : yesterday = 50 + 20
  hToday : today = 2 * 50
  hTotal : total = 50 + yesterday + today
theorem roses_yesterday (m : Roses) : m.yesterday = 70 := by cases m; omega
theorem roses_today (m : Roses) : m.today = 100 := by cases m; omega
theorem roses_solution (m : Roses) : m.total = 220 := by
  have h₁ := roses_yesterday m
  have h₂ := roses_today m
  cases m; omega

-- Cents avoid decimal currency. Exact20 is the conditional reading of “about 20 ml”.
structure InkExact20 where boards ml cents dollars : ℕ
  hBoards : boards = 5 * 2
  hMl : ml = boards * 20
  hCents : cents = ml * 50
  hDollars : 100 * dollars = cents
theorem ink_boards (m : InkExact20) : m.boards = 10 := by cases m; omega
theorem ink_ml_exact (m : InkExact20) : m.ml = 200 := by
  have h := ink_boards m
  cases m; omega
theorem ink_cents_exact (m : InkExact20) : m.cents = 10000 := by
  have h := ink_ml_exact m
  cases m; omega
theorem ink_exact_solution (m : InkExact20) : m.dollars = 100 := by
  have h := ink_cents_exact m
  cases m; omega
theorem ink_about_alternative : 10 * 19 * 50 = 9500 := by decide
theorem ink_not_unique : 10000 ≠ 9500 := by decide
theorem ink_answer_scope (m : InkExact20) :
    m.cents = 10000 ∧ 10 * 19 * 50 = 9500 ∧ 10000 ≠ 9500 := by
  exact ⟨ink_cents_exact m, ink_about_alternative, ink_not_unique⟩

structure Eggs where eaten left : ℕ
  hEaten : eaten = 4 + 3
  hLeft : left + eaten = 20
theorem eggs_eaten (m : Eggs) : m.eaten = 7 := by cases m; omega
theorem eggs_solution (m : Eggs) : m.left = 13 := by
  have h := eggs_eaten m
  cases m; omega

structure Discount where reduction percent : ℕ
  hReduction : reduction + 135 = 150
  hPercent : 150 * percent = 100 * reduction
theorem discount_reduction (m : Discount) : m.reduction = 15 := by cases m; omega
theorem discount_solution (m : Discount) : m.percent = 10 := by
  have h := discount_reduction m
  cases m; omega

structure Apples where susan susanLeft frankLeft total : ℕ
  hSusan : susan = 3 * 36
  hSusanLeft : 2 * susanLeft = susan
  hFrankLeft : 3 * frankLeft = 2 * 36
  hTotal : total = susanLeft + frankLeft
theorem apples_susan (m : Apples) : m.susan = 108 := by cases m; omega
theorem apples_susan_left (m : Apples) : m.susanLeft = 54 := by
  have h := apples_susan m
  cases m; omega
theorem apples_frank_left (m : Apples) : m.frankLeft = 24 := by cases m; omega
theorem apples_solution (m : Apples) : m.total = 78 := by
  have h₁ := apples_susan_left m
  have h₂ := apples_frank_left m
  cases m; omega

structure Garden where tomatoes peppers survivors harvest : ℕ
  hTomatoes : 2 * tomatoes = 6
  hPeppers : peppers + 1 = 4
  hSurvivors : survivors = tomatoes + peppers + 2
  hHarvest : harvest = 7 * survivors
theorem garden_tomatoes (m : Garden) : m.tomatoes = 3 := by cases m; omega
theorem garden_peppers (m : Garden) : m.peppers = 3 := by cases m; omega
theorem garden_survivors (m : Garden) : m.survivors = 8 := by
  have h₁ := garden_tomatoes m
  have h₂ := garden_peppers m
  cases m; omega
theorem garden_solution (m : Garden) : m.harvest = 56 := by
  have h := garden_survivors m
  cases m; omega

structure Bleachers where perRound stairs calories : ℕ
  hRound : perRound = 2 * 32
  hStairs : stairs = 40 * perRound
  hCalories : calories = 2 * stairs
theorem bleachers_round (m : Bleachers) : m.perRound = 64 := by cases m; omega
theorem bleachers_stairs (m : Bleachers) : m.stairs = 2560 := by
  have h := bleachers_round m
  cases m; omega
theorem bleachers_solution (m : Bleachers) : m.calories = 5120 := by
  have h := bleachers_stairs m
  cases m; omega

structure Wood where long short total : ℕ
  hLong : long = 6 * 4
  hShort : short = 2 * 2
  hTotal : total = long + short
theorem wood_long (m : Wood) : m.long = 24 := by cases m; omega
theorem wood_short (m : Wood) : m.short = 4 := by cases m; omega
theorem wood_solution (m : Wood) : m.total = 28 := by
  have h₁ := wood_long m
  have h₂ := wood_short m
  cases m; omega

structure AquariumFish where stingrays sharks total : ℕ
  hStingrays : stingrays = 28
  hSharks : sharks = 2 * stingrays
  hTotal : total = stingrays + sharks
theorem fish_sharks (m : AquariumFish) : m.sharks = 56 := by cases m; omega
theorem fish_solution (m : AquariumFish) : m.total = 84 := by
  have h := fish_sharks m
  cases m; omega

structure Utensils where perKind packs spoons : ℕ
  hPerKind : 3 * perKind = 30
  hSpoons : spoons = packs * perKind
  hWanted : spoons = 50
theorem utensils_per_kind (m : Utensils) : m.perKind = 10 := by cases m; omega
theorem utensils_solution (m : Utensils) : m.packs = 5 := by
  have h := utensils_per_kind m
  cases m; omega

-- Distances are in half-miles so 2.5 miles remains integral.
structure WeeklyMileage where schoolRound daily schoolWeek marketRound totalHalfMiles : ℕ
  hSchoolRound : schoolRound = 2 * 5
  hDaily : daily = 2 * schoolRound
  hWeek : schoolWeek = 4 * daily
  hMarket : marketRound = 2 * 4
  hTotal : totalHalfMiles = schoolWeek + marketRound
theorem mileage_school_round (m : WeeklyMileage) : m.schoolRound = 10 := by cases m; omega
theorem mileage_daily (m : WeeklyMileage) : m.daily = 20 := by
  have h := mileage_school_round m
  cases m; omega
theorem mileage_school_week (m : WeeklyMileage) : m.schoolWeek = 80 := by
  have h := mileage_daily m
  cases m; omega
theorem mileage_market (m : WeeklyMileage) : m.marketRound = 8 := by cases m; omega
theorem mileage_solution (m : WeeklyMileage) : m.totalHalfMiles = 88 := by
  have h₁ := mileage_school_week m
  have h₂ := mileage_market m
  cases m; omega

structure TvLiteralMore where firstHalf secondEach secondHalf total : ℕ
  hFirst : firstHalf = 11 * 1000
  hSecondEach : 10 * secondEach = 22 * 1000
  hSecond : secondHalf = 11 * secondEach
  hTotal : total = firstHalf + secondHalf
theorem tv_first (m : TvLiteralMore) : m.firstHalf = 11000 := by cases m; omega
theorem tv_second_each (m : TvLiteralMore) : m.secondEach = 2200 := by cases m; omega
theorem tv_second_half (m : TvLiteralMore) : m.secondHalf = 24200 := by
  have h := tv_second_each m
  cases m; omega
theorem tv_literal_solution (m : TvLiteralMore) : m.total = 35200 := by
  have h₁ := tv_first m
  have h₂ := tv_second_half m
  cases m; omega
theorem tv_as_expensive_alternative : 11 * 1000 + 11 * 1200 = 24200 := by decide
theorem tv_readings_differ : 35200 ≠ 24200 := by decide
theorem tv_answer_scope (m : TvLiteralMore) :
    m.total = 35200 ∧ 11 * 1000 + 11 * 1200 = 24200 ∧ 35200 ≠ 24200 := by
  exact ⟨tv_literal_solution m, tv_as_expensive_alternative, tv_readings_differ⟩

structure Insurance where monthly annual : ℕ
  hMonthly : 10 * monthly = 4 * 80
  hAnnual : annual = 12 * monthly
theorem insurance_monthly (m : Insurance) : m.monthly = 32 := by cases m; omega
theorem insurance_solution (m : Insurance) : m.annual = 384 := by
  have h := insurance_monthly m
  cases m; omega

structure Homework where mathScience other : ℕ
  hUsed : 100 * mathScience = 70 * 150
  hOther : other + mathScience = 150
theorem homework_used (m : Homework) : m.mathScience = 105 := by cases m; omega
theorem homework_solution (m : Homework) : m.other = 45 := by
  have h := homework_used m
  cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0924A20
