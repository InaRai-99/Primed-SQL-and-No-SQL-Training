--- Customers
create table Customers(
    CustomerID int Primary Key,
    Name varchar (100) NOT NULL,
    Email varchar (100) Unique NOT NULL,
    Phone varchar (50),
    Address varchar (250)
);

create table Restaurants(
    RID int Primary Key,
    Name varchar (100) not NULL,
    Address varchar (250),
    Phone varchar (50)
);

-- Menuitems -> miid, rid FK, itemname, price, isavailable,
create table Menuitems(
    miid int Primary Key,
    rid int not NULL,
    itemname varchar (100) not NULL,
    price int not NULL,
    isavailable boolean default true,
    CONSTRAINT FK_menuitem_restaurants(RestaurantID)
);

-- Orders ->OID PK, CustomerID FK, Orderdate, Status, Amount,
create table Orders(
    OrderID int Primary Key,
    CustomerID int not NULL,
    Orderdate date not NULL,
    Status varchar (25) not NULL,
    amount int,
    CONSTRAINT fk_orders_customers Foreign Key
    (OrderID) References Customers(OrderID)

    CONSTRAINT fk_orders_Menuitems Foreign Key
    (miid) References Menuitems(miid)
);

-- DeliveryDrivers -> DDID PK, Name, Phone, Address
create table DeliveryDrivers(
    DDID int primary key,
    OID int not NULL,
    Name varchar(50) not NULL,
    Phone varchar(50) not NULL,
    Address varchar(250) not NULL
);

-- Deliveries -> DID PK, OID FK, DDID, FK, PickupTime, DeliveryTime
create table Deliveries(
    Deliveries int primary key,
    OID int not NULL,
    DDID int not NULL,
    PickupTime datetime,
    DeliveryTime datetime,
    CONSTRAINT fk_deliveries_orders Foreign key,
    (OID) References Orders(OrderID),

    CONSTRAINT fk_deliveries_drivers Foreign Key
    (DDID) References DeliveryDrivers (DDID)
);