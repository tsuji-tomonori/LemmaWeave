import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0922A08

structure Jerky where
  needed : ℕ
  days : ℕ
 hNeeded : needed+20=60
 hDays : days*10=needed
theorem jerky_needed (m:Jerky) : m.needed=40 := by omega
theorem jerky_solution (m:Jerky) : m.days=4 := by have h:=m.hDays; rw [jerky_needed m] at h; omega

structure BananaSplit where
  twiceTotal : ℕ
  twiceDifference : ℕ
  additiveTotal : ℕ
  additiveDifference : ℕ
 hTwice : twiceTotal=2*4
 hTwiceDiff : twiceDifference+4=twiceTotal
 hAdditive : additiveTotal=4+2*4
 hAdditiveDiff : additiveDifference+4=additiveTotal
theorem banana_twice_as_many (m:BananaSplit) : m.twiceTotal=8 := by rw [m.hTwice] <;> norm_num
theorem banana_difference_twice (m:BananaSplit) : m.twiceDifference=4 := by have h:=m.hTwiceDiff; rw [banana_twice_as_many m] at h; omega
theorem banana_additive_total (m:BananaSplit) : m.additiveTotal=12 := by rw [m.hAdditive] <;> norm_num
theorem banana_difference_additive (m:BananaSplit) : m.additiveDifference=8 := by have h:=m.hAdditiveDiff; rw [banana_additive_total m] at h; omega
theorem banana_solution_both (m:BananaSplit) : m.twiceDifference=4 ∧ m.additiveDifference=8 :=
  ⟨banana_difference_twice m, banana_difference_additive m⟩

structure Activities where
  gameDaily : ℕ
  tvWeek : ℕ
  gameWeek : ℕ
  total : ℕ
 hGameDaily : gameDaily*2=4
 hTv : tvWeek=4*7
 hGame : gameWeek=gameDaily*3
 hTotal : total=tvWeek+gameWeek
theorem activities_game_daily (m:Activities) : m.gameDaily=2 := by omega
theorem activities_tv_week (m:Activities) : m.tvWeek=28 := by rw [m.hTv] <;> norm_num
theorem activities_game_week (m:Activities) : m.gameWeek=6 := by rw [m.hGame, activities_game_daily m] <;> norm_num
theorem activities_solution (m:Activities) : m.total=34 := by rw [m.hTotal, activities_tv_week m, activities_game_week m] <;> norm_num

structure Episodes where
  weekdays : ℕ
  weekendDaily : ℕ
  weekend : ℕ
  total : ℕ
 hWeekdays : weekdays=8*5
 hWeekendDaily : weekendDaily=8*3
 hWeekend : weekend=weekendDaily*2
 hTotal : total=weekdays+weekend
theorem episodes_weekdays (m:Episodes) : m.weekdays=40 := by rw [m.hWeekdays] <;> norm_num
theorem episodes_weekend_daily (m:Episodes) : m.weekendDaily=24 := by rw [m.hWeekendDaily] <;> norm_num
theorem episodes_weekend (m:Episodes) : m.weekend=48 := by rw [m.hWeekend, episodes_weekend_daily m] <;> norm_num
theorem episodes_solution (m:Episodes) : m.total=88 := by rw [m.hTotal, episodes_weekdays m, episodes_weekend m] <;> norm_num

structure Gifts where
  siblings : ℕ
  parentsTotal : ℕ
  eachParent : ℕ
 hSiblings : siblings=30*3
 hParents : parentsTotal+siblings=150
 hEach : eachParent*2=parentsTotal
theorem gifts_siblings (m:Gifts) : m.siblings=90 := by rw [m.hSiblings] <;> norm_num
theorem gifts_parents_total (m:Gifts) : m.parentsTotal=60 := by have h:=m.hParents; rw [gifts_siblings m] at h; omega
theorem gifts_solution (m:Gifts) : m.eachParent=30 := by have h:=m.hEach; rw [gifts_parents_total m] at h; omega

structure LucyMoney where
  afterSpending : ℕ
  initial : ℕ
 hAfter : 3*afterSpending=4*15
 hInitial : 2*initial=3*afterSpending
theorem lucy_after_spending (m:LucyMoney) : m.afterSpending=20 := by omega
theorem lucy_solution (m:LucyMoney) : m.initial=30 := by have h:=m.hInitial; rw [lucy_after_spending m] at h; omega

structure Balls where
  remaining : ℕ
  pink : ℕ
  orange : ℕ
 hRemaining : remaining+20+10=50
 hPink : pink=3*orange
 hColors : pink+orange=remaining
theorem balls_remaining (m:Balls) : m.remaining=20 := by omega
theorem balls_relation (m:Balls) : m.pink=3*m.orange := m.hPink
theorem balls_solution (m:Balls) : m.orange=5 := by have h:=m.hColors; rw [balls_remaining m, m.hPink] at h; omega

structure Haircuts where
  earnedCycles : ℕ
  currentCycle : ℕ
  paidTotal : ℕ
  allServices : ℕ
 hEarned : earnedCycles=14*5
 hCurrent : currentCycle+5=14
 hPaid : paidTotal=earnedCycles+currentCycle
 hAll : allServices=paidTotal+5
theorem haircuts_earned_cycles (m:Haircuts) : m.earnedCycles=70 := by rw [m.hEarned] <;> norm_num
theorem haircuts_current_cycle (m:Haircuts) : m.currentCycle=9 := by omega
theorem haircuts_paid_total (m:Haircuts) : m.paidTotal=79 := by rw [m.hPaid, haircuts_earned_cycles m, haircuts_current_cycle m] <;> norm_num
theorem haircuts_all_services (m:Haircuts) : m.allServices=84 := by rw [m.hAll, haircuts_paid_total m] <;> norm_num
theorem haircuts_solution_both (m:Haircuts) : m.paidTotal=79 ∧ m.allServices=84 :=
  ⟨haircuts_paid_total m, haircuts_all_services m⟩

