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
-- Table structure for table `taskteamproject`
--

DROP TABLE IF EXISTS `taskteamproject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taskteamproject` (
  `idtaskteamproject` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(145) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT '0',
  `description` varchar(300) DEFAULT NULL,
  `owner` varchar(45) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `totalTask` int(4) DEFAULT NULL,
  `completedAmount` int(4) DEFAULT NULL,
  `due` int(4) DEFAULT NULL,
  PRIMARY KEY (`idtaskteamproject`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskteamproject`
--

LOCK TABLES `taskteamproject` WRITE;
/*!40000 ALTER TABLE `taskteamproject` DISABLE KEYS */;
INSERT INTO `taskteamproject` VALUES (11,'test',0,'hihi','hoangvanvietanh@gmail.com','2018-10-21','2018-10-31',7,6,8),(12,'test',0,'hihi','hoangvanvietanh@gmail.com','2018-10-21','2018-10-31',2,1,0),(13,'test',0,'123','hoangvanvietanh@gmail.com','2018-10-21','2018-10-31',2,1,0),(14,'hehehe',0,'Viet Anh','hoangvanvietanh@gmail.com','2018-10-22','2018-10-22',2,2,0),(15,'hihihihi',0,'hehe','hoangvanvietanh@gmail.com','2018-10-22','2018-10-24',0,0,0),(16,'Hoang Van Viet Anh',0,'Hoang Van Viet Anh','hoangvanvietanh@gmail.com','2018-10-23','2018-10-30',3,1,7);
/*!40000 ALTER TABLE `taskteamproject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-22 12:25:34
