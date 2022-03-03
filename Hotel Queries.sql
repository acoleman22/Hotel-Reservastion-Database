USE HotelReservation;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM GuestReservation 
WHERE ReservationId = 8;

DELETE FROM Guest
WHERE PhoneNumber = '(279) 491-0960';

DELETE FROM ReservationRoom 
WHERE ReservationId = 8;

DELETE FROM Reservation 
WHERE ReservationId = 8;

SET SQL_SAFE_UPDATES = 1;


-- Write a query that returns a list of reservations that 
-- end in July 2023, including the name of the guest, the room number(s), 
-- and the reservation dates.

SELECT
r.Guest,
rr.RoomNumber,
r.EndDate
FROM Reservation r 
INNER JOIN ReservationRoom rr
	ON r.ReservationId = rr.ReservationId
WHERE r.EndDate >= '2023-07-01' AND r.EndDate <= '2023-07-31';



-- Write a query that returns a list of all reservations for rooms with a jacuzzi, 
-- displaying the guest's name, the room number, and the dates of the reservation.
-- Jacuzzi Room AmenitiesId 1 and 3 

SELECT 
r.StartDate,
r.EndDate,
r.Guest,
rr.RoomNumber,
ar.AmenitiesId
FROM AmenitiesRoom ar
INNER JOIN ReservationRoom rr
	ON ar.RoomNumber = rr.RoomNumber
INNER JOIN Reservation r  
	ON rr.ReservationId = r.ReservationId
WHERE ar.AmenitiesId IN (1, 3);

-- Write a query that returns all the rooms reserved for a specific guest, including the 
-- guest's name, the room(s) reserved, the starting date of the reservation, and how many 
-- people were included in the reservation. (Choose a guest's name from the existing data.)

SELECT
r.Guest,
rr.RoomNumber,
r.StartDate,
CONCAT(r.Adults+r.Children)
FROM Reservation r 
INNER JOIN ReservationRoom rr 
	ON r.ReservationId = rr.ReservationId
WHERE r.Guest = 'Joleen Tison';

-- Write a query that returns a list of rooms, reservation ID, and per-room cost for 
-- each reservation. The results should include all rooms, whether or not there is a 
-- reservation associated with the room.

SELECT 
Room.RoomNumber,
r.ReservationId,
r.TotalCost
FROM Room 
LEFT JOIN ReservationRoom rr
	On Room.RoomNumber = rr.RoomNumber
LEFT JOIN Reservation r 
	ON rr.ReservationId =r.ReservationId;
    
-- Write a query that returns all the rooms accommodating at least three guests and 
-- that are reserved on any date in April 2023. 

SELECT 
r.StartDate,
r.EndDate,
CONCAT(r.Adults + r.Children),
rr.RoomNumber
FROM Reservation r 
INNER JOIN ReservationRoom rr
	ON r.ReservationId = rr.ReservationId
WHERE (r.Adults + r.Children) >= 3
AND r.StartDate BETWEEN '2023-04-01' AND '2023-04-30';



-- Write a query that displays the name, address, and phone number of a guest based on 
-- their phone number. (Choose a phone number from the existing data.)

SELECT 
Name,
Address,
PhoneNumber
FROM Guest
WHERE PhoneNumber = '(291) 553-0508';





