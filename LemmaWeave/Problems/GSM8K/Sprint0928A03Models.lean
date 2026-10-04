import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0928A03

structure StoresModel where
  opened : Nat
  closed : Nat
  finalStores : Nat
  hOpened : opened = 5 + 10
  hClosed : closed = 2 + 6
  hFinal : closed + finalStores = 23 + opened

theorem stores_opened_closed (m : StoresModel) :
    m.opened = 15 ∧ m.closed = 8 := by
  constructor
  · have h := m.hOpened
    omega
  · have h := m.hClosed
    omega

theorem stores_final (m : StoresModel) : m.finalStores = 30 := by
  rcases stores_opened_closed m with ⟨ho, hc⟩
  have h := m.hFinal
  omega

theorem stores_solution (m : StoresModel) : m.finalStores = 30 := by
  exact stores_final m

structure DebtsModel where
  kyroOwed : Nat
  aryanPaid : Nat
  kyroPaid : Nat
  savings : Nat
  hKyroOwed : 2 * kyroOwed = 1200
  hAryanPaid : 100 * aryanPaid = 60 * 1200
  hKyroPaid : 100 * kyroPaid = 80 * kyroOwed
  hSavings : savings = 300 + aryanPaid + kyroPaid

theorem debts_kyro_owed (m : DebtsModel) : m.kyroOwed = 600 := by
  have h := m.hKyroOwed
  omega

theorem debts_payments (m : DebtsModel) :
    m.aryanPaid = 720 ∧ m.kyroPaid = 480 := by
  have hk := debts_kyro_owed m
  constructor
  · have h := m.hAryanPaid
    omega
  · have h := m.hKyroPaid
    omega

theorem debts_savings (m : DebtsModel) : m.savings = 1500 := by
  rcases debts_payments m with ⟨ha, hk⟩
  have h := m.hSavings
  omega

theorem debts_solution (m : DebtsModel) : m.savings = 1500 := by
  exact debts_savings m

structure ChipsModel where
  doritos : Nat
  eachPile : Nat
  hDoritos : 4 * doritos = 80
  hPile : 4 * eachPile = doritos

theorem chips_doritos (m : ChipsModel) : m.doritos = 20 := by
  have h := m.hDoritos
  omega

theorem chips_each_pile (m : ChipsModel) : m.eachPile = 5 := by
  have hd := chips_doritos m
  have h := m.hPile
  omega

theorem chips_solution (m : ChipsModel) : m.eachPile = 5 := by
  exact chips_each_pile m

structure CommuteModel where
  busMinutes : Nat
  friendMinutes : Nat
  weeklyMinutes : Nat
  hBus : busMinutes = 30 + 10
  hFriend : 3 * friendMinutes = 30
  hWeekly : weeklyMinutes = 30 + 3 * busMinutes + friendMinutes

theorem commute_bus (m : CommuteModel) : m.busMinutes = 40 := by
  have h := m.hBus
  omega

theorem commute_friend (m : CommuteModel) : m.friendMinutes = 10 := by
  have h := m.hFriend
  omega

theorem commute_weekly (m : CommuteModel) : m.weeklyMinutes = 160 := by
  have hb := commute_bus m
  have hf := commute_friend m
  have h := m.hWeekly
  omega

theorem commute_solution (m : CommuteModel) : m.weeklyMinutes = 160 := by
  exact commute_weekly m

structure AgesModel where
  yearsLater : Nat
  joelAge : Nat
  dadAge : Nat
  hJoel : joelAge = 5 + yearsLater
  hDad : dadAge = 32 + yearsLater
  hTwice : dadAge = 2 * joelAge

theorem ages_gap (m : AgesModel) : m.dadAge = m.joelAge + 27 := by
  have hj := m.hJoel
  have hd := m.hDad
  omega

theorem ages_joel (m : AgesModel) : m.joelAge = 27 := by
  have hg := ages_gap m
  have ht := m.hTwice
  omega

