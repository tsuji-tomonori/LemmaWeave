import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0924A17

structure Bags where
  revenue : ℕ
  totalCost : ℕ
  unitCost : ℕ
  hRevenue : revenue = 100 * 10
  hProfit : totalCost + 300 = revenue
  hUnit : totalCost = 100 * unitCost
theorem bags_revenue (m : Bags) : m.revenue = 1000 := by omega
theorem bags_total_cost (m : Bags) : m.totalCost = 700 := by omega
theorem bags_solution (m : Bags) : m.unitCost = 7 := by omega

structure Seed where
  madison : ℕ
  ryan : ℕ
  hMadison : 5 * madison = 6 * 30
  hRyan : 2 * ryan = madison
theorem seed_madison (m : Seed) : m.madison = 36 := by omega
theorem seed_solution (m : Seed) : m.ryan = 18 := by omega

structure Ages where
  rona : ℕ
  rachel : ℕ
  collete : ℕ
  difference : ℕ
  hRona : rona = 8
  hRachel : rachel = 2 * rona
  hCollete : 2 * collete = rona
  hDifference : collete + difference = rachel
theorem ages_rachel (m : Ages) : m.rachel = 16 := by omega
theorem ages_collete (m : Ages) : m.collete = 4 := by omega
theorem ages_solution (m : Ages) : m.difference = 12 := by omega

structure Market where
  spent : ℕ
  left : ℕ
  hSpent : 3 * spent = 2 * 150
  hLeft : left + spent = 150
theorem market_spent (m : Market) : m.spent = 100 := by omega
theorem market_solution (m : Market) : m.left = 50 := by omega

structure Errand where
  driving : ℕ
  total : ℕ
  hDriving : driving = 2 * 20
  hTotal : total = driving + 70
theorem errand_driving (m : Errand) : m.driving = 40 := by omega
theorem errand_solution (m : Errand) : m.total = 110 := by omega

structure Outfit where
  pants : ℕ
  increase : ℕ
  shirt : ℕ
  total : ℕ
  hPants : pants = 50
  hIncrease : 5 * increase = 3 * pants
  hShirt : shirt = pants + increase
  hTotal : total = shirt + pants
theorem outfit_increase (m : Outfit) : m.increase = 30 := by omega
theorem outfit_shirt (m : Outfit) : m.shirt = 80 := by omega
theorem outfit_solution (m : Outfit) : m.total = 130 := by omega

structure Renata where
  afterCharity : ℕ
  afterPrize : ℕ
  slotLoss : ℕ
  afterSlots : ℕ
  afterPurchase : ℕ
  final : ℕ
  hCharity : afterCharity + 4 = 10
  hPrize : afterPrize = afterCharity + 90
  hSlotLoss : slotLoss = 50 + 10 + 5
  hSlots : afterSlots + slotLoss = afterPrize
  hPurchase : afterPurchase + 1 + 1 = afterSlots
  hFinal : final = afterPurchase + 65
theorem renata_after_charity (m : Renata) : m.afterCharity = 6 := by omega
theorem renata_after_prize (m : Renata) : m.afterPrize = 96 := by omega
theorem renata_after_slots (m : Renata) : m.afterSlots = 31 := by omega
theorem renata_after_purchase (m : Renata) : m.afterPurchase = 29 := by omega
theorem renata_solution (m : Renata) : m.final = 94 := by omega

structure Roadtrip where
  highway : ℕ
  city : ℕ
  total : ℕ
  hHighway : 35 * highway = 210
  hCity : 18 * city = 54
  hTotal : total = highway + city
theorem roadtrip_highway (m : Roadtrip) : m.highway = 6 := by omega
theorem roadtrip_city (m : Roadtrip) : m.city = 3 := by omega
theorem roadtrip_solution (m : Roadtrip) : m.total = 9 := by omega

