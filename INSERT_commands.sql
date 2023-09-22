INSERT INTO Airport (AirportName, City) VALUES
  ('John F. Kennedy International Airport', 'New York City'),
  ('Los Angeles International Airport', 'Los Angeles'),
  ('London Heathrow Airport', 'London');

  INSERT INTO Person (Fname, Lname, SSN, DOB, Gender) VALUES
  ('John', 'Doe', 123456789, '1990-05-12', 'M'),
  ('Sarah', 'Smith', 234567890, '1985-07-20', 'F'),
  ('Michael', 'Johnson', 345678901, '1979-12-01', 'M'),
  ('Emily', 'Jones', 456789012, '1992-03-15', 'F'),
  ('David', 'Wilson', 567890123, '1988-11-30', 'M'),
  ('Jessica', 'Davis', 678901234, '1995-09-05', 'F'),
  ('Daniel', 'Brown', 789012345, '1982-06-10', 'M'),
  ('Jennifer', 'Taylor', 890123456, '1991-02-25', 'F'),
  ('Matthew', 'Anderson', 901234567, '1987-04-18', 'M'),
  ('Amanda', 'Miller', 012345678, '1994-08-08', 'F'),
  ('William', 'Garcia', 345612789, '1992-01-23', 'M'),
  ('Victoria', 'Lee', 456723890, '1988-06-13', 'F'),
  ('Nicholas', 'Nguyen', 567834901, '1995-09-17', 'M'),
  ('Sophia', 'Gonzalez', 678945012, '1980-12-07', 'F'),
  ('Jacob', 'Scott', 789056123, '1986-03-28', 'M'),
  ('Isabella', 'Rivera', 890167234, '1994-04-12', 'F');

  INSERT INTO Employee (EmployeeID, Salary, SSN, AirportName) VALUES
  ('100001', 50000, 123456789, 'John F. Kennedy International Airport'),
  ('200002', 55000, 234567890, 'Los Angeles International Airport'),
  ('300003', 60000, 345678901, 'London Heathrow Airport'),
  ('100004', 45000, 456789012, 'John F. Kennedy International Airport'),
  ('200005', 65000, 567890123, 'Los Angeles International Airport'),
  ('300006', 70000, 678901234, 'London Heathrow Airport'),
  ('100007', 40000, 789012345, 'John F. Kennedy International Airport'),
  ('200008', 75000, 890123456, 'Los Angeles International Airport'),
  ('300009', 30000, 901234567, 'London Heathrow Airport'),
  ('100010', 42000, 012345678, 'John F. Kennedy International Airport'),
  ('200111', 70000, 345612789, 'Los Angeles International Airport'),
  ('300123', 80000, 456723890, 'London Heathrow Airport'),
  ('100124', 45000, 567834901, 'John F. Kennedy International Airport'),
  ('200121', 76000, 678945012, 'Los Angeles International Airport'),
  ('300143', 65000, 789056123, 'London Heathrow Airport'),
  ('100144', 80000, 890167234, 'John F. Kennedy International Airport');

  INSERT INTO Pilot (YearsOfExp, SSN) VALUES
  (5, (SELECT SSN FROM Employee WHERE EmployeeID LIKE '10%' LIMIT 1)),
  (8, (SELECT SSN FROM Employee WHERE EmployeeID LIKE '10%' LIMIT 1 OFFSET 1)),
  (3, (SELECT SSN FROM Employee WHERE EmployeeID LIKE '10%' LIMIT 1 OFFSET 2)),
  (6, (SELECT SSN FROM Employee WHERE EmployeeID LIKE '10%' LIMIT 1 OFFSET 3)),
  (4, (SELECT SSN FROM Employee WHERE EmployeeID LIKE '10%' LIMIT 1 OFFSET 4));

  INSERT INTO Engineer (Profession, SSN) VALUES
  ('Mechanical', (SELECT SSN FROM Employee WHERE EmployeeID LIKE '20%' LIMIT 1)),
  ('Electrical', (SELECT SSN FROM Employee WHERE EmployeeID LIKE '20%' LIMIT 1 OFFSET 1)),
  ('Electrical', (SELECT SSN FROM Employee WHERE EmployeeID LIKE '20%' LIMIT 1 OFFSET 2)),
  ('Mechanical', (SELECT SSN FROM Employee WHERE EmployeeID LIKE '20%' LIMIT 1 OFFSET 3)),
  ('Mechanical', (SELECT SSN FROM Employee WHERE EmployeeID LIKE '20%' LIMIT 1 OFFSET 4));

  INSERT INTO Worker (ServiceType, SSN) VALUES
  ('Cleaning', (SELECT SSN FROM Employee WHERE EmployeeID LIKE '30%' LIMIT 1)),
  ('Security', (SELECT SSN FROM Employee WHERE EmployeeID LIKE '30%' LIMIT 1 OFFSET 1)),
  ('Cleaning', (SELECT SSN FROM Employee WHERE EmployeeID LIKE '30%' LIMIT 1 OFFSET 2)),
  ('Security', (SELECT SSN FROM Employee WHERE EmployeeID LIKE '30%' LIMIT 1 OFFSET 3)),
  ('Security', (SELECT SSN FROM Employee WHERE EmployeeID LIKE '30%' LIMIT 1 OFFSET 4));

