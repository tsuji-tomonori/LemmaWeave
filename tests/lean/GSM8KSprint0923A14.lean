import LemmaWeave.Problems.GSM8K.Sprint0923A14Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A14


theorem weight_elephant (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.AnimalWeight) : m.elephant = 6000 := LemmaWeave.Problems.GSM8K.Sprint0923A14.weight_elephant m
theorem weight_donkey (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.AnimalWeight) : m.donkey = 600 := LemmaWeave.Problems.GSM8K.Sprint0923A14.weight_donkey m
theorem weight_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.AnimalWeight) : m.combined = 6600 := LemmaWeave.Problems.GSM8K.Sprint0923A14.weight_solution m
theorem nickels_randi (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.NickelGift) : m.randiCents = 50 := LemmaWeave.Problems.GSM8K.Sprint0923A14.nickels_randi m
theorem nickels_remaining_cents (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.NickelGift) : m.remainingCents = 20 := LemmaWeave.Problems.GSM8K.Sprint0923A14.nickels_remaining_cents m
theorem nickels_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.NickelGift) : m.nickels = 4 := LemmaWeave.Problems.GSM8K.Sprint0923A14.nickels_solution m
theorem trades_dime_paid (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.QuarterTrades) : m.dimePaid = 30 := LemmaWeave.Problems.GSM8K.Sprint0923A14.trades_dime_paid m
theorem trades_nickel_paid (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.QuarterTrades) : m.nickelPaid = 35 := LemmaWeave.Problems.GSM8K.Sprint0923A14.trades_nickel_paid m
theorem trades_dime_loss (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.QuarterTrades) : m.dimeLoss = 100 := LemmaWeave.Problems.GSM8K.Sprint0923A14.trades_dime_loss m
theorem trades_nickel_loss (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.QuarterTrades) : m.nickelLoss = 200 := LemmaWeave.Problems.GSM8K.Sprint0923A14.trades_nickel_loss m
theorem trades_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.QuarterTrades) : m.totalLoss = 300 := LemmaWeave.Problems.GSM8K.Sprint0923A14.trades_solution m
theorem trucks_red (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.WhiteTruckVehicleSample) : m.red = 25 := LemmaWeave.Problems.GSM8K.Sprint0923A14.trucks_red m
theorem trucks_black (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.WhiteTruckVehicleSample) : m.black = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A14.trucks_black m
theorem trucks_white (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.WhiteTruckVehicleSample) : m.white = 15 := LemmaWeave.Problems.GSM8K.Sprint0923A14.trucks_white m
theorem trucks_fraction_bounds (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.WhiteTruckVehicleSample) :
    33 * 90 < 2 * (m.white * 100) ∧ m.white * 100 < 17 * 90 := LemmaWeave.Problems.GSM8K.Sprint0923A14.trucks_fraction_bounds m
theorem trucks_reference_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.WhiteTruckVehicleSample) :
    (m.white * 100 + 90 / 2) / 90 = 17 := LemmaWeave.Problems.GSM8K.Sprint0923A14.trucks_reference_solution m
theorem trucks_passenger_car_sample_probability_zero (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.WhiteTruckPassengerCarSample) :
    m.eligibleWhiteTrucks = 0 := LemmaWeave.Problems.GSM8K.Sprint0923A14.trucks_passenger_car_sample_probability_zero m