structure Instruments where
  fingers : ℕ
  hands : ℕ
  heads : ℕ
  trumpets : ℕ
  guitars : ℕ
  trombones : ℕ
  horns : ℕ
  total : ℕ
  hFingers : fingers = 10
  hHands : hands = 2
  hHeads : heads = 1
  hTrumpets : trumpets + 3 = fingers
  hGuitars : guitars = hands + 2
  hTrombones : trombones = heads + 2
  hHorns : horns + 1 = guitars
  hTotal : total = trumpets + guitars + trombones + horns
theorem instruments_trumpets (m : Instruments) : m.trumpets = 7 := by omega
theorem instruments_guitars (m : Instruments) : m.guitars = 4 := by omega
theorem instruments_trombones (m : Instruments) : m.trombones = 3 := by omega
theorem instruments_horns (m : Instruments) : m.horns = 3 := by omega
theorem instruments_solution (m : Instruments) : m.total = 17 := by omega

structure Toys where
  figures : ℕ
  dolls : ℕ
  hFigures : 4 * figures = 24
  hDolls : figures + dolls = 24
theorem toys_figures (m : Toys) : m.figures = 6 := by omega
theorem toys_solution (m : Toys) : m.dolls = 18 := by omega

structure Book where
  weekRead : ℕ
  totalRead : ℕ
  left : ℕ
  hWeek : weekRead = 20 * 7
  hRead : totalRead = 149 + weekRead
  hLeft : totalRead + left = 381
theorem book_week (m : Book) : m.weekRead = 140 := by omega
theorem book_read (m : Book) : m.totalRead = 289 := by omega
theorem book_solution (m : Book) : m.left = 92 := by omega

structure Wheel where
  perMinute : ℕ
  perHour : ℕ
  total : ℕ
  hMinute : perMinute = 6 * 2
  hHour : perHour = perMinute * 60
  hTotal : total = perHour * 2
theorem wheel_per_minute (m : Wheel) : m.perMinute = 12 := by omega
theorem wheel_per_hour (m : Wheel) : m.perHour = 720 := by omega
theorem wheel_solution (m : Wheel) : m.total = 1440 := by omega

structure Truck where
  miles : ℕ
  gallons : ℕ
  fuelCost : ℕ
  revenue : ℕ
  net : ℕ
  hMiles : miles = 30 * 10
  hGallons : 10 * gallons = miles
  hFuelCost : fuelCost = 2 * gallons
  hRevenue : 2 * revenue = miles
  hNet : net + fuelCost = revenue
theorem truck_miles (m : Truck) : m.miles = 300 := by omega
theorem truck_gallons (m : Truck) : m.gallons = 30 := by omega
theorem truck_fuel_cost (m : Truck) : m.fuelCost = 60 := by omega
theorem truck_revenue (m : Truck) : m.revenue = 150 := by omega
theorem truck_solution (m : Truck) : m.net = 90 := by omega

structure Campaign where
  friends : ℕ
  remaining : ℕ
  family : ℕ
  savings : ℕ
  hFriends : 5 * friends = 2 * 10000
  hRemaining : remaining + friends = 10000
  hFamily : 10 * family = 3 * remaining
  hSavings : savings + family = remaining
theorem campaign_friends (m : Campaign) : m.friends = 4000 := by omega
theorem campaign_remaining (m : Campaign) : m.remaining = 6000 := by omega
theorem campaign_family (m : Campaign) : m.family = 1800 := by omega
theorem campaign_solution (m : Campaign) : m.savings = 4200 := by omega

structure Race where
  johnMinutes : ℕ
  nextMinutes : ℕ
  margin : ℕ
  hJohn : 15 * johnMinutes = 5 * 60
  hNext : nextMinutes = 23
  hMargin : johnMinutes + margin = nextMinutes
theorem race_john_time (m : Race) : m.johnMinutes = 20 := by omega
theorem race_solution (m : Race) : m.margin = 3 := by omega

end LemmaWeave.Problems.GSM8K.Sprint0924A17
