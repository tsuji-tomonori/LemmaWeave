import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0930A19P3

structure GeckosModel where
  storeCostDollars : ℕ
  salePriceDollars : ℕ
  profitDollars : ℕ
  hCost : storeCostDollars = 100
  hSale : salePriceDollars = 3 * storeCostDollars + 5
  hProfit : salePriceDollars = storeCostDollars + profitDollars

theorem geckos_sale_price (m : GeckosModel) : m.salePriceDollars = 305 := by
  cases m <;> simp_all at * <;> omega

theorem geckos_profit (m : GeckosModel) : m.profitDollars = 205 := by
  have h := geckos_sale_price m
  cases m <;> simp_all at * <;> omega

structure BakeSaleModel where
  cakeFlourHalfPoundUnits : ℕ
  halfPoundUnitsPerCake : ℕ
  cakes : ℕ
  cupcakeFlourFifthPoundUnits : ℕ
  fifthPoundUnitsPerCupcake : ℕ
  cupcakes : ℕ
  cakePriceCents : ℕ
  cupcakePriceCents : ℕ
  cakeRevenueCents : ℕ
  cupcakeRevenueCents : ℕ
  totalRevenueCents : ℕ
  hCakeFlour : cakeFlourHalfPoundUnits = 8
  hCakeUnit : halfPoundUnitsPerCake = 1
  hCakes : cakeFlourHalfPoundUnits = cakes * halfPoundUnitsPerCake
  hCupcakeFlour : cupcakeFlourFifthPoundUnits = 10
  hCupcakeUnit : fifthPoundUnitsPerCupcake = 1
  hCupcakes : cupcakeFlourFifthPoundUnits = cupcakes * fifthPoundUnitsPerCupcake
  hCakePrice : cakePriceCents = 250
  hCupcakePrice : cupcakePriceCents = 100
  hCakeRevenue : cakeRevenueCents = cakes * cakePriceCents
  hCupcakeRevenue : cupcakeRevenueCents = cupcakes * cupcakePriceCents
  hTotal : totalRevenueCents = cakeRevenueCents + cupcakeRevenueCents

theorem bake_cakes (m : BakeSaleModel) : m.cakes = 8 := by
  cases m <;> simp_all at * <;> omega

theorem bake_cupcakes (m : BakeSaleModel) : m.cupcakes = 10 := by
  cases m <;> simp_all at * <;> omega

theorem bake_cake_revenue (m : BakeSaleModel) : m.cakeRevenueCents = 2000 := by
  have h := bake_cakes m
  cases m <;> simp_all at * <;> omega

theorem bake_total_revenue (m : BakeSaleModel) : m.totalRevenueCents = 3000 := by
  have h1 := bake_cakes m
  have h2 := bake_cupcakes m
  have h3 := bake_cake_revenue m
  cases m <;> simp_all at * <;> omega

structure PayModel where
  hourlyDollars : ℕ
  hours : ℕ
  grossDollars : ℕ
  lateCount : ℕ
  deductionEachDollars : ℕ
  deductionDollars : ℕ
  netDollars : ℕ
  hHourly : hourlyDollars = 30
  hHours : hours = 18
  hGross : grossDollars = hourlyDollars * hours
  hLateCount : lateCount = 3
  hDeductionEach : deductionEachDollars = 5
  hDeduction : deductionDollars = lateCount * deductionEachDollars
  hNet : grossDollars = deductionDollars + netDollars

theorem pay_gross (m : PayModel) : m.grossDollars = 540 := by
  cases m <;> simp_all at * <;> omega

theorem pay_deduction (m : PayModel) : m.deductionDollars = 15 := by
  cases m <;> simp_all at * <;> omega

theorem pay_net (m : PayModel) : m.netDollars = 525 := by
  have h1 := pay_gross m
  have h2 := pay_deduction m
  cases m <;> simp_all at * <;> omega

