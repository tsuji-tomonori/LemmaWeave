import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0923A14

structure AnimalWeight where elephant donkey combined : ℕ
  hElephant : elephant = 3 * 2000
  hDonkey : donkey * 10 = elephant
  hCombined : combined = elephant + donkey

theorem weight_elephant (m : AnimalWeight) : m.elephant = 6000 := by rw [m.hElephant]
theorem weight_donkey (m : AnimalWeight) : m.donkey = 600 := by omega
theorem weight_solution (m : AnimalWeight) : m.combined = 6600 := by
  rw [m.hCombined, weight_elephant m, weight_donkey m]

structure NickelGift where randiCents remainingCents nickels : ℕ
  hRandi : randiCents = 2 * 25
  hRemaining : remainingCents + 25 + randiCents = 95
  hNickels : nickels * 5 = remainingCents

theorem nickels_randi (m : NickelGift) : m.randiCents = 50 := by rw [m.hRandi]
theorem nickels_remaining_cents (m : NickelGift) : m.remainingCents = 20 := by omega
theorem nickels_solution (m : NickelGift) : m.nickels = 4 := by omega

/-- All monetary values are represented in cents. -/
structure QuarterTrades where dimePaid nickelPaid dimeLoss nickelLoss totalLoss : ℕ
  hDimePaid : dimePaid = 3 * 10
  hNickelPaid : nickelPaid = 7 * 5
  hDimeLoss : dimeLoss = 20 * (dimePaid - 25)
  hNickelLoss : nickelLoss = 20 * (nickelPaid - 25)
  hTotal : totalLoss = dimeLoss + nickelLoss

theorem trades_dime_paid (m : QuarterTrades) : m.dimePaid = 30 := by rw [m.hDimePaid]
theorem trades_nickel_paid (m : QuarterTrades) : m.nickelPaid = 35 := by rw [m.hNickelPaid]
theorem trades_dime_loss (m : QuarterTrades) : m.dimeLoss = 100 := by
  rw [m.hDimeLoss, trades_dime_paid m]
theorem trades_nickel_loss (m : QuarterTrades) : m.nickelLoss = 200 := by
  rw [m.hNickelLoss, trades_nickel_paid m]
theorem trades_solution (m : QuarterTrades) : m.totalLoss = 300 := by
  rw [m.hTotal, trades_dime_loss m, trades_nickel_loss m]

/-- Reference reading: “one car” means one of all 90 counted vehicles. -/
structure WhiteTruckVehicleSample where red black white : ℕ
  hRed : red * 2 = 50
  hBlack : black * 100 = 50 * 20
  hWhite : white + red + black = 50

theorem trucks_red (m : WhiteTruckVehicleSample) : m.red = 25 := by omega
theorem trucks_black (m : WhiteTruckVehicleSample) : m.black = 10 := by omega
theorem trucks_white (m : WhiteTruckVehicleSample) : m.white = 15 := by omega
theorem trucks_fraction_bounds (m : WhiteTruckVehicleSample) :
    33 * 90 < 2 * (m.white * 100) ∧ m.white * 100 < 17 * 90 := by
  rw [trucks_white m]
  norm_num
theorem trucks_reference_solution (m : WhiteTruckVehicleSample) :
    (m.white * 100 + 90 / 2) / 90 = 17 := by
  rw [trucks_white m]
  norm_num

/-- Strict vehicle-class reading: sampling only among passenger cars cannot select a truck. -/
structure WhiteTruckPassengerCarSample where eligibleWhiteTrucks : ℕ
  hEligible : eligibleWhiteTrucks = 0

theorem trucks_passenger_car_sample_probability_zero (m : WhiteTruckPassengerCarSample) :
    m.eligibleWhiteTrucks = 0 := m.hEligible
theorem trucks_sampling_readings_differ : (17 : ℕ) ≠ 0 := by norm_num

structure FuelTrip where mpg gallons : ℕ
  hMpg : mpg * 2 = 20
  hTrip : gallons * mpg = 300

theorem fuel_mpg (m : FuelTrip) : m.mpg = 10 := by omega
theorem fuel_solution (m : FuelTrip) : m.gallons = 30 := by omega

structure BirthdayHats where total usable unused : ℕ
  hTotal : total = 3 * 15
  hUsable : usable + 5 = total
  hUnused : unused + 25 = usable

theorem hats_total (m : BirthdayHats) : m.total = 45 := by rw [m.hTotal]
theorem hats_usable (m : BirthdayHats) : m.usable = 40 := by omega
theorem hats_solution (m : BirthdayHats) : m.unused = 15 := by omega

structure CdPurchase where unitSum total short : ℕ
  hUnitSum : unitSum = 5 + 10 + 3 + 7
  hTotal : total = 4 * unitSum
  hShort : short + 75 = total

theorem cds_unit_sum (m : CdPurchase) : m.unitSum = 25 := by rw [m.hUnitSum]
theorem cds_total (m : CdPurchase) : m.total = 100 := by rw [m.hTotal, cds_unit_sum m]
theorem cds_solution (m : CdPurchase) : m.short = 25 := by omega

