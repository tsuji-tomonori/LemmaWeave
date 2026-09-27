import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0928A00

structure BreathingVolume where
  minutes : ℕ
  volume : ℕ
  hMinutes : minutes = 60 * 24
  hVolume : 9 * volume = 17 * 5 * minutes

theorem breaths_minutes (m : BreathingVolume) : m.minutes = 1440 := by
  have h1 := m.hMinutes
  have h2 := m.hVolume
  omega

theorem breaths_solution (m : BreathingVolume) : m.volume = 13600 := by
  have h1 := m.hMinutes
  have h2 := m.hVolume
  have hd1 := breaths_minutes m
  omega

structure PianoLessons where
  lessonCost : ℕ
  total : ℕ
  hLesson : lessonCost = 2 * 10
  hTotal : total = 5 * lessonCost

theorem piano_lesson (m : PianoLessons) : m.lessonCost = 20 := by
  have h1 := m.hLesson
  have h2 := m.hTotal
  omega

theorem piano_solution (m : PianoLessons) : m.total = 100 := by
  have h1 := m.hLesson
  have h2 := m.hTotal
  have hd1 := piano_lesson m
  omega

structure FruitTreeSpace where
  appleWidth : ℕ
  appleSpace : ℕ
  peachWidth : ℕ
  peachSpace : ℕ
  total : ℕ
  hAppleWidth : appleWidth = 2 * 10
  hAppleSpace : appleSpace = appleWidth + 12
  hPeachWidth : peachWidth = 2 * 12
  hPeachSpace : peachSpace = peachWidth + 15
  hTotal : total = appleSpace + peachSpace

theorem trees_apple (m : FruitTreeSpace) : m.appleSpace = 32 := by
  have h1 := m.hAppleWidth
  have h2 := m.hAppleSpace
  have h3 := m.hPeachWidth
  have h4 := m.hPeachSpace
  have h5 := m.hTotal
  omega

theorem trees_peach (m : FruitTreeSpace) : m.peachSpace = 39 := by
  have h1 := m.hAppleWidth
  have h2 := m.hAppleSpace
  have h3 := m.hPeachWidth
  have h4 := m.hPeachSpace
  have h5 := m.hTotal
  omega

theorem trees_solution (m : FruitTreeSpace) : m.total = 71 := by
  have h1 := m.hAppleWidth
  have h2 := m.hAppleSpace
  have h3 := m.hPeachWidth
  have h4 := m.hPeachSpace
  have h5 := m.hTotal
  have hd1 := trees_apple m
  have hd2 := trees_peach m
  omega

structure PetShopCost where
  puppyPrice : ℕ
  kittenPrice : ℕ
  puppyCost : ℕ
  kittenCost : ℕ
  parakeetCost : ℕ
  total : ℕ
  hPuppyPrice : puppyPrice = 3 * 10
  hKittenPrice : kittenPrice = 2 * 10
  hPuppyCost : puppyCost = 2 * puppyPrice
  hKittenCost : kittenCost = 2 * kittenPrice
  hParakeetCost : parakeetCost = 3 * 10
  hTotal : total = puppyCost + kittenCost + parakeetCost

theorem pets_unit_prices (m : PetShopCost) : m.puppyPrice = 30 ∧ m.kittenPrice = 20 := by
  have h1 := m.hPuppyPrice
  have h2 := m.hKittenPrice
  have h3 := m.hPuppyCost
  have h4 := m.hKittenCost
  have h5 := m.hParakeetCost
  have h6 := m.hTotal
  constructor <;> omega

theorem pets_group_costs (m : PetShopCost) : m.puppyCost = 60 ∧ m.kittenCost = 40 ∧ m.parakeetCost = 30 := by
  have h1 := m.hPuppyPrice
  have h2 := m.hKittenPrice
  have h3 := m.hPuppyCost
  have h4 := m.hKittenCost
  have h5 := m.hParakeetCost
  have h6 := m.hTotal
  have hd1 := pets_unit_prices m
  rcases hd1 with ⟨hp, hk⟩
  constructor
  · omega
  constructor <;> omega

theorem pets_solution (m : PetShopCost) : m.total = 130 := by
  have h1 := m.hPuppyPrice
  have h2 := m.hKittenPrice
  have h3 := m.hPuppyCost
  have h4 := m.hKittenCost
  have h5 := m.hParakeetCost
  have h6 := m.hTotal
  have hd1 := pets_group_costs m
  rcases hd1 with ⟨hp, hk, hpa⟩
  omega

structure BirdAverage where
  total : ℕ
  average : ℕ
  hTotal : total = 7 + 11 + 9
  hAverage : 3 * average = total

theorem birds_total (m : BirdAverage) : m.total = 27 := by
  have h1 := m.hTotal
  have h2 := m.hAverage
  omega

theorem birds_solution (m : BirdAverage) : m.average = 9 := by
  have h1 := m.hTotal
  have h2 := m.hAverage
  have hd1 := birds_total m
  omega