structure ShoppingModel where
  initialCents : ℕ
  milkRegularCents : ℕ
  milkSaleCents : ℕ
  breadCents : ℕ
  detergentRegularCents : ℕ
  detergentCouponCents : ℕ
  detergentCents : ℕ
  bananaPounds : ℕ
  bananaCentsPerPound : ℕ
  bananaCents : ℕ
  totalCents : ℕ
  leftCents : ℕ
  hInitial : initialCents = 2000
  hMilkRegular : milkRegularCents = 400
  hMilkHalf : milkRegularCents = 2 * milkSaleCents
  hBread : breadCents = 350
  hDetergentRegular : detergentRegularCents = 1025
  hCoupon : detergentCouponCents = 125
  hDetergent : detergentRegularCents = detergentCouponCents + detergentCents
  hBananaPounds : bananaPounds = 2
  hBananaRate : bananaCentsPerPound = 75
  hBananas : bananaCents = bananaPounds * bananaCentsPerPound
  hTotal : totalCents = milkSaleCents + breadCents + detergentCents + bananaCents
  hLeft : initialCents = totalCents + leftCents

theorem shopping_milk (m : ShoppingModel) : m.milkSaleCents = 200 := by
  cases m <;> simp_all at * <;> omega

theorem shopping_detergent (m : ShoppingModel) : m.detergentCents = 900 := by
  cases m <;> simp_all at * <;> omega

theorem shopping_bananas (m : ShoppingModel) : m.bananaCents = 150 := by
  cases m <;> simp_all at * <;> omega

theorem shopping_total (m : ShoppingModel) : m.totalCents = 1600 := by
  have h1 := shopping_milk m
  have h2 := shopping_detergent m
  have h3 := shopping_bananas m
  cases m <;> simp_all at * <;> omega

theorem shopping_left (m : ShoppingModel) : m.leftCents = 400 := by
  have h := shopping_total m
  cases m <;> simp_all at * <;> omega

structure MealsModel where
  regularBurgerCents : ℕ
  regularFriesCents : ℕ
  regularDrinkCents : ℕ
  regularIndividualCents : ℕ
  regularMealCents : ℕ
  regularSavingCents : ℕ
  kidBurgerCents : ℕ
  kidFriesCents : ℕ
  kidDrinkCents : ℕ
  kidIndividualCents : ℕ
  kidMealCents : ℕ
  kidSavingCents : ℕ
  regularMeals : ℕ
  kidMeals : ℕ
  totalSavingCents : ℕ
  hRegularBurger : regularBurgerCents = 500
  hRegularFries : regularFriesCents = 300
  hRegularDrink : regularDrinkCents = 300
  hRegularIndividual : regularIndividualCents =
    regularBurgerCents + regularFriesCents + regularDrinkCents
  hRegularMeal : regularMealCents = 950
  hRegularSaving : regularIndividualCents = regularMealCents + regularSavingCents
  hKidBurger : kidBurgerCents = 300
  hKidFries : kidFriesCents = 200
  hKidDrink : kidDrinkCents = 200
  hKidIndividual : kidIndividualCents = kidBurgerCents + kidFriesCents + kidDrinkCents
  hKidMeal : kidMealCents = 500
  hKidSaving : kidIndividualCents = kidMealCents + kidSavingCents
  hRegularMeals : regularMeals = 4
  hKidMeals : kidMeals = 2
  hTotalSaving : totalSavingCents =
    regularMeals * regularSavingCents + kidMeals * kidSavingCents

theorem meals_regular_individual (m : MealsModel) : m.regularIndividualCents = 1100 := by
  cases m <;> simp_all at * <;> omega

theorem meals_regular_saving (m : MealsModel) : m.regularSavingCents = 150 := by
  have h := meals_regular_individual m
  cases m <;> simp_all at * <;> omega

theorem meals_kid_individual (m : MealsModel) : m.kidIndividualCents = 700 := by
  cases m <;> simp_all at * <;> omega

theorem meals_kid_saving (m : MealsModel) : m.kidSavingCents = 200 := by
  have h := meals_kid_individual m
  cases m <;> simp_all at * <;> omega

theorem meals_total_saving (m : MealsModel) : m.totalSavingCents = 1000 := by
  have h1 := meals_regular_saving m
  have h2 := meals_kid_saving m
  cases m <;> simp_all at * <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0930A19P3
