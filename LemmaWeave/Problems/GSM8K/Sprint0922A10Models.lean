import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0922A10

structure Fish where
  kenneth : ℕ
  matthias : ℕ
  total : ℕ
 hKenneth : kenneth=3*7
 hMatthias : matthias+15=kenneth
 hTotal : total=7+kenneth+matthias
theorem fish_kenneth (m:Fish) : m.kenneth=21 := by rw [m.hKenneth] <;> norm_num
theorem fish_matthias (m:Fish) : m.matthias=6 := by have h:=m.hMatthias; rw [fish_kenneth m] at h; omega
theorem fish_solution (m:Fish) : m.total=34 := by rw [m.hTotal, fish_kenneth m, fish_matthias m] <;> norm_num

structure Books where
  unitCents : ℕ
  totalCents : ℕ
  totalDollars : ℕ
 hUnit : unitCents+50=500
 hTotal : totalCents=unitCents*10
 hDollars : totalDollars*100=totalCents
theorem books_unit_cents (m:Books) : m.unitCents=450 := by omega
theorem books_solution (m:Books) : m.totalDollars=45 := by
  have ht:=m.hTotal; rw [books_unit_cents m] at ht
  have hd:=m.hDollars; rw [ht] at hd
  omega

structure Bones where
  doubled : ℕ
  remaining : ℕ
 hDoubled : doubled=4*2
 hRemaining : remaining+2=doubled
theorem bones_doubled (m:Bones) : m.doubled=8 := by rw [m.hDoubled] <;> norm_num
theorem bones_solution (m:Bones) : m.remaining=6 := by have h:=m.hRemaining; rw [bones_doubled m] at h; omega

structure Games where
  henryAfter : ℕ
  neilAfter : ℕ
  neilInitial : ℕ
 hHenry : henryAfter+5=33
 hRatio : 4*neilAfter=henryAfter
 hInitial : neilInitial+5=neilAfter
theorem games_henry_after (m:Games) : m.henryAfter=28 := by omega
theorem games_neil_after (m:Games) : m.neilAfter=7 := by
  have h:=m.hRatio; rw [games_henry_after m] at h; omega
theorem games_solution (m:Games) : m.neilInitial=2 := by
  have h:=m.hInitial; rw [games_neil_after m] at h; omega

structure Insurance where
  salaryCents : ℕ
  commissionDollars : ℕ
  earningsDollars : ℕ
  insuranceDollars : ℕ
 hSalary : salaryCents=750*160
 hCommission : commissionDollars*100=25000*16
 hEarnings : earningsDollars*100=salaryCents+commissionDollars*100
 hInsurance : insuranceDollars*100=earningsDollars*5
theorem insurance_salary (m:Insurance) : m.salaryCents=120000 := by rw [m.hSalary] <;> norm_num
theorem insurance_commission (m:Insurance) : m.commissionDollars=4000 := by omega
theorem insurance_earnings (m:Insurance) : m.earningsDollars=5200 := by
  have h:=m.hEarnings
  rw [insurance_salary m, insurance_commission m] at h
  omega
theorem insurance_solution (m:Insurance) : m.insuranceDollars=260 := by
  have h:=m.hInsurance; rw [insurance_earnings m] at h; omega

structure Tacos where
  softCount : ℕ
  softRevenue : ℕ
  hardRevenue : ℕ
  total : ℕ
 hSoftCount : softCount=3+10*2
 hSoftRevenue : softRevenue=softCount*2
 hHardRevenue : hardRevenue=4*5
 hTotal : total=softRevenue+hardRevenue
theorem tacos_soft_count (m:Tacos) : m.softCount=23 := by rw [m.hSoftCount] <;> norm_num
theorem tacos_soft_revenue (m:Tacos) : m.softRevenue=46 := by rw [m.hSoftRevenue, tacos_soft_count m] <;> norm_num
theorem tacos_hard_revenue (m:Tacos) : m.hardRevenue=20 := by rw [m.hHardRevenue] <;> norm_num
theorem tacos_solution (m:Tacos) : m.total=66 := by
  rw [m.hTotal, tacos_soft_revenue m, tacos_hard_revenue m] <;> norm_num

structure Dinner where
  subtotal : ℕ
  service : ℕ
  tip : ℕ
  total : ℕ
  change : ℕ
 hSubtotal : subtotal=40+15+25
 hService : service*100=subtotal*10
 hTip : tip*100=subtotal*5
 hTotal : total=subtotal+service+tip
 hChange : change+total=100
theorem dinner_subtotal (m:Dinner) : m.subtotal=80 := by rw [m.hSubtotal] <;> norm_num
theorem dinner_service (m:Dinner) : m.service=8 := by
  have h:=m.hService; rw [dinner_subtotal m] at h; omega
theorem dinner_tip (m:Dinner) : m.tip=4 := by
  have h:=m.hTip; rw [dinner_subtotal m] at h; omega
theorem dinner_total (m:Dinner) : m.total=92 := by
  rw [m.hTotal, dinner_subtotal m, dinner_service m, dinner_tip m] <;> norm_num
theorem dinner_solution (m:Dinner) : m.change=8 := by
  have h:=m.hChange; rw [dinner_total m] at h; omega

structure Tractor where
  afterFirst : ℕ
  secondRemoved : ℕ
  remaining : ℕ
 hFirst : afterFirst*100=50000*90
 hSecond : secondRemoved*100=afterFirst*20
 hRemaining : remaining+secondRemoved=afterFirst
