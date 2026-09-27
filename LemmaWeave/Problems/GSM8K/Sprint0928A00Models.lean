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

end LemmaWeave.Problems.GSM8K.Sprint0928A00
