import LemmaWeave.Problems.GSM8K.Sprint0923A14Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A14
namespace P := LemmaWeave.Problems.GSM8K.Sprint0923A14

theorem weight_elephant (m : P.AnimalWeight) : m.elephant = 6000 := P.weight_elephant m
theorem weight_donkey (m : P.AnimalWeight) : m.donkey = 600 := P.weight_donkey m
theorem weight_solution (m : P.AnimalWeight) : m.combined = 6600 := P.weight_solution m
theorem nickels_randi (m : P.NickelGift) : m.randiCents = 50 := P.nickels_randi m
theorem nickels_remaining_cents (m : P.NickelGift) : m.remainingCents = 20 := P.nickels_remaining_cents m
theorem nickels_solution (m : P.NickelGift) : m.nickels = 4 := P.nickels_solution m
theorem trades_dime_paid (m : P.QuarterTrades) : m.dimePaid = 30 := P.trades_dime_paid m
theorem trades_nickel_paid (m : P.QuarterTrades) : m.nickelPaid = 35 := P.trades_nickel_paid m
theorem trades_dime_loss (m : P.QuarterTrades) : m.dimeLoss = 100 := P.trades_dime_loss m
theorem trades_nickel_loss (m : P.QuarterTrades) : m.nickelLoss = 200 := P.trades_nickel_loss m
theorem trades_solution (m : P.QuarterTrades) : m.totalLoss = 300 := P.trades_solution m
theorem trucks_red (m : P.WhiteTruckVehicleSample) : m.red = 25 := P.trucks_red m
theorem trucks_black (m : P.WhiteTruckVehicleSample) : m.black = 10 := P.trucks_black m
theorem trucks_white (m : P.WhiteTruckVehicleSample) : m.white = 15 := P.trucks_white m
theorem trucks_fraction_bounds (m : P.WhiteTruckVehicleSample) :
    33 * 90 < 2 * (m.white * 100) ∧ m.white * 100 < 17 * 90 := P.trucks_fraction_bounds m
theorem trucks_reference_solution (m : P.WhiteTruckVehicleSample) :
    (m.white * 100 + 90 / 2) / 90 = 17 := P.trucks_reference_solution m
theorem trucks_passenger_car_sample_probability_zero (m : P.WhiteTruckPassengerCarSample) :
    m.eligibleWhiteTrucks = 0 := P.trucks_passenger_car_sample_probability_zero m
theorem trucks_sampling_readings_differ : (17 : ℕ) ≠ 0 := P.trucks_sampling_readings_differ
theorem fuel_mpg (m : P.FuelTrip) : m.mpg = 10 := P.fuel_mpg m
theorem fuel_solution (m : P.FuelTrip) : m.gallons = 30 := P.fuel_solution m
theorem hats_total (m : P.BirthdayHats) : m.total = 45 := P.hats_total m
theorem hats_usable (m : P.BirthdayHats) : m.usable = 40 := P.hats_usable m
theorem hats_solution (m : P.BirthdayHats) : m.unused = 15 := P.hats_solution m
theorem cds_unit_sum (m : P.CdPurchase) : m.unitSum = 25 := P.cds_unit_sum m
theorem cds_total (m : P.CdPurchase) : m.total = 100 := P.cds_total m
theorem cds_solution (m : P.CdPurchase) : m.short = 25 := P.cds_solution m
theorem dinner_bob_discount (m : P.DinnerDiscount) : m.bobDiscount = 150 := P.dinner_bob_discount m
theorem dinner_bob_pay (m : P.DinnerDiscount) : m.bobPay = 2850 := P.dinner_bob_pay m
theorem dinner_kate_discount (m : P.DinnerDiscount) : m.kateDiscount = 50 := P.dinner_kate_discount m
theorem dinner_kate_pay (m : P.DinnerDiscount) : m.katePay = 2450 := P.dinner_kate_pay m
theorem dinner_solution (m : P.DinnerDiscount) : m.total = 5300 := P.dinner_solution m
theorem juice_initial (m : P.JuiceBottles) : m.initial = 8 := P.juice_initial m
theorem juice_after_buy (m : P.JuiceBottles) : m.afterBuy = 13 := P.juice_after_buy m
theorem juice_solution (m : P.JuiceBottles) : m.left = 10 := P.juice_solution m
theorem roses_tuesday (m : P.RoseSale) : m.tuesday = 36 := P.roses_tuesday m
theorem roses_wednesday (m : P.RoseSale) : m.wednesday = 12 := P.roses_wednesday m
theorem roses_solution (m : P.RoseSale) : m.total = 60 := P.roses_solution m
theorem museums_first (m : P.MuseumTrips) : m.firstRound = 10 := P.museums_first m
theorem museums_second (m : P.MuseumTrips) : m.secondRound = 30 := P.museums_second m
theorem museums_solution (m : P.MuseumTrips) : m.total = 40 := P.museums_solution m
theorem seed_lawn (m : P.GrassSeed) : m.lawn = 792 := P.seed_lawn m
theorem seed_capacity (m : P.GrassSeed) : m.capacity = 1000 := P.seed_capacity m
theorem seed_solution (m : P.GrassSeed) : m.leftover = 208 := P.seed_solution m
theorem garden_tomato_rows (m : P.GardenRows) : m.tomatoRows = 5 := P.garden_tomato_rows m
theorem garden_cucumber_rows (m : P.GardenRows) : m.cucumberRows = 10 := P.garden_cucumber_rows m
theorem garden_plants (m : P.GardenRows) : m.tomatoPlants = 40 := P.garden_plants m
theorem garden_solution (m : P.GardenRows) : m.tomatoes = 120 := P.garden_solution m
theorem kangaroo_gap (m : P.KangarooGrowth) : m.gap = 80 := P.kangaroo_gap m
theorem kangaroo_solution (m : P.KangarooGrowth) : m.days = 40 := P.kangaroo_solution m
theorem shirts_middle_days (m : P.VacationShirts) : m.middleDays = 5 := P.shirts_middle_days m
theorem shirts_middle (m : P.VacationShirts) : m.middleShirts = 10 := P.shirts_middle m
theorem shirts_solution (m : P.VacationShirts) : m.total = 11 := P.shirts_solution m

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
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A14.trucks_reference_solution to "work/gsm8k-sprint104-trucks-graph.json"
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
