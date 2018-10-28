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
-- Table structure for table `taskteamproject`
--

DROP TABLE IF EXISTS `taskteamproject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskteamproject`
--

LOCK TABLES `taskteamproject` WRITE;
/*!40000 ALTER TABLE `taskteamproject` DISABLE KEYS */;
INSERT INTO `taskteamproject` VALUES (11,'test',1,'hihi','hoangvanvietanh@gmail.com','2018-10-21','2018-10-31',7,7,8),(12,'test',1,'hihi','hoangvanvietanh@gmail.com','2018-10-21','2018-10-31',2,2,8),(13,'test',0,'123','hoangvanvietanh@gmail.com','2018-10-21','2018-10-31',2,1,0),(14,'hehehe',0,'Viet Anh','hoangvanvietanh@gmail.com','2018-10-22','2018-10-22',2,2,0),(15,'hihihihi',0,'hehe','hoangvanvietanh@gmail.com','2018-10-22','2018-10-24',0,0,0),(16,'Hoang Van Viet Anh',0,'Hoang Van Viet Anh','hoangvanvietanh@gmail.com','2018-10-23','2018-10-30',3,1,7),(17,'hihihihi',0,'haha','hoangvanvietanh@gmail.com','2018-10-22','2018-10-31',0,0,8),(18,'hihihihi',1,'hahs','hoangvanvietanh@gmail.com','2018-10-23','2018-10-31',3,3,8),(19,'test',0,'nothing','hoangvanvietanh@gmail.com','2018-10-22','2018-10-31',2,0,8),(20,'hihi',0,'haha','hoangvanvietanh@gmail.com','2018-10-22','2018-10-31',2,2,8),(21,'hello',0,'asd','hoangvanvietanh@gmail.com','2018-10-22','2018-10-31',4,2,8),(22,'task 1',1,'hi','hoangvanvietanh@gmail.com','2018-10-23','2018-10-25',2,2,-3),(23,'task 2',1,'hi','hoangvanvietanh@gmail.com','2018-10-25','2018-11-01',2,2,8),(24,'task 1',1,'hihi','hoangvanvietanh@gmail.com','2018-10-22','2018-10-29',3,3,0),(25,'test',1,'hihi','hoangvanvietanh@gmail.com','2018-10-31','2018-11-03',3,3,11),(26,'task 1',1,'nothing','hoangvanvietanh@gmail.com','2018-10-22','2018-10-31',3,3,2),(27,'task 2',1,'nothing','hoangvanvietanh@gmail.com','2018-11-13','2018-11-30',2,2,37),(28,'task 3',0,'nothing','hoangvanvietanh@gmail.com','2018-11-03','2018-11-30',0,0,0),(29,'task 1',1,'asd','hoangvanvietanh@gmail.com','2018-10-25','2018-10-31',4,4,5),(30,'task 2',1,'asd','hoangvanvietanh@gmail.com','2018-10-31','2018-11-03',2,2,8),(31,'1',0,'','khanh@gmail.com','2018-10-25','2018-10-31',1,0,2),(32,'task 1',0,'1','hoangvanvietanh@gmail.com','2018-10-28','2018-10-31',4,2,2);
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

-- Dump completed on 2018-10-28  9:36:11
