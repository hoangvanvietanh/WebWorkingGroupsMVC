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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `account` (
  `email` varchar(150) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('duyhieu@gmail.com','$2a$10$zW35nwKxCyPsnh0NuJz3meuGf6PDS0Rrna14Rg/tIEwosQsWrZXhC',NULL),('giang@gmail.com','$2a$10$zW35nwKxCyPsnh0NuJz3meuGf6PDS0Rrna14Rg/tIEwosQsWrZXhC',NULL),('hoang@gmail.com','$2a$10$zW35nwKxCyPsnh0NuJz3meuGf6PDS0Rrna14Rg/tIEwosQsWrZXhC',NULL),('hoangvanvietanh@gmail.com','$2a$10$4khigFjWIPcYDVDWqL59OOx3yR64P3X8WmV5QMXH4t/cYbY17gYCq',NULL),('k11giadinh@gmail.com','$2a$10$zW35nwKxCyPsnh0NuJz3meuGf6PDS0Rrna14Rg/tIEwosQsWrZXhC',NULL),('khanh@gmail.com','$2a$10$zW35nwKxCyPsnh0NuJz3meuGf6PDS0Rrna14Rg/tIEwosQsWrZXhC',NULL),('khoa@gmail.com','$2a$10$zW35nwKxCyPsnh0NuJz3meuGf6PDS0Rrna14Rg/tIEwosQsWrZXhC',NULL),('khuuhieu@gmail.com','$2a$10$zW35nwKxCyPsnh0NuJz3meuGf6PDS0Rrna14Rg/tIEwosQsWrZXhC',NULL),('phuong@gmail.com','$2a$10$zW35nwKxCyPsnh0NuJz3meuGf6PDS0Rrna14Rg/tIEwosQsWrZXhC',NULL),('vietem@gmail.com','$2a$10$zW35nwKxCyPsnh0NuJz3meuGf6PDS0Rrna14Rg/tIEwosQsWrZXhC',NULL);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-28  9:36:10
