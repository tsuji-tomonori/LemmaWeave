import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0925A02

structure Helmet where
  needed : ℕ
  weekly : ℕ
  weeks : ℕ
  hNeeded : needed + 40 = 340
  hWeekly : weekly = 6 * 5
  hWeeks : 30 * weeks = needed
theorem helmet_needed (m : Helmet) : m.needed = 300 := by cases m <;> simp_all <;> omega
theorem helmet_weekly (m : Helmet) : m.weekly = 30 := by cases m <;> simp_all <;> omega
theorem helmet_solution (m : Helmet) : m.weeks = 10 := by
  have h₁ := helmet_needed m
  have h₂ := helmet_weekly m
  cases m <;> simp_all <;> omega

structure Pizza where
  couple : ℕ
  children : ℕ
  total : ℕ
  pizzas : ℕ
  hCouple : couple = 2 * 3
  hChildren : children = 6 * 1
  hTotal : total = couple + children
  hPizzas : 4 * pizzas = total
theorem pizza_couple (m : Pizza) : m.couple = 6 := by cases m <;> simp_all <;> omega
theorem pizza_children (m : Pizza) : m.children = 6 := by cases m <;> simp_all <;> omega
theorem pizza_total (m : Pizza) : m.total = 12 := by
  have h₁ := pizza_couple m
  have h₂ := pizza_children m
  cases m <;> simp_all <;> omega
theorem pizza_solution (m : Pizza) : m.pizzas = 3 := by
  have h := pizza_total m
  cases m <;> simp_all <;> omega

structure SchoolHours where
  monday : ℕ
  tuesday : ℕ
  wednesday : ℕ
  total : ℕ
  hMonday : 60 * monday = 6 * 30
  hTuesday : tuesday = 3
  hWednesday : wednesday = 2 * tuesday
  hTotal : total = monday + tuesday + wednesday
theorem school_monday (m : SchoolHours) : m.monday = 3 := by cases m <;> simp_all <;> omega
theorem school_wednesday (m : SchoolHours) : m.wednesday = 6 := by cases m <;> simp_all <;> omega
theorem school_solution (m : SchoolHours) : m.total = 12 := by
  have h₁ := school_monday m
  have h₂ := school_wednesday m
  cases m <;> simp_all <;> omega

structure FoodCount where
  perPerson : ℕ
  total : ℕ
  hPerPerson : perPerson = 7 + 18 + 30
  hTotal : total = 2 * perPerson
theorem food_per_person (m : FoodCount) : m.perPerson = 55 := by cases m <;> simp_all <;> omega
theorem food_solution (m : FoodCount) : m.total = 110 := by
  have h := food_per_person m
  cases m <;> simp_all <;> omega

-- The reference interpretation takes both fractions from the original weekly earnings.
structure BabysittingOriginalBase where
  daily : ℕ
  weekly : ℕ
  makeup : ℕ
  skincare : ℕ
  left : ℕ
  hDaily : daily = 3 * 10
  hWeekly : weekly = 7 * daily
  hMakeup : 10 * makeup = 3 * weekly
  hSkincare : 5 * skincare = 2 * weekly
  hLeft : left + makeup + skincare = weekly
theorem babysitting_daily (m : BabysittingOriginalBase) : m.daily = 30 := by cases m <;> simp_all <;> omega
theorem babysitting_weekly (m : BabysittingOriginalBase) : m.weekly = 210 := by
  have h := babysitting_daily m
  cases m <;> simp_all <;> omega
theorem babysitting_makeup (m : BabysittingOriginalBase) : m.makeup = 63 := by cases m <;> simp_all <;> omega
theorem babysitting_skincare_original (m : BabysittingOriginalBase) : m.skincare = 84 := by cases m <;> simp_all <;> omega
theorem babysitting_solution_original (m : BabysittingOriginalBase) : m.left = 63 := by
  have h₁ := babysitting_makeup m
  have h₂ := babysitting_skincare_original m
  cases m <;> simp_all <;> omega

-- If “her money” means the balance after makeup, the exact remainder is 88.20 dollars.
structure BabysittingSequentialCents where
  afterMakeup : ℕ
  skincare : ℕ
  left : ℕ
  hAfterMakeup : afterMakeup = 14700
  hSkincare : 5 * skincare = 2 * afterMakeup
  hLeft : left + skincare = afterMakeup
theorem babysitting_sequential_alternative (m : BabysittingSequentialCents) : m.left = 8820 := by
  cases m <;> simp_all <;> omega

structure RiceFat where
  perDay : ℕ
  perWeek : ℕ
  hPerDay : perDay = (3 + 2 + 5) * 10
  hPerWeek : perWeek = 7 * perDay
theorem rice_daily (m : RiceFat) : m.perDay = 100 := by cases m <;> simp_all <;> omega
theorem rice_solution (m : RiceFat) : m.perWeek = 700 := by
  have h := rice_daily m
  cases m <;> simp_all <;> omega

structure Shells where
  collected : ℕ
  left : ℕ
  hCollected : collected = 6 * 10
  hLeft : left + 2 = collected
theorem shells_collected (m : Shells) : m.collected = 60 := by cases m <;> simp_all <;> omega
theorem shells_solution (m : Shells) : m.left = 58 := by
  have h := shells_collected m
  cases m <;> simp_all <;> omega

structure BirthdayMoney where
  game : ℕ
  afterGame : ℕ
  goggles : ℕ
  left : ℕ
  hGame : 4 * game = 100
  hAfterGame : afterGame + game = 100
  hGoggles : 5 * goggles = afterGame
  hLeft : left + goggles = afterGame
