import LemmaWeave.Problems.GSM8K.Sprint0923A20Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A20
namespace P := LemmaWeave.Problems.GSM8K.Sprint0923A20

theorem beanie_sydney (m : P.BeanieBabies) : m.sydney = 20 := P.beanie_sydney m
theorem beanie_solution (m : P.BeanieBabies) : m.total = 320 := P.beanie_solution m
theorem water_first (m : P.SinkWater) : m.first = 6 := P.water_first m
theorem water_second (m : P.SinkWater) : m.second = 6 := P.water_second m
theorem water_final_hour (m : P.SinkWater) : m.finalHour = 24 := P.water_final_hour m
theorem water_total (m : P.SinkWater) : m.total = 36 := P.water_total m
theorem water_solution (m : P.SinkWater) : m.left = 18 := P.water_solution m
theorem shirts_minutes (m : P.ShirtShop) : m.minutes = 720 := P.shirts_minutes m
theorem shirts_women_count (m : P.ShirtShop) : m.womenCount = 24 := P.shirts_women_count m
theorem shirts_women_revenue (m : P.ShirtShop) : m.womenRevenue = 432 := P.shirts_women_revenue m
theorem shirts_men_count (m : P.ShirtShop) : m.menCount = 18 := P.shirts_men_count m
theorem shirts_men_revenue (m : P.ShirtShop) : m.menRevenue = 270 := P.shirts_men_revenue m
theorem shirts_daily (m : P.ShirtShop) : m.daily = 702 := P.shirts_daily m
theorem shirts_solution (m : P.ShirtShop) : m.weekly = 4914 := P.shirts_solution m
theorem parties_one (m : P.TeamParties) : m.oneParty = 2400 := P.parties_one m
theorem parties_solution (m : P.TeamParties) : m.total = 19200 := P.parties_solution m
theorem dentist_total (m : P.DentistBill) : m.total = 600 := P.dentist_total m
theorem dentist_fillings (m : P.DentistBill) : m.fillings = 240 := P.dentist_fillings m
theorem dentist_solution (m : P.DentistBill) : m.extraction = 290 := P.dentist_solution m
theorem rent_first_years (m : P.ApartmentRent) : m.firstYears = 10800 := P.rent_first_years m
theorem rent_last_years (m : P.ApartmentRent) : m.lastYears = 8400 := P.rent_last_years m
theorem rent_solution (m : P.ApartmentRent) : m.total = 19200 := P.rent_solution m
theorem savings_spent_percent (m : P.SavingsOriginalPercent) : m.spentPercent = 60 := P.savings_spent_percent m
theorem savings_april_and_left (m : P.SavingsOriginalPercent) : m.aprilAndLeft = 4400 := P.savings_april_and_left m
theorem savings_solution (m : P.SavingsOriginalPercent) : m.initial = 11000 := P.savings_solution m
theorem savings_sequential_whole_dollars_impossible :
    ¬ ∃ initial : ℕ, 48 * initial = 100 * 4400 := P.savings_sequential_whole_dollars_impossible
theorem pot_people : 7 + 1 = 8 := P.pot_people
theorem pot_total : 8 * 5 = 40 := P.pot_total
theorem pot_first : 40 * 80 / 100 = 32 := P.pot_first
theorem pot_remaining : 40 - 32 = 8 := P.pot_remaining
theorem pot_split_example_third_zero : 8 + 0 = 8 := P.pot_split_example_third_zero
theorem pot_split_example_third_eight : 0 + 8 = 8 := P.pot_split_example_third_eight
theorem pot_equal_split (second third : ℕ) (hSplit : second + third = 8)
    (hEqual : second = third) : third = 4 := P.pot_equal_split second third hSplit hEqual
theorem stock_sold (m : P.BicycleStock) : m.sold = 31 := P.stock_sold m
theorem stock_bought (m : P.BicycleStock) : m.bought = 34 := P.stock_bought m
theorem stock_solution (m : P.BicycleStock) : m.increase = 3 := P.stock_solution m
theorem books_math (m : P.SchoolBooks) : m.mathCost = 6 := P.books_math m
theorem books_science (m : P.SchoolBooks) : m.scienceCost = 18 := P.books_science m
theorem books_other (m : P.SchoolBooks) : m.otherCost = 24 := P.books_other m
theorem books_solution (m : P.SchoolBooks) : m.artEach = 2 := P.books_solution m
theorem jerome_initial (m : P.JeromeMoney) : m.initial = 86 := P.jerome_initial m
theorem jerome_bianca (m : P.JeromeMoney) : m.bianca = 24 := P.jerome_bianca m
theorem jerome_solution (m : P.JeromeMoney) : m.left = 54 := P.jerome_solution m
theorem pets_birds (m : P.PetLegs) : m.birdLegs = 6 := P.pets_birds m
theorem pets_dogs (m : P.PetLegs) : m.dogLegs = 20 := P.pets_dogs m
theorem pets_snakes (m : P.PetLegs) : m.snakeLegs = 0 := P.pets_snakes m
theorem pets_spider (m : P.PetLegs) : m.spiderLegs = 8 := P.pets_spider m
theorem pets_solution (m : P.PetLegs) : m.total = 34 := P.pets_solution m
theorem earnings_kayla (m : P.Earnings) : m.kayla = 54 := P.earnings_kayla m
theorem earnings_solution (m : P.Earnings) : m.saheed = 216 := P.earnings_solution m
theorem shorts_regular (m : P.ShortsDiscount) : m.regular = 30 := P.shorts_regular m
theorem shorts_discount (m : P.ShortsDiscount) : m.discount = 3 := P.shorts_discount m
theorem shorts_sale (m : P.ShortsDiscount) : m.sale = 27 := P.shorts_sale m
theorem shorts_solution (m : P.ShortsDiscount) : m.saving = 3 := P.shorts_solution m
theorem park_people (m : P.ParkVisit) : m.people = 7 := P.park_people m
theorem park_entrance (m : P.ParkVisit) : m.entrance = 35 := P.park_entrance m
theorem park_children (m : P.ParkVisit) : m.childrenAttraction = 8 := P.park_children m
theorem park_adults (m : P.ParkVisit) : m.adultsAttraction = 12 := P.park_adults m
theorem park_solution (m : P.ParkVisit) : m.total = 55 := P.park_solution m

end LemmaWeave.Tests.GSM8KSprint0923A20
