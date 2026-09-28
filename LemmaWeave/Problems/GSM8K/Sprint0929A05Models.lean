import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A05

structure FuelModel where
  todayMiles : ℕ
  tomorrowMiles : ℕ
  totalMiles : ℕ
  gallons : ℕ
  hToday : todayMiles = 400
  hTomorrow : tomorrowMiles = todayMiles + 200
  hDistance : totalMiles = todayMiles + tomorrowMiles
  hGallons : gallons = 4 * totalMiles

theorem fuel_tomorrow (m : FuelModel) : m.tomorrowMiles = 600 := by
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem fuel_total_distance (m : FuelModel) : m.totalMiles = 1000 := by
  have hPrev := fuel_tomorrow m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem fuel_solution (m : FuelModel) : m.gallons = 4000 := by
  have hPrev := fuel_total_distance m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega

structure VideosModel where
  lilaPerVideo : ℕ
  lilaTotal : ℕ
  rogerTotal : ℕ
  combined : ℕ
  hLilaPer : 2 * lilaPerVideo = 100
  hLilaTotal : lilaTotal = 6 * lilaPerVideo
  hRoger : rogerTotal = 6 * 100
  hCombined : combined = lilaTotal + rogerTotal

theorem videos_lila_per (m : VideosModel) : m.lilaPerVideo = 50 := by
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem videos_lila_total (m : VideosModel) : m.lilaTotal = 300 := by
  have hPrev := videos_lila_per m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem videos_roger_total (m : VideosModel) : m.rogerTotal = 600 := by
  have hPrev := videos_lila_total m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem videos_solution (m : VideosModel) : m.combined = 900 := by
  have hPrev := videos_roger_total m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega

structure JuniorModel where
  extraHours : ℕ
  hoursPerSite : ℕ
  totalHours : ℕ
  hExtra : 4 * extraHours = 20
  hPerSite : hoursPerSite = 20 + extraHours
  hTotal : totalHours = 30 * hoursPerSite

theorem junior_extra (m : JuniorModel) : m.extraHours = 5 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem junior_per_site (m : JuniorModel) : m.hoursPerSite = 25 := by
  have hPrev := junior_extra m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem junior_solution (m : JuniorModel) : m.totalHours = 750 := by
  have hPrev := junior_per_site m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega

structure MarblesModel where
  white : ℕ
  green : ℕ
  red : ℕ
  hWhite : 2 * white = 50
  hGreen : 2 * green = 12
  hPartition : white + 12 + green + red = 50

theorem marbles_white (m : MarblesModel) : m.white = 25 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem marbles_green (m : MarblesModel) : m.green = 6 := by
  have hPrev := marbles_white m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega
theorem marbles_solution (m : MarblesModel) : m.red = 7 := by
  have hPrev := marbles_green m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  omega

structure PoleModel where
  cutMeters : ℕ
  remainingMeters : ℕ
  hCut : 100 * cutMeters = 30 * 20
  hRemaining : remainingMeters + cutMeters = 20

theorem pole_cut (m : PoleModel) : m.cutMeters = 6 := by
  rcases m with ⟨a,b,h1,h2⟩
  omega
theorem pole_solution (m : PoleModel) : m.remainingMeters = 14 := by
  have hPrev := pole_cut m
  rcases m with ⟨a,b,h1,h2⟩
  omega

structure WalkingGroupModel where
  routeMiles : ℕ
  jamieExtra : ℕ
  sueExtra : ℕ
  routeTotal : ℕ
  personMilesTotal : ℕ
  hRoute : routeMiles = 6 * 3
  hJamie : jamieExtra = 6 * 2
  hSue : 2 * sueExtra = jamieExtra
  hRouteTotal : routeTotal = routeMiles + jamieExtra + sueExtra
  hPersonMiles : personMilesTotal = 5 * routeMiles + jamieExtra + sueExtra

theorem walking_group_route (m : WalkingGroupModel) : m.routeMiles = 18 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  omega
theorem walking_group_jamie (m : WalkingGroupModel) : m.jamieExtra = 12 := by
  have hPrev := walking_group_route m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  omega
theorem walking_group_sue (m : WalkingGroupModel) : m.sueExtra = 6 := by
  have hPrev := walking_group_jamie m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  omega
