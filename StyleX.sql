-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: stylex
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cash_journal`
--

DROP TABLE IF EXISTS `cash_journal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash_journal` (
  `Cash_JournalID` int NOT NULL AUTO_INCREMENT,
  `WorkerID` int NOT NULL,
  `ClientsID` int NOT NULL,
  `Price_List_ServicesID` int NOT NULL,
  `Total_amount` int NOT NULL,
  PRIMARY KEY (`Cash_JournalID`),
  KEY `WorkerID` (`WorkerID`),
  KEY `ClientsID` (`ClientsID`),
  KEY `Price_List_ServicesID` (`Price_List_ServicesID`),
  CONSTRAINT `cash_journal_ibfk_1` FOREIGN KEY (`WorkerID`) REFERENCES `workers` (`WorkerID`),
  CONSTRAINT `cash_journal_ibfk_2` FOREIGN KEY (`ClientsID`) REFERENCES `clients` (`ClientsID`),
  CONSTRAINT `cash_journal_ibfk_3` FOREIGN KEY (`Price_List_ServicesID`) REFERENCES `price_list_services` (`Price_List_ServicesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_journal`
--

LOCK TABLES `cash_journal` WRITE;
/*!40000 ALTER TABLE `cash_journal` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_journal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `ClientsID` int NOT NULL AUTO_INCREMENT,
  `ClientsSurname` varchar(100) NOT NULL,
  `ClientsName` varchar(100) NOT NULL,
  `ClientsPatronymic` varchar(100) NOT NULL,
  `ClientsNumberPhone` varchar(250) DEFAULT NULL,
  `ClientsLogin` int NOT NULL,
  `ClientsPassword` int NOT NULL,
  PRIMARY KEY (`ClientsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_list_services`
--

DROP TABLE IF EXISTS `price_list_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price_list_services` (
  `Price_List_ServicesID` int NOT NULL AUTO_INCREMENT,
  `Price_List_Services_Title` varchar(100) NOT NULL,
  `Price_List_Services_Description` varchar(100) NOT NULL,
  `Price_List_Services_Cost` int NOT NULL,
  PRIMARY KEY (`Price_List_ServicesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_list_services`
--

LOCK TABLES `price_list_services` WRITE;
/*!40000 ALTER TABLE `price_list_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `price_list_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workers`
--

DROP TABLE IF EXISTS `workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workers` (
  `WorkerID` int NOT NULL AUTO_INCREMENT,
  `WorkerSurname` varchar(100) NOT NULL,
  `WorkerName` varchar(100) NOT NULL,
  `WorkerPatronymic` varchar(100) NOT NULL,
  `WorkerLogin` int NOT NULL,
  `WorkerPassword` int NOT NULL,
  PRIMARY KEY (`WorkerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workers`
--

LOCK TABLES `workers` WRITE;
/*!40000 ALTER TABLE `workers` DISABLE KEYS */;
/*!40000 ALTER TABLE `workers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-23 21:33:17
