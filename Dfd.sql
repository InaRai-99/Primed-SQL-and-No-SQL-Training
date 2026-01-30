--- Users
create table Users(
    CustomerID int Primary Key,
    Pin Code varchar (100) NOT NULL,
    Email varchar (100) Unique NOT NULL,
    Phone varchar (50),
    Address varchar (250)
);