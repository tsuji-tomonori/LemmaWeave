import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0925A04

structure SpecialSchool where blind deaf : ℕ
  hDeaf : deaf = 3 * blind
  hTotal : blind + deaf = 180
theorem school_deaf (m : SpecialSchool) : m.deaf = 135 := by cases m; omega
theorem school_solution (m : SpecialSchool) : m.blind = 45 := by cases m; omega

-- “four times less” is fixed to the dataset's intended one-quarter relation.
structure GoldConditional where greg katie : ℕ
  hKatie : katie = 4 * greg
  hTotal : greg + katie = 100
theorem gold_katie (m : GoldConditional) : m.katie = 80 := by cases m; omega
theorem gold_solution (m : GoldConditional) : m.greg = 20 := by cases m; omega

structure PackedLunch where aliyah becky : ℕ
  hAliyah : 2 * aliyah = 180
  hBecky : 2 * becky = aliyah
theorem lunch_aliyah (m : PackedLunch) : m.aliyah = 90 := by cases m; omega
theorem lunch_solution (m : PackedLunch) : m.becky = 45 := by cases m; omega

structure Marbles where ben leo total : ℕ
  hBen : ben = 56
  hLeo : leo = ben + 20
  hTotal : total = ben + leo
theorem marbles_leo (m : Marbles) : m.leo = 76 := by cases m; omega
theorem marbles_solution (m : Marbles) : m.total = 132 := by cases m; omega

structure CityPopulation where willow rose sun : ℕ
  hWillow : willow = 2000
  hRose : rose + 500 = 3 * willow
  hSun : sun = 2 * rose + 1000
theorem cities_rose (m : CityPopulation) : m.rose = 5500 := by cases m; omega
theorem cities_solution (m : CityPopulation) : m.sun = 12000 := by cases m; omega

structure BicycleRace where afterJoin afterDouble finished dropped : ℕ
  hJoin : afterJoin = 50 + 30
  hDouble : afterDouble = 2 * afterJoin
  hFinished : finished = 130
  hDropped : dropped + finished = afterDouble
theorem race_after_join (m : BicycleRace) : m.afterJoin = 80 := by cases m; omega
theorem race_after_double (m : BicycleRace) : m.afterDouble = 160 := by cases m; omega
theorem race_solution (m : BicycleRace) : m.dropped = 30 := by cases m; omega

structure Necklaces where haley jason josh difference : ℕ
  hHaley : haley = 25
  hJason : jason + 5 = haley
  hJosh : 2 * josh = jason
  hDifference : difference + josh = haley
theorem necklaces_jason (m : Necklaces) : m.jason = 20 := by cases m; omega
theorem necklaces_josh (m : Necklaces) : m.josh = 10 := by cases m; omega
theorem necklaces_solution (m : Necklaces) : m.difference = 15 := by cases m; omega

structure Clotheslines where childItems adultItems totalItems lines houses : ℕ
  hChildItems : childItems = 11 * 4
  hAdultItems : adultItems = 20 * 3
  hTotalItems : totalItems = childItems + adultItems
  hLines : 2 * lines = totalItems
  hHouses : lines = 2 * houses
theorem clothes_child (m : Clotheslines) : m.childItems = 44 := by cases m; omega
theorem clothes_adult (m : Clotheslines) : m.adultItems = 60 := by cases m; omega
theorem clothes_total (m : Clotheslines) : m.totalItems = 104 := by cases m; omega
theorem clothes_lines (m : Clotheslines) : m.lines = 52 := by cases m; omega
theorem clothes_solution (m : Clotheslines) : m.houses = 26 := by cases m; omega

structure Toads where wormsPerHour worms toads : ℕ
  hRate : 15 * wormsPerHour = 60
  hWorms : worms = 6 * wormsPerHour
  hToads : 3 * toads = worms
