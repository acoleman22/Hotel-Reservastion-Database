CREATE DATABASE HotelReservation;

USE HotelReservation;

CREATE TABLE Guest (
PhoneNumber CHAR(15)  NOT NULL,
`Name` VARCHAR(45) NOT NULL,
Address VARCHAR(45) NOT NULL,
State CHAR(2) NOT NULL,
City VARCHAR(45) NOT NULL,
Zip CHAR(5) NOT NULL,
PRIMARY KEY pk_PhoneNumber (PhoneNumber)
);


CREATE TABLE Reservation (
ReservationID INT AUTO_INCREMENT NOT NULL,
StartDate DATE NOT NULL,
EndDate DATE NOT NULL,
Adults INT NOT NULL,
Children INT NULL,
Guest VARCHAR(45),
TotalCost DECIMAL(7,2) NOT NULL,
PRIMARY KEY pk_Reservation (ReservationID)
);


CREATE TABLE GuestReservation (
PhoneNumber CHAR(15) NOT NULL,
ReservationId INT AUTO_INCREMENT NOT NULL,
PRIMARY KEY pk_GuestReservation (PhoneNumber, ReservationId),
FOREIGN KEY fk_GuestReservation_Guest (PhoneNumber)
	REFERENCES Guest(PhoneNumber),
FOREIGN KEY fk_GuestReservation_Reservation (ReservationID)
	REFERENCES Reservation(ReservationId)
);



CREATE TABLE `Type` (
TypeId INT NOT NULL,
TypeName VARCHAR(15) NOT NULL,
BasePrice DECIMAL(5,2) NOT NULL,
AdditonalCost INT NULL,
PRIMARY KEY pk_type (TypeId)
);


CREATE TABLE Room (
RoomNumber INT NOT NULL,
TypeId INT NOT NULL,
StandardCap INT NOT NULL,
MaxCap INT NOT NULL,
AdaAccess CHAR(3) NOT NULL,
PRIMARY KEY pk_Room (RoomNumber),
FOREIGN KEY fk_Room_Type (TypeId)
	REFERENCES `Type`(TypeId)
);



CREATE TABLE ReservationRoom( 
RoomNumber INT NOT NULL,
ReservationId INT AUTO_INCREMENT NOT NULL,
TotalCost DECIMAL(7,2) NOT NULL,
PRIMARY KEY pk_ReservationRoom (RoomNumber, ReservationId),
FOREIGN KEY fk_ReservationRoom (RoomNumber)
	REFERENCES Room(RoomNumber),
FOREIGN KEY fk_ReservationRoom (ReservationId)
	REFERENCES Reservation(ReservationId)
);



CREATE TABLE Amenities (
AmenitiesId INT NOT NULL,
`Name` VARCHAR(45),
AdditionalAmenitiesCost INT NULL,
PRIMARY KEY pk_Amenities (AmenitiesId)
);



CREATE TABLE AmenitiesRoom (
AmenitiesId INT NOT NULL,
RoomNumber INT NOT NULL,
PRIMARY KEY pk_AmenitiesRoom ( AmenitiesId, RoomNumber),
FOREIGN KEY fk_AmenitiesRoom (AmenitiesId)
	REFERENCES Amenities(AmenitiesId),
FOREIGN KEY fk_AmenitiesRoom (RoomNumber)
	REFERENCES Room(RoomNumber)	
);