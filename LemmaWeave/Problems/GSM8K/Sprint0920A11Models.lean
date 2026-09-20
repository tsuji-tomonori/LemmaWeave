namespace LemmaWeave.Problems.GSM8K.Sprint0920A11

def LaundryTiming
    (loads washMinutes dryMinutes perLoad serialMinutes minutesPerHour serialHours
      fullyParallelMinutes : Nat) : Prop :=
  perLoad = washMinutes + dryMinutes ∧ serialMinutes = loads * perLoad ∧
  serialMinutes = serialHours * minutesPerHour ∧ fullyParallelMinutes = perLoad ∧
  serialMinutes ≠ fullyParallelMinutes

def PharmacyCustomers
    (fullWorkers fullHours juliaHours personHours customersPerHour total : Nat) : Prop :=
  personHours = fullWorkers * fullHours + juliaHours ∧
  total = customersPerHour * personHours

def TowelPurchase
    (guestSets guestPrice guestTotal masterSets masterPrice masterTotal subtotal discountPercent
      discount payment : Nat) : Prop :=
  guestTotal = guestSets * guestPrice ∧ masterTotal = masterSets * masterPrice ∧
  subtotal = guestTotal + masterTotal ∧ discount * 100 = subtotal * discountPercent ∧
  subtotal = payment + discount

def BirthdayParty
    (invited bringerDivisor bringers companions guests host total : Nat) : Prop :=
  bringers * bringerDivisor = invited ∧ companions = bringers ∧
  guests = invited + companions ∧ total = guests + host

def GleeClub
    (femaleMultiplier male female total : Nat) : Prop :=
  female = femaleMultiplier * male ∧ total = female + male

end LemmaWeave.Problems.GSM8K.Sprint0920A11
