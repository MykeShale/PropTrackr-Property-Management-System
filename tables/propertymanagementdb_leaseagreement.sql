-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: propertymanagementdb
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `leaseagreement`
--

DROP TABLE IF EXISTS `leaseagreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leaseagreement` (
  `LeaseID` int NOT NULL AUTO_INCREMENT,
  `TenantID` int NOT NULL,
  `PropertyID` int NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `Status` varchar(50) DEFAULT 'Active',
  PRIMARY KEY (`LeaseID`),
  KEY `TenantID` (`TenantID`),
  KEY `PropertyID` (`PropertyID`),
  CONSTRAINT `leaseagreement_ibfk_1` FOREIGN KEY (`TenantID`) REFERENCES `tenant` (`TenantID`) ON DELETE CASCADE,
  CONSTRAINT `leaseagreement_ibfk_2` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaseagreement`
--

LOCK TABLES `leaseagreement` WRITE;
/*!40000 ALTER TABLE `leaseagreement` DISABLE KEYS */;
INSERT INTO `leaseagreement` VALUES (1,1,1,'2025-05-12','2026-05-12','Active');
/*!40000 ALTER TABLE `leaseagreement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-12  9:27:39
