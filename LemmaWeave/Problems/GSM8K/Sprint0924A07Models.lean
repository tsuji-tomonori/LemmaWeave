import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0924A07
structure Trip where
  pretrain : ℕ
  wait : ℕ
  bus : ℕ
  hPre : pretrain = (8-6)*60
  hWait : wait=2*15
  hBus : bus+15+wait=pretrain
theorem trip_pretrain (m:Trip) : m.pretrain=120 := by omega
theorem trip_wait (m:Trip) : m.wait=30 := by omega
theorem trip_solution (m:Trip) : m.bus=75 := by omega
structure Kittens where
  twice : ℕ
  kittens : ℕ
  hTwice:twice=2*32
  hKittens:kittens=twice+14
theorem kittens_twice (m:Kittens):m.twice=64:=by omega
theorem kittens_solution (m:Kittens):m.kittens=78:=by omega
structure Pills where
  used : ℕ
  remaining : ℕ
  dose : ℕ
  hUsed:5*used=4*30
  hRemaining:used+remaining=30
  hDose:dose*remaining=12
theorem pills_used_days (m:Pills):m.used=24:=by omega
theorem pills_remaining_days (m:Pills):m.remaining=6:=by omega
theorem pills_solution (m:Pills):m.dose=2:=by omega
structure Relay where
  sally : ℕ
  diane : ℕ
  total : ℕ
  hS:sally=24+2
  hD:diane+3=24
  hT:total=24+sally+diane
theorem relay_sally (m:Relay):m.sally=26:=by omega
theorem relay_diane (m:Relay):m.diane=21:=by omega
theorem relay_solution (m:Relay):m.total=71:=by omega
structure Hair where
  women : ℕ
  men : ℕ
  kids : ℕ
  total : ℕ
  hW:women=3*50
  hM:men=2*15
  hK:kids=3*25
  hT:total=women+men+kids
theorem hair_women (m:Hair):m.women=150:=by omega
theorem hair_men (m:Hair):m.men=30:=by omega
theorem hair_kids (m:Hair):m.kids=75:=by omega
theorem hair_solution (m:Hair):m.total=255:=by omega
structure Marbles where
  packs : ℕ
  manny : ℕ
  neil : ℕ
  kept : ℕ
  hP:10*packs=400
  hM:4*manny=packs
  hN:8*neil=packs
  hK:kept+manny+neil=packs
theorem marbles_packs (m:Marbles):m.packs=40:=by omega
theorem marbles_manny (m:Marbles):m.manny=10:=by omega
theorem marbles_neil (m:Marbles):m.neil=5:=by omega
theorem marbles_solution (m:Marbles):m.kept=25:=by omega
structure Pizza where
  total : ℕ
  eaten : ℕ
  left : ℕ
  each : ℕ
  hT:total=8+14
  hE:eaten=2*9
  hL:left+eaten=total
  hEach:2*each=left
theorem pizza_total (m:Pizza):m.total=22:=by omega
theorem pizza_eaten (m:Pizza):m.eaten=18:=by omega
theorem pizza_left (m:Pizza):m.left=4:=by omega
theorem pizza_solution (m:Pizza):m.each=2:=by omega
structure Sandbox where
  volume : ℕ
  weight : ℕ
  trips : ℕ
  drinks : ℕ
  ounces : ℕ
  bottles : ℕ
  cost : ℕ
  change : ℕ
  hV:volume=2*4*5
  hW:weight=3*volume
  hT:2*trips=weight
  hD:4*drinks=trips
  hO:ounces=3*drinks
  hB:15*bottles=ounces
  hC:cost=2*bottles
  hChange:change+cost=10
