namespace LemmaWeave.Problems.GSM8K.Sprint0921A03

def Sprinkles (start half less remaining : Nat) : Prop :=
  start = half * 2 ∧ half = remaining + less
def ClassStudents (initial joined afterJoin left final : Nat) : Prop :=
  afterJoin = initial + joined ∧ afterJoin = left + final
def MineralWater (halfBottlesPerDay bottlesPerCase daysPerCase days cases price spent : Nat) : Prop :=
  bottlesPerCase * 2 = daysPerCase * halfBottlesPerDay ∧ days = cases * daysPerCase ∧ spent = cases * price
def PolkaBlankets (total before gift after : Nat) : Prop :=
  total = before * 3 ∧ after = before + gift
def Thumbtacks (cans boards eachBoard used remainingEach remaining total : Nat) : Prop :=
  eachBoard = cans ∧ used = boards * eachBoard ∧ remaining = cans * remainingEach ∧ total = used + remaining

end LemmaWeave.Problems.GSM8K.Sprint0921A03
