import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A07P1

structure SnacksModel where
  oneWayHours : ℕ
  roundTripHours : ℕ
  pricePerPack : ℕ
  packs : ℕ
  totalCost : ℕ
  hOneWay : oneWayHours = 2
  hRoundTrip : roundTripHours = 2 * oneWayHours
  hPrice : pricePerPack = 10 * roundTripHours
  hPacks : packs = 50
  hTotal : totalCost = pricePerPack * packs

theorem snacks_round_trip (m : SnacksModel) : m.roundTripHours = 4 := by
  omega
theorem snacks_price (m : SnacksModel) : m.pricePerPack = 40 := by
  have h := snacks_round_trip m
  omega
theorem snacks_total (m : SnacksModel) : m.totalCost = 2000 := by
  have h := snacks_price m
  omega
structure BikeModel where
  firstDays : ℕ
  firstDaily : ℕ
  yearDays : ℕ
  restDays : ℕ
  restDaily : ℕ
  firstMiles : ℕ
  restMiles : ℕ
  totalMiles : ℕ
  hFirstDays : firstDays = 183
  hFirstDaily : firstDaily = 30
  hYearDays : yearDays = 365
  hRestDays : firstDays + restDays = yearDays
  hRestDaily : restDaily = 35
  hFirstMiles : firstMiles = firstDays * firstDaily
  hRestMiles : restMiles = restDays * restDaily
  hTotal : totalMiles = firstMiles + restMiles

theorem bike_rest_days (m : BikeModel) : m.restDays = 182 := by
  omega
theorem bike_first_miles (m : BikeModel) : m.firstMiles = 5490 := by
  omega
theorem bike_rest_miles (m : BikeModel) : m.restMiles = 6370 := by
  have h := bike_rest_days m
  omega
theorem bike_total (m : BikeModel) : m.totalMiles = 11860 := by
  have h1 := bike_first_miles m
  have h2 := bike_rest_miles m
  omega
structure PokerModel where
  oldGames : ℕ
  oldWins : ℕ
  newGames : ℕ
  newLosses : ℕ
  newWins : ℕ
  totalGames : ℕ
  totalWins : ℕ
  percentage : ℕ
  hOldGames : oldGames = 200
  hOldPercent : 100 * oldWins = 63 * oldGames
  hNewGames : newGames = 100
  hNewLosses : newLosses = 43
  hNewSplit : newWins + newLosses = newGames
  hTotalGames : totalGames = oldGames + newGames
  hTotalWins : totalWins = oldWins + newWins
  hPercentage : percentage * totalGames = 100 * totalWins

theorem poker_old_wins (m : PokerModel) : m.oldWins = 126 := by
  omega
theorem poker_new_wins (m : PokerModel) : m.newWins = 57 := by
  omega
theorem poker_totals (m : PokerModel) : m.totalGames = 300 ∧ m.totalWins = 183 := by
  have h1 := poker_old_wins m
  have h2 := poker_new_wins m
  omega
theorem poker_percentage (m : PokerModel) : m.percentage = 61 := by
  have h := poker_totals m
  omega
structure HomeworkModel where
  totalHours minutesPerHour totalMinutes essays essayMinutes paragraphs paragraphMinutes usedMinutes
    shortMinutesPerQuestion : ℕ
    shortMinutes : ℕ
    questions : ℕ
  hTotalHours : totalHours = 4
  hMinutesPerHour : minutesPerHour = 60
  hTotalMinutes : totalMinutes = totalHours * minutesPerHour
  hEssays : essays = 2
  hEssayMinutes : essayMinutes = essays * minutesPerHour
  hParagraphs : paragraphs = 5
  hParagraphMinutes : paragraphMinutes = paragraphs * 15
  hUsed : usedMinutes = essayMinutes + paragraphMinutes
  hShortPer : shortMinutesPerQuestion = 3
  hShortMinutes : usedMinutes + shortMinutes = totalMinutes
  hQuestions : shortMinutes = questions * shortMinutesPerQuestion

theorem homework_total_minutes (m : HomeworkModel) : m.totalMinutes = 240 := by
  omega
theorem homework_used_minutes (m : HomeworkModel) : m.usedMinutes = 195 := by
  omega
theorem homework_short_minutes (m : HomeworkModel) : m.shortMinutes = 45 := by
  have h1 := homework_total_minutes m
  have h2 := homework_used_minutes m
  omega
theorem homework_questions (m : HomeworkModel) : m.questions = 15 := by
  have h := homework_short_minutes m
  omega
structure RiddlesModel where
  josh : ℕ
  ivory : ℕ
  taso : ℕ
  hJosh : josh = 8
  hIvory : ivory = josh + 4
  hTaso : taso = 2 * ivory

theorem riddles_ivory (m : RiddlesModel) : m.ivory = 12 := by
  omega
theorem riddles_taso (m : RiddlesModel) : m.taso = 24 := by
  have h := riddles_ivory m
  omega
end LemmaWeave.Problems.GSM8K.Sprint1001A07P1
