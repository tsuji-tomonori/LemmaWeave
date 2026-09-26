namespace LemmaWeave.Problems.GSM8K.Sprint0921A07

def ReadingGrowth
    (startAge startPages doubledAge fivefoldPages laterAge triplePages currentPages : Nat) : Prop :=
  doubledAge = startAge * 2 ∧ fivefoldPages = startPages * 5 ∧
  laterAge = doubledAge + 8 ∧ triplePages = fivefoldPages * 3 ∧
  currentPages = triplePages * 4

def WeeklyDriving
    (hoursFast rateFast fastMiles hoursSlow rateSlow slowMiles dailyMiles days weeklyMiles : Nat) : Prop :=
  fastMiles = hoursFast * rateFast ∧ slowMiles = hoursSlow * rateSlow ∧
  dailyMiles = fastMiles + slowMiles ∧ weeklyMiles = dailyMiles * days

def FriedChicken (kobe multiplier pauFirst extraForPau pauTotal : Nat) : Prop :=
  pauFirst = kobe * multiplier ∧ pauTotal = pauFirst + extraForPau

def SchoolStudents (oldClasses addedClasses allClasses studentsPerClass total : Nat) : Prop :=
  allClasses = oldClasses + addedClasses ∧ total = allClasses * studentsPerClass

def PoolCost
    (days interval cleanings base tipPercent tip perVisit cleaningCost
      chemicalUses chemicalEach chemicalCost total : Nat) : Prop :=
  cleanings * interval ≤ days ∧ days < (cleanings + 1) * interval ∧
  tip * 100 = base * tipPercent ∧ perVisit = base + tip ∧
  cleaningCost = perVisit * cleanings ∧ chemicalCost = chemicalUses * chemicalEach ∧
  total = cleaningCost + chemicalCost

def Stockings
    (grandchildren children people perPerson stockings regularPrice discountPercent
      discountEach discountedPrice monogramEach unitPrice total : Nat) : Prop :=
  people = grandchildren + children ∧ stockings = people * perPerson ∧
  discountEach * 100 = regularPrice * discountPercent ∧
  regularPrice = discountedPrice + discountEach ∧
  unitPrice = discountedPrice + monogramEach ∧ total = stockings * unitPrice

def TurtleRace (greta quicker george multiplier gloria : Nat) : Prop :=
  greta = george + quicker ∧ gloria = george * multiplier

def BeadshopProfit (total monday tuesday wednesday : Nat) : Prop :=
  monday * 3 = total ∧ tuesday * 4 = total ∧ total = monday + tuesday + wednesday

def Laundry
    (pantsOunces shirts shirtEach shortsOunces sockPairs sockPairEach current maxOunces
      underwearEach pairs additionalOunces : Nat) : Prop :=
  current = pantsOunces + shirts * shirtEach + shortsOunces + sockPairs * sockPairEach ∧
  additionalOunces = pairs * underwearEach ∧ current + additionalOunces ≤ maxOunces ∧
  ∀ n : Nat, current + n * underwearEach ≤ maxOunces → n ≤ pairs

def GroceryDelivery (bagsPerTrip tripsPerDay bagsPerDay days total : Nat) : Prop :=
  bagsPerDay = bagsPerTrip * tripsPerDay ∧ total = bagsPerDay * days

def ShoppingDiscount
    (shoePrice shoeDiscountPercent shoeDiscount shoePaid shirts shirtPrice shirtCost
      subtotal checkoutPercent checkoutDiscount total : Nat) : Prop :=
  shoeDiscount * 100 = shoePrice * shoeDiscountPercent ∧
  shoePrice = shoePaid + shoeDiscount ∧ shirtCost = shirts * shirtPrice ∧
  subtotal = shoePaid + shirtCost ∧ checkoutDiscount * 100 = subtotal * checkoutPercent ∧
  subtotal = total + checkoutDiscount

def RunningShoes
    (miles oldMinutesPerMile oldTotal newMinutesPerMile newTotal extra : Nat) : Prop :=
  oldTotal = miles * oldMinutesPerMile ∧ newTotal = miles * newMinutesPerMile ∧
  newTotal = oldTotal + extra

def CookieSale
    (dozensBaked dozenSize baked teacherDozens teacherCookies brock katy sold left : Nat) : Prop :=
  baked = dozensBaked * dozenSize ∧ teacherCookies = teacherDozens * dozenSize ∧
  katy = brock * 2 ∧ sold = teacherCookies + brock + katy ∧ baked = sold + left

def GranolaChildren (made parentsAte forChildren each children : Nat) : Prop :=
  made = parentsAte + forChildren ∧ forChildren = each * children

def CarnationBouquets
    (bouquets average total first second accounted third : Nat) : Prop :=
  total = bouquets * average ∧ accounted = first + second ∧ total = accounted + third

end LemmaWeave.Problems.GSM8K.Sprint0921A07
