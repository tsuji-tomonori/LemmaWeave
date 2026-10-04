import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A16P2

structure MarbleModel where
  current : ℕ
  brother : ℕ
  sisterMultiplier : ℕ
  sister : ℕ
  friendMultiplier : ℕ
  friend : ℕ
  initial : ℕ
  hCurrent : current = 30
  hBrother : brother = 60
  hSisterMultiplier : sisterMultiplier = 2
  hSister : sister = sisterMultiplier * brother
  hFriendMultiplier : friendMultiplier = 3
  hFriend : friend = friendMultiplier * current
  hInitial : initial = current + brother + sister + friend

theorem sister_marbles (m : MarbleModel) : m.sister = 120 := by
  omega
theorem friend_marbles (m : MarbleModel) : m.friend = 90 := by
  omega
theorem initial_marbles (m : MarbleModel) : m.initial = 300 := by
  have h1 := sister_marbles m
  have h2 := friend_marbles m
  omega
structure CandyModel where
  total : ℕ
  siblingEach : ℕ
  siblingCount : ℕ
  siblingGiven : ℕ
  afterSiblings : ℕ
  divisor : ℕ
  cousin : ℕ
  afterCousin : ℕ
  ate : ℕ
  left : ℕ
  hTotal : total = 50
  hSiblingEach : siblingEach = 5
  hSiblingCount : siblingCount = 2
  hSiblingGiven : siblingGiven = siblingEach * siblingCount
  hAfterSiblings : total = siblingGiven + afterSiblings
  hDivisor : divisor = 4
  hCousin : afterSiblings = divisor * cousin
  hAfterCousin : afterSiblings = cousin + afterCousin
  hAte : ate = 12
  hLeft : afterCousin = ate + left

theorem sibling_gift (m : CandyModel) : m.siblingGiven = 10 := by
  omega
theorem candy_after_siblings (m : CandyModel) : m.afterSiblings = 40 := by
  have h := sibling_gift m
  omega
theorem cousin_gift (m : CandyModel) : m.cousin = 10 := by
  have h := candy_after_siblings m
  omega
theorem cotton_candy_left (m : CandyModel) : m.left = 18 := by
  have h1 := candy_after_siblings m
  have h2 := cousin_gift m
  omega
structure DonationModel where
  days : ℕ
  householdsPerDay : ℕ
  totalHouseholds : ℕ
  halfDivisor : ℕ
  donorHouseholds : ℕ
  billsPerPair : ℕ
  billValue : ℕ
  dollarsPerDonor : ℕ
  total : ℕ
  hDays : days = 5
  hPerDay : householdsPerDay = 20
  hHouseholds : totalHouseholds = days * householdsPerDay
  hHalfDivisor : halfDivisor = 2
  hDonors : totalHouseholds = halfDivisor * donorHouseholds
  hBillsPerPair : billsPerPair = 2
  hBillValue : billValue = 20
  hPerDonor : dollarsPerDonor = billsPerPair * billValue
  hTotal : total = donorHouseholds * dollarsPerDonor

theorem visited_households (m : DonationModel) : m.totalHouseholds = 100 := by
  omega
theorem donor_households (m : DonationModel) : m.donorHouseholds = 50 := by
  have h := visited_households m
  omega
theorem donation_per_house (m : DonationModel) : m.dollarsPerDonor = 40 := by
  omega
theorem donation_total (m : DonationModel) : m.total = 2000 := by
  have h1 := donor_households m
  have h2 := donation_per_house m
  omega
structure LightModel where
  time : ℕ
  hPositive : 0 < time
  hRed : time % 2 = 0
  hGreen : time % 3 = 0
  hBlue : time % 4 = 0
  hMinimum : ∀ n : ℕ, 0 < n → n % 2 = 0 → n % 3 = 0 → n % 4 = 0 → time ≤ n

theorem twelve_is_common : 12 % 2 = 0 ∧ 12 % 3 = 0 ∧ 12 % 4 = 0 := by
  norm_num

theorem light_shortest_time (m : LightModel) : m.time = 12 := by
  have hc := twelve_is_common
  have hle : m.time ≤ 12 := m.hMinimum 12 (by norm_num) hc.1 hc.2.1 hc.2.2
  omega

structure TripModel where
  start : ℕ
  ticket : ℕ
  hotelDivisor : ℕ
  hotel : ℕ
  spent : ℕ
  left : ℕ
  hStart : start = 760
  hTicket : ticket = 300
  hHotelDivisor : hotelDivisor = 2
  hHotel : ticket = hotelDivisor * hotel
  hSpent : spent = ticket + hotel
  hLeft : start = spent + left

theorem hotel_cost (m : TripModel) : m.hotel = 150 := by
  omega
theorem trip_spent (m : TripModel) : m.spent = 450 := by
  have h := hotel_cost m
  omega
theorem trip_money_left (m : TripModel) : m.left = 310 := by
  have h := trip_spent m
  omega
end LemmaWeave.Problems.GSM8K.Sprint1001A16P2
