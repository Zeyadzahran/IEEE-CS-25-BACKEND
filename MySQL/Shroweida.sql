
DROP DATABASE IF EXISTS Airport;
CREATE DATABASE Airport;
USE Airport;

-- Tables Creation
CREATE TABLE IF NOT EXISTS airline_companies (
	ID INT AUTO_INCREMENT,
	name VARCHAR(25),
	headquarters VARCHAR(100),
	fleet_size INT,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (ID)
);

CREATE TABLE planes (
	ID INT AUTO_INCREMENT,
	name VARCHAR(25),
	company_id INT,
	passenger_capacity INT,
	fuel_capacity INT,
	fuel_level INT, -- to check if fuel level is under 30%
	next_trip_date date, 
	trip_destination VARCHAR(25),
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	FOREIGN KEY (company_id) REFERENCES airline_companies(ID),
	PRIMARY KEY (ID)
);

CREATE TABLE flights(
	ID INT AUTO_INCREMENT,
	from_location VARCHAR(100),
	destination_location VARCHAR(100),
	take_off_time date,
	arrival_time date,
	plane_id INT,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	FOREIGN KEY (plane_id) REFERENCES planes(ID),
	PRIMARY KEY (ID)
);

CREATE TABLE users(
	ID int AUTO_INCREMENT PRIMARY KEY,
	name varchar(50) NOT NULL,
	gender VARCHAR(50),
	age int, 
	address VARCHAR(200),
	role VARCHAR(30) NOT NULL,
	salary DECIMAL(10,2),
	plane_id INT, 
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
	FOREIGN KEY(plane_id) REFERENCES planes(ID) 
);

CREATE TABLE runways(
	ID INT AUTO_INCREMENT,
	plane_id INT,
	flight_time date,
	status VARCHAR(5) CHECK(status in ('open', 'close')),
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	FOREIGN KEY(plane_id) REFERENCES planes(ID),
	PRIMARY KEY (ID),
	UNIQUE (plane_id, flight_time), -- to prevent problem 1
	UNIQUE (ID, flight_time) -- to prevent problem 2
); 

-- Flights must be scheduled to avoid accidents
-- problem 1
-- id | plane_id | flight_time
-- 1    2           3
-- 2    2           3

-- problem 2
-- id | plane_id | flight_time
-- 1     2         4
-- 1     3         4
-- Inserting into airline_companies

-- Inserting into runways
INSERT INTO runways (plane_id, flight_time, status)
VALUES 
(1, '2025-02-20', 'open'),
(2, '2025-02-22', 'open');


-- QUERYIES
-- query 1
SELECT * FROM flights
WHERE from_location = 'Shroweida' 
AND take_off_time BETWEEN CURDATE() AND CURDATE() + interval 7 DAY;

-- query 2
SELECT * FROM users
WHERE role in ('passengers', 'pilots','Flight attendee') AND plane_id = 1244;

-- query 3
SELECT * FROM runways
WHERE status = 'open';

-- query 4 
SELECT planes.name AS plane, airline_companies.name AS company, planes.passenger_capacity 
FROM planes
JOIN airline_companies ON airline_companies.ID = planes.company_id
WHERE  planes.trip_destination = 'Tanta'; 