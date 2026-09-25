import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0922A12

structure Courses where
  sid : ℕ
  total : ℕ
  hSid : sid=4*40
  hTotal : total=40+sid
theorem courses_sid (m:Courses) : m.sid=160 := by rw [m.hSid] <;> norm_num
theorem courses_solution (m:Courses) : m.total=200 := by rw [m.hTotal, courses_sid m] <;> norm_num

structure Biology where
  total : ℕ
  boys : ℕ
  hTotal : total*2=200
  hRatio : boys*4=total
theorem biology_total (m:Biology) : m.total=100 := by cases m <;> omega
theorem biology_solution (m:Biology) : m.boys=25 := by
  have h:=m.hRatio; rw [biology_total m] at h; omega

structure Sharks where
  dana : ℕ
  total : ℕ
  hDana : dana=4*22
  hTotal : total=dana+22
theorem sharks_dana (m:Sharks) : m.dana=88 := by rw [m.hDana] <;> norm_num
theorem sharks_solution (m:Sharks) : m.total=110 := by rw [m.hTotal, sharks_dana m] <;> norm_num

structure Balloons where
  initial : ℕ
  sold : ℕ
  remaining : ℕ
  hInitial : initial=3*12
  hSold : sold=3+12
  hRemaining : remaining+sold=initial
theorem balloons_initial (m:Balloons) : m.initial=36 := by rw [m.hInitial] <;> norm_num
theorem balloons_sold (m:Balloons) : m.sold=15 := by rw [m.hSold] <;> norm_num
theorem balloons_solution (m:Balloons) : m.remaining=21 := by
  have h:=m.hRemaining; rw [balloons_initial m, balloons_sold m] at h; omega

structure Makeup where
  available : ℕ
  needed : ℕ
  hAvailable : available=35+20
  hNeeded : needed+available=65
theorem makeup_available (m:Makeup) : m.available=55 := by rw [m.hAvailable] <;> norm_num
theorem makeup_solution (m:Makeup) : m.needed=10 := by
  have h:=m.hNeeded; rw [makeup_available m] at h; omega

structure Glasses where
  females : ℕ
  wearing : ℕ
  hFemales : females+2000=5000
  hWearing : wearing*100=females*30
theorem glasses_females (m:Glasses) : m.females=3000 := by cases m <;> omega
theorem glasses_solution (m:Glasses) : m.wearing=900 := by
  have h:=m.hWearing; rw [glasses_females m] at h; omega

structure Reading where
  totalMinutes : ℕ
  eachMinutes : ℕ
  novelPages : ℕ
  graphicPages : ℕ
  comicPages : ℕ
  totalPages : ℕ
  hTotalMinutes : totalMinutes=24*60/6
  hEach : eachMinutes*3=totalMinutes
  hNovel : novelPages*60=21*eachMinutes
  hGraphic : graphicPages*60=30*eachMinutes
  hComic : comicPages*60=45*eachMinutes
  hTotalPages : totalPages=novelPages+graphicPages+comicPages
theorem reading_total_minutes (m:Reading) : m.totalMinutes=240 := by rw [m.hTotalMinutes] <;> norm_num
theorem reading_each_minutes (m:Reading) : m.eachMinutes=80 := by
  have h:=m.hEach; rw [reading_total_minutes m] at h; omega
theorem reading_novels (m:Reading) : m.novelPages=28 := by
  have h:=m.hNovel; rw [reading_each_minutes m] at h; omega
theorem reading_graphic (m:Reading) : m.graphicPages=40 := by
  have h:=m.hGraphic; rw [reading_each_minutes m] at h; omega
theorem reading_comics (m:Reading) : m.comicPages=60 := by
  have h:=m.hComic; rw [reading_each_minutes m] at h; omega
theorem reading_solution (m:Reading) : m.totalPages=128 := by
  rw [m.hTotalPages, reading_novels m, reading_graphic m, reading_comics m] <;> norm_num

structure BucketList where
  learningYears : ℕ
  climbingMonths : ℕ
  combinedMonths : ℕ
  combinedYears : ℕ
  totalYears : ℕ
  hLearning : learningYears=2*2
  hClimbing : climbingMonths=5*7
  hCombinedMonths : combinedMonths=climbingMonths+13
  hCombinedYears : combinedYears*12=combinedMonths
  hTotal : totalYears=2+learningYears+combinedYears+2
theorem bucket_learning (m:BucketList) : m.learningYears=4 := by rw [m.hLearning] <;> norm_num
theorem bucket_climbing (m:BucketList) : m.climbingMonths=35 := by rw [m.hClimbing] <;> norm_num
theorem bucket_combined (m:BucketList) : m.combinedYears=4 := by
  have hm:=m.hCombinedMonths; rw [bucket_climbing m] at hm
  have hy:=m.hCombinedYears; rw [hm] at hy
  omega
theorem bucket_solution (m:BucketList) : m.totalYears=12 := by
  rw [m.hTotal, bucket_learning m, bucket_combined m] <;> norm_num

