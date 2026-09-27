import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0928A03

structure StoresModel where
  opened : Nat
  closed : Nat
  finalStores : Nat
  hOpened : opened = 5 + 10
  hClosed : closed = 2 + 6
  hFinal : closed + finalStores = 23 + opened

theorem stores_opened_closed (m : StoresModel) :
    m.opened = 15 ∧ m.closed = 8 := by
  constructor
  · have h := m.hOpened
    omega
  · have h := m.hClosed
    omega

theorem stores_final (m : StoresModel) : m.finalStores = 30 := by
  rcases stores_opened_closed m with ⟨ho, hc⟩
  have h := m.hFinal
  omega

theorem stores_solution (m : StoresModel) : m.finalStores = 30 := by
  exact stores_final m

structure DebtsModel where
  kyroOwed : Nat
  aryanPaid : Nat
  kyroPaid : Nat
  savings : Nat
  hKyroOwed : 2 * kyroOwed = 1200
  hAryanPaid : 100 * aryanPaid = 60 * 1200
  hKyroPaid : 100 * kyroPaid = 80 * kyroOwed
  hSavings : savings = 300 + aryanPaid + kyroPaid

theorem debts_kyro_owed (m : DebtsModel) : m.kyroOwed = 600 := by
  have h := m.hKyroOwed
  omega

theorem debts_payments (m : DebtsModel) :
    m.aryanPaid = 720 ∧ m.kyroPaid = 480 := by
  have hk := debts_kyro_owed m
  constructor
  · have h := m.hAryanPaid
    omega
  · have h := m.hKyroPaid
    omega

theorem debts_savings (m : DebtsModel) : m.savings = 1500 := by
  rcases debts_payments m with ⟨ha, hk⟩
  have h := m.hSavings
  omega

theorem debts_solution (m : DebtsModel) : m.savings = 1500 := by
  exact debts_savings m

structure ChipsModel where
  doritos : Nat
  eachPile : Nat
  hDoritos : 4 * doritos = 80
  hPile : 4 * eachPile = doritos

theorem chips_doritos (m : ChipsModel) : m.doritos = 20 := by
  have h := m.hDoritos
  omega

theorem chips_each_pile (m : ChipsModel) : m.eachPile = 5 := by
  have hd := chips_doritos m
  have h := m.hPile
  omega

theorem chips_solution (m : ChipsModel) : m.eachPile = 5 := by
  exact chips_each_pile m

structure CommuteModel where
  busMinutes : Nat
  friendMinutes : Nat
  weeklyMinutes : Nat
  hBus : busMinutes = 30 + 10
  hFriend : 3 * friendMinutes = 30
  hWeekly : weeklyMinutes = 30 + 3 * busMinutes + friendMinutes

theorem commute_bus (m : CommuteModel) : m.busMinutes = 40 := by
  have h := m.hBus
  omega

theorem commute_friend (m : CommuteModel) : m.friendMinutes = 10 := by
  have h := m.hFriend
  omega

theorem commute_weekly (m : CommuteModel) : m.weeklyMinutes = 160 := by
  have hb := commute_bus m
  have hf := commute_friend m
  have h := m.hWeekly
  omega

theorem commute_solution (m : CommuteModel) : m.weeklyMinutes = 160 := by
  exact commute_weekly m

structure AgesModel where
  yearsLater : Nat
  joelAge : Nat
  dadAge : Nat
  hJoel : joelAge = 5 + yearsLater
  hDad : dadAge = 32 + yearsLater
  hTwice : dadAge = 2 * joelAge

theorem ages_gap (m : AgesModel) : m.dadAge = m.joelAge + 27 := by
  have hj := m.hJoel
  have hd := m.hDad
  omega

theorem ages_joel (m : AgesModel) : m.joelAge = 27 := by
  have hg := ages_gap m
  have ht := m.hTwice
  omega

theorem ages_solution (m : AgesModel) : m.joelAge = 27 := by
  exact ages_joel m

end LemmaWeave.Problems.GSM8K.Sprint0928A03
