import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0922A07

structure ToiletPaper where addedIncrease addedDaily additiveTotal multiplicativeDaily multiplicativeTotal : ℕ
 hIncrease : addedIncrease=3*7000
 hAddedDaily : addedDaily=7000+addedIncrease
 hAdditiveTotal : additiveTotal=addedDaily*31
 hMultiplicativeDaily : multiplicativeDaily=3*7000
 hMultiplicativeTotal : multiplicativeTotal=multiplicativeDaily*31
theorem toilet_added_increase (m:ToiletPaper) : m.addedIncrease=21000 := by rw [m.hIncrease]; norm_num
theorem toilet_added_total (m:ToiletPaper) : m.addedDaily=28000 := by rw [m.hAddedDaily, toilet_added_increase m]; norm_num
theorem toilet_solution_additive (m:ToiletPaper) : m.additiveTotal=868000 := by rw [m.hAdditiveTotal, toilet_added_total m]; norm_num
theorem toilet_solution_multiplicative (m:ToiletPaper) : m.multiplicativeTotal=651000 := by rw [m.hMultiplicativeTotal, m.hMultiplicativeDaily]; norm_num
theorem toilet_solution_both (m:ToiletPaper) : m.additiveTotal=868000 ∧ m.multiplicativeTotal=651000 :=
  ⟨toilet_solution_additive m, toilet_solution_multiplicative m⟩

structure Stairs where flightInches netFlights totalInches feet : ℕ
 hFlight : flightInches=12*8
 hNet : netFlights+3=6
 hInches : totalInches=flightInches*netFlights
 hFeet : feet*12=totalInches
theorem stairs_flight_inches (m:Stairs) : m.flightInches=96 := by rw [m.hFlight]; norm_num
theorem stairs_net_flights (m:Stairs) : m.netFlights=3 := by omega
theorem stairs_total_inches (m:Stairs) : m.totalInches=288 := by rw [m.hInches, stairs_flight_inches m, stairs_net_flights m]; norm_num
theorem stairs_solution (m:Stairs) : m.feet=24 := by have h:=m.hFeet; rw [stairs_total_inches m] at h; omega

structure Dogs where perMinute total : ℕ
 hPer : perMinute=2*30
 hTotal : total=perMinute*10
theorem dogs_per_minute (m:Dogs) : m.perMinute=60 := by rw [m.hPer]; norm_num
theorem dogs_solution (m:Dogs) : m.total=600 := by rw [m.hTotal, dogs_per_minute m]; norm_num

structure Caps where janine sammy : ℕ
 hJanine : janine=3*2
 hSammy : sammy=janine+2
theorem caps_janine (m:Caps) : m.janine=6 := by rw [m.hJanine]; norm_num
theorem caps_solution (m:Caps) : m.sammy=8 := by rw [m.hSammy, caps_janine m]; norm_num

structure Walking where troyDaily emilyDaily dailyDifference totalDifference : ℕ
 hTroy : troyDaily=75*2
 hEmily : emilyDaily=98*2
 hDifference : dailyDifference+troyDaily=emilyDaily
 hTotal : totalDifference=dailyDifference*5
theorem walking_troy_daily (m:Walking) : m.troyDaily=150 := by rw [m.hTroy]; norm_num
theorem walking_emily_daily (m:Walking) : m.emilyDaily=196 := by rw [m.hEmily]; norm_num
theorem walking_daily_difference (m:Walking) : m.dailyDifference=46 := by have h:=m.hDifference; rw [walking_troy_daily m, walking_emily_daily m] at h; omega
theorem walking_solution (m:Walking) : m.totalDifference=230 := by rw [m.hTotal, walking_daily_difference m]; norm_num

structure MarbleBags where perBag left : ℕ
 hPer : perBag*4=28
 hLeft : left+perBag=28
theorem bags_per_bag (m:MarbleBags) : m.perBag=7 := by omega
theorem bags_solution (m:MarbleBags) : m.left=21 := by have h:=m.hLeft; rw [bags_per_bag m] at h; omega

structure Jogging where regular tuesday friday totalMinutes hours : ℕ
 hRegular : regular=30*3
 hTuesday : tuesday=30+5
 hFriday : friday=30+25
 hTotal : totalMinutes=regular+tuesday+friday
 hHours : hours*60=totalMinutes
theorem jogging_regular (m:Jogging) : m.regular=90 := by rw [m.hRegular]; norm_num
theorem jogging_tuesday (m:Jogging) : m.tuesday=35 := by rw [m.hTuesday]; norm_num
theorem jogging_friday (m:Jogging) : m.friday=55 := by rw [m.hFriday]; norm_num
theorem jogging_total_minutes (m:Jogging) : m.totalMinutes=180 := by rw [m.hTotal, jogging_regular m, jogging_tuesday m, jogging_friday m]; norm_num
theorem jogging_solution (m:Jogging) : m.hours=3 := by have h:=m.hHours; rw [jogging_total_minutes m] at h; omega

