import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0922A05

structure TennisBalls where
 games : ℕ
 cans : ℕ
 balls : ℕ
 hGames : games = 8+4+2+1
 hCans : cans = games*5
 hBalls : balls = cans*3
theorem tennis_games (m:TennisBalls) : m.games=15 := by rw [m.hGames] <;> norm_num
theorem tennis_cans (m:TennisBalls) : m.cans=75 := by rw [m.hCans, tennis_games m] <;> norm_num
theorem tennis_solution (m:TennisBalls) : m.balls=225 := by rw [m.hBalls, tennis_cans m] <;> norm_num

structure Coins where
 quarters : ℕ
 dimes : ℕ
 nickels : ℕ
 pennies : ℕ
 totalCents : ℕ
 dollars : ℕ
 hQ : quarters=10*25
 hD : dimes=3*10
 hN : nickels=3*5
 hP : pennies=5*1
 hTotal : totalCents=quarters+dimes+nickels+pennies
 hDollars : totalCents=dollars*100
theorem coins_quarters (m:Coins) : m.quarters=250 := by rw [m.hQ] <;> norm_num
theorem coins_dimes (m:Coins) : m.dimes=30 := by rw [m.hD] <;> norm_num
theorem coins_nickels (m:Coins) : m.nickels=15 := by rw [m.hN] <;> norm_num
theorem coins_pennies (m:Coins) : m.pennies=5 := by rw [m.hP] <;> norm_num
theorem coins_solution (m:Coins) : m.totalCents=300 ∧ m.dollars=3 := by
 constructor
 · rw [m.hTotal, coins_quarters m, coins_dimes m, coins_nickels m, coins_pennies m] <;> norm_num
 · have ht : m.totalCents=300 := by rw [m.hTotal, coins_quarters m, coins_dimes m, coins_nickels m, coins_pennies m] <;> norm_num
   have h:=m.hDollars; rw [ht] at h; omega

structure Instruments where
 charlie : ℕ
 carliFlutes : ℕ
 carliHorns : ℕ
 carli : ℕ
 total : ℕ
 hCharlie : charlie=1+2+1
 hFlutes : carliFlutes=2*1
 hHorns : 2*carliHorns=2
 hCarli : carli=carliFlutes+carliHorns
 hTotal : total=charlie+carli
theorem instruments_charlie (m:Instruments) : m.charlie=4 := by rw [m.hCharlie] <;> norm_num
theorem instruments_carli_flutes (m:Instruments) : m.carliFlutes=2 := by rw [m.hFlutes] <;> norm_num
theorem instruments_carli_horns (m:Instruments) : m.carliHorns=1 := by omega
theorem instruments_carli (m:Instruments) : m.carli=3 := by rw [m.hCarli, instruments_carli_flutes m, instruments_carli_horns m] <;> norm_num
theorem instruments_solution (m:Instruments) : m.total=7 := by rw [m.hTotal, instruments_charlie m, instruments_carli m] <;> norm_num

structure DeckCost where
 area : ℕ
 rate : ℕ
 total : ℕ
 hArea : area=30*40
 hRate : rate=3+1
 hTotal : total=area*rate
theorem deck_area (m:DeckCost) : m.area=1200 := by rw [m.hArea] <;> norm_num
theorem deck_rate (m:DeckCost) : m.rate=4 := by rw [m.hRate] <;> norm_num
theorem deck_solution (m:DeckCost) : m.total=4800 := by rw [m.hTotal, deck_area m, deck_rate m] <;> norm_num

structure Soup where
 d1 : ℕ
 d2 : ℕ
 d3 : ℕ
 d4 : ℕ
 h1 : 2*d1=80
 h2 : 2*d2=d1
 h3 : 2*d3=d2
 h4 : 2*d4=d3
theorem soup_day_one (m:Soup) : m.d1=40 := by omega
theorem soup_day_two (m:Soup) : m.d2=20 := by have h:=m.h2; rw [soup_day_one m] at h; omega
theorem soup_day_three (m:Soup) : m.d3=10 := by have h:=m.h3; rw [soup_day_two m] at h; omega
theorem soup_solution (m:Soup) : m.d4=5 := by have h:=m.h4; rw [soup_day_three m] at h; omega