theorem toads_hourly (m : Toads) : m.wormsPerHour = 4 := by cases m; omega
theorem toads_worms (m : Toads) : m.worms = 24 := by cases m; omega
theorem toads_solution (m : Toads) : m.toads = 8 := by cases m; omega

structure Absences where absent1 absent2 absent3 present1 present2 totalAbsent : ℕ
  hAbsent3 : 7 * absent3 = 280
  hAbsent2 : absent2 = 2 * absent3
  hPresent2 : present2 + absent2 = 280
  hPresentRelation : present1 + 40 = present2
  hPresent1 : present1 + absent1 = 280
  hTotal : totalAbsent = absent1 + absent2 + absent3
theorem absences_third (m : Absences) : m.absent3 = 40 := by cases m; omega
theorem absences_second (m : Absences) : m.absent2 = 80 := by cases m; omega
theorem absences_first (m : Absences) : m.absent1 = 120 := by cases m; omega
theorem absences_solution (m : Absences) : m.totalAbsent = 240 := by cases m; omega

structure BasketballGirls where girls boys boysLike boysDislike girlsLike percent : ℕ
  hGirls : 100 * girls = 60 * 25
  hBoys : boys + girls = 25
  hBoysLike : 100 * boysLike = 40 * boys
  hBoysDislike : boysDislike + boysLike = boys
  hGirlsLike : girlsLike = 2 * boysDislike
  hPercent : 15 * percent = 100 * girlsLike
theorem girls_count (m : BasketballGirls) : m.girls = 15 := by cases m; omega
theorem girls_boys (m : BasketballGirls) : m.boys = 10 := by cases m; omega
theorem girls_boys_dislike (m : BasketballGirls) : m.boysDislike = 6 := by cases m; omega
theorem girls_like (m : BasketballGirls) : m.girlsLike = 12 := by cases m; omega
theorem girls_solution (m : BasketballGirls) : m.percent = 80 := by cases m; omega

structure FunRun where lastYear thisYear : ℕ
  hLast : lastYear + 40 = 200
  hThis : thisYear = 2 * lastYear
theorem funrun_last (m : FunRun) : m.lastYear = 160 := by cases m; omega
theorem funrun_solution (m : FunRun) : m.thisYear = 320 := by cases m; omega

structure ContractHiring where week1 week2 week3 week4 total average : ℕ
  hWeek4 : week4 = 400
  hWeek4Twice : week4 = 2 * week3
  hWeek2Third : week2 + 150 = week3
  hWeek1 : week1 = week2 + 200
  hTotal : total = week1 + week2 + week3 + week4
  hAverage : 4 * average = total
theorem hiring_week3 (m : ContractHiring) : m.week3 = 200 := by cases m; omega
theorem hiring_week2 (m : ContractHiring) : m.week2 = 50 := by cases m; omega
theorem hiring_week1 (m : ContractHiring) : m.week1 = 250 := by cases m; omega
theorem hiring_total (m : ContractHiring) : m.total = 900 := by cases m; omega
theorem hiring_solution (m : ContractHiring) : m.average = 225 := by cases m; omega

structure PonyCost where food lessons pasture total : ℕ
  hFood : food = 10 * 365
  hLessons : lessons = 60 * 2 * 52
  hPasture : pasture = 500 * 12
  hTotal : total = food + lessons + pasture
theorem pony_food (m : PonyCost) : m.food = 3650 := by cases m; omega
theorem pony_lessons (m : PonyCost) : m.lessons = 6240 := by cases m; omega
theorem pony_pasture (m : PonyCost) : m.pasture = 6000 := by cases m; omega
theorem pony_solution (m : PonyCost) : m.total = 15890 := by cases m; omega

structure Friends where afterArgument final : ℕ
  hAfter : afterArgument + 2 = 20
  hFinal : final = afterArgument + 1
theorem friends_after (m : Friends) : m.afterArgument = 18 := by cases m; omega
theorem friends_solution (m : Friends) : m.final = 19 := by cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0925A04
