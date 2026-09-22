import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0923A04

structure SaladBar where tomatoes pickles bacon red : ℕ
  hTomatoes : tomatoes = 2 * 3
  hPickles : pickles = 4 * tomatoes
  hBacon : bacon = 4 * pickles
  hRed : red * 3 = bacon

theorem salad_tomatoes (m : SaladBar) : m.tomatoes = 6 := by rw [m.hTomatoes]
theorem salad_pickles (m : SaladBar) : m.pickles = 24 := by rw [m.hPickles, salad_tomatoes m]
theorem salad_bacon (m : SaladBar) : m.bacon = 96 := by rw [m.hBacon, salad_pickles m]
theorem salad_solution (m : SaladBar) : m.red = 32 := by
  have h := m.hRed
  rw [salad_bacon m] at h
  omega

structure FlowerPurchase where bought free total : ℕ
  hBought : bought = 3 * 12
  hFree : free = 3 * 2
  hTotal : total = bought + free

theorem flower_bought (m : FlowerPurchase) : m.bought = 36 := by rw [m.hBought]
theorem flower_free (m : FlowerPurchase) : m.free = 6 := by rw [m.hFree]
theorem flower_solution (m : FlowerPurchase) : m.total = 42 := by
  rw [m.hTotal, flower_bought m, flower_free m]

structure SoccerStudents where athletes soccer : ℕ
  hAthletes : athletes * 100 = 400 * 52
  hSoccer : soccer * 8 = athletes

theorem soccer_athletes (m : SoccerStudents) : m.athletes = 208 := by
  have h := m.hAthletes
  omega
theorem soccer_solution (m : SoccerStudents) : m.soccer = 26 := by
  have h := m.hSoccer
  rw [soccer_athletes m] at h
  omega

structure ToyBoxes where kamari anais : ℕ
  hMore : anais = kamari + 30
  hTotal : kamari + anais = 160

theorem toys_equation (m : ToyBoxes) : 2 * m.kamari + 30 = 160 := by omega
theorem toys_solution (m : ToyBoxes) : m.kamari = 65 := by
  have h := toys_equation m
  omega

structure BasketballGame where markTwo markThree markFree markTotal
    oppTwo oppThree oppFree oppTotal total : ℕ
  hMarkTwo : markTwo = 25 * 2
  hMarkThree : markThree = 8 * 3
  hMarkFree : markFree = 10
  hMarkTotal : markTotal = markTwo + markThree + markFree
  hOppTwo : oppTwo = 2 * markTwo
  hOppThree : oppThree * 2 = markThree
  hOppFree : oppFree * 2 = markFree
  hOppTotal : oppTotal = oppTwo + oppThree + oppFree
  hTotal : total = markTotal + oppTotal

theorem basketball_mark_two (m : BasketballGame) : m.markTwo = 50 := by rw [m.hMarkTwo]
theorem basketball_mark_three (m : BasketballGame) : m.markThree = 24 := by rw [m.hMarkThree]
theorem basketball_mark_total (m : BasketballGame) : m.markTotal = 84 := by
  rw [m.hMarkTotal, basketball_mark_two m, basketball_mark_three m, m.hMarkFree]
theorem basketball_opponent_parts (m : BasketballGame) :
    m.oppTwo = 100 ∧ m.oppThree = 12 ∧ m.oppFree = 5 := by
  constructor
  · rw [m.hOppTwo, basketball_mark_two m]
  constructor
  · have h := m.hOppThree
    rw [basketball_mark_three m] at h
    omega
  · have h := m.hOppFree
    rw [m.hMarkFree] at h
    omega
theorem basketball_opponent_total (m : BasketballGame) : m.oppTotal = 117 := by
  obtain ⟨hTwo, hThree, hFree⟩ := basketball_opponent_parts m
  rw [m.hOppTotal, hTwo, hThree, hFree]
theorem basketball_solution (m : BasketballGame) : m.total = 201 := by
  rw [m.hTotal, basketball_mark_total m, basketball_opponent_total m]

structure GroupMessages where wednesday thursday total : ℕ
  hWednesday : wednesday = 200 + 300
  hThursday : thursday = 2 * wednesday
  hTotal : total = 300 + 200 + wednesday + thursday

theorem messages_wednesday (m : GroupMessages) : m.wednesday = 500 := by rw [m.hWednesday]
theorem messages_thursday (m : GroupMessages) : m.thursday = 1000 := by
  rw [m.hThursday, messages_wednesday m]
theorem messages_solution (m : GroupMessages) : m.total = 2000 := by
  rw [m.hTotal, messages_wednesday m, messages_thursday m]

structure TemperatureAverage where sum average : ℕ
  hSum : sum = 90 + 90 + 90 + 79 + 71
  hAverage : average * 5 = sum

theorem temperature_sum (m : TemperatureAverage) : m.sum = 420 := by rw [m.hSum]
theorem temperature_solution (m : TemperatureAverage) : m.average = 84 := by
  have h := m.hAverage
  rw [temperature_sum m] at h
  omega

structure Waterpark where adults childPrice adultCost childCost ticketTotal
    discount discounted soda total : ℕ
  hAdults : adults + 4 = 10
  hChildPrice : childPrice * 2 = 30
  hAdultCost : adultCost = adults * 30
  hChildCost : childCost = 4 * childPrice
  hTicketTotal : ticketTotal = adultCost + childCost
  hDiscount : discount * 5 = ticketTotal
  hDiscounted : discounted + discount = ticketTotal
  hSoda : soda = 5
  hTotal : total = discounted + soda