theorem ages_solution (m : AgesModel) : m.joelAge = 27 := by
  exact ages_joel m

structure FishingModel where
  willFish : Nat
  henryCaught : Nat
  returned : Nat
  henryKept : Nat
  total : Nat
  hWill : willFish = 16 + 10
  hHenry : henryCaught = 3 * 16
  hReturned : 2 * returned = henryCaught
  hKept : henryKept + returned = henryCaught
  hTotal : total = willFish + henryKept

theorem fishing_will_henry (m : FishingModel) :
    m.willFish = 26 ∧ m.henryCaught = 48 := by
  constructor
  · have h := m.hWill
    omega
  · have h := m.hHenry
    omega

theorem fishing_kept (m : FishingModel) : m.henryKept = 24 := by
  rcases fishing_will_henry m with ⟨hw, hh⟩
  have hr := m.hReturned
  have hk := m.hKept
  omega

theorem fishing_total (m : FishingModel) : m.total = 50 := by
  rcases fishing_will_henry m with ⟨hw, hh⟩
  have hk := fishing_kept m
  have h := m.hTotal
  omega

theorem fishing_solution (m : FishingModel) : m.total = 50 := by
  exact fishing_total m

structure KombuchaModel where
  bottles : Nat
  refundCents : Nat
  purchasable : Nat
  hBottles : bottles = 15 * 12
  hRefund : refundCents = bottles * 10
  hPurchase : purchasable * 300 = refundCents

theorem kombucha_bottles (m : KombuchaModel) : m.bottles = 180 := by
  have h := m.hBottles
  omega

theorem kombucha_refund (m : KombuchaModel) : m.refundCents = 1800 := by
  have hb := kombucha_bottles m
  have h := m.hRefund
  omega

theorem kombucha_purchasable (m : KombuchaModel) : m.purchasable = 6 := by
  have hr := kombucha_refund m
  have h := m.hPurchase
  omega

theorem kombucha_solution (m : KombuchaModel) : m.purchasable = 6 := by
  exact kombucha_purchasable m

structure CrackersModel where
  saturday : Nat
  sunday : Nat
  total : Nat
  hSaturday : saturday = 2 * 30
  hSunday : sunday + 15 = saturday
  hTotal : total = 30 + saturday + sunday

theorem crackers_saturday (m : CrackersModel) : m.saturday = 60 := by
  have h := m.hSaturday
  omega

theorem crackers_sunday (m : CrackersModel) : m.sunday = 45 := by
  have hs := crackers_saturday m
  have h := m.hSunday
  omega

theorem crackers_total (m : CrackersModel) : m.total = 135 := by
  have hsat := crackers_saturday m
  have hsun := crackers_sunday m
  have h := m.hTotal
  omega

theorem crackers_solution (m : CrackersModel) : m.total = 135 := by
  exact crackers_total m

structure BarnModel where
  initial : Nat
  remaining : Nat
  afterGoats : Nat
  male : Nat
  hInitial : initial = 100 + 29 + 9
  hRemaining : 2 * remaining = initial
  hAfterGoats : afterGoats = remaining + 37
  hMale : 2 * male = afterGoats

theorem barn_initial (m : BarnModel) : m.initial = 138 := by
  have h := m.hInitial
  omega

theorem barn_after_goats (m : BarnModel) : m.afterGoats = 106 := by
  have hi := barn_initial m
  have hr := m.hRemaining
  have hg := m.hAfterGoats
  omega

theorem barn_male (m : BarnModel) : m.male = 53 := by
  have ha := barn_after_goats m
  have h := m.hMale
  omega

theorem barn_solution (m : BarnModel) : m.male = 53 := by
  exact barn_male m

structure IceCreamModel where
  vanilla : Nat
  chocolate : Nat
  hVanilla : 100 * vanilla = 20 * 220
  hTwice : vanilla = 2 * chocolate

