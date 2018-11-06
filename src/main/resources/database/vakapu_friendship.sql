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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship`
--

LOCK TABLES `friendship` WRITE;
/*!40000 ALTER TABLE `friendship` DISABLE KEYS */;
INSERT INTO `friendship` VALUES (47,'tram@gmail.com','giang@gmail.com',1,NULL),(48,'tram@gmail.com','khanh@gmail.com',1,NULL),(49,'tram@gmail.com','anh@gmail.com',1,NULL),(50,'khanh@gmail.com','tram@gmail.com',1,NULL),(51,'anh@gmail.com','tram@gmail.com',1,NULL),(52,'giang@gmail.com','tram@gmail.com',1,NULL),(53,'tram@gmail.com','dat@gmail.com',1,NULL),(54,'tram@gmail.com','hieu@gmail.com',1,NULL),(55,'dat@gmail.com','tram@gmail.com',1,NULL),(56,'hieu@gmail.com','tram@gmail.com',1,NULL),(57,'anh@gmail.com','giang@gmail.com',1,NULL),(58,'anh@gmail.com','dat@gmail.com',1,NULL),(59,'anh@gmail.com','hieu@gmail.com',1,NULL),(60,'anh@gmail.com','thu@gmail.com',1,NULL),(61,'giang@gmail.com','anh@gmail.com',1,NULL),(62,'dat@gmail.com','anh@gmail.com',1,NULL),(63,'thu@gmail.com','anh@gmail.com',1,NULL),(64,'hieu@gmail.com','anh@gmail.com',1,NULL),(65,'dat@gmail.com','thao@gmail.com',1,NULL),(66,'dat@gmail.com','thu@gmail.com',1,NULL),(67,'dat@gmail.com','giang@gmail.com',1,NULL),(68,'thao@gmail.com','dat@gmail.com',1,NULL),(69,'thu@gmail.com','dat@gmail.com',1,NULL),(70,'giang@gmail.com','dat@gmail.com',1,NULL),(71,'hieu@gmail.com','dat@gmail.com',1,NULL),(72,'hieu@gmail.com','giang@gmail.com',1,NULL),(73,'hieu@gmail.com','thu@gmail.com',1,NULL),(74,'dat@gmail.com','hieu@gmail.com',1,NULL),(75,'giang@gmail.com','hieu@gmail.com',1,NULL),(76,'thu@gmail.com','hieu@gmail.com',1,NULL),(77,'khanh@gmail.com','anh@gmail.com',1,NULL),(78,'khanh@gmail.com','dat@gmail.com',1,NULL),(79,'khanh@gmail.com','thu@gmail.com',1,NULL),(80,'khanh@gmail.com','thao@gmail.com',1,NULL),(81,'khanh@gmail.com','phuong@gmail.com',1,NULL),(82,'khanh@gmail.com','nga@gmail.com',1,NULL),(83,'anh@gmail.com','khanh@gmail.com',1,NULL),(84,'dat@gmail.com','khanh@gmail.com',1,NULL),(85,'thu@gmail.com','khanh@gmail.com',1,NULL),(86,'thao@gmail.com','khanh@gmail.com',1,NULL),(87,'phuong@gmail.com','khanh@gmail.com',1,NULL),(88,'nga@gmail.com','khanh@gmail.com',1,NULL);
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

-- Dump completed on 2018-11-06 16:30:13