theorem waterpark_counts (m : Waterpark) : m.adults = 6 ∧ m.childPrice = 15 := by omega
theorem waterpark_adult_cost (m : Waterpark) : m.adultCost = 180 := by
  rw [m.hAdultCost, (waterpark_counts m).1]
theorem waterpark_child_cost (m : Waterpark) : m.childCost = 60 := by
  rw [m.hChildCost, (waterpark_counts m).2]
theorem waterpark_ticket_total (m : Waterpark) : m.ticketTotal = 240 := by
  rw [m.hTicketTotal, waterpark_adult_cost m, waterpark_child_cost m]
theorem waterpark_discounted (m : Waterpark) : m.discounted = 192 := by
  have hd := m.hDiscount
  have hr := m.hDiscounted
  rw [waterpark_ticket_total m] at hd hr
  omega
theorem waterpark_solution (m : Waterpark) : m.total = 197 := by
  rw [m.hTotal, waterpark_discounted m, m.hSoda]

structure ShirtSale where shirts discountEach saleEach total : ℕ
  hShirts : shirts * 2 = 12
  hDiscount : discountEach * 100 = 50 * 20
  hSale : saleEach + discountEach = 50
  hTotal : total = shirts * saleEach

theorem shirts_count (m : ShirtSale) : m.shirts = 6 := by omega
theorem shirts_discount (m : ShirtSale) : m.discountEach = 10 := by omega
theorem shirts_sale_price (m : ShirtSale) : m.saleEach = 40 := by omega
theorem shirts_solution (m : ShirtSale) : m.total = 240 := by
  rw [m.hTotal, shirts_count m, shirts_sale_price m]

structure TradingCards where june july total : ℕ
  hJune : june = 21122 + 3922
  hJuly : july = 21122
  hTotal : total = june + july

theorem cards_june (m : TradingCards) : m.june = 25044 := by rw [m.hJune]
theorem cards_july (m : TradingCards) : m.july = 21122 := by rw [m.hJuly]
theorem cards_solution (m : TradingCards) : m.total = 46166 := by
  rw [m.hTotal, cards_june m, cards_july m]

structure Warehouses where second total : ℕ
  hSecond : 2 * second = 400
  hTotal : total = 400 + second

theorem warehouses_second (m : Warehouses) : m.second = 200 := by omega
theorem warehouses_solution (m : Warehouses) : m.total = 600 := by
  rw [m.hTotal, warehouses_second m]

structure JeremyBudget where jerseys spent left : ℕ
  hJerseys : jerseys = 5 * 2
  hSpent : spent = jerseys + 18 + 8
  hLeft : left + spent = 50

theorem jeremy_jerseys (m : JeremyBudget) : m.jerseys = 10 := by rw [m.hJerseys]
theorem jeremy_spent (m : JeremyBudget) : m.spent = 36 := by
  rw [m.hSpent, jeremy_jerseys m]
theorem jeremy_solution (m : JeremyBudget) : m.left = 14 := by
  have h := m.hLeft
  rw [jeremy_spent m] at h
  omega

structure JugglingContest where toby friend winner : ℕ
  hToby : toby = 5 * 80
  hFriend : friend = 4 * 101
  hWinner : winner = max toby friend

theorem juggling_toby (m : JugglingContest) : m.toby = 400 := by rw [m.hToby]
theorem juggling_friend (m : JugglingContest) : m.friend = 404 := by rw [m.hFriend]
theorem juggling_solution (m : JugglingContest) : m.winner = 404 := by
  rw [m.hWinner, juggling_toby m, juggling_friend m]

structure JeansSale where pairCost discount discountedPair total : ℕ
  hPairCost : pairCost = 2 * 40
  hDiscount : discount * 100 = pairCost * 10
  hDiscountedPair : discountedPair + discount = pairCost
  hTotal : total = discountedPair + 40

theorem jeans_pair_cost (m : JeansSale) : m.pairCost = 80 := by rw [m.hPairCost]
theorem jeans_discount (m : JeansSale) : m.discount = 8 := by
  have h := m.hDiscount
  rw [jeans_pair_cost m] at h
  omega
theorem jeans_discounted_pair (m : JeansSale) : m.discountedPair = 72 := by
  have h := m.hDiscountedPair
  rw [jeans_pair_cost m, jeans_discount m] at h
  omega
theorem jeans_solution (m : JeansSale) : m.total = 112 := by
  rw [m.hTotal, jeans_discounted_pair m]

structure FishCatch where kingfisher birds fisherman difference : ℕ
  hKingfisher : kingfisher = 13 + 7
  hBirds : birds = 13 + kingfisher
  hFisherman : fisherman = 3 * birds
  hDifference : difference + 13 = fisherman

theorem fish_kingfisher (m : FishCatch) : m.kingfisher = 20 := by rw [m.hKingfisher]
theorem fish_birds (m : FishCatch) : m.birds = 33 := by rw [m.hBirds, fish_kingfisher m]
theorem fish_fisherman (m : FishCatch) : m.fisherman = 99 := by
  rw [m.hFisherman, fish_birds m]
theorem fish_solution (m : FishCatch) : m.difference = 86 := by
  have h := m.hDifference
  rw [fish_fisherman m] at h
  omega

end LemmaWeave.Problems.GSM8K.Sprint0923A04
