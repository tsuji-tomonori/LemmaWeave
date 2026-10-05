import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A08P2

structure CandiesModel where
  bowlAfterPrevious : ℕ
  eatenPrevious : ℕ
  shellyOriginal : ℕ
  friendBrought : ℕ
  sharedTotal : ℕ
  eachShare : ℕ
  friendAfterEating : ℕ
  hBowl : bowlAfterPrevious = 50
  hEatenPrevious : eatenPrevious = 20
  hOriginal : shellyOriginal = bowlAfterPrevious + eatenPrevious
  hBrought : friendBrought = 2 * shellyOriginal
  hSharedTotal : sharedTotal = bowlAfterPrevious + friendBrought
  hEqualShare : sharedTotal = 2 * eachShare
  hAfterEating : friendAfterEating + 10 = eachShare

theorem candies_shelly_original (m : CandiesModel) : m.shellyOriginal = 70 := by
  cases m <;> simp_all at * <;> omega

theorem candies_brought_if_shelly (m : CandiesModel) : m.friendBrought = 140 := by
  have h := candies_shelly_original m
  cases m <;> simp_all at * <;> omega

theorem candies_each_if_shelly (m : CandiesModel) : m.eachShare = 95 := by
  have h := candies_brought_if_shelly m
  cases m <;> simp_all at * <;> omega

theorem candies_after_if_shelly (m : CandiesModel) : m.friendAfterEating = 85 := by
  have h := candies_each_if_shelly m
  cases m <;> simp_all at * <;> omega

theorem candies_other_antecedent_example : (50 + 100) / 2 - 10 = 65 := by
  norm_num

theorem candies_not_unique_without_antecedent (m : CandiesModel) : m.friendAfterEating ≠ 65 := by
  have h1 := candies_after_if_shelly m
  have h2 := candies_other_antecedent_example
  omega

structure SchoolModel where
  schoolDays : ℕ
  percentLimit : ℕ
  allowed : ℕ
  missed : ℕ
  more : ℕ
  hSchoolDays : schoolDays = 180
  hPercent : percentLimit = 5
  hAllowed : 100 * allowed = percentLimit * schoolDays
  hMissed : missed = 6
  hMore : missed + more = allowed

theorem school_allowed (m : SchoolModel) : m.allowed = 9 := by
  cases m <;> simp_all at * <;> omega

theorem school_more (m : SchoolModel) : m.more = 3 := by
  have h := school_allowed m
  cases m <;> simp_all at * <;> omega

structure FruitsModel where
  oldApples : ℕ
  oldBananas : ℕ
  oldOranges : ℕ
  oldTotal : ℕ
  newApples : ℕ
  newBananas : ℕ
  newOranges : ℕ
  newTotal : ℕ
  total : ℕ
  hOldApples : oldApples = 3
  hOldBananas : oldBananas = 1
  hOldOranges : oldOranges = 4
  hOldTotal : oldTotal = oldApples + oldBananas + oldOranges
  hNewApples : newApples = oldApples + 4
  hNewBananas : newBananas = 10 * oldBananas
  hNewOranges : newOranges = 2 * newApples
  hNewTotal : newTotal = newApples + newBananas + newOranges
  hTotal : total = oldTotal + newTotal

theorem fruits_old_total (m : FruitsModel) : m.oldTotal = 8 := by
  cases m <;> simp_all at * <;> omega

theorem fruits_new_counts (m : FruitsModel) :
    m.newApples = 7 ∧ m.newBananas = 10 ∧ m.newOranges = 14 := by
  cases m <;> simp_all at * <;> omega

theorem fruits_new_total (m : FruitsModel) : m.newTotal = 31 := by
  have h := fruits_new_counts m
  cases m <;> simp_all at * <;> omega

theorem fruits_total (m : FruitsModel) : m.total = 39 := by
  have h1 := fruits_old_total m
  have h2 := fruits_new_total m
  cases m <;> simp_all at * <;> omega

structure YarnModel where
  totalMeters : ℕ
  parts : ℕ
  partMeters : ℕ
  usedParts : ℕ
  usedMeters : ℕ
  hTotal : totalMeters = 10
  hParts : parts = 5
  hEqual : totalMeters = parts * partMeters
  hUsedParts : usedParts = 3
  hUsed : usedMeters = usedParts * partMeters

theorem yarn_part (m : YarnModel) : m.partMeters = 2 := by
  cases m <;> simp_all at * <;> omega

theorem yarn_used (m : YarnModel) : m.usedMeters = 6 := by
  have h := yarn_part m
  cases m <;> simp_all at * <;> omega

structure GardenModel where
  tomatoKinds : ℕ
  tomatoesPerKind : ℕ
  tomatoes : ℕ
  cucumberKinds : ℕ
  cucumbersPerKind : ℕ
  cucumbers : ℕ
  potatoes : ℕ
  planted : ℕ
  rows : ℕ
  spacesPerRow : ℕ
  capacity : ℕ
  remaining : ℕ
  hTomatoKinds : tomatoKinds = 3
  hTomatoesPerKind : tomatoesPerKind = 5
  hTomatoes : tomatoes = tomatoKinds * tomatoesPerKind
  hCucumberKinds : cucumberKinds = 5
  hCucumbersPerKind : cucumbersPerKind = 4
  hCucumbers : cucumbers = cucumberKinds * cucumbersPerKind
  hPotatoes : potatoes = 30
  hPlanted : planted = tomatoes + cucumbers + potatoes
  hRows : rows = 10
  hSpaces : spacesPerRow = 15
  hCapacity : capacity = rows * spacesPerRow
  hRemaining : planted + remaining = capacity

theorem garden_counts (m : GardenModel) : m.tomatoes = 15 ∧ m.cucumbers = 20 := by
  cases m <;> simp_all at * <;> omega

theorem garden_planted (m : GardenModel) : m.planted = 65 := by
  have h := garden_counts m
  cases m <;> simp_all at * <;> omega

theorem garden_capacity (m : GardenModel) : m.capacity = 150 := by
  cases m <;> simp_all at * <;> omega

theorem garden_remaining (m : GardenModel) : m.remaining = 85 := by
  have h1 := garden_planted m
  have h2 := garden_capacity m
  cases m <;> simp_all at * <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A08P2
