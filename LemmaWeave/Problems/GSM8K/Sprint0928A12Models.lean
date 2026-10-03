import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0928A12

structure GameModel where
  game : ℕ
  candy : ℕ
  hourly : ℕ
  hours : ℕ
  earnings : ℕ
  spending : ℕ
  left : ℕ
  hGame : game = 60
  hCandy : candy = 5
  hHourly : hourly = 8
  hHours : hours = 9
  hEarnings : earnings = hourly * hours
  hSpending : spending = game + candy
  hLeft : left + spending = earnings

theorem game_earnings (m : GameModel) : m.earnings = 72 := by
  have h := m.hEarnings
  rw [m.hHourly, m.hHours] at h
  norm_num at h ⊢
  exact h
theorem game_spending (m : GameModel) : m.spending = 65 := by
  rw [m.hSpending, m.hGame, m.hCandy]

theorem game_left (m : GameModel) : m.left = 7 := by
  have he := game_earnings m
  have hs := game_spending m
  have hl := m.hLeft
  omega

theorem game_solution (m : GameModel) : m.left = 7 := game_left m

structure MushroomModel where
  piecesPer : ℕ
  kenny : ℕ
  karla : ℕ
  remaining : ℕ
  usedPieces : ℕ
  totalPieces : ℕ
  mushrooms : ℕ
  hPiecesPer : piecesPer = 4
  hKenny : kenny = 38
  hKarla : karla = 42
  hRemaining : remaining = 8
  hUsed : usedPieces = kenny + karla
  hTotal : totalPieces = usedPieces + remaining
  hMushrooms : piecesPer * mushrooms = totalPieces

theorem mushroom_used (m : MushroomModel) : m.usedPieces = 80 := by
  rw [m.hUsed, m.hKenny, m.hKarla]

theorem mushroom_pieces (m : MushroomModel) : m.totalPieces = 88 := by
  rw [m.hTotal, mushroom_used m, m.hRemaining]

theorem mushroom_count (m : MushroomModel) : m.mushrooms = 22 := by
  have h := m.hMushrooms
  rw [m.hPiecesPer, mushroom_pieces m] at h
  omega

theorem mushroom_solution (m : MushroomModel) : m.mushrooms = 22 := mushroom_count m

structure PaintModel where
  area : ℕ
  coverage : ℕ
  coats : ℕ
  gallons : ℕ
  price : ℕ
  total : ℕ
  share : ℕ
  hArea : area = 1600
  hCoverage : coverage = 400
  hCoats : coats = 2
  hGallons : coverage * gallons = area * coats
  hPrice : price = 45
  hTotal : total = gallons * price
  hShare : 2 * share = total

theorem paint_gallons (m : PaintModel) : m.gallons = 8 := by
  have h := m.hGallons
  rw [m.hCoverage, m.hArea, m.hCoats] at h
  omega

theorem paint_total (m : PaintModel) : m.total = 360 := by
  have hg := paint_gallons m
  have h := m.hTotal
  rw [hg, m.hPrice] at h
  norm_num at h ⊢
  exact h
theorem paint_share (m : PaintModel) : m.share = 180 := by
  have h := m.hShare
  rw [paint_total m] at h
  omega

theorem paint_solution (m : PaintModel) : m.share = 180 := paint_share m

structure MealModel where
  bagel : ℕ
  juice : ℕ
  sandwich : ℕ
  milk : ℕ
  breakfast : ℕ
  lunch : ℕ
  difference : ℕ
  hBagel : bagel = 95
  hJuice : juice = 85
  hSandwich : sandwich = 465
  hMilk : milk = 115
  hBreakfast : breakfast = bagel + juice
  hLunch : lunch = sandwich + milk
  hDifference : breakfast + difference = lunch

theorem meal_totals (m : MealModel) : m.breakfast = 180 ∧ m.lunch = 580 := by
  constructor
  · rw [m.hBreakfast, m.hBagel, m.hJuice]
  · rw [m.hLunch, m.hSandwich, m.hMilk]

theorem meal_difference (m : MealModel) : m.difference = 400 := by
  have h := m.hDifference
  rw [(meal_totals m).1, (meal_totals m).2] at h
  omega

theorem meal_solution (m : MealModel) : m.difference = 400 := meal_difference m

structure TransportModel where
  income : ℕ
  percent : ℕ
  fare : ℕ
  left : ℕ
  hIncome : income = 2000
  hPercent : percent = 5
  hFare : 100 * fare = percent * income
  hLeft : left + fare = income

