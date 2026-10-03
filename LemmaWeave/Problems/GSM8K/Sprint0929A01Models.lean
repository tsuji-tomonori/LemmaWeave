import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0929A01

structure LemonadeModel where
  glasses : ℕ
  priceCents : ℕ
  plainCents : ℕ
  strawberryCents : ℕ
  differenceCents : ℕ
  hglasses : glasses = 36
  hprice : priceCents = 75
  hplain : plainCents = 36 * 75
  hstrawberry : strawberryCents = 1600
  hdifference : plainCents = strawberryCents + differenceCents

theorem lemonade_plain (m : LemonadeModel) : m.plainCents = 2700 := by
  cases m
  omega
theorem lemonade_strawberry (m : LemonadeModel) : m.strawberryCents = 1600 := by
  cases m
  omega
theorem lemonade_difference (m : LemonadeModel) : m.differenceCents = 1100 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem lemonade_solution (m : LemonadeModel) : m.differenceCents = 1100 := lemonade_difference m

structure LollipopsModel where
  first : ℕ
  later : ℕ
  totalPeople : ℕ
  lollipops : ℕ
  hfirst : first = 45
  hlater : later = 15
  htotal : totalPeople = first + later
  hratio : totalPeople = 5 * lollipops

theorem lollipops_total_people (m : LollipopsModel) : m.totalPeople = 60 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem lollipops_groups (m : LollipopsModel) : m.lollipops = 12 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem lollipops_solution (m : LollipopsModel) : m.lollipops = 12 := lollipops_groups m

structure PiesModel where
  adam : ℕ
  bill : ℕ
  sierra : ℕ
  total : ℕ
  hsierra : sierra = 12
  htwice : sierra = 2 * bill
  hadam : adam = bill + 3
  htotal : total = adam + bill + sierra

theorem pies_bill (m : PiesModel) : m.bill = 6 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem pies_adam (m : PiesModel) : m.adam = 9 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem pies_total (m : PiesModel) : m.total = 27 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem pies_solution (m : PiesModel) : m.total = 27 := pies_total m

structure ParkingSectionsModel where
  total : ℕ
  first : ℕ
  second : ℕ
  third : ℕ
  htotal : total = 1000
  hfirst : first = 320
  hsecond : second = third + 200
  hpartition : total = first + second + third

theorem parking_remaining (m : ParkingSectionsModel) : m.second + m.third = 680 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem parking_third (m : ParkingSectionsModel) : m.third = 240 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem parking_second (m : ParkingSectionsModel) : m.second = 440 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem parking_sections_solution (m : ParkingSectionsModel) : m.second = 440 := parking_second m

structure ValentinesModel where
  students : ℕ
  recipients : ℕ
  price : ℕ
  spent : ℕ
  budget : ℕ
  percent : ℕ
  hstudents : students = 30
  hrecipients : 5 * recipients = 3 * students
  hprice : price = 2
  hspent : spent = 2 * recipients
  hbudget : budget = 40
  hpercent : 40 * percent = 100 * spent

theorem valentines_recipients (m : ValentinesModel) : m.recipients = 18 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem valentines_spent (m : ValentinesModel) : m.spent = 36 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem valentines_percent (m : ValentinesModel) : m.percent = 90 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem valentines_solution (m : ValentinesModel) : m.percent = 90 := valentines_percent m

structure BasketballModel where
  attempted : ℕ
  made : ℕ
  missed : ℕ
  hattempted : attempted = 20
  hmade : 5 * made = 4 * attempted
  hpartition : attempted = made + missed

theorem basketball_made (m : BasketballModel) : m.made = 16 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem basketball_missed (m : BasketballModel) : m.missed = 4 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem basketball_solution (m : BasketballModel) : m.missed = 4 := basketball_missed m

structure SleepModel where
  weekdayHours : ℕ
  weekdayDays : ℕ
  otherHours : ℕ
  otherDays : ℕ
  weekdayTotal : ℕ
  otherTotal : ℕ
  total : ℕ
  hweekdayHours : weekdayHours = 6
  hweekdayDays : weekdayDays = 5
  hotherHours : otherHours = 10
  hotherDays : otherDays = 2
  hweekdayTotal : weekdayTotal = 6 * 5
  hotherTotal : otherTotal = 10 * 2
  htotal : total = weekdayTotal + otherTotal

theorem sleep_weekday (m : SleepModel) : m.weekdayTotal = 30 := by
  cases m
  omega
theorem sleep_other (m : SleepModel) : m.otherTotal = 20 := by
  cases m
  omega
theorem sleep_total (m : SleepModel) : m.total = 50 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem sleep_solution (m : SleepModel) : m.total = 50 := sleep_total m

structure HomesModel where
  total : ℕ
  white : ℕ
  nonwhite : ℕ
  fireplace : ℕ
  noFireplace : ℕ
  htotal : total = 400
  hwhite : 4 * white = total
  hnonwhite : total = white + nonwhite
  hfireplace : 5 * fireplace = nonwhite
  hpartition : nonwhite = fireplace + noFireplace

theorem homes_white (m : HomesModel) : m.white = 100 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem homes_nonwhite (m : HomesModel) : m.nonwhite = 300 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem homes_fireplace (m : HomesModel) : m.fireplace = 60 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem homes_no_fireplace (m : HomesModel) : m.noFireplace = 240 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem homes_solution (m : HomesModel) : m.noFireplace = 240 := homes_no_fireplace m

