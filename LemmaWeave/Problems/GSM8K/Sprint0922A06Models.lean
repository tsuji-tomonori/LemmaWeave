import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0922A06

structure Safari where
  sat : ℕ
  sun : ℕ
  mon : ℕ
  total : ℕ
 hSat : sat=3+2
 hSun : sun=2+5
 hMon : mon=5+3
 hTotal : total=sat+sun+mon
theorem safari_saturday (m:Safari) : m.sat=5 := by rw [m.hSat]; norm_num
theorem safari_sunday (m:Safari) : m.sun=7 := by rw [m.hSun]; norm_num
theorem safari_monday (m:Safari) : m.mon=8 := by rw [m.hMon]; norm_num
theorem safari_solution (m:Safari) : m.total=20 := by rw [m.hTotal, safari_saturday m, safari_sunday m, safari_monday m]; norm_num

structure Socks where
  afterLoss : ℕ
  donated : ℕ
  remaining : ℕ
  final : ℕ
 hLoss : afterLoss+4=40
 hDonate : 3*donated=2*afterLoss
 hRemaining : remaining+donated=afterLoss
 hFinal : final=remaining+10+3
theorem socks_after_loss (m:Socks) : m.afterLoss=36 := by omega
theorem socks_donated (m:Socks) : m.donated=24 := by have h:=m.hDonate; rw [socks_after_loss m] at h; omega
theorem socks_remaining (m:Socks) : m.remaining=12 := by have h:=m.hRemaining; rw [socks_after_loss m, socks_donated m] at h; omega
theorem socks_solution (m:Socks) : m.final=25 := by rw [m.hFinal, socks_remaining m]; norm_num

structure Followers where
  gained : ℕ
  beforeLoss : ℕ
  final : ℕ
 hGained : gained=365*1000
 hBefore : beforeLoss=100000+gained
 hFinal : final+20000=beforeLoss
theorem followers_gained (m:Followers) : m.gained=365000 := by rw [m.hGained]; norm_num
theorem followers_before_unfollow (m:Followers) : m.beforeLoss=465000 := by rw [m.hBefore, followers_gained m]; norm_num
theorem followers_solution (m:Followers) : m.final=445000 := by have h:=m.hFinal; rw [followers_before_unfollow m] at h; omega

structure Arrival where
  abelHours : ℕ
  aliceHours : ℕ
  gapHours : ℕ
  gapMinutes : ℕ
 hAbel : 50*abelHours=1000
 hAlice : 40*aliceHours=1000
 hGap : gapHours+abelHours=1+aliceHours
 hMinutes : gapMinutes=gapHours*60
theorem arrival_abel_hours (m:Arrival) : m.abelHours=20 := by omega
theorem arrival_alice_hours (m:Arrival) : m.aliceHours=25 := by omega
theorem arrival_absolute_gap (m:Arrival) : m.gapHours=6 := by have h:=m.hGap; rw [arrival_abel_hours m, arrival_alice_hours m] at h; omega
theorem arrival_solution (m:Arrival) : m.gapMinutes=360 := by rw [m.hMinutes, arrival_absolute_gap m]; norm_num

structure Chocolate where
  grams : ℕ
  bars : ℕ
 hGrams : grams=2*1000
 hBars : 125*bars=grams
theorem chocolate_grams (m:Chocolate) : m.grams=2000 := by rw [m.hGrams]; norm_num
theorem chocolate_solution (m:Chocolate) : m.bars=16 := by have h:=m.hBars; rw [chocolate_grams m] at h; omega

structure CarLease where
  weeklyMiles : ℕ
  mileageCents : ℕ
  weeklyDollars : ℕ
  annualDollars : ℕ
 hMiles : weeklyMiles=4*50+3*100
 hMileage : mileageCents=weeklyMiles*10
 hWeekly : weeklyDollars*100=100*100+mileageCents
 hAnnual : annualDollars=weeklyDollars*52
