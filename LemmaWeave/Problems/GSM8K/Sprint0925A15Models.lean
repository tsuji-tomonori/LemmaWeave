import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0925A15

structure Punch where dew total servings : ℕ
  hDew : dew = 6 * 12
  hTotal : total = dew + 28 + 40
  hServings : total = 10 * servings
theorem punch_dew (m : Punch) : m.dew = 72 := by cases m; omega
theorem punch_total (m : Punch) : m.total = 140 := by cases m; omega
theorem punch_solution (m : Punch) : m.servings = 14 := by cases m; omega

structure Baseball where nathan tobias total : ℕ
  hNathan : nathan = 3 * 14
  hTobias : tobias = 5 * 7
  hTotal : total = nathan + tobias
theorem baseball_nathan (m : Baseball) : m.nathan = 42 := by cases m; omega
theorem baseball_tobias (m : Baseball) : m.tobias = 35 := by cases m; omega
theorem baseball_solution (m : Baseball) : m.total = 77 := by cases m; omega

structure Wire where feetInches totalInches partInches : ℕ
  hFeet : feetInches = 5 * 12
  hTotal : totalInches = feetInches + 4
  hPart : totalInches = 4 * partInches
theorem wire_feet (m : Wire) : m.feetInches = 60 := by cases m; omega
theorem wire_total (m : Wire) : m.totalInches = 64 := by cases m; omega
theorem wire_solution (m : Wire) : m.partInches = 16 := by cases m; omega

structure BaseballCards where robDoubles jessDoubles : ℕ
  hRob : 3 * robDoubles = 24
  hJess : jessDoubles = 5 * robDoubles
theorem cards_rob (m : BaseballCards) : m.robDoubles = 8 := by cases m; omega
theorem cards_solution (m : BaseballCards) : m.jessDoubles = 40 := by cases m; omega

structure Shopping where appleCost orangeCost total : ℕ
  hApple : appleCost = 5 * 1
  hOrange : orangeCost = 2 * 2
  hTotal : total = appleCost + orangeCost
theorem shopping_apples (m : Shopping) : m.appleCost = 5 := by cases m; omega
theorem shopping_oranges (m : Shopping) : m.orangeCost = 4 := by cases m; omega
theorem shopping_solution (m : Shopping) : m.total = 9 := by cases m; omega

structure TigerRun where fast slow chase total : ℕ
  hFast : fast = 4 * 25
  hSlow : slow = 1 * 10
  hChase : 2 * chase = 50
  hTotal : total = fast + slow + chase
theorem tiger_fast (m : TigerRun) : m.fast = 100 := by cases m; omega
theorem tiger_slow (m : TigerRun) : m.slow = 10 := by cases m; omega
theorem tiger_chase (m : TigerRun) : m.chase = 25 := by cases m; omega
theorem tiger_solution (m : TigerRun) : m.total = 135 := by cases m; omega

structure Competition where participants absent : ℕ
  hParticipants : 3 * participants = 39
  hClass : participants + absent = 39
theorem competition_participants (m : Competition) : m.participants = 13 := by cases m; omega
theorem competition_solution (m : Competition) : m.absent = 26 := by cases m; omega

structure Cycling where onurDay onurWeek hanilDay hanilWeek total : ℕ
  hOnurDay : onurDay = 250
  hOnurWeek : onurWeek = 5 * onurDay
  hHanilDay : hanilDay = onurDay + 40
  hHanilWeek : hanilWeek = 5 * hanilDay
  hTotal : total = onurWeek + hanilWeek
theorem cycling_onur (m : Cycling) : m.onurWeek = 1250 := by cases m; omega
theorem cycling_hanil_day (m : Cycling) : m.hanilDay = 290 := by cases m; omega
theorem cycling_hanil (m : Cycling) : m.hanilWeek = 1450 := by cases m; omega
theorem cycling_solution (m : Cycling) : m.total = 2700 := by cases m; omega

structure ToyCars where pair brother total : ℕ
  hPair : pair = 3 + 3
  hBrother : brother = pair + 5
  hTotal : total = pair + brother