theorem icecream_vanilla (m : IceCreamModel) : m.vanilla = 44 := by
  have h := m.hVanilla
  omega

theorem icecream_chocolate (m : IceCreamModel) : m.chocolate = 22 := by
  have hv := icecream_vanilla m
  have h := m.hTwice
  omega

theorem icecream_solution (m : IceCreamModel) : m.chocolate = 22 := by
  exact icecream_chocolate m

structure FlowersModel where
  grandma : Nat
  givenAway : Nat
  vase : Nat
  hGrandma : grandma = 15 + 6
  hGivenAway : givenAway = 15 + grandma
  hVase : vase + givenAway = 52

theorem flowers_grandma (m : FlowersModel) : m.grandma = 21 := by
  have h := m.hGrandma
  omega

theorem flowers_given (m : FlowersModel) : m.givenAway = 36 := by
  have hg := flowers_grandma m
  have h := m.hGivenAway
  omega

theorem flowers_vase (m : FlowersModel) : m.vase = 16 := by
  have hg := flowers_given m
  have h := m.hVase
  omega

theorem flowers_solution (m : FlowersModel) : m.vase = 16 := by
  exact flowers_vase m

structure CookingModel where
  breakfast : Nat
  lunch : Nat
  dinner : Nat
  total : Nat
  hBreakfast : breakfast = 20 * 7
  hLunch : lunch = 5 * 7
  hDinner : dinner = 10 * 4 + 30 * 3
  hTotal : total = breakfast + lunch + dinner

theorem cooking_meals (m : CookingModel) :
    m.breakfast = 140 ∧ m.lunch = 35 ∧ m.dinner = 130 := by
  constructor
  · have h := m.hBreakfast
    omega
  · constructor
    · have h := m.hLunch
      omega
    · have h := m.hDinner
      omega

theorem cooking_total (m : CookingModel) : m.total = 305 := by
  rcases cooking_meals m with ⟨hb, hl, hd⟩
  have h := m.hTotal
  omega

theorem cooking_solution (m : CookingModel) : m.total = 305 := by
  exact cooking_total m

structure BallsModel where
  received : Nat
  total : Nat
  hReceived : 2 * received = 40
  hTotal : total = 25 + received

theorem balls_received (m : BallsModel) : m.received = 20 := by
  have h := m.hReceived
  omega

theorem balls_total (m : BallsModel) : m.total = 45 := by
  have hr := balls_received m
  have h := m.hTotal
  omega

theorem balls_solution (m : BallsModel) : m.total = 45 := by
  exact balls_total m

structure JewelryModel where
  ringPrice : Nat
  hRevenue : 4 * 12 + 8 * ringPrice = 80

theorem jewelry_ring_price (m : JewelryModel) : m.ringPrice = 4 := by
  have h := m.hRevenue
  omega

theorem jewelry_solution (m : JewelryModel) : m.ringPrice = 4 := by
  exact jewelry_ring_price m

structure SnacksModel where
  robert : Nat
  teddy : Nat
  total : Nat
  hRobert : robert = 5 * 10 + 10 * 2
  hTeddy : teddy = 6 * 3 + 10 * 2
  hTotal : total = robert + teddy

theorem snacks_robert (m : SnacksModel) : m.robert = 70 := by
  have h := m.hRobert
  omega

theorem snacks_teddy (m : SnacksModel) : m.teddy = 38 := by
  have h := m.hTeddy
  omega

theorem snacks_total (m : SnacksModel) : m.total = 108 := by
  have hr := snacks_robert m
  have ht := snacks_teddy m
  have h := m.hTotal
  omega

theorem snacks_reference_conflict : (108 : Nat) ≠ 106 := by
  norm_num

theorem snacks_solution (m : SnacksModel) :
    m.total = 108 ∧ (108 : Nat) ≠ 106 := by
  constructor
  · exact snacks_total m
  · exact snacks_reference_conflict

end LemmaWeave.Problems.GSM8K.Sprint0928A03
