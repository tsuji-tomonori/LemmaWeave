import LemmaWeave.Problems.GSM8K.Sprint0923A13Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A13


theorem food_water (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.FoodBankDonation) : m.water = 90 := LemmaWeave.Problems.GSM8K.Sprint0923A13.food_water m
theorem food_hormel (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.FoodBankDonation) : m.hormel = 135 := LemmaWeave.Problems.GSM8K.Sprint0923A13.food_hormel m
theorem food_boudin (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.FoodBankDonation) : m.boudin = 45 := LemmaWeave.Problems.GSM8K.Sprint0923A13.food_boudin m
theorem food_del_monte (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.FoodBankDonation) : m.delMonte = 60 := LemmaWeave.Problems.GSM8K.Sprint0923A13.food_del_monte m
theorem food_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.FoodBankDonation) : m.total = 375 := LemmaWeave.Problems.GSM8K.Sprint0923A13.food_solution m
theorem insurance_premiums (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.PetInsurance) : m.premiums = 480 := LemmaWeave.Problems.GSM8K.Sprint0923A13.insurance_premiums m
theorem insurance_copay (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.PetInsurance) : m.copay = 1000 := LemmaWeave.Problems.GSM8K.Sprint0923A13.insurance_copay m
theorem insurance_paid (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.PetInsurance) : m.paid = 1480 := LemmaWeave.Problems.GSM8K.Sprint0923A13.insurance_paid m
theorem insurance_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.PetInsurance) : m.savings = 3520 := LemmaWeave.Problems.GSM8K.Sprint0923A13.insurance_solution m
theorem pushups_wednesday (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.Pushups) : m.wednesday = 14 := LemmaWeave.Problems.GSM8K.Sprint0923A13.pushups_wednesday m
theorem pushups_first_three (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.Pushups) : m.firstThree = 26 := LemmaWeave.Problems.GSM8K.Sprint0923A13.pushups_first_three m
theorem pushups_thursday (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.Pushups) : m.thursday = 13 := LemmaWeave.Problems.GSM8K.Sprint0923A13.pushups_thursday m
theorem pushups_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.Pushups) : m.friday = 39 := LemmaWeave.Problems.GSM8K.Sprint0923A13.pushups_solution m
theorem eggs_children (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.BreakfastEggs) : m.children = 8 := LemmaWeave.Problems.GSM8K.Sprint0923A13.eggs_children m
theorem eggs_daily (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.BreakfastEggs) : m.familyDaily = 13 := LemmaWeave.Problems.GSM8K.Sprint0923A13.eggs_daily m
theorem eggs_breakfasts (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.BreakfastEggs) : m.breakfasts = 260 := LemmaWeave.Problems.GSM8K.Sprint0923A13.eggs_breakfasts m
theorem eggs_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.BreakfastEggs) : m.total = 3380 := LemmaWeave.Problems.GSM8K.Sprint0923A13.eggs_solution m
theorem fund_ref_year1_base (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.FundReference) : m.year1Base = 2200 := LemmaWeave.Problems.GSM8K.Sprint0923A13.fund_ref_year1_base m
theorem fund_ref_year1_interest (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.FundReference) : m.year1Interest = 220 := LemmaWeave.Problems.GSM8K.Sprint0923A13.fund_ref_year1_interest m
theorem fund_ref_year1_total (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.FundReference) : m.year1Total = 2420 := LemmaWeave.Problems.GSM8K.Sprint0923A13.fund_ref_year1_total m
theorem fund_ref_year2_base (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.FundReference) : m.year2Base = 3620 := LemmaWeave.Problems.GSM8K.Sprint0923A13.fund_ref_year2_base m
theorem fund_ref_year2_interest (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.FundReference) : m.year2Interest = 362 := LemmaWeave.Problems.GSM8K.Sprint0923A13.fund_ref_year2_interest m
theorem fund_reference_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.FundReference) : m.final = 3982 := LemmaWeave.Problems.GSM8K.Sprint0923A13.fund_reference_solution m
theorem fund_end_interest1 (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.FundEndYearDeposits) : m.interest1 = 100 := LemmaWeave.Problems.GSM8K.Sprint0923A13.fund_end_interest1 m
theorem fund_end_year1 (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.FundEndYearDeposits) : m.year1Total = 2300 := LemmaWeave.Problems.GSM8K.Sprint0923A13.fund_end_year1 m
theorem fund_end_interest2 (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.FundEndYearDeposits) : m.interest2 = 230 := LemmaWeave.Problems.GSM8K.Sprint0923A13.fund_end_interest2 m
theorem fund_end_year_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.FundEndYearDeposits) : m.final = 3730 := LemmaWeave.Problems.GSM8K.Sprint0923A13.fund_end_year_solution m
theorem fund_timing_changes_answer : (3982 : ℕ) ≠ 3730 := LemmaWeave.Problems.GSM8K.Sprint0923A13.fund_timing_changes_answer
theorem wizard_books (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.WizardPurchase) : m.booksGold = 25 := LemmaWeave.Problems.GSM8K.Sprint0923A13.wizard_books m
theorem wizard_gold (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.WizardPurchase) : m.goldTotal = 53 := LemmaWeave.Problems.GSM8K.Sprint0923A13.wizard_gold m
theorem wizard_gold_silver (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.WizardPurchase) : m.goldSilver = 477 := LemmaWeave.Problems.GSM8K.Sprint0923A13.wizard_gold_silver m
theorem wizard_kits (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.WizardPurchase) : m.kitsSilver = 60 := LemmaWeave.Problems.GSM8K.Sprint0923A13.wizard_kits m
theorem wizard_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.WizardPurchase) : m.totalSilver = 537 := LemmaWeave.Problems.GSM8K.Sprint0923A13.wizard_solution m
theorem ice_pounds (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.IcePacks) : m.pounds = 30 := LemmaWeave.Problems.GSM8K.Sprint0923A13.ice_pounds m
theorem ice_packs (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.IcePacks) : m.packs = 3 := LemmaWeave.Problems.GSM8K.Sprint0923A13.ice_packs m
theorem ice_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.IcePacks) : m.totalCents = 900 := LemmaWeave.Problems.GSM8K.Sprint0923A13.ice_solution m
theorem stationery_pencils (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.Stationery) : m.pencils = 1200 := LemmaWeave.Problems.GSM8K.Sprint0923A13.stationery_pencils m
theorem stationery_pencil_cost (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.Stationery) : m.pencilCost = 4800 := LemmaWeave.Problems.GSM8K.Sprint0923A13.stationery_pencil_cost m
theorem stationery_pens (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.Stationery) : m.pens = 2700 := LemmaWeave.Problems.GSM8K.Sprint0923A13.stationery_pens m
theorem stationery_pen_cost (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.Stationery) : m.penCost = 13500 := LemmaWeave.Problems.GSM8K.Sprint0923A13.stationery_pen_cost m
theorem stationery_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.Stationery) : m.total = 18300 := LemmaWeave.Problems.GSM8K.Sprint0923A13.stationery_solution m
theorem balls_basketball (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.SportsBalls) : m.basketball = 25 := LemmaWeave.Problems.GSM8K.Sprint0923A13.balls_basketball m
theorem balls_tennis (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.SportsBalls) : m.tennis = 40 := LemmaWeave.Problems.GSM8K.Sprint0923A13.balls_tennis m
theorem balls_baseball (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.SportsBalls) : m.baseball = 30 := LemmaWeave.Problems.GSM8K.Sprint0923A13.balls_baseball m
theorem balls_assigned (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.SportsBalls) : m.assigned = 115 := LemmaWeave.Problems.GSM8K.Sprint0923A13.balls_assigned m
theorem balls_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.SportsBalls) : m.volleyball = 30 := LemmaWeave.Problems.GSM8K.Sprint0923A13.balls_solution m
theorem paint_area (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.PaintCans) : m.coatedArea = 1200 := LemmaWeave.Problems.GSM8K.Sprint0923A13.paint_area m
theorem paint_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.PaintCans) : m.cans = 3 := LemmaWeave.Problems.GSM8K.Sprint0923A13.paint_solution m
theorem lodging_hostel (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.Lodging) : m.hostel = 45 := LemmaWeave.Problems.GSM8K.Sprint0923A13.lodging_hostel m
theorem lodging_group (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.Lodging) : m.cabinGroup = 90 := LemmaWeave.Problems.GSM8K.Sprint0923A13.lodging_group m
theorem lodging_share (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.Lodging) : m.jimmyCabin = 30 := LemmaWeave.Problems.GSM8K.Sprint0923A13.lodging_share m
theorem lodging_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.Lodging) : m.total = 75 := LemmaWeave.Problems.GSM8K.Sprint0923A13.lodging_solution m
theorem coins_pennies (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.CoinSavings) : m.pennies = 200 := LemmaWeave.Problems.GSM8K.Sprint0923A13.coins_pennies m
theorem coins_nickels (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.CoinSavings) : m.nickels = 500 := LemmaWeave.Problems.GSM8K.Sprint0923A13.coins_nickels m
theorem coins_dimes (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.CoinSavings) : m.dimes = 3300 := LemmaWeave.Problems.GSM8K.Sprint0923A13.coins_dimes m
theorem coins_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.CoinSavings) : m.total = 4000 := LemmaWeave.Problems.GSM8K.Sprint0923A13.coins_solution m
theorem candy_remainder (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.CandyPicnic) : m.packetRemainder = 17 := LemmaWeave.Problems.GSM8K.Sprint0923A13.candy_remainder m
theorem candy_caleb (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.CandyPicnic) : m.caleb = 22 := LemmaWeave.Problems.GSM8K.Sprint0923A13.candy_caleb m
theorem candy_andy (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.CandyPicnic) : m.andy = 26 := LemmaWeave.Problems.GSM8K.Sprint0923A13.candy_andy m
theorem candy_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.CandyPicnic) : m.difference = 4 := LemmaWeave.Problems.GSM8K.Sprint0923A13.candy_solution m
theorem commute_total (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.BusCommute) : m.total = 180 := LemmaWeave.Problems.GSM8K.Sprint0923A13.commute_total m
theorem commute_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.BusCommute) : m.remaining = 140 := LemmaWeave.Problems.GSM8K.Sprint0923A13.commute_solution m
theorem blocks_yellow (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.ToyBlocks) : m.yellow = 25 := LemmaWeave.Problems.GSM8K.Sprint0923A13.blocks_yellow m
theorem blocks_blue (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.ToyBlocks) : m.blue = 32 := LemmaWeave.Problems.GSM8K.Sprint0923A13.blocks_blue m
theorem blocks_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A13.ToyBlocks) : m.total = 75 := LemmaWeave.Problems.GSM8K.Sprint0923A13.blocks_solution m

