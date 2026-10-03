import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0923A16

structure Allowance where
  first : ℕ
  second : ℕ
  total : ℕ
  afterClothes : ℕ
  afterGame : ℕ
  hFirst : first = 5 * 8
  hSecond : second = 6 * 6
  hTotal : total = first + second
  hClothes : 2 * afterClothes = total
  hGame : afterGame + 35 = afterClothes

theorem allowance_first (m : Allowance) : m.first = 40 := by rw [m.hFirst]
theorem allowance_second (m : Allowance) : m.second = 36 := by rw [m.hSecond]
theorem allowance_total (m : Allowance) : m.total = 76 := by
  rw [m.hTotal, allowance_first m, allowance_second m]
theorem allowance_after_clothes (m : Allowance) : m.afterClothes = 38 := by cases m <;> omega
theorem allowance_solution (m : Allowance) : m.afterGame = 3 := by cases m <;> omega

structure TriangleAngles where
  a : ℕ
  b : ℕ
  c : ℕ
  hA : a = 60
  hSum : a + b + c = 180
  hB : b = 2 * c

theorem triangle_remaining (m : TriangleAngles) : m.b + m.c = 120 := by cases m <;> omega
theorem triangle_c (m : TriangleAngles) : m.c = 40 := by cases m <;> omega
theorem triangle_solution (m : TriangleAngles) : m.b = 80 := by cases m <;> omega

structure LibraryItems where
  notebooks : ℕ
  pens : ℕ
  total : ℕ
  hNotebooks : notebooks = 30
  hPens : pens = notebooks + 50
  hTotal : total = notebooks + pens

theorem library_notebooks (m : LibraryItems) : m.notebooks = 30 := m.hNotebooks
theorem library_pens (m : LibraryItems) : m.pens = 80 := by rw [m.hPens, library_notebooks m]
theorem library_solution (m : LibraryItems) : m.total = 110 := by
  rw [m.hTotal, library_notebooks m, library_pens m]

structure BirdMigration where
  perBird : ℕ
  birds : ℕ
  combined : ℕ
  hPerBird : perBird = 50 + 60
  hBirds : birds = 20
  hCombined : combined = birds * perBird

theorem migration_per_bird (m : BirdMigration) : m.perBird = 110 := by rw [m.hPerBird]
theorem migration_solution (m : BirdMigration) : m.combined = 2200 := by
  rw [m.hCombined, m.hBirds, migration_per_bird m]

structure FutureAges where
  jeremyNow : ℕ
  sebastianNow : ℕ
  jeremyFuture : ℕ
  sebastianFuture : ℕ
  sophiaFuture : ℕ
  hJeremyNow : jeremyNow = 40
  hSebastianNow : sebastianNow = jeremyNow + 4
  hJeremyFuture : jeremyFuture = jeremyNow + 3
  hSebastianFuture : sebastianFuture = sebastianNow + 3
  hSum : jeremyFuture + sebastianFuture + sophiaFuture = 150

theorem ages_jeremy_future (m : FutureAges) : m.jeremyFuture = 43 := by cases m <;> omega
theorem ages_sebastian_now (m : FutureAges) : m.sebastianNow = 44 := by cases m <;> omega
theorem ages_sebastian_future (m : FutureAges) : m.sebastianFuture = 47 := by cases m <;> omega
theorem ages_solution (m : FutureAges) : m.sophiaFuture = 60 := by cases m <;> omega

structure CookieBoxes where
  given : ℕ
  left : ℕ
  hGiven : given = 12 + 9 + 7
  hLeft : left + given = 45

theorem cookies_given (m : CookieBoxes) : m.given = 28 := by rw [m.hGiven]
theorem cookies_solution (m : CookieBoxes) : m.left = 17 := by cases m <;> omega

/-- The 15-minute head start is one quarter of an hour. -/
structure CatchUp where
  headStartMiles : ℕ
  speedGap : ℕ
  catchUpHours : ℕ
  hHeadStart : headStartMiles * 4 = 20
  hSpeedGap : speedGap = 25 - 20
  hCatchUp : speedGap * catchUpHours = headStartMiles

theorem catchup_head_start (m : CatchUp) : m.headStartMiles = 5 := by cases m <;> omega
theorem catchup_speed_gap (m : CatchUp) : m.speedGap = 5 := by rw [m.hSpeedGap]
theorem catchup_solution (m : CatchUp) : m.catchUpHours = 1 := by cases m <;> omega