theorem lease_weekly_miles (m:CarLease) : m.weeklyMiles=500 := by rw [m.hMiles]; norm_num
theorem lease_mileage_cost (m:CarLease) : m.mileageCents=5000 := by rw [m.hMileage, lease_weekly_miles m]; norm_num
theorem lease_weekly_cost (m:CarLease) : m.weeklyDollars=150 := by have h:=m.hWeekly; rw [lease_mileage_cost m] at h; omega
theorem lease_solution (m:CarLease) : m.annualDollars=7800 := by rw [m.hAnnual, lease_weekly_cost m]; norm_num

structure Tomatoes where
  first : ℕ
  second : ℕ
  tomatoTotal : ℕ
  plantTotal : ℕ
  percent : ℕ
 hFirst : 100*first=10*20
 hSecond : 3*second=15
 hTomatoes : tomatoTotal=first+second
 hPlants : plantTotal=20+15
 hPercent : plantTotal*percent=tomatoTotal*100
theorem tomatoes_first (m:Tomatoes) : m.first=2 := by omega
theorem tomatoes_second (m:Tomatoes) : m.second=5 := by omega
theorem tomatoes_totals (m:Tomatoes) : m.tomatoTotal=7 ∧ m.plantTotal=35 := by constructor <;> rw [m.hTomatoes, m.hPlants, tomatoes_first m, tomatoes_second m] <;> norm_num
theorem tomatoes_solution (m:Tomatoes) : m.percent=20 := by rcases tomatoes_totals m with ⟨ht,hp⟩; have h:=m.hPercent; rw [ht,hp] at h; omega

structure Fishing where
  jackson : ℕ
  jonah : ℕ
  george : ℕ
  total : ℕ
 hJ : jackson=6*5
 hN : jonah=4*5
 hG : george=8*5
 hTotal : total=jackson+jonah+george
theorem fishing_jackson (m:Fishing) : m.jackson=30 := by rw [m.hJ]; norm_num
theorem fishing_jonah (m:Fishing) : m.jonah=20 := by rw [m.hN]; norm_num
theorem fishing_george (m:Fishing) : m.george=40 := by rw [m.hG]; norm_num
theorem fishing_solution (m:Fishing) : m.total=90 := by rw [m.hTotal, fishing_jackson m, fishing_jonah m, fishing_george m]; norm_num

structure Rice where
  increase : ℕ
  second : ℕ
  total : ℕ
 hIncrease : 100*increase=20*20
 hSecond : second=20+increase
 hTotal : total=20+second
theorem rice_increase (m:Rice) : m.increase=4 := by omega
theorem rice_second (m:Rice) : m.second=24 := by rw [m.hSecond, rice_increase m]; norm_num
theorem rice_solution (m:Rice) : m.total=44 := by rw [m.hTotal, rice_second m]; norm_num

structure Restaurant where
  entrees : ℕ
  subtotal : ℕ
  tip : ℕ
  total : ℕ
 hEntrees : entrees=4*20
 hSubtotal : subtotal=entrees+10
 hTip : 100*tip=20*subtotal
 hTotal : total=subtotal+tip
theorem restaurant_entrees (m:Restaurant) : m.entrees=80 := by rw [m.hEntrees]; norm_num
theorem restaurant_subtotal (m:Restaurant) : m.subtotal=90 := by rw [m.hSubtotal, restaurant_entrees m]; norm_num
theorem restaurant_tip (m:Restaurant) : m.tip=18 := by have h:=m.hTip; rw [restaurant_subtotal m] at h; omega
theorem restaurant_solution (m:Restaurant) : m.total=108 := by rw [m.hTotal, restaurant_subtotal m, restaurant_tip m]; norm_num

structure Coffee where
  people : ℕ
  dailyCups : ℕ
  dailyHalfOunces : ℕ
  dailyOunces : ℕ
  weeklyOunces : ℕ
  weeklyCents : ℕ
  weeklyDollars : ℕ
 hPeople : people=3+1
 hCups : dailyCups=people*2
 hHalf : dailyHalfOunces=dailyCups
 hOunces : 2*dailyOunces=dailyHalfOunces
 hWeekly : weeklyOunces=dailyOunces*7
 hCents : weeklyCents=weeklyOunces*125
 hDollars : weeklyCents=weeklyDollars*100
