import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0925A01

structure RaceFinishers where tripped remaining dehydrated dehydratedOut finished : ℕ
  hTripped : 4 * tripped = 80
  hRemaining : remaining + tripped = 80
  hDehydrated : 3 * dehydrated = 2 * remaining
  hDehydratedOut : 5 * dehydratedOut = dehydrated
  hFinished : finished + dehydratedOut = remaining
theorem race_tripped (m : RaceFinishers) : m.tripped = 20 := by cases m; omega
theorem race_remaining (m : RaceFinishers) : m.remaining = 60 := by
  have h := race_tripped m
  cases m; omega
theorem race_dehydrated (m : RaceFinishers) : m.dehydrated = 40 := by
  have h := race_remaining m
  cases m; omega
theorem race_dehydrated_nonfinish (m : RaceFinishers) : m.dehydratedOut = 8 := by
  have h := race_dehydrated m
  cases m; omega
theorem race_solution (m : RaceFinishers) : m.finished = 52 := by
  have h₁ := race_remaining m
  have h₂ := race_dehydrated_nonfinish m
  cases m; omega

structure BlouseDye where perBlouse totalMl bottles : ℕ
  hPerBlouse : perBlouse = 20 * 10
  hTotal : totalMl = perBlouse * 100
  hBottles : 400 * bottles = totalMl
theorem dye_per_blouse (m : BlouseDye) : m.perBlouse = 200 := by cases m; omega
theorem dye_total (m : BlouseDye) : m.totalMl = 20000 := by
  have h := dye_per_blouse m
  cases m; omega
theorem dye_solution (m : BlouseDye) : m.bottles = 50 := by
  have h := dye_total m
  cases m; omega

structure Televisions where gross discount paid : ℕ
  hGross : gross = 2 * 650
  hDiscount : 100 * discount = 25 * gross
  hPaid : paid + discount = gross
theorem televisions_gross (m : Televisions) : m.gross = 1300 := by cases m; omega
theorem televisions_discount (m : Televisions) : m.discount = 325 := by
  have h := televisions_gross m
  cases m; omega
theorem televisions_solution (m : Televisions) : m.paid = 975 := by
  have h₁ := televisions_gross m
  have h₂ := televisions_discount m
  cases m; omega

structure TailDifference where eastern western difference percent : ℕ
  hEastern : eastern = 6
  hWestern : western = 8
  hDifference : difference + eastern = western
  hPercent : 8 * percent = 100 * difference
theorem tails_difference (m : TailDifference) : m.difference = 2 := by cases m; omega
theorem tails_solution (m : TailDifference) : m.percent = 25 := by
  have h := tails_difference m
  cases m; omega

structure CropLand where nonCrop crop : ℕ
  hNonCrop : nonCrop = 25 + 15 + 40
  hTotal : crop + nonCrop = 150
theorem land_non_crop (m : CropLand) : m.nonCrop = 80 := by cases m; omega
theorem land_solution (m : CropLand) : m.crop = 70 := by
  have h := land_non_crop m
  cases m; omega

-- The source phrase “5 times slower” is made explicit as five times the bus travel time.
structure CommuteConditional where paulaOneWay paulaTotal lukeBike lukeTotal combined : ℕ
  hPaulaOneWay : 5 * paulaOneWay = 3 * 70
  hPaulaTotal : paulaTotal = 2 * paulaOneWay
  hLukeBike : lukeBike = 5 * 70
  hLukeTotal : lukeTotal = 70 + lukeBike
  hCombined : combined = paulaTotal + lukeTotal
theorem commute_paula_oneway (m : CommuteConditional) : m.paulaOneWay = 42 := by cases m; omega
theorem commute_paula_total (m : CommuteConditional) : m.paulaTotal = 84 := by
  have h := commute_paula_oneway m
  cases m; omega
theorem commute_luke_bike_conditional (m : CommuteConditional) : m.lukeBike = 350 := by cases m; omega
theorem commute_luke_total (m : CommuteConditional) : m.lukeTotal = 420 := by
  have h := commute_luke_bike_conditional m
  cases m; omega
theorem commute_solution (m : CommuteConditional) : m.combined = 504 := by
  have h₁ := commute_paula_total m
  have h₂ := commute_luke_total m
  cases m; omega
theorem commute_answer_scope (m : CommuteConditional) :
    m.lukeBike = 350 ∧ m.combined = 504 := by
  exact ⟨commute_luke_bike_conditional m, commute_solution m⟩

structure DianaIncome where august september total : ℕ
  hAugust : august = 3 * 150
  hSeptember : september = 2 * august
  hTotal : total = 150 + august + september
theorem diana_august (m : DianaIncome) : m.august = 450 := by cases m; omega
theorem diana_september (m : DianaIncome) : m.september = 900 := by
  have h := diana_august m
  cases m; omega
