import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1002A01P2

structure SavingsModel where
  saved bonus spent remaining : ℕ
  hSaved : saved = 21 + 46 + 45
  hBonus : saved ≤ 125 → bonus = 0
  hSpent : spent = 12 + 54
  hRemaining : saved + bonus = spent + remaining

theorem savings_total (m : SavingsModel) : m.saved = 112 := by cases m <;> omega
theorem savings_threshold_not_met (m : SavingsModel) : m.saved ≤ 125 := by
  have h := savings_total m
  omega
theorem savings_bonus_zero (m : SavingsModel) : m.bonus = 0 := by
  exact m.hBonus (savings_threshold_not_met m)
theorem savings_spent (m : SavingsModel) : m.spent = 66 := by cases m <;> omega
theorem savings_remaining (m : SavingsModel) : m.remaining = 46 := by
  have h1 := savings_total m
  have h2 := savings_bonus_zero m
  have h3 := savings_spent m
  cases m <;> omega

structure PoolJumpModel where
  capacityMl thresholdMl allowedLoss lossPerJump jumps : ℕ
  hCapacity : capacityMl = 2000 * 1000
  hThreshold : 5 * thresholdMl = 4 * capacityMl
  hAllowedLoss : thresholdMl + allowedLoss = capacityMl
  hLoss : lossPerJump = 400
  hJumps : lossPerJump * jumps = allowedLoss

theorem pool_capacity_ml (m : PoolJumpModel) : m.capacityMl = 2000000 := by cases m <;> omega
theorem pool_threshold_ml (m : PoolJumpModel) : m.thresholdMl = 1600000 := by
  have h := pool_capacity_ml m
  cases m <;> omega
theorem pool_allowed_loss_ml (m : PoolJumpModel) : m.allowedLoss = 400000 := by
  have h1 := pool_capacity_ml m
  have h2 := pool_threshold_ml m
  cases m <;> omega
theorem pool_safe_jump_count (m : PoolJumpModel) : m.jumps = 1000 := by
  have h := pool_allowed_loss_ml m
  cases m <;> omega

structure KnockoutModel where
  knockouts firstRound : ℕ
  hKnockouts : 2 * knockouts = 190
  hFirstRound : 5 * firstRound = knockouts

theorem knockout_count (m : KnockoutModel) : m.knockouts = 95 := by cases m <;> omega
theorem first_round_knockouts (m : KnockoutModel) : m.firstRound = 19 := by
  have h := knockout_count m
  cases m <;> omega

structure BreadModel where
  slices paid change costDollars costCents centsPerSlice : ℕ
  hSlices : slices = 3 * 20
  hPaid : paid = 2 * 20
  hChange : change = 16
  hCost : costDollars + change = paid
  hCents : costCents = 100 * costDollars
  hUnit : costCents = slices * centsPerSlice

theorem bread_total_slices (m : BreadModel) : m.slices = 60 := by cases m <;> omega
theorem bread_total_cost_dollars (m : BreadModel) : m.costDollars = 24 := by cases m <;> omega
theorem bread_total_cost_cents (m : BreadModel) : m.costCents = 2400 := by
  have h := bread_total_cost_dollars m
  cases m <;> omega
theorem bread_slice_cost (m : BreadModel) : m.centsPerSlice = 40 := by
  have h1 := bread_total_slices m
  have h2 := bread_total_cost_cents m
  cases m <;> omega

structure LettuceModel where
  salads surviving planted : ℕ
  hSalads : salads = 12
  hYield : salads = 3 * surviving
  hHalfSurvives : planted = 2 * surviving

theorem lettuce_surviving_plants (m : LettuceModel) : m.surviving = 4 := by cases m <;> omega
theorem lettuce_plants_to_grow (m : LettuceModel) : m.planted = 8 := by
  have h := lettuce_surviving_plants m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1002A01P2
