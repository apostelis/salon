create table if not exists Slot (
    id INT GENERATED ALWAYS AS IDENTITY,
    selectedService INT ,
    stylistName varchar(255) not null,
    slotFor timestamp,
    slotStatus varchar (9),
    lockedAt timestamp,
    confirmedAt timestamp
    );

create table if not exists SalonServiceDetail (
    id INT GENERATED ALWAYS AS IDENTITY,
    name varchar(255) not null,
    address varchar(255) not null,
    city varchar(255) not null,
    state char(2) not null,
    zipcode varchar(10) not null,
    phone varchar(10) not null,
    );

create table if not exists Slot_AvailableServices (
    slot int not null,
    salonServiceDetail int not null
    );

alter table Slot_AvailableServices
    add foreign key (slot) references Slot(id);
alter table Slot_AvailableServices
    add foreign key (salonServiceDetail) references SalonServiceDetail(id);