structure Pizza where
 cost : ℕ
 total : ℕ
 change : ℕ
 hCost : cost=4*10
 hTotal : total=cost+5
 hChange : change+total=50
theorem pizza_cost (m:Pizza) : m.cost=40 := by rw [m.hCost] <;> norm_num
theorem pizza_total (m:Pizza) : m.total=45 := by rw [m.hTotal, pizza_cost m] <;> norm_num
theorem pizza_solution (m:Pizza) : m.change=5 := by have h:=m.hChange; rw [pizza_total m] at h; omega

structure Soccer where
 decided : ℕ
 draws : ℕ
 winPoints : ℕ
 drawPoints : ℕ
 total : ℕ
 hDecided : decided=14+2
 hDraws : draws+decided=20
 hWin : winPoints=14*3
 hDraw : drawPoints=draws*1
 hTotal : total=winPoints+drawPoints
theorem soccer_decided (m:Soccer) : m.decided=16 := by rw [m.hDecided] <;> norm_num
theorem soccer_draws (m:Soccer) : m.draws=4 := by have h:=m.hDraws; rw [soccer_decided m] at h; omega
theorem soccer_win_points (m:Soccer) : m.winPoints=42 := by rw [m.hWin] <;> norm_num
theorem soccer_draw_points (m:Soccer) : m.drawPoints=4 := by rw [m.hDraw, soccer_draws m] <;> norm_num
theorem soccer_solution (m:Soccer) : m.total=46 := by rw [m.hTotal, soccer_win_points m, soccer_draw_points m] <;> norm_num

structure Spinning where
 minutes : ℕ
 classCalories : ℕ
 weekly : ℕ
 hMinutes : minutes=90
 hClass : classCalories=minutes*7
 hWeekly : weekly=classCalories*3
theorem spinning_minutes (m:Spinning) : m.minutes=90 := m.hMinutes
theorem spinning_class (m:Spinning) : m.classCalories=630 := by rw [m.hClass, spinning_minutes m] <;> norm_num
theorem spinning_solution (m:Spinning) : m.weekly=1890 := by rw [m.hWeekly, spinning_class m] <;> norm_num

structure CardTearing where
 weekly : ℕ
 cards : ℕ
 weeks : ℕ
 hWeekly : weekly=30*3
 hCards : cards=55*18
 hWeeks : weekly*weeks=cards
theorem cards_weekly (m:CardTearing) : m.weekly=90 := by rw [m.hWeekly] <;> norm_num
theorem cards_total (m:CardTearing) : m.cards=990 := by rw [m.hCards] <;> norm_num
theorem cards_solution (m:CardTearing) : m.weeks=11 := by have h:=m.hWeeks; rw [cards_weekly m, cards_total m] at h; omega

structure Jeans where
 saleDiscount : ℕ
 afterSale : ℕ
 afterCoupon : ℕ
 cardDiscount : ℕ
 paid : ℕ
 saved : ℕ
 hSaleDiscount : 100*saleDiscount=20*125
 hAfterSale : afterSale+saleDiscount=125
 hAfterCoupon : afterCoupon+10=afterSale
 hCardDiscount : 100*cardDiscount=10*afterCoupon
 hPaid : paid+cardDiscount=afterCoupon
 hSaved : saved+paid=125
theorem jeans_sale_discount (m:Jeans) : m.saleDiscount=25 := by omega
theorem jeans_after_sale (m:Jeans) : m.afterSale=100 := by have h:=m.hAfterSale; rw [jeans_sale_discount m] at h; omega
theorem jeans_after_coupon (m:Jeans) : m.afterCoupon=90 := by have h:=m.hAfterCoupon; rw [jeans_after_sale m] at h; omega
theorem jeans_card_discount (m:Jeans) : m.cardDiscount=9 := by have h:=m.hCardDiscount; rw [jeans_after_coupon m] at h; omega
theorem jeans_paid (m:Jeans) : m.paid=81 := by have h:=m.hPaid; rw [jeans_after_coupon m, jeans_card_discount m] at h; omega
theorem jeans_solution (m:Jeans) : m.saved=44 := by have h:=m.hSaved; rw [jeans_paid m] at h; omega