theorem walking_group_route_solution (m : WalkingGroupModel) : m.routeTotal = 36 := by
  have hPrev := walking_group_sue m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  omega
theorem walking_group_person_solution (m : WalkingGroupModel) : m.personMilesTotal = 108 := by
  have hPrev := walking_group_route_solution m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  omega
theorem walking_group_ambiguity (m : WalkingGroupModel) :
    m.routeTotal = 36 ∧ m.personMilesTotal = 108 ∧ m.routeTotal ≠ m.personMilesTotal := by
  have hRoute := walking_group_route_solution m
  have hPerson := walking_group_person_solution m
  omega

structure CookiesModel where
  cookies : ℕ
  boxes : ℕ
  costCents : ℕ
  costDollars : ℕ
  hCookies : cookies = 3 * 80
  hBoxes : cookies = 60 * boxes
  hCost : costCents = 350 * boxes
  hDollars : costCents = 100 * costDollars

theorem cookies_needed (m : CookiesModel) : m.cookies = 240 := by
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem cookies_boxes (m : CookiesModel) : m.boxes = 4 := by
  have hPrev := cookies_needed m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem cookies_cost_cents (m : CookiesModel) : m.costCents = 1400 := by
  have hPrev := cookies_boxes m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega
theorem cookies_solution (m : CookiesModel) : m.costDollars = 14 := by
  have hPrev := cookies_cost_cents m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega

structure RiverModel where
  mayDepth : ℕ
  juneDepth : ℕ
  hJuly : 3 * juneDepth = 45
  hJune : mayDepth + 10 = juneDepth

theorem river_june (m : RiverModel) : m.juneDepth = 15 := by
  rcases m with ⟨a,b,h1,h2⟩
  omega
theorem river_solution (m : RiverModel) : m.mayDepth = 5 := by
  have hPrev := river_june m
  rcases m with ⟨a,b,h1,h2⟩
  omega

structure FruitModel where
  ounces : ℕ
  blueberryCartons : ℕ
  blueberryCost : ℕ
  raspberryCartons : ℕ
  raspberryCost : ℕ
  savings : ℕ
  hOunces : ounces = 4 * 12
  hBlueCartons : ounces = 6 * blueberryCartons
  hBlueCost : blueberryCost = 5 * blueberryCartons
  hRaspberryCartons : ounces = 8 * raspberryCartons
  hRaspberryCost : raspberryCost = 3 * raspberryCartons
  hSavings : savings + raspberryCost = blueberryCost

theorem fruit_ounces (m : FruitModel) : m.ounces = 48 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega
theorem fruit_blue_cost (m : FruitModel) : m.blueberryCost = 40 := by
  have hPrev := fruit_ounces m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega
theorem fruit_raspberry_cost (m : FruitModel) : m.raspberryCost = 18 := by
  have hPrev := fruit_blue_cost m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega
theorem fruit_solution (m : FruitModel) : m.savings = 22 := by
  have hPrev := fruit_raspberry_cost m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega

structure MarketModel where
  jayda : ℕ
  extra : ℕ
  aitanaMoreReading : ℕ
  totalMoreReading : ℕ
  aitanaMultiplierReading : ℕ
  totalMultiplierReading : ℕ
  hJayda : jayda = 400
  hExtra : 5 * extra = 2 * jayda
  hAitanaMore : aitanaMoreReading = jayda + extra
  hTotalMore : totalMoreReading = jayda + aitanaMoreReading
  hAitanaMultiplier : 5 * aitanaMultiplierReading = 2 * jayda
  hTotalMultiplier : totalMultiplierReading = jayda + aitanaMultiplierReading

theorem market_extra (m : MarketModel) : m.extra = 160 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega
theorem market_more_solution (m : MarketModel) : m.totalMoreReading = 960 := by
  have hPrev := market_extra m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega
theorem market_multiplier_solution (m : MarketModel) : m.totalMultiplierReading = 560 := by
  have hPrev := market_more_solution m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega
theorem market_ambiguity (m : MarketModel) :
    m.totalMoreReading = 960 ∧ m.totalMultiplierReading = 560 ∧
      m.totalMoreReading ≠ m.totalMultiplierReading := by
  have hMore := market_more_solution m
  have hMultiplier := market_multiplier_solution m
  omega

end LemmaWeave.Problems.GSM8K.Sprint0929A05
