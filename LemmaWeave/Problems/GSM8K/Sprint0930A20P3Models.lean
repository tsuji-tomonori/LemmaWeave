import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0930A20P3

structure GroupsModel where
  first : ℕ
  second : ℕ
  third : ℕ
  firstThree : ℕ
  fourth : ℕ
  total : ℕ
  hFirst : first = 5
  hSecond : second = 8
  hThird : third = 7
  hFirstThree : firstThree = first + second + third
  hTotal : total = 24
  hPartition : firstThree + fourth = total

theorem groups_first_three (m : GroupsModel) : m.firstThree = 20 := by
  omega
theorem groups_fourth (m : GroupsModel) : m.fourth = 4 := by
  have h := groups_first_three m
  omega
structure TreasureModel where
  goldTotal : ℕ
  silverTotal : ℕ
  bronzeTotal : ℕ
  chests : ℕ
  goldEach : ℕ
  silverEach : ℕ
  bronzeEach : ℕ
  totalEach : ℕ
  hGold : goldTotal = 3500
  hSilver : silverTotal = 500
  hBronze : bronzeTotal = 2 * silverTotal
  hChests : chests = 5
  hGoldSplit : goldTotal = 5 * goldEach
  hSilverSplit : silverTotal = 5 * silverEach
  hBronzeSplit : bronzeTotal = 5 * bronzeEach
  hTotalEach : totalEach = goldEach + silverEach + bronzeEach

theorem treasure_gold_each (m : TreasureModel) : m.goldEach = 700 := by
  omega
theorem treasure_silver_each (m : TreasureModel) : m.silverEach = 100 := by
  omega
theorem treasure_bronze_each (m : TreasureModel) : m.bronzeEach = 200 := by
  omega
theorem treasure_total_each (m : TreasureModel) : m.totalEach = 1000 := by
  have h1 := treasure_gold_each m
  have h2 := treasure_silver_each m
  have h3 := treasure_bronze_each m
  omega
structure NewspapersModel where
  jakeWeekly : ℕ
  mirandaWeekly : ℕ
  monthWeeks : ℕ
  jakeMonthly : ℕ
  mirandaMonthly : ℕ
  monthlyDifference : ℕ
  hJakeWeekly : jakeWeekly = 234
  hMirandaWeekly : mirandaWeekly = 2 * jakeWeekly
  hMonthWeeks : monthWeeks = 4
  hJakeMonthly : jakeMonthly = 4 * jakeWeekly
  hMirandaMonthly : mirandaMonthly = 4 * mirandaWeekly
  hDifference : jakeMonthly + monthlyDifference = mirandaMonthly

theorem newspapers_miranda_weekly (m : NewspapersModel) : m.mirandaWeekly = 468 := by
  omega
theorem newspapers_jake_monthly (m : NewspapersModel) : m.jakeMonthly = 936 := by
  omega
theorem newspapers_miranda_monthly (m : NewspapersModel) : m.mirandaMonthly = 1872 := by
  have h := newspapers_miranda_weekly m
  omega
theorem newspapers_monthly_difference (m : NewspapersModel) : m.monthlyDifference = 936 := by
  have h1 := newspapers_jake_monthly m
  have h2 := newspapers_miranda_monthly m
  omega
structure CdsModel where
  dawn : ℕ
  extraKristine : ℕ
  kristine : ℕ
  together : ℕ
  hDawn : dawn = 10
  hExtra : extraKristine = 7
  hKristine : kristine = dawn + extraKristine
  hTogether : together = dawn + kristine

theorem cds_kristine (m : CdsModel) : m.kristine = 17 := by
  omega
theorem cds_together (m : CdsModel) : m.together = 27 := by
  have h := cds_kristine m
  omega
structure IceCreamModel where
  brothers : ℕ
  savedEachCents : ℕ
  totalSavedCents : ℕ
  dinnerBillCents : ℕ
  afterDinnerCents : ℕ
  changeEachCents : ℕ
  totalChangeCents : ℕ
  iceCreamSpentCents : ℕ
  scoopCostCents : ℕ
  totalScoops : ℕ
  scoopsEach : ℕ
  hBrothers : brothers = 2
  hSavedEach : savedEachCents = 4000
  hTotalSaved : totalSavedCents = 2 * savedEachCents
  hDinnerFraction : 4 * dinnerBillCents = 3 * totalSavedCents
  hAfterDinner : dinnerBillCents + afterDinnerCents = totalSavedCents
  hChangeEach : changeEachCents = 100
  hTotalChange : totalChangeCents = 2 * changeEachCents
  hSpent : iceCreamSpentCents + totalChangeCents = afterDinnerCents
  hScoopCost : scoopCostCents = 150
  hScoopsCost : iceCreamSpentCents = 150 * totalScoops
  hEqualSplit : totalScoops = 2 * scoopsEach

theorem ice_total_saved (m : IceCreamModel) : m.totalSavedCents = 8000 := by
  omega
theorem ice_dinner_bill (m : IceCreamModel) : m.dinnerBillCents = 6000 := by
  have h := ice_total_saved m
  omega
theorem ice_after_dinner (m : IceCreamModel) : m.afterDinnerCents = 2000 := by
  have h1 := ice_total_saved m
  have h2 := ice_dinner_bill m
  omega
theorem ice_spent (m : IceCreamModel) : m.iceCreamSpentCents = 1800 := by
  have h := ice_after_dinner m
  omega
theorem ice_total_scoops (m : IceCreamModel) : m.totalScoops = 12 := by
  have h := ice_spent m
  omega
theorem ice_scoops_each (m : IceCreamModel) : m.scoopsEach = 6 := by
  have h := ice_total_scoops m
  omega
end LemmaWeave.Problems.GSM8K.Sprint0930A20P3
