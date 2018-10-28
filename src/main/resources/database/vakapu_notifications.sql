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
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `notifications` (
  `idnotification` int(11) NOT NULL AUTO_INCREMENT,
  `messages` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `toUser` varchar(255) DEFAULT NULL,
  `fromUser` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`idnotification`),
  KEY `fk1_idx` (`toUser`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (6,'Hello Giang,You have invitation to join the team from Hoang Van Viet Anh\nThis is your link: http://localhost:8080/time-is-gold/team/joinTeam?idTeam=33\nAnd your message: hihi',0,'giang@gmail.com','hoangvanvietanh@gmail.com',NULL),(7,'Hello Hoang Van Viet Anh,You have invitation to join the team from Giang\nThis is your link: http://localhost:8080/time-is-gold/team/joinTeam?idTeam=11\nAnd your message: hi',0,'hoangvanvietanh@gmail.com','giang@gmail.com','2018-10-28 08:54:33'),(8,'Hello Khanh,You have invitation to join the team from Hoang Van Viet Anh\nThis is your link: http://localhost:8080/time-is-gold/team/joinTeam?idTeam=31\nAnd your message: ',0,'khanh@gmail.com','hoangvanvietanh@gmail.com','2018-10-28 09:24:43'),(9,'Hello Khanh,You have invitation to join the team from Hoang Van Viet Anh\nThis is your link: http://localhost:8080/time-is-gold/team/joinTeam?idTeam=32\nAnd your message: ',0,'khanh@gmail.com','hoangvanvietanh@gmail.com','2018-10-28 09:24:56'),(10,'Hello Hoang Van Viet Anh,You have invitation to join the team from Khanh\nThis is your link: http://localhost:8080/time-is-gold/team/joinTeam?idTeam=11\nAnd your message: hihi',0,'hoangvanvietanh@gmail.com','khanh@gmail.com','2018-10-28 09:25:53');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
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
