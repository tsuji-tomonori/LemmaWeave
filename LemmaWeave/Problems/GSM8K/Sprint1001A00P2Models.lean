import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A00P2

structure ChaseModel where
  sheepSpeed : ℕ
  dogSpeed : ℕ
  relativeSpeed : ℕ
  initialLead : ℕ
  seconds : ℕ
  hSheep : sheepSpeed = 12
  hDog : dogSpeed = 20
  hRelative : sheepSpeed + relativeSpeed = dogSpeed
  hLead : initialLead = 160
  hCatch : seconds * relativeSpeed = initialLead

theorem chase_relative_speed (m : ChaseModel) : m.relativeSpeed = 8 := by
  cases m <;> omega

theorem chase_seconds (m : ChaseModel) : m.seconds = 20 := by
  have h := chase_relative_speed m
  cases m <;> omega

structure DiscountModel where
  shirtReduced : ℕ
  jacketReduced : ℕ
  shirtsCost : ℕ
  jacketsCost : ℕ
  totalCost : ℕ
  hShirtReduced : 5 * shirtReduced = 4 * 60
  hJacketReduced : 5 * jacketReduced = 4 * 90
  hShirts : shirtsCost = 5 * shirtReduced
  hJackets : jacketsCost = 10 * jacketReduced
  hTotal : totalCost = shirtsCost + jacketsCost

theorem discount_shirt_price (m : DiscountModel) : m.shirtReduced = 48 := by
  cases m <;> omega

theorem discount_jacket_price (m : DiscountModel) : m.jacketReduced = 72 := by
  cases m <;> omega

theorem discount_shirts_cost (m : DiscountModel) : m.shirtsCost = 240 := by
  have h := discount_shirt_price m
  cases m <;> omega

theorem discount_jackets_cost (m : DiscountModel) : m.jacketsCost = 720 := by
  have h := discount_jacket_price m
  cases m <;> omega

theorem discount_total (m : DiscountModel) : m.totalCost = 960 := by
  have h1 := discount_shirts_cost m
  have h2 := discount_jackets_cost m
  cases m <;> omega

structure ElectivesModel where
  total : ℕ
  dance : ℕ
  art : ℕ
  music : ℕ
  musicPercent : ℕ
  hTotal : total = 400
  hDance : dance = 120
  hArt : art = 200
  hPartition : dance + art + music = total
  hPercent : music * 100 = musicPercent * total

theorem electives_music_students (m : ElectivesModel) : m.music = 80 := by
  cases m <;> omega

theorem electives_music_percent (m : ElectivesModel) : m.musicPercent = 20 := by
  have h := electives_music_students m
  cases m <;> omega

structure VacationAnimalsModel where
  guppies : ℕ
  clowns : ℕ
  tetras : ℕ
  total : ℕ
  hGuppies : guppies = 30
  hClowns : clowns = 2 * guppies
  hTetras : tetras = 4 * clowns
  hTotal : total = tetras + clowns + guppies

theorem vacation_clowns (m : VacationAnimalsModel) : m.clowns = 60 := by
  cases m <;> norm_num at *

theorem vacation_tetras (m : VacationAnimalsModel) : m.tetras = 240 := by
  have h := vacation_clowns m
  cases m <;> norm_num at *

theorem vacation_total (m : VacationAnimalsModel) : m.total = 330 := by
  have h1 := vacation_clowns m
  have h2 := vacation_tetras m
  cases m <;> omega

structure RestaurantsModel where
  firstDaily : ℕ
  secondDaily : ℕ
  thirdDaily : ℕ
  dailyTotal : ℕ
  weeklyTotal : ℕ
  hFirst : firstDaily = 20
  hSecond : secondDaily = 40
  hThird : thirdDaily = 50
  hDaily : dailyTotal = firstDaily + secondDaily + thirdDaily
  hWeekly : weeklyTotal = 7 * dailyTotal

theorem restaurants_daily (m : RestaurantsModel) : m.dailyTotal = 110 := by
  cases m <;> omega

theorem restaurants_weekly (m : RestaurantsModel) : m.weeklyTotal = 770 := by
  have h := restaurants_daily m
  cases m <;> norm_num at *

end LemmaWeave.Problems.GSM8K.Sprint1001A00P2
