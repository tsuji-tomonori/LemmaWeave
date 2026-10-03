import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0928A12

structure GameModel where
  game candy hourly hours earnings spending left : ℕ
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
theorem game_spending (m : GameModel) : m.spending = 65 := by omega
theorem game_left (m : GameModel) : m.left = 7 := by
  have h₁ := game_earnings m
  have h₂ := game_spending m
  omega
theorem game_solution (m : GameModel) : m.left = 7 := game_left m

structure MushroomModel where
  piecesPer kenny karla remaining usedPieces totalPieces mushrooms : ℕ
  hPiecesPer : piecesPer = 4
  hKenny : kenny = 38
  hKarla : karla = 42
  hRemaining : remaining = 8
  hUsed : usedPieces = kenny + karla
  hTotal : totalPieces = usedPieces + remaining
  hMushrooms : piecesPer * mushrooms = totalPieces

theorem mushroom_used (m : MushroomModel) : m.usedPieces = 80 := by omega
theorem mushroom_pieces (m : MushroomModel) : m.totalPieces = 88 := by
  have h := mushroom_used m
  omega
theorem mushroom_count (m : MushroomModel) : m.mushrooms = 22 := by
  have h := mushroom_pieces m
  omega
theorem mushroom_solution (m : MushroomModel) : m.mushrooms = 22 := mushroom_count m

structure PaintModel where
  area coverage coats gallons price total share : ℕ
  hArea : area = 1600
  hCoverage : coverage = 400
  hCoats : coats = 2
  hGallons : coverage * gallons = area * coats
  hPrice : price = 45
  hTotal : total = gallons * price
  hShare : 2 * share = total

theorem paint_gallons (m : PaintModel) : m.gallons = 8 := by omega
theorem paint_total (m : PaintModel) : m.total = 360 := by
  have hg := paint_gallons m
  have h := m.hTotal
  rw [hg, m.hPrice] at h
  norm_num at h ⊢
  exact h
theorem paint_share (m : PaintModel) : m.share = 180 := by
  have h := paint_total m
  omega
theorem paint_solution (m : PaintModel) : m.share = 180 := paint_share m

structure MealModel where
  bagel juice sandwich milk breakfast lunch difference : ℕ
  hBagel : bagel = 95
  hJuice : juice = 85
  hSandwich : sandwich = 465
  hMilk : milk = 115
  hBreakfast : breakfast = bagel + juice
  hLunch : lunch = sandwich + milk
  hDifference : breakfast + difference = lunch

theorem meal_totals (m : MealModel) : m.breakfast = 180 ∧ m.lunch = 580 := by omega
theorem meal_difference (m : MealModel) : m.difference = 400 := by
  have h := meal_totals m
  omega
theorem meal_solution (m : MealModel) : m.difference = 400 := meal_difference m

structure TransportModel where
  income percent fare left : ℕ
  hIncome : income = 2000
  hPercent : percent = 5
  hFare : 100 * fare = percent * income
  hLeft : left + fare = income

theorem transport_fare (m : TransportModel) : m.fare = 100 := by omega
theorem transport_left (m : TransportModel) : m.left = 1900 := by
  have h := transport_fare m
  omega
theorem transport_solution (m : TransportModel) : m.left = 1900 := transport_left m

structure SiblingsModel where
  aaron sister henry total : ℕ
  hAaron : aaron = 15
  hSister : sister = 3 * aaron
  hHenry : henry = 4 * sister
  hTotal : total = aaron + sister + henry

theorem siblings_sister (m : SiblingsModel) : m.sister = 45 := by omega
theorem siblings_henry (m : SiblingsModel) : m.henry = 180 := by
  have h := siblings_sister m
  omega
theorem siblings_total (m : SiblingsModel) : m.total = 240 := by
  have h₁ := siblings_sister m
  have h₂ := siblings_henry m
  omega
theorem siblings_solution (m : SiblingsModel) : m.total = 240 := siblings_total m

structure SodiumModel where
  saltTeaspoons saltPer cheeseOunces cheesePer saltSodium cheeseSodium total reduction fewerOunces : ℕ
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
  have h := sodium_parts m
  omega
theorem sodium_fewer (m : SodiumModel) : m.fewerOunces = 4 := by
  have h := sodium_reduction m
  omega
theorem sodium_solution (m : SodiumModel) : m.fewerOunces = 4 := sodium_fewer m

