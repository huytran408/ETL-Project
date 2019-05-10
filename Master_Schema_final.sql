
-- Create a database 'flights_db'
CREATE DATABASE IF NOT EXISTS `flights_db`;
USE `flights_db`;

-- Create tables for raw data to be loaded into
-- 1 airlines
CREATE TABLE IF NOT EXISTS airlines (
id INT auto_increment PRIMARY KEY,
IATA_CODE text,
AIRLINE text
);

-- 2 airport_details
CREATE TABLE IF NOT EXISTS airport_details (
id INT auto_increment PRIMARY KEY,
  `Facility Name` text,
  `City` text,
  `Country` text,
  `IATA_Code` text,
  `ICAO_Code` text,
  `Lat` double DEFAULT NULL,
  `Lng` double DEFAULT NULL,
  `Alt(Feet)` int(11) DEFAULT NULL,
  `Hours__from UTC` int(11) DEFAULT NULL,
  `TimeZone` text,
  `Type` text
);

-- 3 flights_2015
CREATE TABLE IF NOT EXISTS flights_2015 (
id INT auto_increment Primary KEY,
YEAR INT,
MONTH INT,
DAY INT,
DAY_OF_WEEK INT,
AIRLINE text,
FLIGHT_NUMBER INT,
TAIL_NUMBER text,
ORIGIN_AIRPORT text,
DESTINATION_AIRPORT text,
SCHEDULED_DEPARTURE INT,
DEPARTURE_TIME INT,
DEPARTURE_DELAY INT,
TAXI_OUT INT,
WHEELS_OFF INT,
SCHEDULED_TIME INT,
ELAPSED_TIME INT,
AIR_TIME INT,
DISTANCE INT,
WHEELS_ON INT,
TAXI_IN INT,
SCHEDULED_ARRIVAL INT,
ARRIVAL_TIME INT,
ARRIVAL_DELAY INT,
AIR_SYSTEM_DELAY text,
SECURITY_DELAY text,
AIRLINE_DELAY text,
LATE_AIRCRAFT_DELAY text,
WEATHER_DELAY text,
DIVERTED INT,
CANCELLED INT,
CANCELLATION_REASON text
);

-- 4 trips_scraped
CREATE TABLE IF NOT EXISTS trips_scraped (
  id INT auto_increment Primary KEY,
  `Departure_Airline` text,
  `Return_Airline` text,
  `Departure_time` text,
  `Duration` text,
  `Price` int(11) DEFAULT NULL,
  `Date_Checked` text
);

-- Confirm tables
SELECT * FROM airlines;
SELECT * FROM airport_details;
SELECT * FROM flights_2015;
SELECT * FROM trips_scraped;

-- Query
SELECT flights_2015.origin_airport, avg(flights_2015.departure_delay)
FROM flights_2015
Group by flights_2015.origin_airport;