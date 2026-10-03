import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0930A16P1

structure BarkModel where
  hushes : ℕ
  terrier : ℕ
  poodle : ℕ
  hHushes : hushes = 6
  hTerrier : terrier = 2 * hushes
  hPoodle : poodle = 2 * terrier

theorem bark_terrier (m : BarkModel) : m.terrier = 12 := by
  cases m <;> omega

theorem bark_poodle (m : BarkModel) : m.poodle = 24 := by
  have h := bark_terrier m
  cases m <;> omega

structure MilkModel where
  largeLiters : ℕ
  smallOneMl : ℕ
  smallTwoMl : ℕ
  smallTotalMl : ℕ
  smallLiters : ℕ
  totalLiters : ℕ
  hLarge : largeLiters = 2
  hSmallOne : smallOneMl = 750
  hSmallTwo : smallTwoMl = 250
  hSmallTotal : smallTotalMl = smallOneMl + smallTwoMl
  hConversion : smallTotalMl = 1000 * smallLiters
  hTotal : totalLiters = largeLiters + smallLiters

theorem milk_small_total (m : MilkModel) : m.smallTotalMl = 1000 := by
  cases m <;> omega

theorem milk_small_liters (m : MilkModel) : m.smallLiters = 1 := by
  have h := milk_small_total m
  cases m <;> omega

theorem milk_total_liters (m : MilkModel) : m.totalLiters = 3 := by
  have h := milk_small_liters m
  cases m <;> omega

structure SuitcaseModel where
  originalPounds : ℕ
  perfumeBottles : ℕ
  perfumeTenthsOzEach : ℕ
  perfumeTenthsOz : ℕ
  soapBars : ℕ
  soapOzEach : ℕ
  soapOz : ℕ
  jamJars : ℕ
  jamOzEach : ℕ
  jamOz : ℕ
  otherOz : ℕ
  otherPounds : ℕ
  chocolatePounds : ℕ
  totalPounds : ℕ
  hOriginal : originalPounds = 5
  hPerfumeBottles : perfumeBottles = 5
  hPerfumeEach : perfumeTenthsOzEach = 12
  hPerfume : perfumeTenthsOz = perfumeBottles * perfumeTenthsOzEach
  hSoapBars : soapBars = 2
  hSoapEach : soapOzEach = 5
  hSoap : soapOz = soapBars * soapOzEach
  hJamJars : jamJars = 2
  hJamEach : jamOzEach = 8
  hJam : jamOz = jamJars * jamOzEach
  hOther : 10 * otherOz = perfumeTenthsOz + 10 * soapOz + 10 * jamOz
  hPounds : otherOz = 16 * otherPounds
  hChocolate : chocolatePounds = 4
  hTotal : totalPounds = originalPounds + chocolatePounds + otherPounds

theorem suitcase_perfume_ounces (m : SuitcaseModel) : m.perfumeTenthsOz = 60 := by
  cases m <;> omega

theorem suitcase_soap_ounces (m : SuitcaseModel) : m.soapOz = 10 := by
  cases m <;> omega

theorem suitcase_jam_ounces (m : SuitcaseModel) : m.jamOz = 16 := by
  cases m <;> omega

theorem suitcase_other_ounces (m : SuitcaseModel) : m.otherOz = 32 := by
  have h1 := suitcase_perfume_ounces m
  have h2 := suitcase_soap_ounces m
  have h3 := suitcase_jam_ounces m
  cases m <;> omega

theorem suitcase_other_pounds (m : SuitcaseModel) : m.otherPounds = 2 := by
  have h := suitcase_other_ounces m
  cases m <;> omega

theorem suitcase_total (m : SuitcaseModel) : m.totalPounds = 11 := by
  have h := suitcase_other_pounds m
  cases m <;> omega

structure RamModel where
  original : ℕ
  increase : ℕ
  raised : ℕ
  decrease : ℕ
  current : ℕ
  hOriginal : original = 50
  hIncreasePercent : 100 * increase = 30 * original
  hRaised : raised = original + increase
  hDecreasePercent : 100 * decrease = 20 * raised
  hCurrent : raised = current + decrease

theorem ram_increase (m : RamModel) : m.increase = 15 := by
  cases m <;> omega

theorem ram_raised_price (m : RamModel) : m.raised = 65 := by
  have h := ram_increase m
  cases m <;> omega

theorem ram_decrease (m : RamModel) : m.decrease = 13 := by
  have h := ram_raised_price m
  cases m <;> omega

theorem ram_current_price (m : RamModel) : m.current = 52 := by
  have h1 := ram_raised_price m
  have h2 := ram_decrease m
  cases m <;> omega

structure PizzaModel where
  price : ℕ
  cheesePizzas : ℕ
  cheesePaid : ℕ
  cheeseCost : ℕ
  meatPizzas : ℕ
  meatPaid : ℕ
  meatCost : ℕ
  totalCost : ℕ
  hPrice : price = 5
  hCheesePizzas : cheesePizzas = 10
  hCheeseSpecial : cheesePizzas = 2 * cheesePaid
  hCheeseCost : cheeseCost = cheesePaid * price
  hMeatPizzas : meatPizzas = 9
  hMeatSpecial : 2 * meatPizzas = 3 * meatPaid
  hMeatCost : meatCost = meatPaid * price
  hTotal : totalCost = cheeseCost + meatCost

theorem pizza_cheese_paid (m : PizzaModel) : m.cheesePaid = 5 := by
  cases m <;> omega

theorem pizza_cheese_cost (m : PizzaModel) : m.cheeseCost = 25 := by
  have h := pizza_cheese_paid m
  cases m <;> omega

theorem pizza_meat_paid (m : PizzaModel) : m.meatPaid = 6 := by
  cases m <;> omega

theorem pizza_meat_cost (m : PizzaModel) : m.meatCost = 30 := by
  have h := pizza_meat_paid m
  cases m <;> omega

theorem pizza_total_cost (m : PizzaModel) : m.totalCost = 55 := by
  have h1 := pizza_cheese_cost m
  have h2 := pizza_meat_cost m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0930A16P1