theorem tractor_after_first (m:Tractor) : m.afterFirst=45000 := by omega
theorem tractor_second_removed (m:Tractor) : m.secondRemoved=9000 := by
  have h:=m.hSecond; rw [tractor_after_first m] at h; omega
theorem tractor_solution (m:Tractor) : m.remaining=36000 := by
  have h:=m.hRemaining
  rw [tractor_after_first m, tractor_second_removed m] at h
  omega

structure Cupcakes where
  total : ℕ
  present : ℕ
  remaining : ℕ
 hTotal : total*2=5*12
 hPresent : present+3=27+1+1
 hRemaining : remaining+present=total
theorem cupcakes_total (m:Cupcakes) : m.total=30 := by omega
theorem cupcakes_present (m:Cupcakes) : m.present=26 := by omega
theorem cupcakes_solution (m:Cupcakes) : m.remaining=4 := by
  have h:=m.hRemaining; rw [cupcakes_total m, cupcakes_present m] at h; omega

structure Contacts where
  friends : ℕ
  family : ℕ
  total : ℕ
 hFriends : friends*2=20
 hFamily : family=2+1
 hTotal : total=20+friends+family
theorem contacts_friends (m:Contacts) : m.friends=10 := by omega
theorem contacts_family (m:Contacts) : m.family=3 := by rw [m.hFamily] <;> norm_num
theorem contacts_solution (m:Contacts) : m.total=33 := by
  rw [m.hTotal, contacts_friends m, contacts_family m] <;> norm_num

structure Theater where
  tickets : ℕ
  daily : ℕ
  days : ℕ
  total : ℕ
 hTickets : tickets*100=400*80
 hDaily : daily=tickets*30
 hDays : days=1+2
 hTotal : total=daily*days
theorem theater_tickets (m:Theater) : m.tickets=320 := by omega
theorem theater_daily (m:Theater) : m.daily=9600 := by rw [m.hDaily, theater_tickets m] <;> norm_num
theorem theater_days (m:Theater) : m.days=3 := by rw [m.hDays] <;> norm_num
theorem theater_solution (m:Theater) : m.total=28800 := by
  rw [m.hTotal, theater_daily m, theater_days m] <;> norm_num

structure Lambs where
  babies : ℕ
  afterBirth : ℕ
  afterTrade : ℕ
  total : ℕ
 hBabies : babies=2*2
 hBirth : afterBirth=6+babies
 hTrade : afterTrade+3=afterBirth
 hTotal : total=afterTrade+7
theorem lambs_babies (m:Lambs) : m.babies=4 := by rw [m.hBabies] <;> norm_num
theorem lambs_after_birth (m:Lambs) : m.afterBirth=10 := by rw [m.hBirth, lambs_babies m] <;> norm_num
theorem lambs_after_trade (m:Lambs) : m.afterTrade=7 := by
  have h:=m.hTrade; rw [lambs_after_birth m] at h; omega
theorem lambs_solution (m:Lambs) : m.total=14 := by rw [m.hTotal, lambs_after_trade m] <;> norm_num

structure Brownies where
  tina : ℕ
  husband : ℕ
  remaining : ℕ
 hTina : tina=2*5
 hHusband : husband=1*5
 hRemaining : remaining+tina+husband+4=24
theorem brownies_tina (m:Brownies) : m.tina=10 := by rw [m.hTina] <;> norm_num
theorem brownies_husband (m:Brownies) : m.husband=5 := by rw [m.hHusband] <;> norm_num
theorem brownies_solution (m:Brownies) : m.remaining=5 := by
  have h:=m.hRemaining; rw [brownies_tina m, brownies_husband m] at h; omega

structure Money where
  sean : ℕ
  rick : ℕ
  total : ℕ
 hSean : sean=40/2+4
 hRick : rick=3*sean
 hTotal : total=sean+rick
theorem money_sean (m:Money) : m.sean=24 := by rw [m.hSean] <;> norm_num
theorem money_rick (m:Money) : m.rick=72 := by rw [m.hRick, money_sean m] <;> norm_num
theorem money_solution (m:Money) : m.total=96 := by rw [m.hTotal, money_sean m, money_rick m] <;> norm_num

structure Frames where
  jemmaRevenue : ℕ
  dorothyCount : ℕ
  dorothyPriceCents : ℕ
  dorothyRevenueCents : ℕ
  totalDollars : ℕ
 hJemma : jemmaRevenue=400*5
 hDorothyCount : 2*dorothyCount=400
 hDorothyPrice : 2*dorothyPriceCents=500
 hDorothyRevenue : dorothyRevenueCents=dorothyCount*dorothyPriceCents
 hTotal : totalDollars*100=jemmaRevenue*100+dorothyRevenueCents
theorem frames_jemma_revenue (m:Frames) : m.jemmaRevenue=2000 := by rw [m.hJemma] <;> norm_num
theorem frames_dorothy_count (m:Frames) : m.dorothyCount=200 := by omega
theorem frames_dorothy_price (m:Frames) : m.dorothyPriceCents=250 := by omega
theorem frames_dorothy_revenue (m:Frames) : m.dorothyRevenueCents=50000 := by
  rw [m.hDorothyRevenue, frames_dorothy_count m, frames_dorothy_price m] <;> norm_num
theorem frames_solution (m:Frames) : m.totalDollars=2500 := by
  have h:=m.hTotal
  rw [frames_jemma_revenue m, frames_dorothy_revenue m] at h
  omega

end LemmaWeave.Problems.GSM8K.Sprint0922A10
