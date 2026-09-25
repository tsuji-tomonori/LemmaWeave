import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0923A13

structure FoodBankDonation where
  water : ℕ
  hormel : ℕ
  boudin : ℕ
  delMonte : ℕ
  total : ℕ
  hWater : water = 2 * 45
  hHormel : hormel = 3 * 45
  hBoudin : boudin * 3 = hormel
  hDelMonte : delMonte + 30 = water
  hTotal : total = 45 + water + hormel + boudin + delMonte

theorem food_water (m : FoodBankDonation) : m.water = 90 := by rw [m.hWater]
theorem food_hormel (m : FoodBankDonation) : m.hormel = 135 := by rw [m.hHormel]
theorem food_boudin (m : FoodBankDonation) : m.boudin = 45 := by omega
theorem food_del_monte (m : FoodBankDonation) : m.delMonte = 60 := by omega
theorem food_solution (m : FoodBankDonation) : m.total = 375 := by
  rw [m.hTotal, food_water m, food_hormel m, food_boudin m, food_del_monte m]

structure PetInsurance where
  premiums : ℕ
  copay : ℕ
  paid : ℕ
  savings : ℕ
  hPremiums : premiums = 24 * 20
  hCopay : copay * 100 = 5000 * 20
  hPaid : paid = premiums + copay
  hSavings : savings + paid = 5000

theorem insurance_premiums (m : PetInsurance) : m.premiums = 480 := by rw [m.hPremiums]
theorem insurance_copay (m : PetInsurance) : m.copay = 1000 := by omega
theorem insurance_paid (m : PetInsurance) : m.paid = 1480 := by
  rw [m.hPaid, insurance_premiums m, insurance_copay m]
theorem insurance_solution (m : PetInsurance) : m.savings = 3520 := by omega

structure Pushups where
  wednesday : ℕ
  firstThree : ℕ
  thursday : ℕ
  friday : ℕ
  hWednesday : wednesday = 2 * 7
  hFirstThree : firstThree = 5 + 7 + wednesday
  hThursday : thursday * 2 = firstThree
  hFriday : friday = firstThree + thursday

theorem pushups_wednesday (m : Pushups) : m.wednesday = 14 := by rw [m.hWednesday]
theorem pushups_first_three (m : Pushups) : m.firstThree = 26 := by
  rw [m.hFirstThree, pushups_wednesday m]
theorem pushups_thursday (m : Pushups) : m.thursday = 13 := by omega
theorem pushups_solution (m : Pushups) : m.friday = 39 := by
  rw [m.hFriday, pushups_first_three m, pushups_thursday m]

structure BreakfastEggs where
  children : ℕ
  familyDaily : ℕ
  weekdays : ℕ
  breakfasts : ℕ
  total : ℕ
  hChildren : children = 4 * 2
  hDaily : familyDaily = children + 3 + 2
  hWeekdays : weekdays = 5 * 52
  hBreakfasts : breakfasts = weekdays
  hTotal : total = familyDaily * breakfasts

theorem eggs_children (m : BreakfastEggs) : m.children = 8 := by rw [m.hChildren]
theorem eggs_daily (m : BreakfastEggs) : m.familyDaily = 13 := by
  rw [m.hDaily, eggs_children m]
theorem eggs_breakfasts (m : BreakfastEggs) : m.breakfasts = 260 := by
  rw [m.hBreakfasts, m.hWeekdays]
theorem eggs_solution (m : BreakfastEggs) : m.total = 3380 := by
  rw [m.hTotal, eggs_daily m, eggs_breakfasts m]

/-- Reference convention: each year's twelve deposits are all present before that year's interest. -/
structure FundReference where
  year1Base : ℕ
  year1Interest : ℕ
  year1Total : ℕ
  year2Base : ℕ
  year2Interest : ℕ
  final : ℕ
  hYear1Base : year1Base = 1000 + 12 * 100
  hYear1Interest : year1Interest * 10 = year1Base
  hYear1Total : year1Total = year1Base + year1Interest
  hYear2Base : year2Base = year1Total + 12 * 100
  hYear2Interest : year2Interest * 10 = year2Base
  hFinal : final = year2Base + year2Interest

theorem fund_ref_year1_base (m : FundReference) : m.year1Base = 2200 := by rw [m.hYear1Base]
theorem fund_ref_year1_interest (m : FundReference) : m.year1Interest = 220 := by omega
theorem fund_ref_year1_total (m : FundReference) : m.year1Total = 2420 := by
  rw [m.hYear1Total, fund_ref_year1_base m, fund_ref_year1_interest m]