theorem transport_fare (m : TransportModel) : m.fare = 100 := by
  have h := m.hFare
  rw [m.hPercent, m.hIncome] at h
  omega

theorem transport_left (m : TransportModel) : m.left = 1900 := by
  have h := m.hLeft
  rw [transport_fare m, m.hIncome] at h
  omega

theorem transport_solution (m : TransportModel) : m.left = 1900 := transport_left m

structure SiblingsModel where
  aaron : ℕ
  sister : ℕ
  henry : ℕ
  total : ℕ
  hAaron : aaron = 15
  hSister : sister = 3 * aaron
  hHenry : henry = 4 * sister
  hTotal : total = aaron + sister + henry

theorem siblings_sister (m : SiblingsModel) : m.sister = 45 := by
  rw [m.hSister, m.hAaron]

theorem siblings_henry (m : SiblingsModel) : m.henry = 180 := by
  rw [m.hHenry, siblings_sister m]

theorem siblings_total (m : SiblingsModel) : m.total = 240 := by
  rw [m.hTotal, m.hAaron, siblings_sister m, siblings_henry m]

theorem siblings_solution (m : SiblingsModel) : m.total = 240 := siblings_total m

structure SodiumModel where
  saltTeaspoons : ℕ
  saltPer : ℕ
  cheeseOunces : ℕ
  cheesePer : ℕ
  saltSodium : ℕ
  cheeseSodium : ℕ
  total : ℕ
  reduction : ℕ
  fewerOunces : ℕ
  hSaltTeaspoons : saltTeaspoons = 2
  hSaltPer : saltPer = 50
  hCheeseOunces : cheeseOunces = 8
  hCheesePer : cheesePer = 25
  hSaltSodium : saltSodium = saltTeaspoons * saltPer
  hCheeseSodium : cheeseSodium = cheeseOunces * cheesePer
  hTotal : total = saltSodium + cheeseSodium
  hReduction : 3 * reduction = total
  hFewer : cheesePer * fewerOunces = reduction

theorem sodium_parts (m : SodiumModel) : m.saltSodium = 100 ∧ m.cheeseSodium = 200 := by
  constructor
  · have h := m.hSaltSodium
    rw [m.hSaltTeaspoons, m.hSaltPer] at h
    norm_num at h ⊢
    exact h
  · have h := m.hCheeseSodium
    rw [m.hCheeseOunces, m.hCheesePer] at h
    norm_num at h ⊢
    exact h
theorem sodium_reduction (m : SodiumModel) : m.reduction = 100 := by
  have hp := sodium_parts m
  have ht := m.hTotal
  rw [hp.1, hp.2] at ht
  have hr := m.hReduction
  omega

theorem sodium_fewer (m : SodiumModel) : m.fewerOunces = 4 := by
  have h := m.hFewer
  rw [m.hCheesePer, sodium_reduction m] at h
  omega

theorem sodium_solution (m : SodiumModel) : m.fewerOunces = 4 := sodium_fewer m

structure FilmingModel where
  episodeMinutes : ℕ
  extraPercent : ℕ
  filmingMinutes : ℕ
  weeklyEpisodes : ℕ
  weeks : ℕ
  episodes : ℕ
  totalMinutes : ℕ
  hours : ℕ
  hEpisodeMinutes : episodeMinutes = 20
  hExtraPercent : extraPercent = 50
  hFilming : 100 * filmingMinutes = (100 + extraPercent) * episodeMinutes
  hWeeklyEpisodes : weeklyEpisodes = 5
  hWeeks : weeks = 4
  hEpisodes : episodes = weeklyEpisodes * weeks
  hTotalMinutes : totalMinutes = episodes * filmingMinutes
  hHours : 60 * hours = totalMinutes

theorem filming_per_episode (m : FilmingModel) : m.filmingMinutes = 30 := by
  have h := m.hFilming
  rw [m.hExtraPercent, m.hEpisodeMinutes] at h
  omega

theorem filming_episodes (m : FilmingModel) : m.episodes = 20 := by
  have h := m.hEpisodes
  rw [m.hWeeklyEpisodes, m.hWeeks] at h
  norm_num at h ⊢
  exact h
theorem filming_total_minutes (m : FilmingModel) : m.totalMinutes = 600 := by
  rw [m.hTotalMinutes, filming_episodes m, filming_per_episode m]

theorem filming_hours (m : FilmingModel) : m.hours = 10 := by
  have h := m.hHours
  rw [filming_total_minutes m] at h
  omega

theorem filming_solution (m : FilmingModel) : m.hours = 10 := filming_hours m