structure Nails where
  kitchen : ℕ
  afterKitchen : ℕ
  fence : ℕ
  remaining : ℕ
  hKitchen : kitchen*100=400*30
  hAfter : afterKitchen+kitchen=400
  hFence : fence*100=afterKitchen*70
  hRemaining : remaining+fence=afterKitchen
theorem nails_kitchen (m:Nails) : m.kitchen=120 := by cases m <;> omega
theorem nails_after_kitchen (m:Nails) : m.afterKitchen=280 := by
  have h:=m.hAfter; rw [nails_kitchen m] at h; omega
theorem nails_fence (m:Nails) : m.fence=196 := by
  have h:=m.hFence; rw [nails_after_kitchen m] at h; omega
theorem nails_solution (m:Nails) : m.remaining=84 := by
  have h:=m.hRemaining; rw [nails_after_kitchen m, nails_fence m] at h; omega

structure CookieBag where
  day2 : ℕ
  initial : ℕ
  hDay2 : day2=8*2
  hInitial : initial=day2*4
theorem cookie_day2 (m:CookieBag) : m.day2=16 := by rw [m.hDay2] <;> norm_num
theorem cookie_bag_solution (m:CookieBag) : m.initial=64 := by rw [m.hInitial, cookie_day2 m] <;> norm_num

structure Library where
  adultPercent : ℕ
  total : ℕ
  hAdultPercent : adultPercent+35=100
  hTotal : total*adultPercent=104*100
theorem library_adult_percent (m:Library) : m.adultPercent=65 := by cases m <;> omega
theorem library_solution (m:Library) : m.total=160 := by
  have h:=m.hTotal; rw [library_adult_percent m] at h; omega

structure Janine where
  currentBooks : ℕ
  totalBooks : ℕ
  pages : ℕ
  hCurrent : currentBooks=5*2
  hBooks : totalBooks=5+currentBooks
  hPages : pages=totalBooks*10
theorem janine_current (m:Janine) : m.currentBooks=10 := by rw [m.hCurrent] <;> norm_num
theorem janine_books (m:Janine) : m.totalBooks=15 := by rw [m.hBooks, janine_current m] <;> norm_num
theorem janine_solution (m:Janine) : m.pages=150 := by rw [m.hPages, janine_books m] <;> norm_num

structure Movie where
  popcornPrice : ℕ
  sodaPrice : ℕ
  ticketCost : ℕ
  popcornCost : ℕ
  sodaCost : ℕ
  total : ℕ
  hPopcornPrice : popcornPrice*100=5*80
  hSodaPrice : sodaPrice*100=popcornPrice*50
  hTicketCost : ticketCost=5*4
  hPopcornCost : popcornCost=popcornPrice*2
  hSodaCost : sodaCost=sodaPrice*4
  hTotal : total=ticketCost+popcornCost+sodaCost
theorem movie_popcorn_price (m:Movie) : m.popcornPrice=4 := by cases m <;> omega
theorem movie_soda_price (m:Movie) : m.sodaPrice=2 := by
  have h:=m.hSodaPrice; rw [movie_popcorn_price m] at h; omega
theorem movie_ticket_cost (m:Movie) : m.ticketCost=20 := by rw [m.hTicketCost] <;> norm_num
theorem movie_popcorn_cost (m:Movie) : m.popcornCost=8 := by rw [m.hPopcornCost, movie_popcorn_price m] <;> norm_num
theorem movie_soda_cost (m:Movie) : m.sodaCost=8 := by rw [m.hSodaCost, movie_soda_price m] <;> norm_num
theorem movie_solution (m:Movie) : m.total=36 := by
  rw [m.hTotal, movie_ticket_cost m, movie_popcorn_cost m, movie_soda_cost m] <;> norm_num

structure WeightsPair where
  rupert : ℕ
  antoinette : ℕ
  hAntoinette : antoinette+7=2*rupert
  hTotal : rupert+antoinette=98
theorem weights_pair_rupert (m:WeightsPair) : m.rupert=35 := by cases m <;> omega
theorem weights_pair_solution (m:WeightsPair) : m.antoinette=63 := by
  have h:=m.hTotal; rw [weights_pair_rupert m] at h; omega

structure Paintings where
  day2 : ℕ
  day3 : ℕ
  day4 : ℕ
  day5 : ℕ
  total : ℕ
  h2 : day2=2*2
  h3 : day3=day2*2
  h4 : day4=day3*2
  h5 : day5=day4*2
  hTotal : total=2+day2+day3+day4+day5
theorem paintings_day2 (m:Paintings) : m.day2=4 := by rw [m.h2] <;> norm_num
theorem paintings_day3 (m:Paintings) : m.day3=8 := by rw [m.h3, paintings_day2 m] <;> norm_num
theorem paintings_day4 (m:Paintings) : m.day4=16 := by rw [m.h4, paintings_day3 m] <;> norm_num
theorem paintings_day5 (m:Paintings) : m.day5=32 := by rw [m.h5, paintings_day4 m] <;> norm_num
theorem paintings_solution (m:Paintings) : m.total=62 := by
  rw [m.hTotal, paintings_day2 m, paintings_day3 m, paintings_day4 m, paintings_day5 m] <;> norm_num

end LemmaWeave.Problems.GSM8K.Sprint0922A12