structure Bills where twenties tens total : ℕ
 hTens : tens=2*twenties
 hTotal : total=20*twenties+10*tens
 hAmount : total=120
theorem bills_tens_relation (m:Bills) : m.tens=2*m.twenties := m.hTens
theorem bills_value_equation (m:Bills) : 20*m.twenties+10*m.tens=120 := by rw [←m.hTotal, m.hAmount]
theorem bills_solution (m:Bills) : m.twenties=3 := by omega

structure Debt where returned currentOwed futurePayment futureOwed : ℕ
 hReturned : returned=10*6
 hCurrent : currentOwed=returned
 hFuturePayment : futurePayment=10*4
 hFuture : futureOwed+futurePayment=currentOwed
theorem debt_returned (m:Debt) : m.returned=60 := by rw [m.hReturned]; norm_num
theorem debt_current (m:Debt) : m.currentOwed=60 := by rw [m.hCurrent, debt_returned m]
theorem debt_future_payment (m:Debt) : m.futurePayment=40 := by rw [m.hFuturePayment]; norm_num
theorem debt_solution (m:Debt) : m.futureOwed=20 := by have h:=m.hFuture; rw [debt_current m, debt_future_payment m] at h; omega

structure Books where total firstTwo march : ℕ
 hTotal : total=16*3
 hFirst : firstTwo=15+16
 hMarch : march+firstTwo=total
theorem books_total (m:Books) : m.total=48 := by rw [m.hTotal]; norm_num
theorem books_first_two (m:Books) : m.firstTwo=31 := by rw [m.hFirst]; norm_num
theorem books_solution (m:Books) : m.march=17 := by have h:=m.hMarch; rw [books_total m, books_first_two m] at h; omega

structure Television where total average : ℕ
 hTotal : total=10+8+12
 hAverage : average*3=total
theorem television_total (m:Television) : m.total=30 := by rw [m.hTotal]; norm_num
theorem television_solution (m:Television) : m.average=10 := by have h:=m.hAverage; rw [television_total m] at h; omega

structure MarbleTrade where blue redPercent red traded newBlue final : ℕ
 hBlue : 100*blue=40*10
 hRedPercent : redPercent+40=100
 hRed : red+blue=10
 hTraded : traded+1=red
 hNewBlue : newBlue=2*traded
 hFinal : final=blue+1+newBlue
theorem trade_blue (m:MarbleTrade) : m.blue=4 := by omega
theorem trade_red_percent (m:MarbleTrade) : m.redPercent=60 := by omega
theorem trade_red (m:MarbleTrade) : m.red=6 := by have h:=m.hRed; rw [trade_blue m] at h; omega
theorem trade_traded (m:MarbleTrade) : m.traded=5 := by have h:=m.hTraded; rw [trade_red m] at h; omega
theorem trade_new_blue (m:MarbleTrade) : m.newBlue=10 := by rw [m.hNewBlue, trade_traded m]; norm_num
theorem trade_solution (m:MarbleTrade) : m.final=15 := by rw [m.hFinal, trade_blue m, trade_new_blue m]; norm_num

structure Bridge where megan mike total excess : ℕ
 hMegan : 85*megan=100*34
 hMike : mike=megan+5
 hTotal : total=34+megan+mike
 hExcess : excess+100=total
theorem bridge_percent : 100-15=85 := by norm_num
theorem bridge_megan (m:Bridge) : m.megan=40 := by omega
theorem bridge_mike (m:Bridge) : m.mike=45 := by rw [m.hMike, bridge_megan m]; norm_num
theorem bridge_total (m:Bridge) : m.total=119 := by rw [m.hTotal, bridge_megan m, bridge_mike m]; norm_num
theorem bridge_solution (m:Bridge) : m.excess=19 := by have h:=m.hExcess; rw [bridge_total m] at h; omega

structure Hunting where months trips deer totalWeight kept : ℕ
 hMonths : months*4=12
 hTrips : trips=months*6
 hDeer : deer=trips*2
 hWeight : totalWeight=deer*600
 hKept : kept*2=totalWeight
theorem hunting_months (m:Hunting) : m.months=3 := by omega
theorem hunting_trips (m:Hunting) : m.trips=18 := by rw [m.hTrips, hunting_months m]; norm_num
theorem hunting_deer (m:Hunting) : m.deer=36 := by rw [m.hDeer, hunting_trips m]; norm_num
theorem hunting_total_weight (m:Hunting) : m.totalWeight=21600 := by rw [m.hWeight, hunting_deer m]; norm_num
theorem hunting_solution (m:Hunting) : m.kept=10800 := by have h:=m.hKept; rw [hunting_total_weight m] at h; omega

structure Racket where other racket : ℕ
 hOther : other=200+250
 hTotal : racket+other=750
theorem racket_other (m:Racket) : m.other=450 := by rw [m.hOther]; norm_num
theorem racket_solution (m:Racket) : m.racket=300 := by have h:=m.hTotal; rw [racket_other m] at h; omega

end LemmaWeave.Problems.GSM8K.Sprint0922A07