theorem diana_solution (m : DianaIncome) : m.total = 1500 := by
  have h₁ := diana_august m
  have h₂ := diana_september m
  cases m; omega

structure RaceDistance where josh selena total : ℕ
  hHalf : 2 * josh = selena
  hTotal : total = josh + selena
  hTogether : total = 36
theorem selena_josh (m : RaceDistance) : m.josh = 12 := by cases m; omega
theorem selena_solution (m : RaceDistance) : m.selena = 24 := by
  have h := selena_josh m
  cases m; omega

structure Gum where rick shaneReceived shaneLeft : ℕ
  hRick : 2 * rick = 100
  hShaneReceived : 2 * shaneReceived = rick
  hLeft : shaneLeft + 11 = shaneReceived
theorem gum_rick (m : Gum) : m.rick = 50 := by cases m; omega
theorem gum_shane_received (m : Gum) : m.shaneReceived = 25 := by
  have h := gum_rick m
  cases m; omega
theorem gum_solution (m : Gum) : m.shaneLeft = 14 := by
  have h := gum_shane_received m
  cases m; omega

structure Teacups where candidateBoxes decorations teacupBoxes perBox afterBreakage total : ℕ
  hCandidate : candidateBoxes + 6 = 26
  hDecorations : 2 * decorations = candidateBoxes
  hTeacupBoxes : teacupBoxes + decorations = candidateBoxes
  hPerBox : perBox = 5 * 4
  hAfterBreakage : afterBreakage + 2 = perBox
  hTotal : total = teacupBoxes * afterBreakage
theorem teacups_candidate_boxes (m : Teacups) : m.candidateBoxes = 20 := by cases m; omega
theorem teacups_boxes (m : Teacups) : m.teacupBoxes = 10 := by
  have h := teacups_candidate_boxes m
  cases m; omega
theorem teacups_per_box (m : Teacups) : m.perBox = 20 := by cases m; omega
theorem teacups_after_breakage (m : Teacups) : m.afterBreakage = 18 := by
  have h := teacups_per_box m
  cases m; omega
theorem teacups_solution (m : Teacups) : m.total = 180 := by
  have h₁ := teacups_boxes m
  have h₂ := teacups_after_breakage m
  cases m; omega

structure BobSalary where last increase current : ℕ
  hLast : last = 3 * 4000
  hIncrease : 100 * increase = 20 * last
  hCurrent : current = last + increase
theorem salary_bob_last (m : BobSalary) : m.last = 12000 := by cases m; omega
theorem salary_bob_increase (m : BobSalary) : m.increase = 2400 := by
  have h := salary_bob_last m
  cases m; omega
theorem salary_solution (m : BobSalary) : m.current = 14400 := by
  have h₁ := salary_bob_last m
  have h₂ := salary_bob_increase m
  cases m; omega

structure Sugar where week2 week3 week4 : ℕ
  hWeek2 : 2 * week2 = 24
  hWeek3 : 2 * week3 = week2
  hWeek4 : 2 * week4 = week3
theorem sugar_week2 (m : Sugar) : m.week2 = 12 := by cases m; omega
theorem sugar_week3 (m : Sugar) : m.week3 = 6 := by
  have h := sugar_week2 m
  cases m; omega
theorem sugar_solution (m : Sugar) : m.week4 = 3 := by
  have h := sugar_week3 m
  cases m; omega

structure CircusTickets where jen russel total : ℕ
  hJen : jen = 2 * 5
  hRussel : russel = 3 * 3
  hTotal : total = jen + russel
theorem circus_jen (m : CircusTickets) : m.jen = 10 := by cases m; omega
theorem circus_russel (m : CircusTickets) : m.russel = 9 := by cases m; omega
theorem circus_solution (m : CircusTickets) : m.total = 19 := by
  have h₁ := circus_jen m
  have h₂ := circus_russel m
  cases m; omega

structure HorseOats where perFeeding perDay total : ℕ
  hPerFeeding : perFeeding = 4 * 4
  hPerDay : perDay = 2 * perFeeding
  hTotal : total = 3 * perDay
theorem oats_per_feeding (m : HorseOats) : m.perFeeding = 16 := by cases m; omega
theorem oats_per_day (m : HorseOats) : m.perDay = 32 := by
  have h := oats_per_feeding m
  cases m; omega
theorem oats_solution (m : HorseOats) : m.total = 96 := by
  have h := oats_per_day m
  cases m; omega

structure Flyers where daily weekly total : ℕ
  hDaily : daily = 2 * 4
  hWeekly : weekly = 3 * daily
  hTotal : total = 4 * weekly
theorem flyers_daily (m : Flyers) : m.daily = 8 := by cases m; omega
theorem flyers_weekly (m : Flyers) : m.weekly = 24 := by
  have h := flyers_daily m
  cases m; omega
theorem flyers_solution (m : Flyers) : m.total = 96 := by
  have h := flyers_weekly m
  cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0925A01
