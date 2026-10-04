import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A13RecoveryP3

structure RabbitModel where
  speed inner result : ℕ
  hInner : inner = 2 * speed + 4
  hResult : result = 2 * inner
  hGiven : result = 188

theorem rabbit_inner (m : RabbitModel) : m.inner = 94 := by
  cases m <;> omega

theorem rabbit_speed (m : RabbitModel) : m.speed = 45 := by
  have h := rabbit_inner m
  cases m <;> omega

structure EmploymentModel where
  janeNow years janeFuture daraFuture daraNow minimum wait : ℕ
  hJaneNow : janeNow = 28
  hYears : years = 6
  hJaneFuture : janeFuture = janeNow + years
  hHalf : 2 * daraFuture = janeFuture
  hDaraNow : daraNow + years = daraFuture
  hMinimum : minimum = 25
  hWait : daraNow + wait = minimum

theorem jane_future_age (m : EmploymentModel) : m.janeFuture = 34 := by
  cases m <;> omega

theorem dara_future_age (m : EmploymentModel) : m.daraFuture = 17 := by
  have h := jane_future_age m
  cases m <;> omega

theorem dara_current_age (m : EmploymentModel) : m.daraNow = 11 := by
  have h := dara_future_age m
  cases m <;> omega

theorem employment_wait (m : EmploymentModel) : m.wait = 14 := by
  have h := dara_current_age m
  cases m <;> omega

structure LilyModel where
  mike coreyExtra corey lily : ℕ
  hMike : mike = 10
  hExtra : coreyExtra = 15
  hCorey : corey = mike + coreyExtra
  hLily : lily = mike + corey

theorem corey_gives (m : LilyModel) : m.corey = 25 := by
  cases m <;> omega

theorem lily_books (m : LilyModel) : m.lily = 35 := by
  have h := corey_gives m
  cases m <;> omega

structure WhiteboardModel where
  kids minutesForThree workForThree multiplier timeForSix : ℕ
  hKids : kids = 4
  hMinutes : minutesForThree = 20
  hWork : workForThree = kids * minutesForThree
  hMultiplier : multiplier = 2
  hSix : timeForSix = multiplier * workForThree

theorem three_board_work (m : WhiteboardModel) : m.workForThree = 80 := by
  cases m <;> omega

theorem whiteboard_time (m : WhiteboardModel) : m.timeForSix = 160 := by
  have h := three_board_work m
  cases m <;> omega

structure JonahModel where
  original added eaten returned originalLeft replacement final : ℕ
  hOriginal : original = 14
  hAdded : added = 2
  hEaten : eaten = 6
  hReturned : returned = added
  hOriginalLeft : originalLeft + eaten = original
  hReplacement : replacement = 3
  hFinal : final = originalLeft + replacement

theorem original_fish_left (m : JonahModel) : m.originalLeft = 8 := by
  cases m <;> omega

theorem predators_returned (m : JonahModel) : m.returned = 2 := by
  cases m <;> omega

theorem jonah_fish (m : JonahModel) : m.final = 11 := by
  have h1 := original_fish_left m
  have h2 := predators_returned m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A13RecoveryP3
