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
-- Table structure for table `teammember_teamproject`
--

DROP TABLE IF EXISTS `teammember_teamproject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teammember_teamproject` (
  `idteammember_teamproject` int(11) NOT NULL AUTO_INCREMENT,
  `idteammember` int(11) DEFAULT NULL,
  `idteamproject` int(11) DEFAULT NULL,
  PRIMARY KEY (`idteammember_teamproject`),
  KEY `fk_teammember_teamproject_1_idx` (`idteamproject`),
  KEY `fk_teammember_teamproject_2_idx` (`idteammember`),
  CONSTRAINT `fk_teammember_teamproject_1` FOREIGN KEY (`idteamproject`) REFERENCES `teamproject` (`idteamproject`),
  CONSTRAINT `fk_teammember_teamproject_2` FOREIGN KEY (`idteammember`) REFERENCES `team_member` (`idteam_member`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teammember_teamproject`
--

LOCK TABLES `teammember_teamproject` WRITE;
/*!40000 ALTER TABLE `teammember_teamproject` DISABLE KEYS */;
INSERT INTO `teammember_teamproject` VALUES (13,46,15),(14,47,15),(15,48,15),(17,83,16),(18,84,16),(20,86,17),(21,87,17),(23,91,18),(24,94,18),(25,95,18),(56,23,29),(63,108,30),(70,120,29),(71,121,29),(72,122,29),(73,123,29),(75,125,31),(76,126,31),(81,124,32),(83,124,34),(85,136,32);
/*!40000 ALTER TABLE `teammember_teamproject` ENABLE KEYS */;
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