end LemmaWeave.Tests.GSM8KSprint0923A13

#print axioms LemmaWeave.Tests.GSM8KSprint0923A13.food_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A13.insurance_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A13.pushups_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A13.eggs_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A13.fund_reference_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A13.fund_end_year_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A13.fund_timing_changes_answer
#print axioms LemmaWeave.Tests.GSM8KSprint0923A13.wizard_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A13.ice_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A13.stationery_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A13.balls_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A13.paint_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A13.lodging_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A13.coins_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A13.candy_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A13.commute_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A13.blocks_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A13.food_solution to "work/gsm8k-sprint103-food-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A13.insurance_solution to "work/gsm8k-sprint103-insurance-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A13.pushups_solution to "work/gsm8k-sprint103-pushups-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A13.eggs_solution to "work/gsm8k-sprint103-eggs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A13.fund_reference_solution to "work/lw-preserved-LemmaWeave.Tests.GSM8KSprint0923A13.fund_reference_solution-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A13.wizard_solution to "work/gsm8k-sprint103-wizard-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A13.ice_solution to "work/gsm8k-sprint103-ice-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A13.stationery_solution to "work/gsm8k-sprint103-stationery-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A13.balls_solution to "work/gsm8k-sprint103-balls-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A13.paint_solution to "work/gsm8k-sprint103-paint-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A13.lodging_solution to "work/gsm8k-sprint103-lodging-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A13.coins_solution to "work/gsm8k-sprint103-coins-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A13.candy_solution to "work/gsm8k-sprint103-candy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A13.commute_solution to "work/gsm8k-sprint103-commute-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A13.blocks_solution to "work/gsm8k-sprint103-blocks-graph.json"

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A13.fund_timing_changes_answer to "work/gsm8k-sprint103-fund-graph.json"
