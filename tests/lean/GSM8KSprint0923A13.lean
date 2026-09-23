import LemmaWeave.Problems.GSM8K.Sprint0923A13Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A13
namespace P := LemmaWeave.Problems.GSM8K.Sprint0923A13

theorem food_water (m : P.FoodBankDonation) : m.water = 90 := P.food_water m
theorem food_hormel (m : P.FoodBankDonation) : m.hormel = 135 := P.food_hormel m
theorem food_boudin (m : P.FoodBankDonation) : m.boudin = 45 := P.food_boudin m
theorem food_del_monte (m : P.FoodBankDonation) : m.delMonte = 60 := P.food_del_monte m
theorem food_solution (m : P.FoodBankDonation) : m.total = 375 := P.food_solution m
theorem insurance_premiums (m : P.PetInsurance) : m.premiums = 480 := P.insurance_premiums m
theorem insurance_copay (m : P.PetInsurance) : m.copay = 1000 := P.insurance_copay m
theorem insurance_paid (m : P.PetInsurance) : m.paid = 1480 := P.insurance_paid m
theorem insurance_solution (m : P.PetInsurance) : m.savings = 3520 := P.insurance_solution m
theorem pushups_wednesday (m : P.Pushups) : m.wednesday = 14 := P.pushups_wednesday m
theorem pushups_first_three (m : P.Pushups) : m.firstThree = 26 := P.pushups_first_three m
theorem pushups_thursday (m : P.Pushups) : m.thursday = 13 := P.pushups_thursday m
theorem pushups_solution (m : P.Pushups) : m.friday = 39 := P.pushups_solution m
theorem eggs_children (m : P.BreakfastEggs) : m.children = 8 := P.eggs_children m
theorem eggs_daily (m : P.BreakfastEggs) : m.familyDaily = 13 := P.eggs_daily m
theorem eggs_breakfasts (m : P.BreakfastEggs) : m.breakfasts = 260 := P.eggs_breakfasts m
theorem eggs_solution (m : P.BreakfastEggs) : m.total = 3380 := P.eggs_solution m
theorem fund_ref_year1_base (m : P.FundReference) : m.year1Base = 2200 := P.fund_ref_year1_base m
theorem fund_ref_year1_interest (m : P.FundReference) : m.year1Interest = 220 := P.fund_ref_year1_interest m
theorem fund_ref_year1_total (m : P.FundReference) : m.year1Total = 2420 := P.fund_ref_year1_total m
theorem fund_ref_year2_base (m : P.FundReference) : m.year2Base = 3620 := P.fund_ref_year2_base m
theorem fund_ref_year2_interest (m : P.FundReference) : m.year2Interest = 362 := P.fund_ref_year2_interest m
theorem fund_reference_solution (m : P.FundReference) : m.final = 3982 := P.fund_reference_solution m
theorem fund_end_interest1 (m : P.FundEndYearDeposits) : m.interest1 = 100 := P.fund_end_interest1 m
theorem fund_end_year1 (m : P.FundEndYearDeposits) : m.year1Total = 2300 := P.fund_end_year1 m
theorem fund_end_interest2 (m : P.FundEndYearDeposits) : m.interest2 = 230 := P.fund_end_interest2 m
theorem fund_end_year_solution (m : P.FundEndYearDeposits) : m.final = 3730 := P.fund_end_year_solution m
theorem fund_timing_changes_answer : (3982 : ℕ) ≠ 3730 := P.fund_timing_changes_answer
theorem wizard_books (m : P.WizardPurchase) : m.booksGold = 25 := P.wizard_books m
theorem wizard_gold (m : P.WizardPurchase) : m.goldTotal = 53 := P.wizard_gold m
theorem wizard_gold_silver (m : P.WizardPurchase) : m.goldSilver = 477 := P.wizard_gold_silver m
theorem wizard_kits (m : P.WizardPurchase) : m.kitsSilver = 60 := P.wizard_kits m
theorem wizard_solution (m : P.WizardPurchase) : m.totalSilver = 537 := P.wizard_solution m
theorem ice_pounds (m : P.IcePacks) : m.pounds = 30 := P.ice_pounds m
theorem ice_packs (m : P.IcePacks) : m.packs = 3 := P.ice_packs m
theorem ice_solution (m : P.IcePacks) : m.totalCents = 900 := P.ice_solution m
theorem stationery_pencils (m : P.Stationery) : m.pencils = 1200 := P.stationery_pencils m
theorem stationery_pencil_cost (m : P.Stationery) : m.pencilCost = 4800 := P.stationery_pencil_cost m
theorem stationery_pens (m : P.Stationery) : m.pens = 2700 := P.stationery_pens m
theorem stationery_pen_cost (m : P.Stationery) : m.penCost = 13500 := P.stationery_pen_cost m
theorem stationery_solution (m : P.Stationery) : m.total = 18300 := P.stationery_solution m
theorem balls_basketball (m : P.SportsBalls) : m.basketball = 25 := P.balls_basketball m
theorem balls_tennis (m : P.SportsBalls) : m.tennis = 40 := P.balls_tennis m
theorem balls_baseball (m : P.SportsBalls) : m.baseball = 30 := P.balls_baseball m
theorem balls_assigned (m : P.SportsBalls) : m.assigned = 115 := P.balls_assigned m
theorem balls_solution (m : P.SportsBalls) : m.volleyball = 30 := P.balls_solution m
theorem paint_area (m : P.PaintCans) : m.coatedArea = 1200 := P.paint_area m
theorem paint_solution (m : P.PaintCans) : m.cans = 3 := P.paint_solution m
theorem lodging_hostel (m : P.Lodging) : m.hostel = 45 := P.lodging_hostel m
theorem lodging_group (m : P.Lodging) : m.cabinGroup = 90 := P.lodging_group m
theorem lodging_share (m : P.Lodging) : m.jimmyCabin = 30 := P.lodging_share m
theorem lodging_solution (m : P.Lodging) : m.total = 75 := P.lodging_solution m
theorem coins_pennies (m : P.CoinSavings) : m.pennies = 200 := P.coins_pennies m
theorem coins_nickels (m : P.CoinSavings) : m.nickels = 500 := P.coins_nickels m
theorem coins_dimes (m : P.CoinSavings) : m.dimes = 3300 := P.coins_dimes m
theorem coins_solution (m : P.CoinSavings) : m.total = 4000 := P.coins_solution m
theorem candy_remainder (m : P.CandyPicnic) : m.packetRemainder = 17 := P.candy_remainder m
theorem candy_caleb (m : P.CandyPicnic) : m.caleb = 22 := P.candy_caleb m
theorem candy_andy (m : P.CandyPicnic) : m.andy = 26 := P.candy_andy m
theorem candy_solution (m : P.CandyPicnic) : m.difference = 4 := P.candy_solution m
theorem commute_total (m : P.BusCommute) : m.total = 180 := P.commute_total m
theorem commute_solution (m : P.BusCommute) : m.remaining = 140 := P.commute_solution m
theorem blocks_yellow (m : P.ToyBlocks) : m.yellow = 25 := P.blocks_yellow m
theorem blocks_blue (m : P.ToyBlocks) : m.blue = 32 := P.blocks_blue m
theorem blocks_solution (m : P.ToyBlocks) : m.total = 75 := P.blocks_solution m

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
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A13.fund_reference_solution to "work/gsm8k-sprint103-fund-graph.json"
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
