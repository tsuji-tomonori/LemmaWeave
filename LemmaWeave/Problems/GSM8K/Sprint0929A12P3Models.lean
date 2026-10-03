import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A12P3

structure FruitsModel where
  oranges : ℕ
  limes : ℕ
  remaining : ℕ
  initial : ℕ
  hOranges : oranges = 50
  hRatio : oranges = 2 * limes
  hRemaining : remaining = oranges + limes
  hHalf : initial = 2 * remaining

theorem fruits_limes (m : FruitsModel) : m.limes = 25 := by
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  simp_all <;> omega

theorem fruits_remaining (m : FruitsModel) : m.remaining = 75 := by
  have hPrev := fruits_limes m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  simp_all

theorem fruits_solution (m : FruitsModel) : m.initial = 150 := by
  have hPrev := fruits_remaining m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  simp_all

structure ShellsModel where
  aiguo : ℕ
  vail : ℕ
  stefan : ℕ
  total : ℕ
  hAiguo : aiguo = 20
  hVail : vail + 5 = aiguo
  hStefan : stefan = vail + 16
  hTotal : total = stefan + vail + aiguo

theorem shells_vail (m : ShellsModel) : m.vail = 15 := by
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  simp_all <;> omega

theorem shells_stefan (m : ShellsModel) : m.stefan = 31 := by
  have hPrev := shells_vail m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  simp_all

theorem shells_solution (m : ShellsModel) : m.total = 66 := by
  have hPrev := shells_stefan m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  simp_all

structure PhonesModel where
  total : ℕ
  defective : ℕ
  good : ℕ
  customerA : ℕ
  customerB : ℕ
  customerC : ℕ
  hTotal : total = 20
  hDefective : defective = 5
  hGood : good + defective = total
  hA : customerA = 3
  hC : customerC = 7
  hSold : good = customerA + customerB + customerC

theorem phones_good (m : PhonesModel) : m.good = 15 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all <;> omega

theorem phones_solution (m : PhonesModel) : m.customerB = 5 := by
  have hPrev := phones_good m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  simp_all <;> omega

structure AgesModel where
  marianneThen : ℕ
  bellaThen : ℕ
  gap : ℕ
  bellaFuture : ℕ
  marianneFuture : ℕ
  hMarianne : marianneThen = 20
  hBella : bellaThen = 8
  hGap : bellaThen + gap = marianneThen
  hBellaFuture : bellaFuture = 18
  hFuture : marianneFuture = bellaFuture + gap

theorem ages_gap (m : AgesModel) : m.gap = 12 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all <;> omega

theorem ages_solution (m : AgesModel) : m.marianneFuture = 30 := by
  have hPrev := ages_gap m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all

structure MarblesModel where
  starting : ℕ
  lost : ℕ
  given : ℕ
  eaten : ℕ
  remaining : ℕ
  hStarting : starting = 24
  hLost : lost = 4
  hGiven : given = 2 * lost
  hEaten : 2 * eaten = lost
  hRemaining : remaining + lost + given + eaten = starting

theorem marbles_given (m : MarblesModel) : m.given = 8 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all

theorem marbles_eaten (m : MarblesModel) : m.eaten = 2 := by
  have hPrev := marbles_given m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all <;> omega

theorem marbles_solution (m : MarblesModel) : m.remaining = 10 := by
  have hPrev := marbles_eaten m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0929A12P3