theorem fund_ref_year2_base (m : FundReference) : m.year2Base = 3620 := by
  rw [m.hYear2Base, fund_ref_year1_total m]
theorem fund_ref_year2_interest (m : FundReference) : m.year2Interest = 362 := by omega
theorem fund_reference_solution (m : FundReference) : m.final = 3982 := by
  rw [m.hFinal, fund_ref_year2_base m, fund_ref_year2_interest m]

/-- Counter-reading: each year's twelve deposits arrive after the annual interest posting. -/
structure FundEndYearDeposits where
  interest1 : ℕ
  year1Total : ℕ
  interest2 : ℕ
  final : ℕ
  hInterest1 : interest1 * 10 = 1000
  hYear1 : year1Total = 1000 + interest1 + 12 * 100
  hInterest2 : interest2 * 10 = year1Total
  hFinal : final = year1Total + interest2 + 12 * 100

theorem fund_end_interest1 (m : FundEndYearDeposits) : m.interest1 = 100 := by omega
theorem fund_end_year1 (m : FundEndYearDeposits) : m.year1Total = 2300 := by
  rw [m.hYear1, fund_end_interest1 m]
theorem fund_end_interest2 (m : FundEndYearDeposits) : m.interest2 = 230 := by omega
theorem fund_end_year_solution (m : FundEndYearDeposits) : m.final = 3730 := by
  rw [m.hFinal, fund_end_year1 m, fund_end_interest2 m]
theorem fund_timing_changes_answer : (3982 : ℕ) ≠ 3730 := by norm_num

structure WizardPurchase where
  booksGold : ℕ
  owlGold : ℕ
  goldTotal : ℕ
  goldSilver : ℕ
  kitsSilver : ℕ
  totalSilver : ℕ
  hBooks : booksGold = 5 * 5
  hOwl : owlGold = 28
  hGoldTotal : goldTotal = booksGold + owlGold
  hGoldSilver : goldSilver = goldTotal * 9
  hKits : kitsSilver = 3 * 20
  hTotal : totalSilver = goldSilver + kitsSilver

theorem wizard_books (m : WizardPurchase) : m.booksGold = 25 := by rw [m.hBooks]
theorem wizard_gold (m : WizardPurchase) : m.goldTotal = 53 := by
  rw [m.hGoldTotal, wizard_books m, m.hOwl]
theorem wizard_gold_silver (m : WizardPurchase) : m.goldSilver = 477 := by
  rw [m.hGoldSilver, wizard_gold m]
theorem wizard_kits (m : WizardPurchase) : m.kitsSilver = 60 := by rw [m.hKits]
theorem wizard_solution (m : WizardPurchase) : m.totalSilver = 537 := by
  rw [m.hTotal, wizard_gold_silver m, wizard_kits m]

/-- Each purchased pack contains ten one-pound bags and costs 300 cents. -/
structure IcePacks where
  pounds : ℕ
  packs : ℕ
  totalCents : ℕ
  hPounds : pounds = 15 * 2
  hPacks : packs * 10 = pounds
  hTotal : totalCents = packs * 300

theorem ice_pounds (m : IcePacks) : m.pounds = 30 := by rw [m.hPounds]
theorem ice_packs (m : IcePacks) : m.packs = 3 := by omega
theorem ice_solution (m : IcePacks) : m.totalCents = 900 := by
  rw [m.hTotal, ice_packs m]

structure Stationery where
  pencils : ℕ
  pencilCost : ℕ
  pens : ℕ
  penCost : ℕ
  total : ℕ
  hPencils : pencils = 15 * 80
  hPencilCost : pencilCost = pencils * 4
  hPens : pens = 2 * pencils + 300
  hPenCost : penCost = pens * 5
  hTotal : total = pencilCost + penCost

theorem stationery_pencils (m : Stationery) : m.pencils = 1200 := by rw [m.hPencils]
theorem stationery_pencil_cost (m : Stationery) : m.pencilCost = 4800 := by
  rw [m.hPencilCost, stationery_pencils m]
theorem stationery_pens (m : Stationery) : m.pens = 2700 := by
  rw [m.hPens, stationery_pencils m]
theorem stationery_pen_cost (m : Stationery) : m.penCost = 13500 := by
  rw [m.hPenCost, stationery_pens m]
theorem stationery_solution (m : Stationery) : m.total = 18300 := by
  rw [m.hTotal, stationery_pencil_cost m, stationery_pen_cost m]

