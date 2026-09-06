import LemmaWeave.Problems.GSM8K.Model

namespace LemmaWeave.Problems.GSM8K

def ClipsGoal : Prop :=
  (∃ may total, Clips may total) ∧ ∀ may total, Clips may total → total = 72

def EarningsGoal : Prop :=
  (∃ pay, Earnings pay) ∧ ∀ pay, Earnings pay → pay = 10

def WalletGoal : Prop :=
  (∃ saved grandparents missing, Wallet saved grandparents missing) ∧
    ∀ saved grandparents missing, Wallet saved grandparents missing → missing = 5

def ReadingGoal : Prop :=
  (∃ today remaining tomorrow, Reading today remaining tomorrow) ∧
    ∀ today remaining tomorrow, Reading today remaining tomorrow → 0 ≤ remaining ∧ tomorrow = 42

def LettersGoal : Prop :=
  (∀ weeks, ∃ total, Letters weeks total) ∧
    (∀ weeks total, Letters weeks total → total = 12 * weeks) ∧
    (∀ total, Letters 52 total → total = 624)

end LemmaWeave.Problems.GSM8K
