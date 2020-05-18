# ShohokuCollars
**The purpose of this project is to record details about every basketball game and participants via a Web Application.**
---
### Relational Database Structure:
##### Collar
* *CollarID
* LastName
* FirstName
* CollarSuburb
* CollarCredit
##### TopUp
* *TopUpID
* CollarID
* TopUpAmount
* TopUpTime
##### Game
* *CollarName
* *BookingID
* NumberOfParticipants
* CostPerPerson
##### Booking
* *BookingID
* BookingDate
* BookingStartTime
* BookingEndTime
* BookingDuration
* BookingCost
* BookingCredit
* CourtID
##### Court
* *CourtID
* CourtName
* CourtAddress
* CourtSuburb
* CourtPrice(PerHour)