structure Hens where
  totalHens : ℕ
  eggsPerHenFive : ℕ
  eggsPerHenFifteen : ℕ
  totalEggs : ℕ
 hHens : totalHens=10+15
 hRate : 10*2*eggsPerHenFive=80
 hFifteen : eggsPerHenFifteen=eggsPerHenFive*3
 hTotal : totalEggs=totalHens*eggsPerHenFifteen
theorem hens_total (m:Hens) : m.totalHens=25 := by rw [m.hHens] <;> norm_num
theorem hens_rate_block (m:Hens) : m.eggsPerHenFive=4 := by omega
theorem hens_each_fifteen (m:Hens) : m.eggsPerHenFifteen=12 := by rw [m.hFifteen, hens_rate_block m] <;> norm_num
theorem hens_solution (m:Hens) : m.totalEggs=300 := by rw [m.hTotal, hens_total m, hens_each_fifteen m] <;> norm_num

structure Earrings where
  monica : ℕ
  rachel : ℕ
  total : ℕ
 hMonica : 25*monica=100*10
 hRachel : monica=2*rachel
 hTotal : total=10+monica+rachel
theorem earrings_monica (m:Earrings) : m.monica=40 := by omega
theorem earrings_rachel (m:Earrings) : m.rachel=20 := by have h:=m.hRachel; rw [earrings_monica m] at h; omega
theorem earrings_solution (m:Earrings) : m.total=70 := by rw [m.hTotal, earrings_monica m, earrings_rachel m] <;> norm_num

structure WeightLoss where
  sethHalves : ℕ
  jeromeHalves : ℕ
  veronicaHalves : ℕ
  totalHalves : ℕ
  totalPounds : ℕ
 hSeth : sethHalves=35
 hJerome : jeromeHalves=3*sethHalves
 hVeronica : veronicaHalves=sethHalves+3
 hTotal : totalHalves=sethHalves+jeromeHalves+veronicaHalves
 hPounds : totalPounds*2=totalHalves
theorem loss_seth_halves (m:WeightLoss) : m.sethHalves=35 := m.hSeth
theorem loss_jerome_halves (m:WeightLoss) : m.jeromeHalves=105 := by rw [m.hJerome, loss_seth_halves m] <;> norm_num
theorem loss_veronica_halves (m:WeightLoss) : m.veronicaHalves=38 := by rw [m.hVeronica, loss_seth_halves m] <;> norm_num
theorem loss_total_halves (m:WeightLoss) : m.totalHalves=178 := by rw [m.hTotal, loss_seth_halves m, loss_jerome_halves m, loss_veronica_halves m] <;> norm_num
theorem loss_solution (m:WeightLoss) : m.totalPounds=89 := by have h:=m.hPounds; rw [loss_total_halves m] at h; omega

structure Strawberries where
  known : ℕ
  strawberry : ℕ
 hKnown : known=3+1+3
 hTotal : strawberry+known=10
theorem strawberries_known (m:Strawberries) : m.known=7 := by rw [m.hKnown] <;> norm_num
theorem strawberries_solution (m:Strawberries) : m.strawberry=3 := by have h:=m.hTotal; rw [strawberries_known m] at h; omega

structure StoreMarbles where
  sold : ℕ
  remaining : ℕ
 hSold : sold=20*15
 hRemaining : remaining+sold=400
theorem store_sold (m:StoreMarbles) : m.sold=300 := by rw [m.hSold] <;> norm_num
theorem store_solution (m:StoreMarbles) : m.remaining=100 := by have h:=m.hRemaining; rw [store_sold m] at h; omega

structure Shoes where
  riley : ℕ
  total : ℕ
 hRiley : riley+3=8
 hTotal : total=8+riley
theorem shoes_riley (m:Shoes) : m.riley=5 := by omega
theorem shoes_solution (m:Shoes) : m.total=13 := by rw [m.hTotal, shoes_riley m] <;> norm_num

structure Travel where
  first : ℕ
  sameSpeedRest : ℕ
  sameSpeedTotal : ℕ
  slowerRest : ℕ
  slowerTotal : ℕ
 hFirst : first=1
 hSameRest : 100*sameSpeedRest=300
 hSameTotal : sameSpeedTotal=first+sameSpeedRest
 hSlowerRest : 50*slowerRest=300
 hSlowerTotal : slowerTotal=first+slowerRest
theorem travel_first (m:Travel) : m.first=1 := m.hFirst
theorem travel_same_speed_rest (m:Travel) : m.sameSpeedRest=3 := by omega
theorem travel_solution_same_speed (m:Travel) : m.sameSpeedTotal=4 := by rw [m.hSameTotal, travel_first m, travel_same_speed_rest m] <;> norm_num
theorem travel_slower_rest (m:Travel) : m.slowerRest=6 := by omega
theorem travel_solution_slower (m:Travel) : m.slowerTotal=7 := by rw [m.hSlowerTotal, travel_first m, travel_slower_rest m] <;> norm_num
theorem travel_solution_nonunique (m:Travel) : m.sameSpeedTotal=4 ∧ m.slowerTotal=7 :=
  ⟨travel_solution_same_speed m, travel_solution_slower m⟩

end LemmaWeave.Problems.GSM8K.Sprint0922A08
