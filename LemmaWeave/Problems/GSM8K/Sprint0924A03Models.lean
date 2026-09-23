import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0924A03

structure Allowance where middle senior increase percent : ℕ
  hMiddle : middle = 8 + 2
  hSenior : senior = 2 * middle + 5
  hIncrease : senior = middle + increase
  hPercent : increase * 100 = percent * middle
theorem allowance_middle (m : Allowance) : m.middle = 10 := by omega
theorem allowance_senior (m : Allowance) : m.senior = 25 := by omega
theorem allowance_increase (m : Allowance) : m.increase = 15 := by omega
theorem allowance_solution (m : Allowance) : m.percent = 150 := by omega

structure Savings where interest1 after1 remaining interest2 final : ℕ
  hInterest1 : interest1 * 100 = 1000 * 20
  hAfter1 : after1 = 1000 + interest1
  hRemaining : 2 * remaining = after1
  hInterest2 : interest2 * 100 = remaining * 15
  hFinal : final = remaining + interest2
theorem savings_interest1 (m : Savings) : m.interest1 = 200 := by omega
theorem savings_after1 (m : Savings) : m.after1 = 1200 := by omega
theorem savings_remaining (m : Savings) : m.remaining = 600 := by omega
theorem savings_interest2 (m : Savings) : m.interest2 = 90 := by omega
theorem savings_solution (m : Savings) : m.final = 690 := by omega

structure Boats where eaten left : ℕ
  hEaten : eaten * 100 = 30 * 20
  hLeft : left + eaten + 2 = 30
theorem boats_eaten (m : Boats) : m.eaten = 6 := by omega
theorem boats_solution (m : Boats) : m.left = 22 := by omega

structure Charles where dogCount dogHours earned : ℕ
  hDogCount : dogCount = 3
  hEarned : earned = 15 * 10 + 22 * dogHours
theorem charles_housesit : 15 * 10 = 150 := by norm_num
theorem charles_conditional_216 (m : Charles) (h : m.dogHours = 3) : m.earned = 216 := by omega
theorem charles_alternate_282 (m : Charles) (h : m.dogHours = 6) : m.earned = 282 := by omega
theorem charles_source_not_unique :
    ∃ m1 m2 : Charles, m1.dogCount = 3 ∧ m2.dogCount = 3 ∧
      m1.earned = 216 ∧ m2.earned = 282 ∧ m1.earned ≠ m2.earned := by
  refine ⟨⟨3, 3, 216, by norm_num, by norm_num⟩,
    ⟨3, 6, 282, by norm_num, by norm_num⟩, ?_⟩
  norm_num

structure Walking where daily weekly : ℕ
  hDaily : daily = 10 + 12
  hWeekly : weekly = daily * 5
theorem walking_daily (m : Walking) : m.daily = 22 := by omega
theorem walking_solution (m : Walking) : m.weekly = 110 := by omega

structure Watermelon where black white total : ℕ
  hBlack : black = 20 * 40
  hWhite : white = 20 * 40
  hTotal : total = black + white
theorem seeds_black (m : Watermelon) : m.black = 800 := by omega
theorem seeds_white (m : Watermelon) : m.white = 800 := by omega
theorem seeds_solution (m : Watermelon) : m.total = 1600 := by omega

structure Balloons where round long total left : ℕ
  hRound : round = 5 * 20
  hLong : long = 4 * 30
  hTotal : total = round + long
  hLeft : left + 5 = total
theorem balloons_round (m : Balloons) : m.round = 100 := by omega
theorem balloons_long (m : Balloons) : m.long = 120 := by omega
theorem balloons_total (m : Balloons) : m.total = 220 := by omega
theorem balloons_solution (m : Balloons) : m.left = 215 := by omega

structure Songs where count megabytes : ℕ
  hCount : count = 10 + 15 + 3
  hMegabytes : megabytes = count * 5
theorem songs_total (m : Songs) : m.count = 28 := by omega
theorem songs_solution (m : Songs) : m.megabytes = 140 := by omega

structure Tape where fourMeter sixMeter total : ℕ
  hFour : fourMeter = 2 * 4
  hSix : sixMeter = 2 * 6
  hTotal : total = fourMeter + sixMeter
theorem tape_four_meter (m : Tape) : m.fourMeter = 8 := by omega
theorem tape_six_meter (m : Tape) : m.sixMeter = 12 := by omega
theorem tape_solution (m : Tape) : m.total = 20 := by omega

structure Groceries where vegetables meat total percent remainder : ℕ
  hVegetables : vegetables = 1200 + 225 + 375
  hMeat : meat = 300 + 600
  hTotal : total = vegetables + meat
  hDivision : 100 * meat = percent * total + remainder
  hRemainder : remainder < total
  hNearest : 2 * remainder < total
theorem grocery_vegetables (m : Groceries) : m.vegetables = 1800 := by omega
theorem grocery_meat (m : Groceries) : m.meat = 900 := by omega
theorem grocery_total (m : Groceries) : m.total = 2700 := by omega
theorem grocery_fraction (m : Groceries) : 100 * m.meat = 33 * m.total + 900 := by omega
theorem grocery_solution (m : Groceries) : m.percent = 33 := by omega

structure Calories where total excess : ℕ
  hTotal : total = 400 + 900 + 1100
  hExcess : excess + 1800 = total
theorem calories_total (m : Calories) : m.total = 2400 := by omega
theorem calories_solution (m : Calories) : m.excess = 600 := by omega

structure Basin where netRate seconds : ℕ
  hRate : netRate + 4 = 24
  hFill : netRate * seconds = 260
theorem basin_net_rate (m : Basin) : m.netRate = 20 := by omega
theorem basin_solution (m : Basin) : m.seconds = 13 := by omega

structure Samuel where share spent left : ℕ
  hShare : share * 4 = 240 * 3
  hSpent : spent * 5 = 240
  hLeft : left + spent = share
theorem samuel_share (m : Samuel) : m.share = 180 := by omega
theorem samuel_spent (m : Samuel) : m.spent = 48 := by omega
theorem samuel_solution (m : Samuel) : m.left = 132 := by omega

structure Cards where red remainder black green : ℕ
  hRed : red * 5 = 120 * 2
  hRemainder : red + remainder = 120
  hBlack : black * 9 = remainder * 5
  hGreen : black + green = remainder
theorem cards_red (m : Cards) : m.red = 48 := by omega
theorem cards_remainder (m : Cards) : m.remainder = 72 := by omega
theorem cards_black (m : Cards) : m.black = 40 := by omega
theorem cards_solution (m : Cards) : m.green = 32 := by omega

structure Investments where jackson brandon difference : ℕ
  hJackson : jackson = 500 * 4
  hBrandon : brandon * 100 = 500 * 20
  hDifference : difference + brandon = jackson
theorem investment_jackson (m : Investments) : m.jackson = 2000 := by omega
theorem investment_brandon (m : Investments) : m.brandon = 100 := by omega
theorem investment_solution (m : Investments) : m.difference = 1900 := by omega

end LemmaWeave.Problems.GSM8K.Sprint0924A03
