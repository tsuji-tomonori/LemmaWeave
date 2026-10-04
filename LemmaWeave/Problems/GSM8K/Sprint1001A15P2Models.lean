import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint1001A15P2

structure ChampionshipModel where
  previousPoints : ℕ
  previousGames : ℕ
  average : ℕ
  halfAverage : ℕ
  finalPoints : ℕ
  margin : ℕ
  opponentPoints : ℕ
  hPrevious : previousPoints = 720
  hGames : previousGames = 24
  hAverage : previousPoints = average * previousGames
  hHalf : average = 2 * halfAverage
  hFinal : halfAverage = finalPoints + 2
  hMargin : margin = 2
  hOpponent : finalPoints = opponentPoints + margin

theorem previous_game_average (m : ChampionshipModel) : m.average = 30 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem half_previous_average (m : ChampionshipModel) : m.halfAverage = 15 := by
  have h := previous_game_average m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem championship_team_score (m : ChampionshipModel) : m.finalPoints = 13 := by
  have h := half_previous_average m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem opponent_score (m : ChampionshipModel) : m.opponentPoints = 11 := by
  have h := championship_team_score m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure ExchangeModel where
  currentAge : ℕ
  startAge : ℕ
  bills : ℕ
  spent : ℕ
  billsLeft : ℕ
  rateHalfDollars : ℕ
  receivedHalfDollars : ℕ
  receivedDollars : ℕ
  hCurrent : currentAge = 25
  hStart : startAge = 15
  hBills : currentAge = startAge + bills
  hSpent : spent * 5 = bills
  hLeft : bills = spent + billsLeft
  hRate : rateHalfDollars = 3
  hReceivedHalf : receivedHalfDollars = billsLeft * rateHalfDollars
  hDollars : receivedHalfDollars = 2 * receivedDollars

theorem special_bills (m : ExchangeModel) : m.bills = 10 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem bills_spent (m : ExchangeModel) : m.spent = 2 := by
  have h := special_bills m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem special_bills_left (m : ExchangeModel) : m.billsLeft = 8 := by
  have h1 := special_bills m
  have h2 := bills_spent m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem exchange_amount (m : ExchangeModel) : m.receivedDollars = 12 := by
  have h := special_bills_left m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure HeightModel where
  pepeInches : ℕ
  frankInches : ℕ
  larryInches : ℕ
  benInches : ℕ
  joeInches : ℕ
  joeFeet : ℕ
  hPepe : pepeInches = 4 * 12 + 6
  hFrank : frankInches = pepeInches + 6
  hLarry : larryInches = frankInches + 12
  hBen : benInches = larryInches + 12
  hJoe : joeInches = benInches + 12
  hFeet : joeInches = joeFeet * 12

theorem pepe_height_inches (m : HeightModel) : m.pepeInches = 54 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem frank_height_inches (m : HeightModel) : m.frankInches = 60 := by
  have h := pepe_height_inches m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem larry_height_inches (m : HeightModel) : m.larryInches = 72 := by
  have h := frank_height_inches m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem ben_height_inches (m : HeightModel) : m.benInches = 84 := by
  have h := larry_height_inches m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem big_joe_height (m : HeightModel) : m.joeFeet = 8 := by
  have h := ben_height_inches m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure WorkoutModel where
  rayman : ℕ
  junior : ℕ
  combined : ℕ
  wolverine : ℕ
  hRayman : rayman = 10
  hHalf : junior = 2 * rayman
  hCombined : combined = rayman + junior
  hWolverine : wolverine = 2 * combined

theorem junior_workout_hours (m : WorkoutModel) : m.junior = 20 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem combined_workout_hours (m : WorkoutModel) : m.combined = 30 := by
  have h := junior_workout_hours m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem wolverine_hours (m : WorkoutModel) : m.wolverine = 60 := by
  have h := combined_workout_hours m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure RepairModel where
  laborHours : ℕ
  hourlyRate : ℕ
  laborCost : ℕ
  partCost : ℕ
  totalCost : ℕ
  hHours : laborHours = 16
  hRate : hourlyRate = 75
  hLabor : laborCost = laborHours * hourlyRate
  hPart : partCost = 1200
  hTotal : totalCost = laborCost + partCost

theorem repair_labor_cost (m : RepairModel) : m.laborCost = 1200 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem repair_cost (m : RepairModel) : m.totalCost = 2400 := by
  have h := repair_labor_cost m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A15P2