theorem birthday_game (m : BirthdayMoney) : m.game = 25 := by cases m <;> simp_all <;> omega
theorem birthday_after_game (m : BirthdayMoney) : m.afterGame = 75 := by cases m <;> simp_all <;> omega
theorem birthday_goggles (m : BirthdayMoney) : m.goggles = 15 := by cases m <;> simp_all <;> omega
theorem birthday_solution (m : BirthdayMoney) : m.left = 60 := by cases m <;> simp_all <;> omega

structure ChickensLeft where
  sold : ℕ
  left : ℕ
  hSold : sold = 12 + 25
  hLeft : left + sold = 80
theorem chickens_sold (m : ChickensLeft) : m.sold = 37 := by cases m <;> simp_all <;> omega
theorem chickens_solution (m : ChickensLeft) : m.left = 43 := by
  have h := chickens_sold m
  cases m <;> simp_all <;> omega

structure OrangeTrees where
  friends : ℕ
  frank : ℕ
  seeds : ℕ
  fruit : ℕ
  hFriends : friends = 15 + 12
  hFrank : frank = 3 * friends
  hSeeds : seeds = 2 * frank
  hFruit : fruit = 5 * seeds
theorem oranges_friends (m : OrangeTrees) : m.friends = 27 := by cases m <;> simp_all <;> omega
theorem oranges_frank (m : OrangeTrees) : m.frank = 81 := by
  have h := oranges_friends m
  cases m <;> simp_all <;> omega
theorem oranges_seeds (m : OrangeTrees) : m.seeds = 162 := by
  have h := oranges_frank m
  cases m <;> simp_all <;> omega
theorem oranges_solution (m : OrangeTrees) : m.fruit = 810 := by
  have h := oranges_seeds m
  cases m <;> simp_all <;> omega

-- Prices are represented in cents so a gum pack may cost $2.50 exactly.
structure YogurtPrice where
  yogurt : ℕ
  gum : ℕ
  shrimpTotal : ℕ
  hShrimp : shrimpTotal = 5 * 500
  hGum : 2 * gum = yogurt
  hBill : 5 * yogurt + 2 * gum + shrimpTotal = 5500
theorem yogurt_shrimp (m : YogurtPrice) : m.shrimpTotal = 2500 := by cases m <;> simp_all <;> omega
theorem yogurt_gum (m : YogurtPrice) : m.gum = 250 := by cases m <;> simp_all <;> omega
theorem yogurt_solution (m : YogurtPrice) : m.yogurt = 500 := by cases m <;> simp_all <;> omega

-- The stated speeds are 15 mph and 30 mph. The source explanation's “20mph” is a typo.
structure CoyoteCatch where
  lead : ℕ
  coyoteAfter : ℕ
  rider : ℕ
  catchHours : ℕ
  hLead : lead = 15 * 1
  hCoyoteAfter : coyoteAfter = lead + 15 * catchHours
  hRider : rider = 30 * catchHours
  hCatch : rider = coyoteAfter
theorem coyote_lead (m : CoyoteCatch) : m.lead = 15 := by cases m <;> simp_all <;> omega
theorem coyote_solution (m : CoyoteCatch) : m.catchHours = 1 := by cases m <;> simp_all <;> omega

structure RunningMiles where
  katie : ℕ
  cole : ℕ
  hXavier : 3 * katie = 84
  hKatie : katie = 4 * cole
theorem running_katie (m : RunningMiles) : m.katie = 28 := by cases m <;> simp_all <;> omega
theorem running_solution (m : RunningMiles) : m.cole = 7 := by cases m <;> simp_all <;> omega

-- Dataset convention: “three times more” is read as three times as many.
structure FlowersThreeTimes where
  roses : ℕ
  lilacs : ℕ
  gardenias : ℕ
  total : ℕ
  hLilacs : lilacs = 10
  hRoses : roses = 3 * lilacs
  hGardenias : 2 * gardenias = lilacs
  hTotal : total = roses + lilacs + gardenias
theorem flowers_roses_conventional (m : FlowersThreeTimes) : m.roses = 30 := by cases m <;> simp_all <;> omega
theorem flowers_gardenias (m : FlowersThreeTimes) : m.gardenias = 5 := by cases m <;> simp_all <;> omega
theorem flowers_solution_conventional (m : FlowersThreeTimes) : m.total = 45 := by cases m <;> simp_all <;> omega

-- Literal “300% more” reading gives four times the lilacs, hence 55 flowers.
structure FlowersThreeTimesMoreLiteral where
  roses : ℕ
  lilacs : ℕ
  gardenias : ℕ
  total : ℕ
  hLilacs : lilacs = 10
  hRoses : roses = lilacs + 3 * lilacs
  hGardenias : 2 * gardenias = lilacs
  hTotal : total = roses + lilacs + gardenias
theorem flowers_literal_alternative (m : FlowersThreeTimesMoreLiteral) : m.total = 55 := by
  cases m <;> simp_all <;> omega

structure FarmChickens where
  hens : ℕ
  roosters : ℕ
  total : ℕ
  hHens : hens + 5 = 9 * roosters
  hTotal : total = hens + roosters
  hTotalGiven : total = 75
theorem farm_roosters (m : FarmChickens) : m.roosters = 8 := by cases m <;> simp_all <;> omega
theorem farm_solution (m : FarmChickens) : m.hens = 67 := by cases m <;> simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0925A02