structure GiftBags where
  visitors : ℕ
  made : ℕ
  more : ℕ
  hVisitors : visitors = 50 + 40
  hMade : made = 10 + 20
  hMore : more + made = visitors

theorem gifts_visitors (m : GiftBags) : m.visitors = 90 := by rw [m.hVisitors]
theorem gifts_made (m : GiftBags) : m.made = 30 := by rw [m.hMade]
theorem gifts_solution (m : GiftBags) : m.more = 60 := by cases m <;> omega

structure WeeklyReading where
  lastWeek : ℕ
  thisWeek : ℕ
  total : ℕ
  hLast : lastWeek = 5 * 300
  hThis : thisWeek = 2 * lastWeek
  hTotal : total = lastWeek + thisWeek

theorem weekly_last (m : WeeklyReading) : m.lastWeek = 1500 := by rw [m.hLast]
theorem weekly_this (m : WeeklyReading) : m.thisWeek = 3000 := by rw [m.hThis, weekly_last m]
theorem weekly_solution (m : WeeklyReading) : m.total = 4500 := by
  rw [m.hTotal, weekly_last m, weekly_this m]

structure SisterAge where
  emmaNow : ℕ
  sisterNow : ℕ
  yearsUntil : ℕ
  emmaThen : ℕ
  hEmma : emmaNow = 7
  hSister : sisterNow = emmaNow + 9
  hYears : yearsUntil + sisterNow = 56
  hEmmaThen : emmaThen = emmaNow + yearsUntil

theorem sister_current (m : SisterAge) : m.sisterNow = 16 := by cases m <;> omega
theorem sister_years (m : SisterAge) : m.yearsUntil = 40 := by cases m <;> omega
theorem sister_solution (m : SisterAge) : m.emmaThen = 47 := by cases m <;> omega

structure BillboardAverage where
  total : ℕ
  average : ℕ
  hTotal : total = 17 + 20 + 23
  hAverage : average * 3 = total

theorem billboard_total (m : BillboardAverage) : m.total = 60 := by rw [m.hTotal]
theorem billboard_solution (m : BillboardAverage) : m.average = 20 := by cases m <;> omega

structure RelativeSpeeds where
  cory : ℕ
  skateboard : ℕ
  running : ℕ
  distance : ℕ
  hCory : cory = 12
  hCorySkate : cory = 2 * skateboard
  hSkateRun : skateboard = 2 * running
  hDistance : distance = 2 * running

theorem speed_skateboard (m : RelativeSpeeds) : m.skateboard = 6 := by cases m <;> omega
theorem speed_running (m : RelativeSpeeds) : m.running = 3 := by cases m <;> omega
theorem speed_solution (m : RelativeSpeeds) : m.distance = 6 := by cases m <;> omega

structure BerryEating where
  oneBirdFourDays : ℕ
  allBirds : ℕ
  hOne : oneBirdFourDays = 7 * 4
  hAll : allBirds = 5 * oneBirdFourDays

theorem berries_one_bird (m : BerryEating) : m.oneBirdFourDays = 28 := by rw [m.hOne]
theorem berries_solution (m : BerryEating) : m.allBirds = 140 := by rw [m.hAll, berries_one_bird m]

structure BananaTree where
  eaten : ℕ
  basketRemaining : ℕ
  cut : ℕ
  initial : ℕ
  hEaten : eaten = 70
  hBasket : basketRemaining = 2 * eaten
  hCut : cut = eaten + basketRemaining
  hInitial : initial = 100 + cut

theorem bananas_remaining (m : BananaTree) : m.basketRemaining = 140 := by cases m <;> omega
theorem bananas_cut (m : BananaTree) : m.cut = 210 := by cases m <;> omega
theorem bananas_solution (m : BananaTree) : m.initial = 310 := by cases m <;> omega

structure TreasureGold where
  chest : ℕ
  bagEach : ℕ
  bagTotal : ℕ
  total : ℕ
  perHour : ℕ
  hChest : chest = 100
  hBagEach : 2 * bagEach = chest
  hBagTotal : bagTotal = 2 * bagEach
  hTotal : total = chest + bagTotal
  hRate : perHour * 8 = total

theorem gold_bag_each (m : TreasureGold) : m.bagEach = 50 := by cases m <;> omega
theorem gold_bags (m : TreasureGold) : m.bagTotal = 100 := by cases m <;> omega
theorem gold_total (m : TreasureGold) : m.total = 200 := by cases m <;> omega
theorem gold_solution (m : TreasureGold) : m.perHour = 25 := by cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0923A16