structure PebbleFriendsModel where
  dozens : ℕ
  pebbles : ℕ
  perFriend : ℕ
  friends : ℕ
  hdozens : dozens = 3
  hpebbles : pebbles = 3 * 12
  hperFriend : perFriend = 4
  hdistribution : pebbles = 4 * friends

theorem pebble_friends_pebbles (m : PebbleFriendsModel) : m.pebbles = 36 := by
  cases m
  omega
theorem pebble_friends_count (m : PebbleFriendsModel) : m.friends = 9 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem pebble_friends_solution (m : PebbleFriendsModel) : m.friends = 9 := pebble_friends_count m

structure TypingModel where
  wordsPerMinute : ℕ
  minutesPerHour : ℕ
  totalWords : ℕ
  wordsPerHour : ℕ
  hours : ℕ
  hrate : wordsPerMinute = 60
  hminutes : minutesPerHour = 60
  hhourly : wordsPerHour = 60 * 60
  htotal : totalWords = 10800
  htime : totalWords = 3600 * hours

theorem typing_hourly (m : TypingModel) : m.wordsPerHour = 3600 := by
  cases m
  omega
theorem typing_hours (m : TypingModel) : m.hours = 3 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem typing_solution (m : TypingModel) : m.hours = 3 := typing_hours m

structure BooksModel where
  longest : ℕ
  shortest : ℕ
  middle : ℕ
  hlongest : longest = 396
  hshortest : 4 * shortest = longest
  hmiddle : middle = 3 * shortest

theorem books_shortest (m : BooksModel) : m.shortest = 99 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem books_middle (m : BooksModel) : m.middle = 297 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem books_solution (m : BooksModel) : m.middle = 297 := books_middle m

structure LimoModel where
  rides : ℕ
  ridePay : ℕ
  hours : ℕ
  hourlyPay : ℕ
  gallons : ℕ
  pricePerGallon : ℕ
  gasPay : ℕ
  reviews : ℕ
  reviewPay : ℕ
  total : ℕ
  hrides : rides = 3
  hridePay : ridePay = 5 * rides
  hhours : hours = 8
  hhourlyPay : hourlyPay = 15 * hours
  hgallons : gallons = 17
  hprice : pricePerGallon = 3
  hgasPay : gasPay = 17 * 3
  hreviews : reviews = 2
  hreviewPay : reviewPay = 20 * reviews
  htotal : total = ridePay + hourlyPay + gasPay + reviewPay

theorem limo_ride_pay (m : LimoModel) : m.ridePay = 15 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem limo_hourly_pay (m : LimoModel) : m.hourlyPay = 120 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem limo_gas_pay (m : LimoModel) : m.gasPay = 51 := by
  cases m
  omega
theorem limo_review_pay (m : LimoModel) : m.reviewPay = 40 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem limo_total (m : LimoModel) : m.total = 226 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem limo_solution (m : LimoModel) : m.total = 226 := limo_total m

structure TullyModel where
  kateNow : ℕ
  kateFuture : ℕ
  tullyFuture : ℕ
  tullyNow : ℕ
  tullyLastYear : ℕ
  hkate : kateNow = 29
  hkateFuture : kateFuture = kateNow + 3
  htullyFuture : tullyFuture = 2 * kateFuture
  htullyNow : tullyFuture = tullyNow + 3
  htullyLast : tullyNow = tullyLastYear + 1

theorem tully_kate_future (m : TullyModel) : m.kateFuture = 32 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem tully_future (m : TullyModel) : m.tullyFuture = 64 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem tully_now (m : TullyModel) : m.tullyNow = 61 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem tully_last_year (m : TullyModel) : m.tullyLastYear = 60 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem tully_solution (m : TullyModel) : m.tullyLastYear = 60 := tully_last_year m

structure DarcieModel where
  darcie : ℕ
  mother : ℕ
  father : ℕ
  hdarcie : darcie = 4
  hmother : mother = 6 * darcie
  hfatherRatio : 5 * mother = 4 * father

theorem darcie_mother (m : DarcieModel) : m.mother = 24 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem darcie_father (m : DarcieModel) : m.father = 30 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem darcie_solution (m : DarcieModel) : m.father = 30 := darcie_father m

structure TennisBallsModel where
  games : ℕ
  worn : ℕ
  lost : ℕ
  canisters : ℕ
  bought : ℕ
  started : ℕ
  given : ℕ
  remaining : ℕ
  hgames : games = 20
  hworn : games = 10 * worn
  hlost : games = 5 * lost
  hcanisters : games = 4 * canisters
  hbought : bought = 3 * canisters
  hstarted : started = 2
  hgiven : given = 1
  hbalance : started + bought = given + worn + lost + remaining

theorem tennis_worn (m : TennisBallsModel) : m.worn = 2 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem tennis_lost (m : TennisBallsModel) : m.lost = 4 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem tennis_bought (m : TennisBallsModel) : m.bought = 15 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem tennis_remaining (m : TennisBallsModel) : m.remaining = 10 := by cases m <;> dsimp at * <;> (try simp_all) <;> omega
theorem tennis_solution (m : TennisBallsModel) : m.remaining = 10 := tennis_remaining m

end LemmaWeave.Problems.GSM8K.Sprint0929A01