structure ExerciseModel where
  javierDaily : ℕ
  javierDays : ℕ
  javier : ℕ
  sandaDaily : ℕ
  sandaDays : ℕ
  sanda : ℕ
  total : ℕ
  hJavierDaily : javierDaily = 50
  hJavierDays : javierDays = 7
  hJavier : javier = javierDaily * javierDays
  hSandaDaily : sandaDaily = 90
  hSandaDays : sandaDays = 3
  hSanda : sanda = sandaDaily * sandaDays
  hTotal : total = javier + sanda

theorem exercise_parts (m : ExerciseModel) : m.javier = 350 ∧ m.sanda = 270 := by
  constructor
  · have h := m.hJavier
    rw [m.hJavierDaily, m.hJavierDays] at h
    norm_num at h ⊢
    exact h
  · have h := m.hSanda
    rw [m.hSandaDaily, m.hSandaDays] at h
    norm_num at h ⊢
    exact h
theorem exercise_total (m : ExerciseModel) : m.total = 620 := by
  rw [m.hTotal, (exercise_parts m).1, (exercise_parts m).2]

theorem exercise_solution (m : ExerciseModel) : m.total = 620 := exercise_total m

structure IceCreamModel where
  mwfDays : ℕ
  mwfPrice : ℕ
  mwfCost : ℕ
  ttDays : ℕ
  ttPrice : ℕ
  ttCost : ℕ
  weekendDays : ℕ
  weekendPrice : ℕ
  weekendCost : ℕ
  weekly : ℕ
  weeks : ℕ
  totalCents : ℕ
  totalDollars : ℕ
  hMwfDays : mwfDays = 3
  hMwfPrice : mwfPrice = 200
  hMwfCost : mwfCost = mwfDays * mwfPrice
  hTtDays : ttDays = 2
  hTtPrice : ttPrice = 150
  hTtCost : ttCost = ttDays * ttPrice
  hWeekendDays : weekendDays = 2
  hWeekendPrice : weekendPrice = 300
  hWeekendCost : weekendCost = weekendDays * weekendPrice
  hWeekly : weekly = mwfCost + ttCost + weekendCost
  hWeeks : weeks = 6
  hTotalCents : totalCents = weeks * weekly
  hTotalDollars : 100 * totalDollars = totalCents

theorem ice_cream_costs (m : IceCreamModel) :
    m.mwfCost = 600 ∧ m.ttCost = 300 ∧ m.weekendCost = 600 := by
  constructor
  · have h := m.hMwfCost
    rw [m.hMwfDays, m.hMwfPrice] at h
    norm_num at h ⊢
    exact h
  · constructor
    · have h := m.hTtCost
      rw [m.hTtDays, m.hTtPrice] at h
      norm_num at h ⊢
      exact h
    · have h := m.hWeekendCost
      rw [m.hWeekendDays, m.hWeekendPrice] at h
      norm_num at h ⊢
      exact h
theorem ice_cream_weekly (m : IceCreamModel) : m.weekly = 1500 := by
  have h := ice_cream_costs m
  rw [m.hWeekly, h.1, h.2.1, h.2.2]

theorem ice_cream_total (m : IceCreamModel) : m.totalDollars = 90 := by
  have ht := m.hTotalCents
  rw [m.hWeeks, ice_cream_weekly m] at ht
  have hd := m.hTotalDollars
  omega

theorem ice_cream_solution (m : IceCreamModel) : m.totalDollars = 90 := ice_cream_total m

structure TripModel where
  uberWait : ℕ
  drive : ℕ
  bagCheck : ℕ
  security : ℕ
  boardWait : ℕ
  takeoffWait : ℕ
  totalMinutes : ℕ
  hours : ℕ
  hUberWait : uberWait = 10
  hDrive : drive = 5 * uberWait
  hBagCheck : bagCheck = 15
  hSecurity : security = 3 * bagCheck
  hBoardWait : boardWait = 20
  hTakeoffWait : takeoffWait = 2 * boardWait
  hTotal : totalMinutes = uberWait + drive + bagCheck + security + boardWait + takeoffWait
  hHours : 60 * hours = totalMinutes

theorem trip_derived_times (m : TripModel) :
    m.drive = 50 ∧ m.security = 45 ∧ m.takeoffWait = 40 := by
  refine ⟨?_, ?_, ?_⟩
  · rw [m.hDrive, m.hUberWait]
  · rw [m.hSecurity, m.hBagCheck]
  · rw [m.hTakeoffWait, m.hBoardWait]

theorem trip_total_minutes (m : TripModel) : m.totalMinutes = 180 := by
  have h := trip_derived_times m
  rw [m.hTotal, m.hUberWait, m.hBagCheck, m.hBoardWait, h.1, h.2.1, h.2.2]

