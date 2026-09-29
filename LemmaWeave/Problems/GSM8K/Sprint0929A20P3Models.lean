import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A20P3

structure CookieModel where
  cookiesPerBatch batches totalCookies people chipsPerCookie totalChips chipsPerPerson : ℕ
  hPerBatch : cookiesPerBatch = 12
  hBatches : batches = 3
  hCookies : totalCookies = cookiesPerBatch * batches
  hPeople : people = 4
  hChipsPerCookie : chipsPerCookie = 2
  hChips : totalChips = totalCookies * chipsPerCookie
  hEqual : totalChips = people * chipsPerPerson

theorem cookies_total (m : CookieModel) : m.totalCookies = 36 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  norm_num at *

theorem cookies_total_chips (m : CookieModel) : m.totalChips = 72 := by
  have h := cookies_total m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  norm_num at *

theorem cookies_solution (m : CookieModel) : m.chipsPerPerson = 18 := by
  have h := cookies_total_chips m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  norm_num at * <;> omega

structure InternetModel where
  baseCents totalCents overCostCents rateCentsPerGB overGB : ℕ
  hBase : baseCents = 4500
  hTotal : totalCents = 6500
  hBalance : totalCents = baseCents + overCostCents
  hRate : rateCentsPerGB = 25
  hCharge : overCostCents = rateCentsPerGB * overGB

theorem internet_over_cost (m : InternetModel) : m.overCostCents = 2000 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  omega

theorem internet_solution (m : InternetModel) : m.overGB = 80 := by
  have h := internet_over_cost m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  norm_num at * <;> omega

structure LessonModel where
  targetLessons hoursPerSession sessionsPerWeek lessonsPerWeek elapsedWeeks completed remaining futureWeeks : ℕ
  hTarget : targetLessons = 40
  hSession : hoursPerSession = 2
  hSessions : sessionsPerWeek = 2
  hPerWeek : lessonsPerWeek = hoursPerSession * sessionsPerWeek
  hElapsed : elapsedWeeks = 6
  hCompleted : completed = elapsedWeeks * lessonsPerWeek
  hBalance : targetLessons = completed + remaining
  hFuture : remaining = futureWeeks * lessonsPerWeek

theorem lessons_per_week (m : LessonModel) : m.lessonsPerWeek = 4 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  norm_num at *

theorem lessons_completed (m : LessonModel) : m.completed = 24 := by
  have h := lessons_per_week m
  rcases m with ⟨a,b,c,d,e,f,g,i,h1,h2,h3,h4,h5,h6,h7,h8⟩
  norm_num at *

theorem lessons_remaining (m : LessonModel) : m.remaining = 16 := by
  have h := lessons_completed m
  rcases m with ⟨a,b,c,d,e,f,g,i,h1,h2,h3,h4,h5,h6,h7,h8⟩
  omega

theorem lessons_solution (m : LessonModel) : m.futureWeeks = 4 := by
  have hPer := lessons_per_week m
  have hRem := lessons_remaining m
  rcases m with ⟨a,b,c,d,e,f,g,i,h1,h2,h3,h4,h5,h6,h7,h8⟩
  norm_num at * <;> omega

structure FishFoodModel where
  goldfishCount goldfishEachHalf goldfishTotalHalf : ℕ
  swordtailCount swordtailEachHalf swordtailTotalHalf : ℕ
  guppyCount guppyEachHalf guppyTotalHalf : ℕ
  totalHalf totalTeaspoons : ℕ
  hGoldCount : goldfishCount = 2
  hGoldEach : goldfishEachHalf = 2
  hGoldTotal : goldfishTotalHalf = goldfishCount * goldfishEachHalf
  hSwordCount : swordtailCount = 3
  hSwordEach : swordtailEachHalf = 4
  hSwordTotal : swordtailTotalHalf = swordtailCount * swordtailEachHalf
  hGuppyCount : guppyCount = 8
  hGuppyEach : guppyEachHalf = 1
  hGuppyTotal : guppyTotalHalf = guppyCount * guppyEachHalf
  hTotal : totalHalf = goldfishTotalHalf + swordtailTotalHalf + guppyTotalHalf
  hTeaspoons : totalHalf = 2 * totalTeaspoons

theorem fish_goldfish (m : FishFoodModel) : m.goldfishTotalHalf = 4 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11⟩
  norm_num at *

theorem fish_swordtails (m : FishFoodModel) : m.swordtailTotalHalf = 12 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11⟩
  norm_num at *

theorem fish_guppies (m : FishFoodModel) : m.guppyTotalHalf = 8 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11⟩
  norm_num at *

theorem fish_total_half (m : FishFoodModel) : m.totalHalf = 24 := by
  have h1 := fish_goldfish m
  have h2 := fish_swordtails m
  have h3 := fish_guppies m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11⟩
  omega

theorem fish_solution (m : FishFoodModel) : m.totalTeaspoons = 12 := by
  have h := fish_total_half m
  rcases m with ⟨a,b,c,d,e,f,g,i,j,k,l,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11⟩
  omega

structure TabModel where
  browsers windowsPerBrowser tabsPerWindow tabsPerBrowser totalTabs : ℕ
  hBrowsers : browsers = 2
  hWindows : windowsPerBrowser = 3
  hTabs : tabsPerWindow = 10
  hPerBrowser : tabsPerBrowser = windowsPerBrowser * tabsPerWindow
  hTotal : totalTabs = browsers * tabsPerBrowser

theorem tabs_per_browser (m : TabModel) : m.tabsPerBrowser = 30 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  norm_num at *

theorem tabs_solution (m : TabModel) : m.totalTabs = 60 := by
  have h := tabs_per_browser m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  norm_num at *

end LemmaWeave.Problems.GSM8K.Sprint0929A20P3