theorem cars_pair (m : ToyCars) : m.pair = 6 := by cases m; omega
theorem cars_brother (m : ToyCars) : m.brother = 11 := by cases m; omega
theorem cars_solution (m : ToyCars) : m.total = 17 := by cases m; omega

structure Typing where typingMinutes breakMinutes elapsed : ℕ
  hTyping : 15 * typingMinutes = 255
  hBreak : breakMinutes = 2
  hElapsed : elapsed = typingMinutes + breakMinutes
theorem typing_work (m : Typing) : m.typingMinutes = 17 := by cases m; omega
theorem typing_break (m : Typing) : m.breakMinutes = 2 := by cases m; omega
theorem typing_solution (m : Typing) : m.elapsed = 19 := by cases m; omega

structure SpaceStation where perCylinder kitchensEach kitchensTotal : ℕ
  hPer : 3 * perCylinder = 72
  hRooms : kitchensEach + 12 + 7 = perCylinder
  hTotal : kitchensTotal = 3 * kitchensEach
theorem station_per_cylinder (m : SpaceStation) : m.perCylinder = 24 := by cases m; omega
theorem station_kitchens_each (m : SpaceStation) : m.kitchensEach = 5 := by cases m; omega
theorem station_solution (m : SpaceStation) : m.kitchensTotal = 15 := by cases m; omega

structure ZooFood where wandaBread wandaTreats janeTreats janeBread total : ℕ
  hWandaBread : wandaBread = 90
  hWandaRatio : wandaBread = 3 * wandaTreats
  hTreats : janeTreats = 2 * wandaTreats
  hJaneRatio : 4 * janeBread = 3 * janeTreats
  hTotal : total = wandaBread + wandaTreats + janeTreats + janeBread
theorem zoo_wanda_treats (m : ZooFood) : m.wandaTreats = 30 := by cases m; omega
theorem zoo_jane_treats (m : ZooFood) : m.janeTreats = 60 := by cases m; omega
theorem zoo_jane_bread (m : ZooFood) : m.janeBread = 45 := by cases m; omega
theorem zoo_solution (m : ZooFood) : m.total = 225 := by cases m; omega

structure DataCharges where internationalCents regularCents totalCents : ℕ
  hInternational : internationalCents = 10 * 350
  hRegular : regularCents = 17500
  hTotal : totalCents = internationalCents + regularCents
theorem data_international (m : DataCharges) : m.internationalCents = 3500 := by cases m; omega
theorem data_solution_cents (m : DataCharges) : m.totalCents = 21000 := by cases m; omega
theorem data_solution_dollars (m : DataCharges) : m.totalCents / 100 = 210 := by
  rw [data_solution_cents m]
  norm_num

structure JuneSongs where activeDays vivianPerDay claraPerDay vivianTotal claraTotal total : ℕ
  hDays : activeDays + 8 = 30
  hVivianRate : vivianPerDay = 10
  hClaraRate : claraPerDay + 2 = vivianPerDay
  hVivianTotal : vivianTotal = 10 * activeDays
  hClaraTotal : claraTotal = 8 * activeDays
  hTotal : total = vivianTotal + claraTotal
theorem songs_days (m : JuneSongs) : m.activeDays = 22 := by cases m; omega
theorem songs_vivian (m : JuneSongs) : m.vivianTotal = 220 := by cases m; omega
theorem songs_clara_rate (m : JuneSongs) : m.claraPerDay = 8 := by cases m; omega
theorem songs_clara (m : JuneSongs) : m.claraTotal = 176 := by cases m; omega
theorem songs_solution (m : JuneSongs) : m.total = 396 := by cases m; omega

structure Ages where job stephanie freddy : ℕ
  hJob : job = 5
  hStephanie : stephanie = 4 * job
  hFreddy : freddy + 2 = stephanie
theorem ages_stephanie (m : Ages) : m.stephanie = 20 := by cases m; omega
theorem ages_solution (m : Ages) : m.freddy = 18 := by cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0925A15