structure SportsBalls where
  basketball : ℕ
  tennis : ℕ
  baseball : ℕ
  assigned : ℕ
  volleyball : ℕ
  hBasketball : basketball = 20 + 5
  hTennis : tennis = 2 * 20
  hBaseball : baseball = 20 + 10
  hAssigned : assigned = 20 + basketball + tennis + baseball
  hVolleyball : volleyball + assigned = 145

theorem balls_basketball (m : SportsBalls) : m.basketball = 25 := by rw [m.hBasketball]
theorem balls_tennis (m : SportsBalls) : m.tennis = 40 := by rw [m.hTennis]
theorem balls_baseball (m : SportsBalls) : m.baseball = 30 := by rw [m.hBaseball]
theorem balls_assigned (m : SportsBalls) : m.assigned = 115 := by
  rw [m.hAssigned, balls_basketball m, balls_tennis m, balls_baseball m]
theorem balls_solution (m : SportsBalls) : m.volleyball = 30 := by omega

structure PaintCans where
  coatedArea : ℕ
  cans : ℕ
  hArea : coatedArea = 2 * 600
  hCans : cans * 400 = coatedArea

theorem paint_area (m : PaintCans) : m.coatedArea = 1200 := by rw [m.hArea]
theorem paint_solution (m : PaintCans) : m.cans = 3 := by omega

structure Lodging where
  hostel : ℕ
  cabinGroup : ℕ
  jimmyCabin : ℕ
  total : ℕ
  hHostel : hostel = 3 * 15
  hCabinGroup : cabinGroup = 2 * 45
  hShare : jimmyCabin * 3 = cabinGroup
  hTotal : total = hostel + jimmyCabin

theorem lodging_hostel (m : Lodging) : m.hostel = 45 := by rw [m.hHostel]
theorem lodging_group (m : Lodging) : m.cabinGroup = 90 := by rw [m.hCabinGroup]
theorem lodging_share (m : Lodging) : m.jimmyCabin = 30 := by omega
theorem lodging_solution (m : Lodging) : m.total = 75 := by
  rw [m.hTotal, lodging_hostel m, lodging_share m]

/-- All amounts are represented in cents. -/
structure CoinSavings where
  pennies : ℕ
  nickels : ℕ
  dimes : ℕ
  total : ℕ
  hPennies : pennies = 200
  hNickels : nickels = 100 * 5
  hDimes : dimes = 330 * 10
  hTotal : total = pennies + nickels + dimes

theorem coins_pennies (m : CoinSavings) : m.pennies = 200 := m.hPennies
theorem coins_nickels (m : CoinSavings) : m.nickels = 500 := by rw [m.hNickels]
theorem coins_dimes (m : CoinSavings) : m.dimes = 3300 := by rw [m.hDimes]
theorem coins_solution (m : CoinSavings) : m.total = 4000 := by
  rw [m.hTotal, coins_pennies m, coins_nickels m, coins_dimes m]

structure CandyPicnic where
  packetRemainder : ℕ
  caleb : ℕ
  andy : ℕ
  difference : ℕ
  hRemainder : packetRemainder + 8 + 11 = 36
  hCaleb : caleb = 11 + 11
  hAndy : andy = 9 + packetRemainder
  hDifference : caleb + difference = andy

theorem candy_remainder (m : CandyPicnic) : m.packetRemainder = 17 := by omega
theorem candy_caleb (m : CandyPicnic) : m.caleb = 22 := by rw [m.hCaleb]
theorem candy_andy (m : CandyPicnic) : m.andy = 26 := by
  rw [m.hAndy, candy_remainder m]
theorem candy_solution (m : CandyPicnic) : m.difference = 4 := by omega

structure BusCommute where
  total : ℕ
  firstLeg : ℕ
  remaining : ℕ
  hTotal : total = (9 - 6) * 60
  hFirst : firstLeg = 40
  hRemaining : remaining + firstLeg = total

theorem commute_total (m : BusCommute) : m.total = 180 := by rw [m.hTotal]
theorem commute_solution (m : BusCommute) : m.remaining = 140 := by omega

structure ToyBlocks where
  yellow : ℕ
  blue : ℕ
  total : ℕ
  hYellow : yellow = 18 + 7
  hBlue : blue = 18 + 14
  hTotal : total = 18 + yellow + blue

theorem blocks_yellow (m : ToyBlocks) : m.yellow = 25 := by rw [m.hYellow]
theorem blocks_blue (m : ToyBlocks) : m.blue = 32 := by rw [m.hBlue]
theorem blocks_solution (m : ToyBlocks) : m.total = 75 := by
  rw [m.hTotal, blocks_yellow m, blocks_blue m]

end LemmaWeave.Problems.GSM8K.Sprint0923A13