theorem trucks_sampling_readings_differ : (17 : ℕ) ≠ 0 := LemmaWeave.Problems.GSM8K.Sprint0923A14.trucks_sampling_readings_differ
theorem fuel_mpg (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.FuelTrip) : m.mpg = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A14.fuel_mpg m
theorem fuel_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.FuelTrip) : m.gallons = 30 := LemmaWeave.Problems.GSM8K.Sprint0923A14.fuel_solution m
theorem hats_total (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.BirthdayHats) : m.total = 45 := LemmaWeave.Problems.GSM8K.Sprint0923A14.hats_total m
theorem hats_usable (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.BirthdayHats) : m.usable = 40 := LemmaWeave.Problems.GSM8K.Sprint0923A14.hats_usable m
theorem hats_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.BirthdayHats) : m.unused = 15 := LemmaWeave.Problems.GSM8K.Sprint0923A14.hats_solution m
theorem cds_unit_sum (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.CdPurchase) : m.unitSum = 25 := LemmaWeave.Problems.GSM8K.Sprint0923A14.cds_unit_sum m
theorem cds_total (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.CdPurchase) : m.total = 100 := LemmaWeave.Problems.GSM8K.Sprint0923A14.cds_total m
theorem cds_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.CdPurchase) : m.short = 25 := LemmaWeave.Problems.GSM8K.Sprint0923A14.cds_solution m
theorem dinner_bob_discount (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.DinnerDiscount) : m.bobDiscount = 150 := LemmaWeave.Problems.GSM8K.Sprint0923A14.dinner_bob_discount m
theorem dinner_bob_pay (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.DinnerDiscount) : m.bobPay = 2850 := LemmaWeave.Problems.GSM8K.Sprint0923A14.dinner_bob_pay m
theorem dinner_kate_discount (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.DinnerDiscount) : m.kateDiscount = 50 := LemmaWeave.Problems.GSM8K.Sprint0923A14.dinner_kate_discount m
theorem dinner_kate_pay (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.DinnerDiscount) : m.katePay = 2450 := LemmaWeave.Problems.GSM8K.Sprint0923A14.dinner_kate_pay m
theorem dinner_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.DinnerDiscount) : m.total = 5300 := LemmaWeave.Problems.GSM8K.Sprint0923A14.dinner_solution m
theorem juice_initial (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.JuiceBottles) : m.initial = 8 := LemmaWeave.Problems.GSM8K.Sprint0923A14.juice_initial m
theorem juice_after_buy (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.JuiceBottles) : m.afterBuy = 13 := LemmaWeave.Problems.GSM8K.Sprint0923A14.juice_after_buy m
theorem juice_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.JuiceBottles) : m.left = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A14.juice_solution m
theorem roses_tuesday (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.RoseSale) : m.tuesday = 36 := LemmaWeave.Problems.GSM8K.Sprint0923A14.roses_tuesday m
theorem roses_wednesday (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.RoseSale) : m.wednesday = 12 := LemmaWeave.Problems.GSM8K.Sprint0923A14.roses_wednesday m
theorem roses_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.RoseSale) : m.total = 60 := LemmaWeave.Problems.GSM8K.Sprint0923A14.roses_solution m
theorem museums_first (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.MuseumTrips) : m.firstRound = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A14.museums_first m
theorem museums_second (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.MuseumTrips) : m.secondRound = 30 := LemmaWeave.Problems.GSM8K.Sprint0923A14.museums_second m
theorem museums_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.MuseumTrips) : m.total = 40 := LemmaWeave.Problems.GSM8K.Sprint0923A14.museums_solution m
theorem seed_lawn (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.GrassSeed) : m.lawn = 792 := LemmaWeave.Problems.GSM8K.Sprint0923A14.seed_lawn m
theorem seed_capacity (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.GrassSeed) : m.capacity = 1000 := LemmaWeave.Problems.GSM8K.Sprint0923A14.seed_capacity m
theorem seed_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.GrassSeed) : m.leftover = 208 := LemmaWeave.Problems.GSM8K.Sprint0923A14.seed_solution m
theorem garden_tomato_rows (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.GardenRows) : m.tomatoRows = 5 := LemmaWeave.Problems.GSM8K.Sprint0923A14.garden_tomato_rows m
theorem garden_cucumber_rows (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.GardenRows) : m.cucumberRows = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A14.garden_cucumber_rows m
theorem garden_plants (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.GardenRows) : m.tomatoPlants = 40 := LemmaWeave.Problems.GSM8K.Sprint0923A14.garden_plants m
theorem garden_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.GardenRows) : m.tomatoes = 120 := LemmaWeave.Problems.GSM8K.Sprint0923A14.garden_solution m
theorem kangaroo_gap (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.KangarooGrowth) : m.gap = 80 := LemmaWeave.Problems.GSM8K.Sprint0923A14.kangaroo_gap m
theorem kangaroo_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.KangarooGrowth) : m.days = 40 := LemmaWeave.Problems.GSM8K.Sprint0923A14.kangaroo_solution m
theorem shirts_middle_days (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.VacationShirts) : m.middleDays = 5 := LemmaWeave.Problems.GSM8K.Sprint0923A14.shirts_middle_days m
theorem shirts_middle (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.VacationShirts) : m.middleShirts = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A14.shirts_middle m
theorem shirts_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A14.VacationShirts) : m.total = 11 := LemmaWeave.Problems.GSM8K.Sprint0923A14.shirts_solution m

end LemmaWeave.Tests.GSM8KSprint0923A14

#print axioms LemmaWeave.Tests.GSM8KSprint0923A14.weight_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A14.nickels_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A14.trades_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A14.trucks_reference_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A14.trucks_passenger_car_sample_probability_zero
#print axioms LemmaWeave.Tests.GSM8KSprint0923A14.trucks_sampling_readings_differ
#print axioms LemmaWeave.Tests.GSM8KSprint0923A14.fuel_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A14.hats_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A14.cds_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A14.dinner_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A14.juice_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A14.roses_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A14.museums_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A14.seed_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A14.garden_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A14.kangaroo_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A14.shirts_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A14.weight_solution to "work/gsm8k-sprint104-weight-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A14.nickels_solution to "work/gsm8k-sprint104-nickels-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A14.trades_solution to "work/gsm8k-sprint104-trades-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A14.trucks_reference_solution to "work/lw-preserved-LemmaWeave.Tests.GSM8KSprint0923A14.trucks_reference_solution-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A14.fuel_solution to "work/gsm8k-sprint104-fuel-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A14.hats_solution to "work/gsm8k-sprint104-hats-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A14.cds_solution to "work/gsm8k-sprint104-cds-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A14.dinner_solution to "work/gsm8k-sprint104-dinner-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A14.juice_solution to "work/gsm8k-sprint104-juice-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A14.roses_solution to "work/gsm8k-sprint104-roses-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A14.museums_solution to "work/gsm8k-sprint104-museums-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A14.seed_solution to "work/gsm8k-sprint104-seed-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A14.garden_solution to "work/gsm8k-sprint104-garden-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A14.kangaroo_solution to "work/gsm8k-sprint104-kangaroo-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A14.shirts_solution to "work/gsm8k-sprint104-shirts-graph.json"

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A14.trucks_sampling_readings_differ to "work/gsm8k-sprint104-trucks-graph.json"