structure FutureAges where
  drewFuture : ℕ
  samFuture : ℕ
  samCurrent : ℕ
  hDrew : drewFuture = 12 + 5
  hSamFuture : samFuture = 3 * drewFuture
  hCurrent : samCurrent + 5 = samFuture

theorem ages_drew_future (m : FutureAges) : m.drewFuture = 17 := by
  have h1 := m.hDrew
  have h2 := m.hSamFuture
  have h3 := m.hCurrent
  omega

theorem ages_sam_future (m : FutureAges) : m.samFuture = 51 := by
  have h1 := m.hDrew
  have h2 := m.hSamFuture
  have h3 := m.hCurrent
  have hd1 := ages_drew_future m
  omega

theorem ages_solution (m : FutureAges) : m.samCurrent = 46 := by
  have h1 := m.hDrew
  have h2 := m.hSamFuture
  have h3 := m.hCurrent
  have hd1 := ages_sam_future m
  omega

structure DistrictVoters where
  district2 : ℕ
  district3 : ℕ
  total : ℕ
  hDistrict3 : district3 = 2 * 322
  hDistrict2 : district2 + 19 = district3
  hTotal : total = 322 + district2 + district3

theorem districts_three (m : DistrictVoters) : m.district3 = 644 := by
  have h1 := m.hDistrict3
  have h2 := m.hDistrict2
  have h3 := m.hTotal
  omega

theorem districts_two (m : DistrictVoters) : m.district2 = 625 := by
  have h1 := m.hDistrict3
  have h2 := m.hDistrict2
  have h3 := m.hTotal
  have hd1 := districts_three m
  omega

theorem districts_solution (m : DistrictVoters) : m.total = 1591 := by
  have h1 := m.hDistrict3
  have h2 := m.hDistrict2
  have h3 := m.hTotal
  have hd1 := districts_two m
  omega

structure MarchingBandWeight where
  lightWeight : ℕ
  tromboneWeight : ℕ
  tubaWeight : ℕ
  drumWeight : ℕ
  total : ℕ
  hLight : lightWeight = (6 + 9) * 5
  hTrombone : tromboneWeight = 8 * 10
  hTuba : tubaWeight = 3 * 20
  hDrum : drumWeight = 2 * 15
  hTotal : total = lightWeight + tromboneWeight + tubaWeight + drumWeight

theorem band_light (m : MarchingBandWeight) : m.lightWeight = 75 := by
  have h1 := m.hLight
  have h2 := m.hTrombone
  have h3 := m.hTuba
  have h4 := m.hDrum
  have h5 := m.hTotal
  omega

theorem band_other (m : MarchingBandWeight) : m.tromboneWeight = 80 ∧ m.tubaWeight = 60 ∧ m.drumWeight = 30 := by
  have h1 := m.hLight
  have h2 := m.hTrombone
  have h3 := m.hTuba
  have h4 := m.hDrum
  have h5 := m.hTotal
  constructor
  · omega
  constructor <;> omega

theorem band_solution (m : MarchingBandWeight) : m.total = 245 := by
  have h1 := m.hLight
  have h2 := m.hTrombone
  have h3 := m.hTuba
  have h4 := m.hDrum
  have h5 := m.hTotal
  have hd1 := band_light m
  have hd2 := band_other m
  rcases hd2 with ⟨ht, htu, hd⟩
  omega

structure BreadSchedule where
  riseHours : ℕ
  bakeHours : ℕ
  total : ℕ
  hRise : riseHours = 4 * 3
  hBake : bakeHours = 4 * 2
  hTotal : total = riseHours + bakeHours

theorem bread_rise (m : BreadSchedule) : m.riseHours = 12 := by
  have h1 := m.hRise
  have h2 := m.hBake
  have h3 := m.hTotal
  omega

theorem bread_bake (m : BreadSchedule) : m.bakeHours = 8 := by
  have h1 := m.hRise
  have h2 := m.hBake
  have h3 := m.hTotal
  omega

theorem bread_solution (m : BreadSchedule) : m.total = 20 := by
  have h1 := m.hRise
  have h2 := m.hBake
  have h3 := m.hTotal
  have hd1 := bread_rise m
  have hd2 := bread_bake m
  omega

structure BiscuitSales where
  sold : ℕ
  remaining : ℕ
  hSold : sold = 12 + 5 + 4
  hRemaining : remaining + sold = 33

theorem biscuits_sold (m : BiscuitSales) : m.sold = 21 := by
  have h1 := m.hSold
  have h2 := m.hRemaining
  omega

theorem biscuits_solution (m : BiscuitSales) : m.remaining = 12 := by
  have h1 := m.hSold
  have h2 := m.hRemaining
  have hd1 := biscuits_sold m
  omega

end LemmaWeave.Problems.GSM8K.Sprint0928A00
