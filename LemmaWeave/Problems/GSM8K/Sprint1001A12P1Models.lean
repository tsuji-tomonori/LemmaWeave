import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A12P1

structure EnvelopeModel where
  total : ℕ
  small : ℕ
  largeLetters : ℕ
  largeEnvelopes : ℕ
  hTotal : total = 80
  hSmall : small = 20
  hLarge : largeLetters + small = total
  hPacked : 2 * largeEnvelopes = largeLetters

theorem envelope_large_letters (m : EnvelopeModel) : m.largeLetters = 60 := by
  cases m <;> simp_all at * <;> omega

theorem envelope_count (m : EnvelopeModel) : m.largeEnvelopes = 30 := by
  have h := envelope_large_letters m
  cases m <;> simp_all at * <;> omega

structure TennisModel where
  total : ℕ
  kept : ℕ
  containers : ℕ
  each : ℕ
  hTotal : total = 100
  hHalf : 2 * kept = total
  hContainers : containers = 5
  hPacked : 5 * each = kept

theorem tennis_kept (m : TennisModel) : m.kept = 50 := by
  cases m <;> simp_all at * <;> omega

theorem tennis_each (m : TennisModel) : m.each = 10 := by
  have h := tennis_kept m
  cases m <;> simp_all at * <;> omega

structure BogoModel where
  bought : ℕ
  paidUnits : ℕ
  unitPrice : ℕ
  totalCost : ℕ
  hBought : bought = 10
  hPaidUnits : 2 * paidUnits = bought
  hUnitPrice : unitPrice = 3
  hCost : totalCost = paidUnits * 3

theorem bogo_paid_units (m : BogoModel) : m.paidUnits = 5 := by
  cases m <;> simp_all at * <;> omega

theorem bogo_cost (m : BogoModel) : m.totalCost = 15 := by
  have h := bogo_paid_units m
  cases m <;> simp_all at * <;> omega

structure PizzaOrderModel where
  people : ℕ
  slicesEach : ℕ
  needed : ℕ
  smallSlices : ℕ
  remaining : ℕ
  largeSlices : ℕ
  largeCount : ℕ
  hPeople : people = 3
  hSlicesEach : slicesEach = 12
  hNeeded : needed = 3 * 12
  hSmall : smallSlices = 8
  hRemaining : remaining + smallSlices = needed
  hLargeSlices : largeSlices = 14
  hLarge : 14 * largeCount = remaining

theorem pizza_needed (m : PizzaOrderModel) : m.needed = 36 := by
  cases m <;> simp_all at * <;> omega

theorem pizza_remaining (m : PizzaOrderModel) : m.remaining = 28 := by
  have h := pizza_needed m
  cases m <;> simp_all at * <;> omega

theorem pizza_large_count (m : PizzaOrderModel) : m.largeCount = 2 := by
  have h := pizza_remaining m
  cases m <;> simp_all at * <;> omega

structure ZooModel where
  existing : ℕ
  imported : ℕ
  totalTypes : ℕ
  minutesEach : ℕ
  totalMinutes : ℕ
  hExisting : existing = 5
  hImported : imported = 4
  hTypes : totalTypes = existing + imported
  hMinutes : minutesEach = 6
  hTotal : totalMinutes = 6 * totalTypes

theorem zoo_types (m : ZooModel) : m.totalTypes = 9 := by
  cases m <;> simp_all at * <;> omega

theorem zoo_time (m : ZooModel) : m.totalMinutes = 54 := by
  have h := zoo_types m
  cases m <;> simp_all at * <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A12P1
