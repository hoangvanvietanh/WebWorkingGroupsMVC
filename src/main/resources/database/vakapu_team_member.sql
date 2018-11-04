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
-- Table structure for table `team_member`
--

DROP TABLE IF EXISTS `team_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `team_member` (
  `idteam_member` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(155) DEFAULT NULL,
  `idteam` int(11) DEFAULT NULL,
  `role` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`idteam_member`),
  KEY `FKqdapgrj46hnhyeaecik8m04b3` (`idteam`),
  KEY `fk_team_member_1_idx` (`email`),
  CONSTRAINT `FKqdapgrj46hnhyeaecik8m04b3` FOREIGN KEY (`idteam`) REFERENCES `team` (`idteam`),
  CONSTRAINT `fk_team_member_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_member`
--

LOCK TABLES `team_member` WRITE;
/*!40000 ALTER TABLE `team_member` DISABLE KEYS */;
INSERT INTO `team_member` VALUES (23,'phuong@gmail.com',7,'Member'),(27,'khanh@gmail.com',11,'Member'),(28,'giang@gmail.com',11,'Member'),(29,'phuong@gmail.com',11,'Member'),(31,'khanh@gmail.com',12,'Member'),(32,'giang@gmail.com',12,'Member'),(33,'phuong@gmail.com',12,'Member'),(34,'duyhieu@gmail.com',12,'Member'),(35,'khuuhieu@gmail.com',12,'Member'),(36,'vietem@gmail.com',12,'Member'),(38,'khanh@gmail.com',13,'Member'),(39,'giang@gmail.com',13,'Member'),(40,'phuong@gmail.com',13,'Member'),(46,'duyhieu@gmail.com',14,'Member'),(47,'khuuhieu@gmail.com',14,'Member'),(48,'vietem@gmail.com',14,'Member'),(50,'khanh@gmail.com',15,'Member'),(51,'giang@gmail.com',15,'Member'),(52,'phuong@gmail.com',15,'Member'),(53,'khuuhieu@gmail.com',15,'Member'),(56,'khanh@gmail.com',17,'Member'),(57,'giang@gmail.com',17,'Member'),(58,'phuong@gmail.com',17,'Member'),(59,'duyhieu@gmail.com',17,'Member'),(64,'duyhieu@gmail.com',18,'Member'),(65,'khuuhieu@gmail.com',18,'Member'),(66,'vietem@gmail.com',18,'Member'),(68,'khanh@gmail.com',19,'Member'),(69,'phuong@gmail.com',19,'Member'),(70,'duyhieu@gmail.com',19,'Member'),(71,'khuuhieu@gmail.com',19,'Member'),(73,'khanh@gmail.com',20,'Member'),(74,'giang@gmail.com',20,'Member'),(75,'duyhieu@gmail.com',20,'Member'),(76,'khuuhieu@gmail.com',20,'Member'),(78,'khanh@gmail.com',21,'Member'),(79,'giang@gmail.com',21,'Member'),(80,'phuong@gmail.com',21,'Member'),(81,'khuuhieu@gmail.com',21,'Member'),(83,'khanh@gmail.com',22,'Member'),(84,'phuong@gmail.com',22,'Member'),(86,'khanh@gmail.com',23,'Member'),(87,'giang@gmail.com',23,'Member'),(88,'phuong@gmail.com',23,'Member'),(89,'vietem@gmail.com',23,'Member'),(91,'khanh@gmail.com',24,'Member'),(92,'giang@gmail.com',24,'Member'),(93,'phuong@gmail.com',24,'Member'),(94,'duyhieu@gmail.com',24,'Member'),(95,'khuuhieu@gmail.com',24,'Member'),(108,'khanh@gmail.com',28,'Member'),(110,'phuong@gmail.com',29,'Admin'),(111,'duyhieu@gmail.com',29,'Member'),(115,'khuuhieu@gmail.com',30,'Admin'),(117,'duyhieu@gmail.com',30,'Member'),(118,'duyhieu789159@gmail.com',12,'Member'),(119,'giang@gmail.com',28,'Member'),(120,'khanh@gmail.com',7,'Member'),(121,'giang@gmail.com',7,'Member'),(122,'duyhieu@gmail.com',7,'Member'),(123,'khuuhieu@gmail.com',7,'Member'),(124,'hoangvanvietanh@gmail.com',31,'Admin'),(125,'khanh@gmail.com',31,'Admin'),(126,'giang@gmail.com',31,'Member'),(127,'phuong@gmail.com',31,'Admin'),(128,'duyhieu@gmail.com',31,'Member'),(130,'duyhieu@gmail.com',32,'Admin'),(131,'phuong@gmail.com',32,'Member'),(132,'khanh@gmail.com',32,'Member'),(134,'trantoquephuong@gmail.com',31,'Member'),(136,'k11giadinh@gmail.com',31,'Member'),(138,'khanh@gmail.com',34,'Member'),(139,'giang@gmail.com',34,'Member');
/*!40000 ALTER TABLE `team_member` ENABLE KEYS */;
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
