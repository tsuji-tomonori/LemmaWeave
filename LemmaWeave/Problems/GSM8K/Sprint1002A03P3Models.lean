import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1002A03P3

structure InvestmentModel where
  initial gainOne valueOne gainTwo finalValue : ℕ
  hInitial : initial = 400
  hGainOne : 4 * gainOne = initial
  hValueOne : valueOne = initial + gainOne
  hGainTwo : 2 * gainTwo = valueOne
  hFinal : finalValue = valueOne + gainTwo

theorem first_week_gain (m : InvestmentModel) : m.gainOne = 100 := by cases m <;> omega
theorem first_week_value (m : InvestmentModel) : m.valueOne = 500 := by
  have h := first_week_gain m
  cases m <;> omega
theorem second_week_gain (m : InvestmentModel) : m.gainTwo = 250 := by
  have h := first_week_value m
  cases m <;> omega
theorem ethereum_final_value (m : InvestmentModel) : m.finalValue = 750 := by
  have h1 := first_week_value m
  have h2 := second_week_gain m
  cases m <;> omega

structure ProgramModel where
  bs phd normal actual : ℕ
  hBS : bs = 3
  hPhD : phd = 5
  hNormal : normal = bs + phd
  hThreeQuarters : 4 * actual = 3 * normal

theorem normal_program_years (m : ProgramModel) : m.normal = 8 := by cases m <;> omega
theorem accelerated_program_years (m : ProgramModel) : m.actual = 6 := by
  have h := normal_program_years m
  cases m <;> omega

structure PenModel where
  price has needs : ℕ
  hPrice : price = 30
  hThird : 3 * has = price
  hNeed : has + needs = price

theorem pen_money_available (m : PenModel) : m.has = 10 := by cases m <;> omega
theorem pen_money_needed (m : PenModel) : m.needs = 20 := by
  have h := pen_money_available m
  cases m <;> omega

structure TableModel where
  original paid : ℕ
  hPaid : paid = 450
  hNinetyPercent : 9 * original = 10 * paid

theorem dining_table_original_price (m : TableModel) : m.original = 500 := by cases m <;> omega

structure FruitModel where
  mango apple orange totalKg pricePerKg revenue : ℕ
  hMango : mango = 400
  hApple : apple = 2 * mango
  hOrange : orange = mango + 200
  hTotal : totalKg = apple + mango + orange
  hPrice : pricePerKg = 50
  hRevenue : revenue = pricePerKg * totalKg

theorem apple_kilograms (m : FruitModel) : m.apple = 800 := by cases m <;> omega
theorem orange_kilograms (m : FruitModel) : m.orange = 600 := by cases m <;> omega
theorem total_fruit_kilograms (m : FruitModel) : m.totalKg = 1800 := by
  have h1 := apple_kilograms m
  have h2 := orange_kilograms m
  cases m <;> omega
theorem fruit_sales_revenue (m : FruitModel) : m.revenue = 90000 := by
  have h := total_fruit_kilograms m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1002A03P3
