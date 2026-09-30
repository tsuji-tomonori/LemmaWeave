import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A03P3

structure IronModel where
  length width height bars oneBar totalIron ballVolume balls : ℕ
  hLength : length = 12
  hWidth : width = 8
  hHeight : height = 6
  hOneBar : oneBar = length * width * height
  hBars : bars = 10
  hTotal : totalIron = bars * oneBar
  hBallVolume : ballVolume = 8
  hBalls : ballVolume * balls = totalIron

theorem iron_one_bar (m : IronModel) : m.oneBar = 576 := by
  cases m <;> omega

theorem iron_total (m : IronModel) : m.totalIron = 5760 := by
  have h := iron_one_bar m
  cases m <;> omega

theorem iron_balls (m : IronModel) : m.balls = 720 := by
  have h := iron_total m
  cases m <;> omega

structure HealingModel where
  beforeGraft graftRecovery totalRecovery : ℕ
  hBefore : beforeGraft = 4
  hLonger : 2 * graftRecovery = 3 * beforeGraft
  hTotal : totalRecovery = beforeGraft + graftRecovery

theorem healing_graft (m : HealingModel) : m.graftRecovery = 6 := by
  cases m <;> omega

theorem healing_total (m : HealingModel) : m.totalRecovery = 10 := by
  have h := healing_graft m
  cases m <;> omega

structure FinalsModel where
  total bombed afterBombed absent lowGrade passed : ℕ
  hTotal : total = 180
  hBombed : 4 * bombed = total
  hAfter : bombed + afterBombed = total
  hAbsent : 3 * absent = afterBombed
  hLow : lowGrade = 20
  hPassed : bombed + absent + lowGrade + passed = total

theorem finals_bombed (m : FinalsModel) : m.bombed = 45 := by
  cases m <;> omega

theorem finals_after_bombed (m : FinalsModel) : m.afterBombed = 135 := by
  have h := finals_bombed m
  cases m <;> omega

theorem finals_absent (m : FinalsModel) : m.absent = 45 := by
  have h := finals_after_bombed m
  cases m <;> omega

theorem finals_passed (m : FinalsModel) : m.passed = 70 := by
  have h1 := finals_bombed m
  have h2 := finals_absent m
  cases m <;> omega

structure FruitModel where
  strawberryPerPound cherryPerPound pounds strawberriesCost cherriesCost totalCost : ℕ
  hStrawberry : strawberryPerPound = 220
  hCherry : cherryPerPound = 6 * strawberryPerPound
  hPounds : pounds = 5
  hStrawberries : strawberriesCost = pounds * strawberryPerPound
  hCherries : cherriesCost = pounds * cherryPerPound
  hTotal : totalCost = strawberriesCost + cherriesCost

theorem fruit_cherry_price (m : FruitModel) : m.cherryPerPound = 1320 := by
  cases m <;> omega

theorem fruit_strawberries (m : FruitModel) : m.strawberriesCost = 1100 := by
  cases m <;> omega

theorem fruit_cherries (m : FruitModel) : m.cherriesCost = 6600 := by
  have h := fruit_cherry_price m
  cases m <;> omega

theorem fruit_total (m : FruitModel) : m.totalCost = 7700 := by
  have h1 := fruit_strawberries m
  have h2 := fruit_cherries m
  cases m <;> omega

structure StickersModel where
  packs perPack stickers unitCents totalCents jamesCents : ℕ
  hPacks : packs = 4
  hPerPack : perPack = 30
  hStickers : stickers = packs * perPack
  hUnit : unitCents = 10
  hTotal : totalCents = stickers * unitCents
  hHalf : 2 * jamesCents = totalCents

theorem stickers_count (m : StickersModel) : m.stickers = 120 := by
  cases m <;> omega

theorem stickers_total (m : StickersModel) : m.totalCents = 1200 := by
  have h := stickers_count m
  cases m <;> omega

theorem stickers_james (m : StickersModel) : m.jamesCents = 600 := by
  have h := stickers_total m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A03P3
