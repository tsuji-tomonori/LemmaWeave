import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A11P1

structure WeeklyCasesModel where
  first : ℕ
  second : ℕ
  third : ℕ
  total : ℕ
  hFirst : first = 5000
  hSecond : 2 * second = first
  hThird : third = 2000
  hTotal : total = first + second + third

theorem weekly_cases_second (m : WeeklyCasesModel) : m.second = 2500 := by
  cases m <;> simp_all <;> omega

theorem weekly_cases_total (m : WeeklyCasesModel) : m.total = 9500 := by
  have h := weekly_cases_second m
  cases m <;> simp_all <;> omega

structure PizzaModel where
  don : ℕ
  daria : ℕ
  total : ℕ
  hDon : don = 80
  hRatio : 2 * daria = 5 * don
  hTotal : total = don + daria

theorem pizza_daria (m : PizzaModel) : m.daria = 200 := by
  cases m <;> simp_all <;> omega

theorem pizza_total (m : PizzaModel) : m.total = 280 := by
  have h := pizza_daria m
  cases m <;> simp_all <;> omega

structure JumpingJacksModel where
  monday : ℕ
  tuesday : ℕ
  wednesday : ℕ
  thursday : ℕ
  sidney : ℕ
  brooke : ℕ
  hMonday : monday = 20
  hTuesday : tuesday = 36
  hWednesday : wednesday = 40
  hThursday : thursday = 50
  hSidney : sidney = monday + tuesday + wednesday + thursday
  hBrooke : brooke = 3 * sidney

theorem jumping_sidney (m : JumpingJacksModel) : m.sidney = 146 := by
  cases m <;> simp_all <;> omega

theorem jumping_brooke (m : JumpingJacksModel) : m.brooke = 438 := by
  have h := jumping_sidney m
  cases m <;> simp_all <;> omega

structure CoinJarModel where
  members : ℕ
  pricePerScoop : ℕ
  spent : ℕ
  remaining : ℕ
  totalCents : ℕ
  pennies : ℕ
  nickels : ℕ
  dimes : ℕ
  quarters : ℕ
  nonQuarter : ℕ
  hMembers : members = 5
  hPrice : pricePerScoop = 300
  hSpent : spent = 300 * members
  hRemaining : remaining = 48
  hTotal : totalCents = spent + remaining
  hPennies : pennies = 123
  hNickels : nickels = 85
  hDimes : dimes = 35
  hNonQuarter : nonQuarter = pennies + 5 * nickels + 10 * dimes
  hCoins : totalCents = nonQuarter + 25 * quarters

theorem coins_spent_and_total (m : CoinJarModel) :
    m.spent = 1500 ∧ m.totalCents = 1548 := by
  cases m <;> simp_all <;> omega

theorem coins_nonquarter (m : CoinJarModel) : m.nonQuarter = 898 := by
  cases m <;> simp_all <;> omega

theorem coins_quarters (m : CoinJarModel) : m.quarters = 26 := by
  have h1 := coins_spent_and_total m
  have h2 := coins_nonquarter m
  cases m <;> simp_all <;> omega

structure PrizeModel where
  total : ℕ
  rica : ℕ
  kept : ℕ
  hRica : 8 * rica = 3 * total
  hKept : 5 * kept = 4 * rica
  hLeft : kept = 300

theorem prize_kept_fraction (m : PrizeModel) : 5 * m.kept = 4 * m.rica := by
  exact m.hKept

theorem prize_rica (m : PrizeModel) : m.rica = 375 := by
  have h := prize_kept_fraction m
  cases m <;> simp_all <;> omega

theorem prize_total (m : PrizeModel) : m.total = 1000 := by
  have h := prize_rica m
  cases m <;> simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A11P1
