-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vakapu
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `teammember_taskteamproject`
--

DROP TABLE IF EXISTS `teammember_taskteamproject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teammember_taskteamproject` (
  `idteammember_taskteamproject` int(11) NOT NULL AUTO_INCREMENT,
  `idteammember_teamproject` int(11) DEFAULT NULL,
  `idtaskteamproject` int(11) DEFAULT NULL,
  PRIMARY KEY (`idteammember_taskteamproject`),
  KEY `fk_teammember_taskproject_1_idx` (`idteammember_teamproject`),
  KEY `fk_teammember_taskteamproject_2_idx` (`idtaskteamproject`),
  CONSTRAINT `fk_teammember_taskteamproject_1` FOREIGN KEY (`idteammember_teamproject`) REFERENCES `teammember_teamproject` (`idteammember_teamproject`),
  CONSTRAINT `fk_teammember_taskteamproject_2` FOREIGN KEY (`idtaskteamproject`) REFERENCES `taskteamproject` (`idtaskteamproject`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teammember_taskteamproject`
--

LOCK TABLES `teammember_taskteamproject` WRITE;
/*!40000 ALTER TABLE `teammember_taskteamproject` DISABLE KEYS */;
INSERT INTO `teammember_taskteamproject` VALUES (9,17,18),(10,18,18),(12,18,19),(14,23,20),(15,25,20),(17,21,21),(19,56,30),(21,70,30),(25,56,31),(27,70,31),(28,71,31),(33,71,30),(34,72,30),(35,73,30),(37,75,32),(39,76,32),(43,81,35),(44,85,35),(45,81,36),(46,81,37);
/*!40000 ALTER TABLE `teammember_taskteamproject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-04 23:00:18
