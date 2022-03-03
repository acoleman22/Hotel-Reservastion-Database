USE HotelReservation;

INSERT INTO Guest( PhoneNumber, `Name`, Address, City, State, Zip) 
Values
( '(612)-998-6607', 'Alex Coleman', '7214 Chicago Ave','Richfield', 'MN', '55423'),
( '(291) 553-0508', 'Mack Simmer', '379 Old Shore Street','Council Bluffs', 'IA', '51501'),
( '(478) 277-9632', 'Bettyann Seery', '	750 Wintergreen Dr.','Wasilla', 'AK', '99654'),
( '(308) 494-0198', 'Duane Cullison', '9662 Foxrun Lane','Harlingen', 'TX', '78552'),
( '(214) 730-0298', 'Karie Yang', '	9378 W. Augusta Ave.', 'West Deptford', 'NJ', '08096'),
( '(377) 507-0974', 'Aurore Lipton', '762 Wild Rose Street', 'Saginaw', 'MI', '48601'),
( '(814) 485-2615', 'Zachery Luechtefeld', '7 Poplar Dr.', 'Arvada', 'CO', '80003'),
( '(279) 491-0960', 'Jeremiah Pendergrass', '70 Oakwood St.', '	Zion', 'IL', '60099'),
( '(446) 396-6785', 'Walter Holaway', '	7556 Arrowhead St.', 'Cumberland', 'RI', '02864'),
( '(834) 727-1001', 'Wilfred Vise', '77 West Surrey Street', 'Oswego', 'NY', '13126'),
( '(446) 351-6860', 'Maritza Tilton', '939 Linda Rd.', 'Burke', 'VA', '22015'),
( '(231) 893-2755', 'Joleen Tison', '87 Queen St.', 'Drexel Hill', 'PA', '19026');

INSERT INTO Reservation ( StartDate, EndDate, Adults, Children, Guest, TotalCost) 
Values
('2023-02-02','2023-02-05',1 ,0,'Mack Simmer',299.98),
('2023-02-05','2023-02-10',2 ,1,'Bettyann Seery',999.95),
('2023-02-22','2023-02-24',2 ,0 ,'Duane Cullison',349.98),
('2023-03-06','2023-03-07',2 ,2 ,'Karie Yang',199.99),
('2023-03-17','2023-03-20',1 ,1,'Alex Coleman',524.97),
('2023-03-18','2023-03-23',3 ,0,'Aurore Lipton',924.95),
('2023-03-29','2023-03-31',2 ,2,'Zachery Luechtefeld',349.98),
('2023-03-31','2023-04-05',2 ,0,'Jeremiah Pendergrass',874.95),
('2023-04-09','2023-04-13',1 ,0,'Walter Holaway',799.96),
('2023-04-23','2023-04-24',1 ,1,'Wilfred Vise',174.99),
('2023-05-30','2023-06-02',2 ,4,'Maritza Tilton',1199.97),
('2023-06-10','2023-06-14',2 ,0,'Joleen Tison',599.96),
('2023-06-10','2023-06-14',1 ,0,'Joleen Tison',599.96),
('2023-06-17','2023-06-18',3 ,0,'Aurore Lipton',184.99),
('2023-06-28','2023-07-02',2 ,0,'Alex Coleman',699.96),
('2023-07-13' ,'2023-07-14',3 ,1,'Walter Holaway',184.99),
('2023-07-18','2023-07-21',4 ,2,'Wilfred Vise',1259.97),
('2023-07-28','2023-07-29',2 ,1,'Bettyann Seery',199.99),
('2023-08-30','2023-09-01' ,1 ,0,'Bettyann Seery',349.98),
('2023-09-16','2023-09-17',2 ,0,'Mack Simmer',149.99),
('2023-09-13','2023-09-15',2 ,2,'Karie Yang',399.98),
('2023-11-22','2023-11-25',2 ,2,'Duane Cullison',1199.97),
('2023-11-22','2023-11-25',2 ,0,'Mack Simmer',449.97),
('2023-11-22','2023-11-25',2 ,2,'Mack Simmer',599.97),
('2023-12-24','2023-12-28',2 ,0,'Maritza Tilton',699.96);

INSERT INTO GuestReservation ( PhoneNumber) 
Values
( '(612)-998-6607'),
( '(291) 553-0508'),
( '(478) 277-9632'),
( '(308) 494-0198'),
( '(214) 730-0298'),
( '(377) 507-0974'),
( '(814) 485-2615'),
( '(279) 491-0960'),
( '(446) 396-6785'),
( '(834) 727-1001'),
( '(446) 351-6860'),
( '(231) 893-2755');

INSERT INTO `Type` (TypeId,TypeName, BasePrice, AdditonalCost) 
Values
(4,'Double',199.99,10),
(3,'Double',174.99,10),
(2,'Single',174.99,NULL),
(1,'Single',149.99,NULL),
(5,'Suite',399.99,20);





INSERT INTO Room (RoomNumber,TypeId, StandardCap, MaxCap, AdaAccess) 
Values
(201,4,2,4,'No'),
(202,'3',2,4,'Yes'),
(203,'4',2,4,'No'),
(204,'3',2,4,'Yes'),
(205,'2',2,2,'No'),
(206,'1',2,2,'Yes'),
(207,'2',2,2,'No'),
(208,'1',2,2,'Yes'),
(301,'4',2,4,'No'),
(302,'3',2,4,'Yes'),
(303,'4',2,4,'No'),
(304,'3',2,4,'Yes'),
(305,'2',2,2,'No'),
(306,'1',2,2,'Yes'),
(307,'2',2,2,'No'),
(308,'1',2,2,'Yes'),
(401,'5',3,8,'Yes'),
(402,'5',3,8,'Yes');

INSERT INTO ReservationRoom (RoomNumber,TotalCost) 
Values
(308,299.98),
(203,999.95),
(305,349.98),
(201,199.99),
(307,524.97),
(302,924.95),
(202,349.98),
(304,874.95),
(301,799.96),
(207,174.99),
(401,1199.97),
(206,599.96),
(208,599.96),
(304,184.99),
(205,699.96),
(204,184.99),
(401,1259.97),
(303,199.99),
(305,349.98),
(208,149.99),
(203,399.98),
(401,1199.97),
(206,449.97),
(301,599.97),
(302,699.96);




INSERT INTO Amenities (AmenitiesId, `Name`,AdditionalAmenitiesCost) 
Values
(1,'Microwave,Jacuzzi',10),
(2,'Refrigerator',10),
(3,'Microwave, Refrigerator, Jacuzzi',NULL),
(4,'Microwave, Refrigerator',NULL),
(5,'Microwave, Refrigerator, Oven',20);


INSERT INTO AmenitiesRoom (RoomNumber, AmenitiesId) 
Values
(201,1),
(202,2),
(203,1),
(204,2),
(205,3),
(206,4),
(207,3),
(208,4),
(301,1),
(302,2),
(303,1),
(304,2),
(305,3),
(306,4),
(307,3),
(308,4),
(401,5),
(402,5);