theorem coffee_people (m:Coffee) : m.people=4 := by rw [m.hPeople]; norm_num
theorem coffee_daily_cups (m:Coffee) : m.dailyCups=8 := by rw [m.hCups, coffee_people m]; norm_num
theorem coffee_daily_ounces (m:Coffee) : m.dailyOunces=4 := by have hh:=m.hHalf; have ho:=m.hOunces; rw [coffee_daily_cups m] at hh; rw [hh] at ho; omega
theorem coffee_weekly_ounces (m:Coffee) : m.weeklyOunces=28 := by rw [m.hWeekly, coffee_daily_ounces m]; norm_num
theorem coffee_solution (m:Coffee) : m.weeklyDollars=35 := by have hc:=m.hCents; have hd:=m.hDollars; rw [coffee_weekly_ounces m] at hc; rw [hc] at hd; omega

structure Journey where
  firstDistance : ℕ
  remainingDistance : ℕ
  remainingTime : ℕ
  speed : ℕ
 hFirst : firstDistance=4*4
 hRemaining : remainingDistance+firstDistance=24
 hTime : remainingTime+4=8
 hSpeed : speed*remainingTime=remainingDistance
theorem journey_first_distance (m:Journey) : m.firstDistance=16 := by rw [m.hFirst]; norm_num
theorem journey_remaining_distance (m:Journey) : m.remainingDistance=8 := by have h:=m.hRemaining; rw [journey_first_distance m] at h; omega
theorem journey_remaining_time (m:Journey) : m.remainingTime=4 := by omega
theorem journey_solution (m:Journey) : m.speed=2 := by have h:=m.hSpeed; rw [journey_remaining_time m, journey_remaining_distance m] at h; omega

structure Chalkboard where
  length : ℕ
  area : ℕ
 hLength : length=2*3
 hArea : area=3*length
theorem chalkboard_length (m:Chalkboard) : m.length=6 := by rw [m.hLength]; norm_num
theorem chalkboard_solution (m:Chalkboard) : m.area=18 := by rw [m.hArea, chalkboard_length m]; norm_num

structure Colouring where
  lollipop : ℕ
  hardTotal : ℕ
  eachHard : ℕ
 hLollipop : lollipop=100*5
 hHard : hardTotal+lollipop=600
 hEach : 5*eachHard=hardTotal
theorem colouring_lollipops (m:Colouring) : m.lollipop=500 := by rw [m.hLollipop]; norm_num
theorem colouring_hard_total (m:Colouring) : m.hardTotal=100 := by have h:=m.hHard; rw [colouring_lollipops m] at h; omega
theorem colouring_solution (m:Colouring) : m.eachHard=20 := by have h:=m.hEach; rw [colouring_hard_total m] at h; omega

structure Bomb where
  climbed : ℕ
  remainingFlights : ℕ
  climbTime : ℕ
  diffuseTime : ℕ
 hClimbed : 11*climbed=165
 hFlights : remainingFlights+climbed=20
 hClimbTime : climbTime=remainingFlights*11
 hDiffuse : diffuseTime+climbTime=72
theorem bomb_climbed (m:Bomb) : m.climbed=15 := by omega
theorem bomb_remaining_flights (m:Bomb) : m.remainingFlights=5 := by have h:=m.hFlights; rw [bomb_climbed m] at h; omega
theorem bomb_climb_time (m:Bomb) : m.climbTime=55 := by rw [m.hClimbTime, bomb_remaining_flights m]; norm_num
theorem bomb_solution (m:Bomb) : m.diffuseTime=17 := by have h:=m.hDiffuse; rw [bomb_climb_time m] at h; omega

end LemmaWeave.Problems.GSM8K.Sprint0922A06