theorem sandbox_volume (m:Sandbox):m.volume=40:=by omega
theorem sandbox_weight (m:Sandbox):m.weight=120:=by omega
theorem sandbox_trips (m:Sandbox):m.trips=60:=by omega
theorem sandbox_drinks (m:Sandbox):m.drinks=15:=by omega
theorem sandbox_ounces (m:Sandbox):m.ounces=45:=by omega
theorem sandbox_bottles (m:Sandbox):m.bottles=3:=by omega
theorem sandbox_cost (m:Sandbox):m.cost=6:=by omega
theorem sandbox_solution (m:Sandbox):m.change=4:=by omega
structure PTA where
  supplies : ℕ
  after : ℕ
  food : ℕ
  left : ℕ
  hS:4*supplies=400
  hA:after+supplies=400
  hF:2*food=after
  hL:left+food=after
theorem pta_supplies (m:PTA):m.supplies=100:=by omega
theorem pta_after_supplies (m:PTA):m.after=300:=by omega
theorem pta_food (m:PTA):m.food=150:=by omega
theorem pta_solution (m:PTA):m.left=150:=by omega
structure Books where
  bradLast : ℕ
  williamNow : ℕ
  bradTotal : ℕ
  williamTotal : ℕ
  difference : ℕ
  hBL:bradLast=3*6
  hWN:williamNow=2*8
  hBT:bradTotal=bradLast+8
  hWT:williamTotal=6+williamNow
  hDiff:williamTotal+difference=bradTotal
theorem books_brad_last (m:Books):m.bradLast=18:=by omega
theorem books_william_now (m:Books):m.williamNow=16:=by omega
theorem books_brad_total (m:Books):m.bradTotal=26:=by omega
theorem books_william_total (m:Books):m.williamTotal=22:=by omega
theorem books_solution (m:Books):m.difference=4:=by omega
structure AgeConventional where
  now : ℕ
  h:now=2*12+20
structure AgeLiteral where
  now : ℕ
  h:now=12+2*12+20
theorem age_conventional (m:AgeConventional):m.now=44:=by omega
theorem age_literal (m:AgeLiteral):m.now=56:=by omega
theorem age_solution (c:AgeConventional) (l:AgeLiteral):c.now=44 ∧ l.now=56 ∧ c.now≠l.now:=by omega
structure Travel where
  train : ℕ
  before : ℕ
  total : ℕ
  hTrain:train=2*10
  hBefore:before=10+train
  hTotal:total=before+8
theorem travel_train (m:Travel):m.train=20:=by omega
theorem travel_before_bike (m:Travel):m.before=30:=by omega
theorem travel_solution (m:Travel):m.total=38:=by omega
structure Coins where
  each : ℕ
  total : ℕ
  hEach:each=10*25
  hTotal:total=4*each
theorem coins_per_teller (m:Coins):m.each=250:=by omega
theorem coins_solution (m:Coins):m.total=1000:=by omega
structure Purchase where
  total : ℕ
  paid : ℕ
  hTotal:total=250+450
  hPaid:paid+75=total
theorem purchase_total (m:Purchase):m.total=700:=by omega
theorem purchase_solution (m:Purchase):m.paid=625:=by omega
structure Forum where
  answersHour : ℕ
  questionsDay : ℕ
  questionsTotal : ℕ
  answersDay : ℕ
  answersTotal : ℕ
  total : ℕ
  hAH:answersHour=3*3
  hQD:questionsDay=3*24
  hQT:questionsTotal=200*questionsDay
  hAD:answersDay=answersHour*24
  hAT:answersTotal=200*answersDay
  hT:total=questionsTotal+answersTotal
theorem forum_answers_hour (m:Forum):m.answersHour=9:=by omega
theorem forum_questions_day (m:Forum):m.questionsDay=72:=by omega
theorem forum_questions_total (m:Forum):m.questionsTotal=14400:=by omega
theorem forum_answers_day (m:Forum):m.answersDay=216:=by omega
theorem forum_answers_total (m:Forum):m.answersTotal=43200:=by omega
theorem forum_solution (m:Forum):m.total=57600:=by omega
end LemmaWeave.Problems.GSM8K.Sprint0924A07
