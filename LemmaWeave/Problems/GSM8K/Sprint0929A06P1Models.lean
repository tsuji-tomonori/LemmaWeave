import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A06P1

structure TrainingModel where
  firstDays : ℕ
  extraDays : ℕ
  totalDays : ℕ
  totalHours : ℕ
  hFirst : firstDays = 30
  hExtra : extraDays = 12
  hDays : totalDays = firstDays + extraDays
  hHours : totalHours = 5 * totalDays

theorem training_days (m : TrainingModel) : m.totalDays = 42 := by
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem training_solution (m : TrainingModel) : m.totalHours = 210 := by
  have hPrev := training_days m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

structure CakeModel where
  friendSlices : ℕ
  eatenSlices : ℕ
  bakedSlices : ℕ
  leftoverSlices : ℕ
  hFriends : friendSlices = 8 * 2
  hEaten : eatenSlices = friendSlices + 3
  hBaked : bakedSlices = 4 * 6
  hLeft : leftoverSlices + eatenSlices = bakedSlices

theorem cake_friends (m : CakeModel) : m.friendSlices = 16 := by
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem cake_eaten (m : CakeModel) : m.eatenSlices = 19 := by
  have hPrev := cake_friends m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem cake_baked (m : CakeModel) : m.bakedSlices = 24 := by
  have hPrev := cake_eaten m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem cake_solution (m : CakeModel) : m.leftoverSlices = 5 := by
  have hPrev := cake_baked m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

structure BenchModel where
  perSet : ℕ
  totalWeight : ℕ
  hPerSet : perSet = 15 * 10
  hTotal : totalWeight = 3 * perSet

theorem bench_per_set (m : BenchModel) : m.perSet = 150 := by
  rcases m with ⟨a, b, h1, h2⟩
  simp_all <;> omega

theorem bench_solution (m : BenchModel) : m.totalWeight = 450 := by
  have hPrev := bench_per_set m
  rcases m with ⟨a, b, h1, h2⟩
  simp_all <;> omega

structure BowlsModel where
  damaged : ℕ
  safe : ℕ
  grossPay : ℕ
  penalty : ℕ
  netPay : ℕ
  hDamaged : damaged = 12 + 15
  hPartition : safe + damaged = 638
  hGross : grossPay = 100 + 3 * safe
  hPenalty : penalty = 4 * damaged
  hNet : netPay + penalty = grossPay

theorem bowls_damaged (m : BowlsModel) : m.damaged = 27 := by
  rcases m with ⟨a, b, c, d, e, h1, h2, h3, h4, h5⟩
  simp_all <;> omega

theorem bowls_safe (m : BowlsModel) : m.safe = 611 := by
  have hPrev := bowls_damaged m
  rcases m with ⟨a, b, c, d, e, h1, h2, h3, h4, h5⟩
  simp_all <;> omega

theorem bowls_gross (m : BowlsModel) : m.grossPay = 1933 := by
  have hPrev := bowls_safe m
  rcases m with ⟨a, b, c, d, e, h1, h2, h3, h4, h5⟩
  simp_all <;> omega

theorem bowls_penalty (m : BowlsModel) : m.penalty = 108 := by
  have hPrev := bowls_gross m
  rcases m with ⟨a, b, c, d, e, h1, h2, h3, h4, h5⟩
  simp_all <;> omega

theorem bowls_solution (m : BowlsModel) : m.netPay = 1825 := by
  have hPrev := bowls_penalty m
  rcases m with ⟨a, b, c, d, e, h1, h2, h3, h4, h5⟩
  simp_all <;> omega

structure CoinsModel where
  candyDimes : ℕ
  leftDimes : ℕ
  leftQuarters : ℕ
  centsLeft : ℕ
  hCandy : candyDimes = 4 * 3
  hDimes : leftDimes + candyDimes = 19
  hQuarters : leftQuarters + 1 = 6
  hCents : centsLeft = 10 * leftDimes + 25 * leftQuarters

theorem coins_candy (m : CoinsModel) : m.candyDimes = 12 := by
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem coins_dimes (m : CoinsModel) : m.leftDimes = 7 := by
  have hPrev := coins_candy m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem coins_quarters (m : CoinsModel) : m.leftQuarters = 5 := by
  have hPrev := coins_dimes m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem coins_solution (m : CoinsModel) : m.centsLeft = 195 := by
  have hPrev := coins_quarters m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0929A06P1