theorem trip_hours (m : TripModel) : m.hours = 3 := by
  have h := m.hHours
  rw [trip_total_minutes m] at h
  omega

theorem trip_solution (m : TripModel) : m.hours = 3 := trip_hours m

structure ShirtsModel where
  whitePacks : ℕ
  whitePer : ℕ
  white : ℕ
  bluePacks : ℕ
  bluePer : ℕ
  blue : ℕ
  total : ℕ
  hWhitePacks : whitePacks = 3
  hWhitePer : whitePer = 6
  hWhite : white = whitePacks * whitePer
  hBluePacks : bluePacks = 2
  hBluePer : bluePer = 4
  hBlue : blue = bluePacks * bluePer
  hTotal : total = white + blue

theorem shirts_parts (m : ShirtsModel) : m.white = 18 ∧ m.blue = 8 := by
  constructor
  · have h := m.hWhite
    rw [m.hWhitePacks, m.hWhitePer] at h
    norm_num at h ⊢
    exact h
  · have h := m.hBlue
    rw [m.hBluePacks, m.hBluePer] at h
    norm_num at h ⊢
    exact h
theorem shirts_total (m : ShirtsModel) : m.total = 26 := by
  rw [m.hTotal, (shirts_parts m).1, (shirts_parts m).2]

theorem shirts_solution (m : ShirtsModel) : m.total = 26 := shirts_total m

structure GuestsModel where
  total : ℕ
  women : ℕ
  men : ℕ
  children : ℕ
  menLeft : ℕ
  childrenLeft : ℕ
  stayed : ℕ
  hTotal : total = 60
  hWomen : 2 * women = total
  hMen : men = 15
  hChildren : women + men + children = total
  hMenLeft : 3 * menLeft = men
  hChildrenLeft : childrenLeft = 5
  hStayed : stayed + menLeft + childrenLeft = total

theorem guests_counts (m : GuestsModel) : m.women = 30 ∧ m.children = 15 := by
  have ht := m.hTotal
  have hw := m.hWomen
  have hm := m.hMen
  have hc := m.hChildren
  omega

theorem guests_left (m : GuestsModel) : m.menLeft = 5 ∧ m.childrenLeft = 5 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem guests_stayed (m : GuestsModel) : m.stayed = 50 := by
  have hc := guests_counts m
  have hl := guests_left m
  have hw := m.hWomen
  have hs := m.hStayed
  omega

theorem guests_solution (m : GuestsModel) : m.stayed = 50 := guests_stayed m

structure PizzaModel where
  boxes : ℕ
  price : ℕ
  order : ℕ
  tip : ℕ
  paid : ℕ
  spent : ℕ
  change : ℕ
  hBoxes : boxes = 5
  hPrice : price = 7
  hOrder : order = boxes * price
  hTip : 7 * tip = order
  hPaid : paid = 100
  hSpent : spent = order + tip
  hChange : change + spent = paid

theorem pizza_order (m : PizzaModel) : m.order = 35 := by
  have h := m.hOrder
  rw [m.hBoxes, m.hPrice] at h
  norm_num at h ⊢
  exact h
theorem pizza_tip (m : PizzaModel) : m.tip = 5 := by
  have h := m.hTip
  rw [pizza_order m] at h
  omega

theorem pizza_change (m : PizzaModel) : m.change = 60 := by
  have ho := pizza_order m
  have ht := pizza_tip m
  have hs := m.hSpent
  have hp := m.hPaid
  have hc := m.hChange
  omega

theorem pizza_solution (m : PizzaModel) : m.change = 60 := pizza_change m

structure GoalsModel where
  pizzas : ℕ
  slicesPer : ℕ
  totalGoals : ℕ
  games : ℕ
  average : ℕ
  hPizzas : pizzas = 6
  hSlicesPer : slicesPer = 12
  hTotalGoals : totalGoals = pizzas * slicesPer
  hGames : games = 8
  hAverage : games * average = totalGoals

theorem goals_total (m : GoalsModel) : m.totalGoals = 72 := by
  have h := m.hTotalGoals
  rw [m.hPizzas, m.hSlicesPer] at h
  norm_num at h ⊢
  exact h
theorem goals_average (m : GoalsModel) : m.average = 9 := by
  have h := m.hAverage
  rw [m.hGames, goals_total m] at h
  omega

theorem goals_solution (m : GoalsModel) : m.average = 9 := goals_average m

end LemmaWeave.Problems.GSM8K.Sprint0928A12