structure FilmingModel where
  episodeMinutes extraPercent filmingMinutes weeklyEpisodes weeks episodes totalMinutes hours : ℕ
  hEpisodeMinutes : episodeMinutes = 20
  hExtraPercent : extraPercent = 50
  hFilming : 100 * filmingMinutes = (100 + extraPercent) * episodeMinutes
  hWeeklyEpisodes : weeklyEpisodes = 5
  hWeeks : weeks = 4
  hEpisodes : episodes = weeklyEpisodes * weeks
  hTotalMinutes : totalMinutes = episodes * filmingMinutes
  hHours : 60 * hours = totalMinutes

theorem filming_per_episode (m : FilmingModel) : m.filmingMinutes = 30 := by omega
theorem filming_episodes (m : FilmingModel) : m.episodes = 20 := by
  have h := m.hEpisodes
  rw [m.hWeeklyEpisodes, m.hWeeks] at h
  norm_num at h ⊢
  exact h
theorem filming_total_minutes (m : FilmingModel) : m.totalMinutes = 600 := by
  have h₁ := filming_per_episode m
  have h₂ := filming_episodes m
  omega
theorem filming_hours (m : FilmingModel) : m.hours = 10 := by
  have h := filming_total_minutes m
  omega
theorem filming_solution (m : FilmingModel) : m.hours = 10 := filming_hours m

structure ExerciseModel where
  javierDaily javierDays javier sandaDaily sandaDays sanda total : ℕ
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
  have h := exercise_parts m
  omega
theorem exercise_solution (m : ExerciseModel) : m.total = 620 := exercise_total m

structure IceCreamModel where
  mwfDays mwfPrice mwfCost ttDays ttPrice ttCost weekendDays weekendPrice weekendCost weekly weeks totalCents totalDollars : ℕ
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
  omega
theorem ice_cream_total (m : IceCreamModel) : m.totalDollars = 90 := by
  have hw := ice_cream_weekly m
  omega
theorem ice_cream_solution (m : IceCreamModel) : m.totalDollars = 90 := ice_cream_total m

structure TripModel where
  uberWait drive bagCheck security boardWait takeoffWait totalMinutes hours : ℕ
  hUberWait : uberWait = 10
  hDrive : drive = 5 * uberWait
  hBagCheck : bagCheck = 15
  hSecurity : security = 3 * bagCheck
  hBoardWait : boardWait = 20
  hTakeoffWait : takeoffWait = 2 * boardWait
  hTotal : totalMinutes = uberWait + drive + bagCheck + security + boardWait + takeoffWait
  hHours : 60 * hours = totalMinutes

theorem trip_derived_times (m : TripModel) :
    m.drive = 50 ∧ m.security = 45 ∧ m.takeoffWait = 40 := by omega
theorem trip_total_minutes (m : TripModel) : m.totalMinutes = 180 := by
  have h := trip_derived_times m
  omega
theorem trip_hours (m : TripModel) : m.hours = 3 := by
  have h := trip_total_minutes m
  omega
theorem trip_solution (m : TripModel) : m.hours = 3 := trip_hours m

structure ShirtsModel where
  whitePacks whitePer white bluePacks bluePer blue total : ℕ
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
  have h := shirts_parts m
  omega
theorem shirts_solution (m : ShirtsModel) : m.total = 26 := shirts_total m

structure GuestsModel where
  total women men children menLeft childrenLeft stayed : ℕ
  hTotal : total = 60
  hWomen : 2 * women = total
  hMen : men = 15
  hChildren : women + men + children = total
  hMenLeft : 3 * menLeft = men
  hChildrenLeft : childrenLeft = 5
  hStayed : stayed + menLeft + childrenLeft = total

theorem guests_counts (m : GuestsModel) : m.women = 30 ∧ m.children = 15 := by omega
theorem guests_left (m : GuestsModel) : m.menLeft = 5 ∧ m.childrenLeft = 5 := by omega
theorem guests_stayed (m : GuestsModel) : m.stayed = 50 := by
  have h₁ := guests_counts m
  have h₂ := guests_left m
  omega
theorem guests_solution (m : GuestsModel) : m.stayed = 50 := guests_stayed m

structure PizzaModel where
  boxes price order tip paid spent change : ℕ
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
  have h := pizza_order m
  omega
theorem pizza_change (m : PizzaModel) : m.change = 60 := by
  have h₁ := pizza_order m
  have h₂ := pizza_tip m
  omega
theorem pizza_solution (m : PizzaModel) : m.change = 60 := pizza_change m

structure GoalsModel where
  pizzas slicesPer totalGoals games average : ℕ
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
  have h := goals_total m
  omega
theorem goals_solution (m : GoalsModel) : m.average = 9 := goals_average m

end LemmaWeave.Problems.GSM8K.Sprint0928A12
