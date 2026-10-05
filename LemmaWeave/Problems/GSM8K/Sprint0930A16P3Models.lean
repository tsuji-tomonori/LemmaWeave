import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0930A16P3

structure SodaSalesModel where
  remyBottles : ℕ
  nickBottles : ℕ
  morningBottles : ℕ
  morningHalfDollars : ℕ
  eveningDollars : ℕ
  differenceDollars : ℕ
  hRemy : remyBottles = 55
  hNick : nickBottles + 6 = remyBottles
  hMorningBottles : morningBottles = remyBottles + nickBottles
  hHalfDollar : morningHalfDollars = morningBottles
  hEvening : eveningDollars = 55
  hDifference : 2 * eveningDollars = morningHalfDollars + 2 * differenceDollars

theorem soda_sales_nick (m : SodaSalesModel) : m.nickBottles = 49 := by
  cases m <;> simp_all at * <;> omega

theorem soda_sales_morning_bottles (m : SodaSalesModel) : m.morningBottles = 104 := by
  have h := soda_sales_nick m
  cases m <;> simp_all at * <;> omega

theorem soda_sales_morning_dollars (m : SodaSalesModel) : m.morningHalfDollars = 104 := by
  have h := soda_sales_morning_bottles m
  cases m <;> simp_all at * <;> omega

theorem soda_sales_difference (m : SodaSalesModel) : m.differenceDollars = 3 := by
  have h := soda_sales_morning_dollars m
  cases m <;> simp_all at * <;> omega

structure DebtsModel where
  total : ℕ
  ryanInitial : ℕ
  leoInitial : ℕ
  ryanOwesLeo : ℕ
  leoOwesRyan : ℕ
  leoFinal : ℕ
  hTotal : total = 48
  hRyanShare : 3 * ryanInitial = 2 * total
  hPartition : total = ryanInitial + leoInitial
  hRyanDebt : ryanOwesLeo = 10
  hLeoDebt : leoOwesRyan = 7
  hSettlement : leoInitial + ryanOwesLeo = leoFinal + leoOwesRyan

theorem debts_ryan_initial (m : DebtsModel) : m.ryanInitial = 32 := by
  cases m <;> simp_all at * <;> omega

theorem debts_leo_initial (m : DebtsModel) : m.leoInitial = 16 := by
  have h := debts_ryan_initial m
  cases m <;> simp_all at * <;> omega

theorem debts_leo_after_receipt (m : DebtsModel) : m.leoInitial + m.ryanOwesLeo = 26 := by
  have h := debts_leo_initial m
  cases m <;> simp_all at * <;> omega

theorem debts_leo_final (m : DebtsModel) : m.leoFinal = 19 := by
  have h := debts_leo_after_receipt m
  cases m <;> simp_all at * <;> omega

structure BallsModel where
  yellow : ℕ
  brown : ℕ
  total : ℕ
  yellowPercent : ℕ
  hYellow : yellow = 27
  hBrown : brown = 33
  hTotal : total = yellow + brown
  hPercent : total * yellowPercent = 100 * yellow

theorem balls_total (m : BallsModel) : m.total = 60 := by
  cases m <;> simp_all at * <;> omega

theorem balls_yellow_percent (m : BallsModel) : m.yellowPercent = 45 := by
  have h := balls_total m
  cases m <;> simp_all at * <;> omega

structure FlagsModel where
  stripesPerFlag : ℕ
  firstRed : ℕ
  remaining : ℕ
  halfRemainingRed : ℕ
  redPerFlag : ℕ
  flags : ℕ
  totalRed : ℕ
  hStripes : stripesPerFlag = 13
  hFirst : firstRed = 1
  hRemaining : stripesPerFlag = firstRed + remaining
  hHalf : remaining = 2 * halfRemainingRed
  hRedPerFlag : redPerFlag = firstRed + halfRemainingRed
  hFlags : flags = 10
  hTotal : totalRed = flags * redPerFlag

theorem flags_remaining (m : FlagsModel) : m.remaining = 12 := by
  cases m <;> simp_all at * <;> omega

theorem flags_half_remaining_red (m : FlagsModel) : m.halfRemainingRed = 6 := by
  have h := flags_remaining m
  cases m <;> simp_all at * <;> omega

theorem flags_red_per_flag (m : FlagsModel) : m.redPerFlag = 7 := by
  have h := flags_half_remaining_red m
  cases m <;> simp_all at * <;> omega

theorem flags_total_red (m : FlagsModel) : m.totalRed = 70 := by
  have h := flags_red_per_flag m
  cases m <;> simp_all at * <;> omega

structure LiftingModel where
  ron : ℕ
  roger : ℕ
  rodney : ℕ
  total : ℕ
  hTotal : total = 239
  hRodney : rodney = 2 * roger
  hRoger : roger + 7 = 4 * ron
  hPartition : total = rodney + roger + ron

theorem lifting_ron (m : LiftingModel) : m.ron = 20 := by
  cases m <;> simp_all at * <;> omega

theorem lifting_roger (m : LiftingModel) : m.roger = 73 := by
  have h := lifting_ron m
  cases m <;> simp_all at * <;> omega

theorem lifting_rodney (m : LiftingModel) : m.rodney = 146 := by
  have h := lifting_roger m
  cases m <;> simp_all at * <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0930A16P3
