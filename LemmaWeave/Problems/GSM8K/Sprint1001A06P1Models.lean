import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A06P1

structure DogFoodModel where
  morning evening daily bag days : ℕ
  hMorning : morning = 1
  hEvening : evening = 1
  hDaily : daily = morning + evening
  hBag : bag = 32
  hDays : days * daily = bag

theorem dog_food_daily (m : DogFoodModel) : m.daily = 2 := by
  cases m <;> omega

theorem dog_food_days (m : DogFoodModel) : m.days = 16 := by
  have h := dog_food_daily m
  cases m <;> omega

structure AgesModel where
  currentYear birthYear markAge grahamAge janiceAge : ℕ
  hCurrent : currentYear = 2021
  hBirth : birthYear = 1976
  hMark : markAge + birthYear = currentYear
  hGraham : grahamAge + 3 = markAge
  hJanice : 2 * janiceAge = grahamAge

theorem ages_mark (m : AgesModel) : m.markAge = 45 := by
  cases m <;> omega

theorem ages_graham (m : AgesModel) : m.grahamAge = 42 := by
  have h := ages_mark m
  cases m <;> omega

theorem ages_janice (m : AgesModel) : m.janiceAge = 21 := by
  have h := ages_graham m
  cases m <;> omega

structure HouseModel where
  common total bedroomArea guest master : ℕ
  hCommon : common = 1000
  hTotal : total = 2300
  hBedroomArea : bedroomArea + common = total
  hQuarter : 4 * guest = master
  hSplit : bedroomArea = guest + master

theorem house_bedroom_area (m : HouseModel) : m.bedroomArea = 1300 := by
  cases m <;> omega

theorem house_guest (m : HouseModel) : m.guest = 260 := by
  have h := house_bedroom_area m
  cases m <;> omega

theorem house_master (m : HouseModel) : m.master = 1040 := by
  have h1 := house_bedroom_area m
  have h2 := house_guest m
  cases m <;> omega

structure CoinsModel where
  coins spent remaining initialValue loonies toonies : ℕ
  hCoins : coins = 10
  hSpent : spent = 3
  hRemaining : remaining = 11
  hInitialValue : initialValue = spent + remaining
  hCount : loonies + toonies = coins
  hValue : initialValue = loonies + 2 * toonies

theorem coins_initial_value (m : CoinsModel) : m.initialValue = 14 := by
  cases m <;> omega

theorem coins_toonies (m : CoinsModel) : m.toonies = 4 := by
  have h := coins_initial_value m
  cases m <;> omega

structure ToysModel where
  leilaBags leilaPerBag leilaToys mohamedBags mohamedPerBag mohamedToys difference : ℕ
  hLeilaBags : leilaBags = 2
  hLeilaPer : leilaPerBag = 25
  hLeila : leilaToys = leilaBags * leilaPerBag
  hMohamedBags : mohamedBags = 3
  hMohamedPer : mohamedPerBag = 19
  hMohamed : mohamedToys = mohamedBags * mohamedPerBag
  hDifference : leilaToys + difference = mohamedToys

theorem toys_leila (m : ToysModel) : m.leilaToys = 50 := by
  cases m <;> omega

theorem toys_mohamed (m : ToysModel) : m.mohamedToys = 57 := by
  cases m <;> omega

theorem toys_difference (m : ToysModel) : m.difference = 7 := by
  have h1 := toys_leila m
  have h2 := toys_mohamed m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A06P1
