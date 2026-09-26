import LemmaWeave.Problems.GSM8K.Sprint0924A17Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0924A17
namespace P := LemmaWeave.Problems.GSM8K.Sprint0924A17

theorem bags_revenue (m : P.Bags) : m.revenue = 1000 := P.bags_revenue m
theorem bags_total_cost (m : P.Bags) : m.totalCost = 700 := P.bags_total_cost m
theorem bags_solution (m : P.Bags) : m.unitCost = 7 := P.bags_solution m
theorem seed_madison (m : P.Seed) : m.madison = 36 := P.seed_madison m
theorem seed_solution (m : P.Seed) : m.ryan = 18 := P.seed_solution m
theorem ages_rachel (m : P.Ages) : m.rachel = 16 := P.ages_rachel m
theorem ages_collete (m : P.Ages) : m.collete = 4 := P.ages_collete m
theorem ages_solution (m : P.Ages) : m.difference = 12 := P.ages_solution m
theorem market_spent (m : P.Market) : m.spent = 100 := P.market_spent m
theorem market_solution (m : P.Market) : m.left = 50 := P.market_solution m
theorem errand_driving (m : P.Errand) : m.driving = 40 := P.errand_driving m
theorem errand_solution (m : P.Errand) : m.total = 110 := P.errand_solution m
theorem outfit_increase (m : P.Outfit) : m.increase = 30 := P.outfit_increase m
theorem outfit_shirt (m : P.Outfit) : m.shirt = 80 := P.outfit_shirt m
theorem outfit_solution (m : P.Outfit) : m.total = 130 := P.outfit_solution m
theorem renata_after_charity (m : P.Renata) : m.afterCharity = 6 := P.renata_after_charity m
theorem renata_after_prize (m : P.Renata) : m.afterPrize = 96 := P.renata_after_prize m
theorem renata_after_slots (m : P.Renata) : m.afterSlots = 31 := P.renata_after_slots m
theorem renata_after_purchase (m : P.Renata) : m.afterPurchase = 29 := P.renata_after_purchase m
theorem renata_solution (m : P.Renata) : m.final = 94 := P.renata_solution m
theorem roadtrip_highway (m : P.Roadtrip) : m.highway = 6 := P.roadtrip_highway m
theorem roadtrip_city (m : P.Roadtrip) : m.city = 3 := P.roadtrip_city m
theorem roadtrip_solution (m : P.Roadtrip) : m.total = 9 := P.roadtrip_solution m
theorem instruments_trumpets (m : P.Instruments) : m.trumpets = 7 := P.instruments_trumpets m
theorem instruments_guitars (m : P.Instruments) : m.guitars = 4 := P.instruments_guitars m
theorem instruments_trombones (m : P.Instruments) : m.trombones = 3 := P.instruments_trombones m
theorem instruments_horns (m : P.Instruments) : m.horns = 3 := P.instruments_horns m
theorem instruments_solution (m : P.Instruments) : m.total = 17 := P.instruments_solution m
theorem toys_figures (m : P.Toys) : m.figures = 6 := P.toys_figures m
theorem toys_solution (m : P.Toys) : m.dolls = 18 := P.toys_solution m
theorem book_week (m : P.Book) : m.weekRead = 140 := P.book_week m
theorem book_read (m : P.Book) : m.totalRead = 289 := P.book_read m
theorem book_solution (m : P.Book) : m.left = 92 := P.book_solution m
theorem wheel_per_minute (m : P.Wheel) : m.perMinute = 12 := P.wheel_per_minute m
theorem wheel_per_hour (m : P.Wheel) : m.perHour = 720 := P.wheel_per_hour m
theorem wheel_solution (m : P.Wheel) : m.total = 1440 := P.wheel_solution m
theorem truck_miles (m : P.Truck) : m.miles = 300 := P.truck_miles m
theorem truck_gallons (m : P.Truck) : m.gallons = 30 := P.truck_gallons m
theorem truck_fuel_cost (m : P.Truck) : m.fuelCost = 60 := P.truck_fuel_cost m
theorem truck_revenue (m : P.Truck) : m.revenue = 150 := P.truck_revenue m
theorem truck_solution (m : P.Truck) : m.net = 90 := P.truck_solution m
theorem campaign_friends (m : P.Campaign) : m.friends = 4000 := P.campaign_friends m
theorem campaign_remaining (m : P.Campaign) : m.remaining = 6000 := P.campaign_remaining m
theorem campaign_family (m : P.Campaign) : m.family = 1800 := P.campaign_family m
theorem campaign_solution (m : P.Campaign) : m.savings = 4200 := P.campaign_solution m
theorem race_john_time (m : P.Race) : m.johnMinutes = 20 := P.race_john_time m
theorem race_solution (m : P.Race) : m.margin = 3 := P.race_solution m

end LemmaWeave.Tests.GSM8KSprint0924A17

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A17.bags_solution to "work/gsm8k-sprint125-bags-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A17.seed_solution to "work/gsm8k-sprint125-seed-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A17.ages_solution to "work/gsm8k-sprint125-ages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A17.market_solution to "work/gsm8k-sprint125-market-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A17.errand_solution to "work/gsm8k-sprint125-errand-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A17.outfit_solution to "work/gsm8k-sprint125-outfit-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A17.renata_solution to "work/gsm8k-sprint125-renata-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A17.roadtrip_solution to "work/gsm8k-sprint125-roadtrip-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A17.instruments_solution to "work/gsm8k-sprint125-instruments-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A17.toys_solution to "work/gsm8k-sprint125-toys-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A17.book_solution to "work/gsm8k-sprint125-book-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A17.wheel_solution to "work/gsm8k-sprint125-wheel-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A17.truck_solution to "work/gsm8k-sprint125-truck-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A17.campaign_solution to "work/gsm8k-sprint125-campaign-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A17.race_solution to "work/gsm8k-sprint125-race-graph.json"
