CREATE DATABASE  IF NOT EXISTS `flights_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `flights_db`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: flights_db
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `airlines`
--

DROP TABLE IF EXISTS `airlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `airlines` (
  `IATA_CODE` text,
  `AIRLINE` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airlines`
--

LOCK TABLES `airlines` WRITE;
/*!40000 ALTER TABLE `airlines` DISABLE KEYS */;
/*!40000 ALTER TABLE `airlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airport_details`
--

DROP TABLE IF EXISTS `airport_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `airport_details` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airport_details`
--

LOCK TABLES `airport_details` WRITE;
/*!40000 ALTER TABLE `airport_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `airport_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_history_2015`
--

DROP TABLE IF EXISTS `flight_history_2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `flight_history_2015` (
  `YEAR` int(11) DEFAULT NULL,
  `MONTH` int(11) DEFAULT NULL,
  `DAY` int(11) DEFAULT NULL,
  `DAY_OF_WEEK` int(11) DEFAULT NULL,
  `AIRLINE` text,
  `FLIGHT_NUMBER` int(11) DEFAULT NULL,
  `TAIL_NUMBER` text,
  `ORIGIN_AIRPORT` text,
  `DESTINATION_AIRPORT` text,
  `SCHEDULED_DEPARTURE` int(11) DEFAULT NULL,
  `DEPARTURE_TIME` int(11) DEFAULT NULL,
  `DEPARTURE_DELAY` int(11) DEFAULT NULL,
  `TAXI_OUT` int(11) DEFAULT NULL,
  `WHEELS_OFF` int(11) DEFAULT NULL,
  `SCHEDULED_TIME` int(11) DEFAULT NULL,
  `ELAPSED_TIME` int(11) DEFAULT NULL,
  `AIR_TIME` int(11) DEFAULT NULL,
  `DISTANCE` int(11) DEFAULT NULL,
  `WHEELS_ON` int(11) DEFAULT NULL,
  `TAXI_IN` int(11) DEFAULT NULL,
  `SCHEDULED_ARRIVAL` int(11) DEFAULT NULL,
  `ARRIVAL_TIME` int(11) DEFAULT NULL,
  `ARRIVAL_DELAY` int(11) DEFAULT NULL,
  `DIVERTED` int(11) DEFAULT NULL,
  `CANCELLED` int(11) DEFAULT NULL,
  `CANCELLATION_REASON` text,
  `AIR_SYSTEM_DELAY` text,
  `SECURITY_DELAY` text,
  `AIRLINE_DELAY` text,
  `LATE_AIRCRAFT_DELAY` text,
  `WEATHER_DELAY` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_history_2015`
--

LOCK TABLES `flight_history_2015` WRITE;
/*!40000 ALTER TABLE `flight_history_2015` DISABLE KEYS */;
/*!40000 ALTER TABLE `flight_history_2015` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trips_scraped`
--

DROP TABLE IF EXISTS `trips_scraped`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trips_scraped` (
  `Departure_Airline` text,
  `Return_Airline` text,
  `Departure_time` text,
  `Duration` text,
  `Price` int(11) DEFAULT NULL,
  `Date_Checked` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trips_scraped`
--

LOCK TABLES `trips_scraped` WRITE;
/*!40000 ALTER TABLE `trips_scraped` DISABLE KEYS */;
/*!40000 ALTER TABLE `trips_scraped` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-09 16:33:00
