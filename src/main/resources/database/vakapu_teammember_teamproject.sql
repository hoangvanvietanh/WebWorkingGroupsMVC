-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: vakapu
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teammember_teamproject` (
  `idteammember_teamproject` int(11) NOT NULL AUTO_INCREMENT,
  `idteammember` int(11) DEFAULT NULL,
  `idteamproject` int(11) DEFAULT NULL,
  PRIMARY KEY (`idteammember_teamproject`),
  KEY `fk_teammember_teamproject_1_idx` (`idteamproject`),
  KEY `fk_teammember_teamproject_2_idx` (`idteammember`),
  CONSTRAINT `fk_teammember_teamproject_1` FOREIGN KEY (`idteamproject`) REFERENCES `teamproject` (`idteamproject`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_teammember_teamproject_2` FOREIGN KEY (`idteammember`) REFERENCES `team_member` (`idteam_member`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teammember_teamproject`
--

LOCK TABLES `teammember_teamproject` WRITE;
/*!40000 ALTER TABLE `teammember_teamproject` DISABLE KEYS */;
INSERT INTO `teammember_teamproject` VALUES (3,23,1),(13,46,15),(14,47,15),(15,48,15),(17,83,16),(18,84,16),(20,86,17),(21,87,17),(23,91,18),(24,94,18),(25,95,18),(26,96,19),(27,97,19),(28,98,19),(29,96,21),(30,99,21),(31,100,21),(32,101,21),(33,96,22),(34,97,22),(35,98,22),(36,100,22),(37,101,22),(38,98,23),(39,99,23),(40,100,23),(41,101,23),(42,96,24),(43,97,24),(44,98,24),(45,100,24),(46,101,24),(47,96,25),(48,101,25),(49,97,26),(50,98,26),(51,101,26),(52,96,27),(53,97,27),(54,96,28),(55,100,28);
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

-- Dump completed on 2018-10-24  4:40:34
