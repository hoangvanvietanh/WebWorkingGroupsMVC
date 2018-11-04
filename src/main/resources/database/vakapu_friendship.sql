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
-- Table structure for table `friendship`
--

DROP TABLE IF EXISTS `friendship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `friendship` (
  `idfriendship` int(11) NOT NULL AUTO_INCREMENT,
  `email_user` varchar(145) DEFAULT NULL,
  `email_friend` varchar(145) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`idfriendship`),
  KEY `fk_friendship_1_idx` (`email_user`),
  KEY `fk_friendship_2_idx` (`email_friend`),
  CONSTRAINT `fk_friendship_1` FOREIGN KEY (`email_user`) REFERENCES `user` (`email`),
  CONSTRAINT `fk_friendship_2` FOREIGN KEY (`email_friend`) REFERENCES `user` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship`
--

LOCK TABLES `friendship` WRITE;
/*!40000 ALTER TABLE `friendship` DISABLE KEYS */;
INSERT INTO `friendship` VALUES (1,'hoangvanvietanh@gmail.com','khanh@gmail.com',1,NULL),(2,'hoangvanvietanh@gmail.com','giang@gmail.com',1,NULL),(3,'hoangvanvietanh@gmail.com','phuong@gmail.com',1,NULL),(4,'hoangvanvietanh@gmail.com','duyhieu@gmail.com',1,NULL),(5,'hoangvanvietanh@gmail.com','khuuhieu@gmail.com',1,NULL),(6,'hoangvanvietanh@gmail.com','vietem@gmail.com',0,NULL),(7,'khanh@gmail.com','hoangvanvietanh@gmail.com',1,NULL),(8,'vietem@gmail.com','hoangvanvietanh@gmail.com',0,NULL),(9,'khuuhieu@gmail.com','hoangvanvietanh@gmail.com',1,NULL),(10,'duyhieu@gmail.com','hoangvanvietanh@gmail.com',1,NULL),(11,'phuong@gmail.com','hoangvanvietanh@gmail.com',1,NULL),(12,'giang@gmail.com','hoangvanvietanh@gmail.com',1,NULL),(16,'giang@gmail.com','phuong@gmail.com',1,NULL),(17,'phuong@gmail.com','giang@gmail.com',1,NULL),(18,'phuong@gmail.com','duyhieu@gmail.com',1,NULL),(19,'duyhieu@gmail.com','phuong@gmail.com',1,NULL),(20,'giang@gmail.com','khoa@gmail.com',1,NULL),(21,'khoa@gmail.com','giang@gmail.com',1,NULL),(22,'khoa@gmail.com','hoangvanvietanh@gmail.com',1,NULL),(23,'hoangvanvietanh@gmail.com','khoa@gmail.com',1,NULL),(24,'khoa@gmail.com','phuong@gmail.com',1,NULL),(25,'phuong@gmail.com','khoa@gmail.com',1,NULL),(26,'duyhieu789159@gmail.com','hoangvanvietanh@gmail.com',1,NULL),(27,'hoangvanvietanh@gmail.com','duyhieu789159@gmail.com',1,NULL),(28,'khanh@gmail.com','duyhieu@gmail.com',1,NULL),(29,'duyhieu@gmail.com','khanh@gmail.com',1,NULL),(32,'hoangvanvietanh@gmail.com','k11giadinh@gmail.com',1,NULL),(33,'k11giadinh@gmail.com','hoangvanvietanh@gmail.com',1,NULL),(34,'giang@gmail.com','k11giadinh@gmail.com',0,NULL);
/*!40000 ALTER TABLE `friendship` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-04 23:00:16