INSERT INTO Airline (AirlineID, AirlineName) VALUES 
  (1, 'American Airlines'),
  (2, 'Delta Air Lines'),
  (3, 'United Airlines'),
  (4, 'Southwest Airlines'),
  (5, 'JetBlue Airways');

INSERT INTO Aircraft (PlaneID, Model, NumberEngines, ManufactureDate, NumberOfSeats, AirlineID) VALUES 
  (1, 'Boeing 737', 2, '2010-01-01', 150, 1),
  (2, 'Airbus A320', 2, '2012-02-01', 120, 1),
  (3, 'Embraer E175', 2, '2014-03-01', 80, 2),
  (4, 'Bombardier CRJ900', 2, '2016-04-01', 90, 2),
  (5, 'Boeing 787', 2, '2018-05-01', 250, 3),
  (6, 'Airbus A350', 2, '2019-06-01', 300, 3),
  (7, 'Boeing 777', 2, '2020-07-01', 400, 4),
  (8, 'Embraer E190', 2, '2021-08-01', 100, 4),
  (9, 'Bombardier CRJ700', 2, '2015-09-01', 70, 5),
  (10, 'Airbus A321', 2, '2013-10-01', 200, 5);

INSERT INTO Flight (FlightNumber, Source, Destination, ArrivalTime, DepartureTime, Status, AirlineID) VALUES 
  (100, 'New York', 'Los Angeles', '12:00 PM', '9:00 AM', 'On Time', 1),
  (101, 'Los Angeles', 'New York', '6:00 PM', '2:00 PM', 'Delayed', 1),
  (200, 'Chicago', 'Miami', '9:00 PM', '5:00 PM', 'On Time', 2),
  (201, 'Miami', 'Chicago', '12:00 PM', '8:00 AM', 'On Time', 2),
  (300, 'San Francisco', 'Seattle', '4:00 PM', '1:00 PM', 'Delayed', 3),
  (301, 'Seattle', 'San Francisco', '11:00 AM', '8:00 AM', 'On Time', 3),
  (400, 'Denver', 'Dallas', '8:00 PM', '6:00 PM', 'On Time', 4),
  (401, 'Dallas', 'Denver', '11:00 AM', '9:00 AM', 'On Time', 4),
  (500, 'Boston', 'Washington D.C.', '5:00 PM', '2:00 PM', 'On Time', 5),
  (501, 'Washington D.C.', 'Boston', '10:00 AM', '7:00 AM', 'On Time', 5),
  (600, 'Las Vegas', 'Orlando', '3:00 PM', '11:00 AM', 'Delayed', 1),
  (601, 'Orlando', 'Las Vegas', '9:00 PM', '5:00 PM', 'On Time', 1),
  (700, 'Houston', 'New Orleans', '7:00 PM', '6:00 PM', 'On Time', 2),
  (701, 'New Orleans', 'Houston', '12:00 PM', '11:00 AM', 'On Time', 2),
  (800, 'San Diego', 'Portland', '5:00 PM', '1:00 PM', 'Delayed', 3),
  (801, 'Portland', 'San Diego', '10:00 AM', '6:00 AM', 'On Time', 3),
  (900, 'Atlanta', 'Philadelphia', '4:00 PM', '1:00 PM', 'On Time', 4),
  (901, 'Philadelphia', 'Atlanta', '9:00 AM', '6:00 AM', 'On Time', 4),
  (1000, 'New York', 'Miami', '7:00 PM', '4:00 PM', 'On Time', 5),
  (1001, 'Miami', 'New York', '10:00 AM', '7:00 AM', 'On Time', 5);

INSERT INTO Person (Fname, Lname, SSN, DOB, Gender) VALUES 
  ('Alex', 'Rodriguez', 111111111, '1990-01-01', 'M'),
  ('Samantha', 'Johnson', 222222222, '1991-02-02', 'F'),
  ('Benjamin', 'Garcia', 333333333, '1992-03-03', 'M'),
  ('Olivia', 'Davis', 444444444, '1993-04-04', 'F'),
  ('Ethan', 'Brown', 555555555, '1994-05-05', 'M'),
  ('Isabella', 'Wilson', 666666666, '1995-06-06', 'F'),
  ('Liam', 'Anderson', 777777777, '1996-07-07', 'M'),
  ('Emma', 'Martinez', 888888888, '1997-08-08', 'F'),
  ('Noah', 'Jones', 999999999, '1998-09-09', 'M');

INSERT INTO Passenger (PassportID, SSN) VALUES 
  (123456, 111111111),
  (234567, 222222222),
  (345678, 333333333),
  (456789, 444444444),
  (567890, 555555555),
  (678901, 666666666),
  (789012, 777777777),
  (890123, 888888888),
  (901234, 999999999);

INSERT INTO Ticket (TicketID, Price, SeatNumber, Class, SSN, FlightNumber) VALUES 
  (1, 200.00, 15, 'Economy', 111111111, 100),
  (2, 300.00, 27, 'Business', 222222222, 101),
  (3, 150.00, 11, 'Economy', 333333333, 200),
  (4, 250.00, 5, 'Business', 444444444, 201),
  (5, 175.00, 23, 'Economy', 555555555, 300),
  (6, 350.00, 3, 'First', 666666666, 301),
  (7, 225.00, 18, 'Economy', 777777777, 400),
  (8, 275.00, 8, 'Business', 888888888, 401),
  (9, 200.00, 14, 'Economy', 999999999, 500);