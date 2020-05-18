alter table Booking
    drop constraint FK_CourtBooking
alter table TopUp
    drop constraint FK_CollarTopUp
drop table Booking
drop table TopUp
drop table Game
drop table Collar
drop table Court


create table Collar
(
    CollarID     int        not null,
    LastName     varchar    not null,
    FirstName    varchar    not null,
    CollarSuburb varchar    not null,
    CollarCredit smallmoney not null,
    primary key (CollarID)
)

create table Court
(
    CourtID           int        not null,
    CourtName         varchar    not null,
    CourtAddress      varchar    not null,
    CourtSuburb       varchar    not null,
    CourtPricePerHour smallmoney not null,
    primary key (CourtID)
)

create table Game
(
    CollarID             int,
    BookingID            int,
    NumberOfParticipants int        not null,
    CostPerPerson        smallmoney not null,
    primary key (CollarId, BookingID),
)

create table Booking
(
    BookingID        int        not null,
    BookingDate      date       not null,
    BookingStartTime datetime   not null,
    BookingEndTime   datetime   not null,
    BookingDuration  datetime   not null,
    BookingCost      smallmoney not null,
    BookingCredit    smallmoney not null,
    CourtID          int,
    constraint FK_CourtBooking foreign key (CourtID) references Court (CourtID)
)

create table TopUp
(
    TopUpID     int        not null,
    CollarID    int,
    TopUpAmount smallmoney not null,
    TopUpTime   datetime   not null,
    primary key (TopUpID),
    constraint FK_CollarTopUp foreign key (CollarID) references Collar (CollarID)
)

