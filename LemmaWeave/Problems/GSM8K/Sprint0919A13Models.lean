namespace LemmaWeave.Problems.GSM8K.Sprint0919A13

def Cupcakes (chocolate multiplier buttercream total : Nat) : Prop :=
  chocolate = 4 ∧ multiplier = 2 ∧ buttercream = multiplier * chocolate ∧
  total = chocolate + buttercream

def ValentineCards (pupils each made target remaining : Nat) : Prop :=
  pupils = 30 ∧ each = 8 ∧ made = pupils * each ∧ target = 1000 ∧
  remaining + made = target

def Footrace (sam extra harvey total : Nat) : Prop :=
  sam = 12 ∧ extra = 8 ∧ harvey = sam + extra ∧ total = sam + harvey

def WeeklyWork
    (catchPerDay weekendRatio weekendWorkPerDay weekdayRatio weekdayWorkPerDay
      weekendDays weekdayDays totalWork : Nat) : Prop :=
  catchPerDay = 3 ∧ weekendRatio = 3 ∧ weekendWorkPerDay * weekendRatio = catchPerDay ∧
  weekdayRatio = 4 ∧ weekdayWorkPerDay = weekdayRatio * catchPerDay ∧
  weekendDays = 2 ∧ weekdayDays = 5 ∧
  totalWork = weekendDays * weekendWorkPerDay + weekdayDays * weekdayWorkPerDay

def WorkDates (startDay excludedEndDay days hoursPerDay totalHours : Nat) : Prop :=
  startDay = 3 ∧ excludedEndDay = 8 ∧ startDay + days = excludedEndDay ∧
  hoursPerDay = 8 ∧ totalHours = days * hoursPerDay

end LemmaWeave.Problems.GSM8K.Sprint0919A13