structure Credits where
 aria : ℕ
 spencer : ℕ
 total : ℕ
 twiceTotal : ℕ
 hAria : aria=2*20
 hSpencer : 2*spencer=20
 hTotal : total=aria+20+spencer
 hTwice : twiceTotal=2*total
theorem credits_aria (m:Credits) : m.aria=40 := by rw [m.hAria] <;> norm_num
theorem credits_spencer (m:Credits) : m.spencer=10 := by omega
theorem credits_total (m:Credits) : m.total=70 := by rw [m.hTotal, credits_aria m, credits_spencer m] <;> norm_num
theorem credits_solution (m:Credits) : m.twiceTotal=140 := by rw [m.hTwice, credits_total m] <;> norm_num

structure ReadingTime where
 words : ℕ
 hours : ℕ
 minutes : ℕ
 daily : ℕ
 hWords : words=200+400+300
 hHours : 100*hours=words
 hMinutes : minutes=hours*60
 hDaily : 10*daily=minutes
theorem reading_total_words (m:ReadingTime) : m.words=900 := by rw [m.hWords] <;> norm_num
theorem reading_hours (m:ReadingTime) : m.hours=9 := by have h:=m.hHours; rw [reading_total_words m] at h; omega
theorem reading_minutes (m:ReadingTime) : m.minutes=540 := by rw [m.hMinutes, reading_hours m] <;> norm_num
theorem reading_solution (m:ReadingTime) : m.daily=54 := by have h:=m.hDaily; rw [reading_minutes m] at h; omega

structure Inventory where
 shirts : ℕ
 jeans : ℕ
 accessories : ℕ
 scarves : ℕ
 difference : ℕ
 hShirts : shirts=63+42
 hJeans : 3*jeans=2*shirts
 hAccessories : accessories=34+40
 hScarves : 2*scarves=accessories
 hDifference : difference+scarves=jeans
theorem inventory_shirts (m:Inventory) : m.shirts=105 := by rw [m.hShirts] <;> norm_num
theorem inventory_jeans (m:Inventory) : m.jeans=70 := by have h:=m.hJeans; rw [inventory_shirts m] at h; omega
theorem inventory_accessories (m:Inventory) : m.accessories=74 := by rw [m.hAccessories] <;> norm_num
theorem inventory_scarves (m:Inventory) : m.scarves=37 := by have h:=m.hScarves; rw [inventory_accessories m] at h; omega
theorem inventory_solution (m:Inventory) : m.difference=33 := by have h:=m.hDifference; rw [inventory_jeans m, inventory_scarves m] at h; omega

structure Sledding where
 mary : ℕ
 ann : ℕ
 difference : ℕ
 hMary : 90*mary=630
 hAnn : 40*ann=800
 hDifference : difference+mary=ann
theorem sled_mary (m:Sledding) : m.mary=7 := by omega
theorem sled_ann (m:Sledding) : m.ann=20 := by omega
theorem sled_solution (m:Sledding) : m.difference=13 := by have h:=m.hDifference; rw [sled_mary m, sled_ann m] at h; omega

structure Notebooks where
 half : ℕ
 three : ℕ
 five : ℕ
 total : ℕ
 hHalf : 2*half=28
 hThree : three=half*3
 hFive : five=half*5
 hTotal : total=three+five
theorem notebooks_half (m:Notebooks) : m.half=14 := by omega
theorem notebooks_three (m:Notebooks) : m.three=42 := by rw [m.hThree, notebooks_half m] <;> norm_num
theorem notebooks_five (m:Notebooks) : m.five=70 := by rw [m.hFive, notebooks_half m] <;> norm_num
theorem notebooks_solution (m:Notebooks) : m.total=112 := by rw [m.hTotal, notebooks_three m, notebooks_five m] <;> norm_num

end LemmaWeave.Problems.GSM8K.Sprint0922A05