/-- All monetary values are represented in cents. -/
structure DinnerDiscount where bobDiscount bobPay kateDiscount katePay total : ℕ
  hBobDiscount : bobDiscount * 100 = 3000 * 5
  hBobPay : bobPay + bobDiscount = 3000
  hKateDiscount : kateDiscount * 100 = 2500 * 2
  hKatePay : katePay + kateDiscount = 2500
  hTotal : total = bobPay + katePay

theorem dinner_bob_discount (m : DinnerDiscount) : m.bobDiscount = 150 := by omega
theorem dinner_bob_pay (m : DinnerDiscount) : m.bobPay = 2850 := by omega
theorem dinner_kate_discount (m : DinnerDiscount) : m.kateDiscount = 50 := by omega
theorem dinner_kate_pay (m : DinnerDiscount) : m.katePay = 2450 := by omega
theorem dinner_solution (m : DinnerDiscount) : m.total = 5300 := by
  rw [m.hTotal, dinner_bob_pay m, dinner_kate_pay m]

structure JuiceBottles where initial afterBuy left : ℕ
  hInitial : initial = 4 + 4
  hAfterBuy : afterBuy = initial + 5
  hLeft : left + 3 = afterBuy

theorem juice_initial (m : JuiceBottles) : m.initial = 8 := by rw [m.hInitial]
theorem juice_after_buy (m : JuiceBottles) : m.afterBuy = 13 := by
  rw [m.hAfterBuy, juice_initial m]
theorem juice_solution (m : JuiceBottles) : m.left = 10 := by omega

structure RoseSale where tuesday wednesday total : ℕ
  hTuesday : tuesday = 3 * 12
  hWednesday : wednesday * 3 = tuesday
  hTotal : total = 12 + tuesday + wednesday

theorem roses_tuesday (m : RoseSale) : m.tuesday = 36 := by rw [m.hTuesday]
theorem roses_wednesday (m : RoseSale) : m.wednesday = 12 := by omega
theorem roses_solution (m : RoseSale) : m.total = 60 := by
  rw [m.hTotal, roses_tuesday m, roses_wednesday m]

structure MuseumTrips where firstRound secondRound total : ℕ
  hFirst : firstRound = 2 * 5
  hSecond : secondRound = 2 * 15
  hTotal : total = firstRound + secondRound

theorem museums_first (m : MuseumTrips) : m.firstRound = 10 := by rw [m.hFirst]
theorem museums_second (m : MuseumTrips) : m.secondRound = 30 := by rw [m.hSecond]
theorem museums_solution (m : MuseumTrips) : m.total = 40 := by
  rw [m.hTotal, museums_first m, museums_second m]

structure GrassSeed where lawn capacity leftover : ℕ
  hLawn : lawn = 22 * 36
  hCapacity : capacity = 4 * 250
  hLeftover : leftover + lawn = capacity

theorem seed_lawn (m : GrassSeed) : m.lawn = 792 := by rw [m.hLawn]
theorem seed_capacity (m : GrassSeed) : m.capacity = 1000 := by rw [m.hCapacity]
theorem seed_solution (m : GrassSeed) : m.leftover = 208 := by omega

structure GardenRows where tomatoRows cucumberRows tomatoPlants tomatoes : ℕ
  hRatio : cucumberRows = 2 * tomatoRows
  hRows : tomatoRows + cucumberRows = 15
  hPlants : tomatoPlants = tomatoRows * 8
  hTomatoes : tomatoes = tomatoPlants * 3

theorem garden_tomato_rows (m : GardenRows) : m.tomatoRows = 5 := by omega
theorem garden_cucumber_rows (m : GardenRows) : m.cucumberRows = 10 := by omega
theorem garden_plants (m : GardenRows) : m.tomatoPlants = 40 := by
  rw [m.hPlants, garden_tomato_rows m]
theorem garden_solution (m : GardenRows) : m.tomatoes = 120 := by
  rw [m.hTomatoes, garden_plants m]

structure KangarooGrowth where gap days : ℕ
  hGap : gap + 20 = 100
  hDays : days * 2 = gap

theorem kangaroo_gap (m : KangarooGrowth) : m.gap = 80 := by omega
theorem kangaroo_solution (m : KangarooGrowth) : m.days = 40 := by omega

structure VacationShirts where middleDays middleShirts sharedShirt total : ℕ
  hMiddleDays : middleDays + 2 = 7
  hMiddleShirts : middleShirts = middleDays * 2
  hShared : sharedShirt = 1
  hTotal : total = middleShirts + sharedShirt

theorem shirts_middle_days (m : VacationShirts) : m.middleDays = 5 := by omega
theorem shirts_middle (m : VacationShirts) : m.middleShirts = 10 := by
  rw [m.hMiddleShirts, shirts_middle_days m]
theorem shirts_solution (m : VacationShirts) : m.total = 11 := by
  rw [m.hTotal, shirts_middle m, m.hShared]

end LemmaWeave.Problems.GSM8K.Sprint0923A14
